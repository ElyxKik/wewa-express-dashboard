// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

// Générer un mot de passe aléatoire
String _generatePassword() {
  final random = Random.secure();
  final password = List.generate(10, (index) {
    final charCode = random.nextInt(26) + 97;
    return String.fromCharCode(charCode);
  }).join();
  return password;
}

Future<String> newUser(
    String displayName,
    String email,
    String role,
    String currentAdminPassword,
    String phoneNumber,
    bool? entreprise // Ajout du paramètre entreprise
    ) async {
  try {
    // Générer un mot de passe aléatoire
    final String password = _generatePassword();

    // Obtenir la date et l'heure actuelles
    final DateTime currentTime = DateTime.now();

    // Récupérer l'utilisateur admin actuel
    User? currentAdmin = FirebaseAuth.instance.currentUser;

    // Créer un nouvel utilisateur avec email et mot de passe
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email ?? '',
      password: password,
    );

    // Pas de connexion automatique ici
    // Envoyer la vérification par email
    await FirebaseAuth.instance.currentUser?.sendEmailVerification();

    // Ajouter les informations de l'utilisateur à la collection Firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .set({
      'uid': FirebaseAuth.instance.currentUser?.uid,
      'display_name': displayName,
      'email': email,
      'phone_number': phoneNumber,
      'role': role,
      'banned': false,
      'created_time': currentTime,
      'entreprise': entreprise, // Utilisation du paramètre entreprise ici
    });
    // Actions ou logique supplémentaires si nécessaire...

    // Reconnexion de l'utilisateur administrateur
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: currentAdmin?.email ?? '',
      password: currentAdminPassword ?? '',
    );

    // Imprimer l'UID du nouvel utilisateur créé
    print(
        'New admin user created successfully with UID: ${FirebaseAuth.instance.currentUser?.uid} et mot de passe ${password}');

    // Informer l'utilisateur de vérifier son email
    print('Verification email sent. Please check your email.');

    // Retourner le mot de passe généré
    return password;
  } catch (e) {
    print('Error creating new admin user: $e');
    // Gérer les erreurs ou lancer des exceptions si nécessaire
    return ''; // Ou renvoyer une valeur par défaut
  }
}
