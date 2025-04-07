// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math'; // Import for Random

Future<String> passwordGenerator() async {
  // Define the characters to be used in the password
  const String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+';

  // Define the length of the password
  const int length = 12;

  // Generate a secure random password
  final random = Random.secure();
  final StringBuffer password = StringBuffer();

  for (int i = 0; i < length; i++) {
    password.write(chars[random.nextInt(chars.length)]);
  }

  return password.toString();
}
