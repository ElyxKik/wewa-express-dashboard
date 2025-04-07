// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> setReadTrue() async {
  try {
    await FirebaseFirestore.instance
        .collection('notifications')
        .get()
        .then((querySnapshot) async {
      for (var doc in querySnapshot.docs) {
        await doc.reference.update({'read': true});
      }
    });
  } catch (e) {
    print('Error updating documents: $e');
    // Gérer les erreurs ici
  }
}
