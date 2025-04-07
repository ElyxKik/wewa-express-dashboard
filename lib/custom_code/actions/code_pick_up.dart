// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;

Future<String> codePickUp() async {
  // return a code unique and verify if is exist in commandes collection code field

  String generateCode() {
    final random = math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(8, (index) => chars[random.nextInt(chars.length)])
        .join();
  }

// Generate a unique code for the pick-up order
  String code = generateCode();

  // Check if the code already exists in the commandes collection
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('commandes')
      .where('code', isEqualTo: code)
      .get();

  // If the code already exists, generate a new one
  while (snapshot.docs.isNotEmpty) {
    code = generateCode();
    snapshot = await FirebaseFirestore.instance
        .collection('commandes')
        .where('code', isEqualTo: code)
        .get();
  }

  return code;
}
