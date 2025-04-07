// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> checkPassword(String password) async {
  try {
    // Get the current Firebase user
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null || user.email == null) {
      // No user is signed in
      return false;
    }

    // Create credentials using the user's email and the provided password
    AuthCredential credential = EmailAuthProvider.credential(
      email: user.email!,
      password: password,
    );

    // Attempt to reauthenticate the user
    await user.reauthenticateWithCredential(credential);

    // If reauthentication succeeds, the password is correct
    return true;
  } catch (e) {
    // Handle errors (e.g., wrong password)
    print("Error during password check: $e");
    return false;
  }
}
