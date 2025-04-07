// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<void> saveFileToDevice(String fileName) async {
  try {
    // Utilisez le package path_provider pour obtenir le répertoire de documents de l'application
    final appDocDir = await getApplicationDocumentsDirectory();
    final filePath = '${appDocDir.path}/$fileName';

    // Écrire le fichier
    // Notez que je retire le paramètre bytes ici car il n'est plus utilisé
    await File(filePath).writeAsString('Contenu du fichier fictif.');

    print('Fichier enregistré à : $filePath');
  } catch (e) {
    print('Erreur lors de l\'enregistrement du fichier : $e');
  }
}
