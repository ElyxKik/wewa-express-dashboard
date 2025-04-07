// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart'; // Importez Firebase Auth
import 'package:cloud_firestore/cloud_firestore.dart'; // Importez Cloud Firestore

// Fonction pour mettre à jour l'e-mail de l'utilisateur
import 'dart:io'; // Importez Dart IO pour InternetAddress

// Fonction pour mettre à jour l'e-mail de l'utilisateur
Future<void> updateEmail(String email, String password) async {
  try {
    // Obtenir l'utilisateur actuel
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Ré-authentifier l'utilisateur
      AuthCredential credential =
          EmailAuthProvider.credential(email: user.email!, password: password);
      await user.reauthenticateWithCredential(credential);

      // Mettre à jour l'adresse e-mail de l'utilisateur
      await user.updateEmail(email);

      // Envoyer un nouvel e-mail de vérification à la nouvelle adresse e-mail
      await user.sendEmailVerification();

      // Traitements supplémentaires après la mise à jour de l'e-mail peuvent être ajoutés ici

      print('Email updated successfully');
    } else {
      // Aucun utilisateur n'est connecté, gérer le cas approprié
      print('No user is signed in.');
    }
  } catch (e) {
    // Gérer les erreurs ici
    print('Error updating email: $e');
  }
}
