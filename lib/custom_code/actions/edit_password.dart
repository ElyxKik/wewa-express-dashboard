// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart'; // Ajout de l'importation de FirebaseAuth

Future<void> editPassword(
  String currentPassword,
  String newPassword,
) async {
  // Action pour permettre à l'utilisateur de changer son mot de passe dans Firestore
  try {
    // Récupérer l'utilisateur actuellement connecté
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      // Réauthentifier l'utilisateur avec le mot de passe actuel
      AuthCredential credential = EmailAuthProvider.credential(
        email: currentUser.email ?? '',
        password: currentPassword,
      );
      await currentUser.reauthenticateWithCredential(credential);

      // Mettre à jour le mot de passe de l'utilisateur dans Firebase Auth
      await currentUser.updatePassword(newPassword);

      // Mettre à jour le mot de passe de l'utilisateur dans Firestore
      DocumentReference userRef =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
      await userRef.update({'password': newPassword});

      print('Password updated successfully for user: ${currentUser.uid}');
    } else {
      throw Exception('User not logged in.');
    }
  } catch (e) {
    // Gérer les erreurs qui se produisent pendant le processus de mise à jour du mot de passe
    print('Error updating password: $e');
    rethrow; // Réexpédier l'exception pour la gestion ultérieure si nécessaire
  }
}
