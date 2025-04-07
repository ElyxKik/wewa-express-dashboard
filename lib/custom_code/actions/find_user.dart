// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore package

Future<void> findUser(String email) async {
  try {
    // Create a reference to the Firestore collection
    final CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('users');

    // Query the collection for the user with the specified email
    QuerySnapshot querySnapshot =
        await usersCollection.where('email', isEqualTo: email).get();

    // Check if a user was found
    if (querySnapshot.docs.isNotEmpty) {
      // Get the user document
      DocumentSnapshot userDocument = querySnapshot.docs.first;

      // Get the user's reference
      DocumentReference userReference = userDocument.reference;

      // Add the user reference to the commandes collection
      // Replace 'commandes' with the name of your collection
      await FirebaseFirestore.instance.collection('commandes').add({
        'user': userReference,
        // Add any other fields you need for the command
      });
    } else {
      // Handle case where user is not found with specified email
      print('No user found with email: $email');
    }
  } catch (e) {
    print('Error finding user: $e');
  }
}
