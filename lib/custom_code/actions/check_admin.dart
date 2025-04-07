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

Future<bool> checkAdmin(String password) async {
  try {
    // Obtenez l'utilisateur actuellement authentifié
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null && password.isNotEmpty) {
      // Vérification des identifiants en réauthentifiant l'utilisateur
      final credential = EmailAuthProvider.credential(
        email: currentUser.email!,
        password: password,
      );

      await currentUser.reauthenticateWithCredential(credential);

      // Récupération des données de l'utilisateur
      final userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();

      if (userSnapshot.exists) {
        final userData = userSnapshot.data();
        final userRole = userData?['role'];
        final userBanned = userData?['banned'];

        // Vérification du rôle et du statut de bannissement
        if (userRole == 'admin' && userBanned == false) {
          return true;
        }
      }
    }
    return false;
  } catch (e) {
    print('Erreur dans checkAdmin : $e');
    return false;
  }
}
