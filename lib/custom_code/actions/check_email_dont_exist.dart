// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> checkEmailDontExist(String email) async {
  try {
    // Vérifie si l'e-mail est valide
    if (email.isEmpty || !email.contains('@')) {
      print('❌ Email invalide.');
      return false;
    }

    // Requête pour vérifier si un utilisateur avec cet e-mail existe dans la collection 'users'
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email.toLowerCase())
        .limit(1)
        .get();

    // Retourne true si l'e-mail n'existe pas (disponible), false s'il existe
    if (querySnapshot.docs.isEmpty) {
      print('✅ L\'e-mail n\'existe pas encore.');
      return true; // Disponible
    } else {
      print('❌ L\'e-mail existe déjà.');
      return false; // Déjà pris
    }
  } catch (e) {
    print('🚨 Erreur lors de la vérification de l\'email : $e');
    return false;
  }
}
