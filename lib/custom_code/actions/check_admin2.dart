// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth

Future<void> checkAdmin2() async {
  try {
    // Obtenez l'utilisateur actuellement authentifié
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      // Vérifiez si l'utilisateur a le rôle d'administrateur et n'est pas banni dans la collection des utilisateurs
      final userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();

      if (userSnapshot.exists) {
        final userData = userSnapshot.data();
        final userRole =
            userData?['role']; // Ajoutez la vérification de nullité ici
        final userBanned =
            userData?['banned']; // Ajoutez la vérification de nullité ici

        if (userRole == 'admin' && userBanned == false) {
          // Retournez sans déconnecter si l'utilisateur est un administrateur et n'est pas banni
          return;
        }
      }
    }

    // Déconnectez l'utilisateur actuel si les conditions ne sont pas remplies
    await FirebaseAuth.instance.signOut();
  } catch (e) {
    // Gérez les erreurs éventuelles
    print('Error in checkAdminAndLogout: $e');
  }
}
