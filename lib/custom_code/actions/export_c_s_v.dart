// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

Future exportCSV(
  DateTime dateDebut,
  DateTime dateFin,
) async {
  try {
    // 1. Récupérer les données de Firestore (adapter la collection et les champs)
    final snapshot = await FirebaseFirestore.instance
        .collection('ta_collection') // 🔁 Remplace par ta collection Firestore
        .where('created_at',
            isGreaterThanOrEqualTo: Timestamp.fromDate(dateDebut))
        .where('created_at', isLessThanOrEqualTo: Timestamp.fromDate(dateFin))
        .get();

    final documents = snapshot.docs;

    if (documents.isEmpty) {
      print('Aucune donnée trouvée entre les dates sélectionnées.');
      return;
    }

    // 2. Préparer les données CSV
    List<List<dynamic>> csvData = [];

    // En-tête CSV (adapter selon les champs de ton document)
    csvData.add(['Nom', 'Email', 'Date de création']);

    for (var doc in documents) {
      final data = doc.data();
      csvData.add([
        data['nom'] ?? '',
        data['email'] ?? '',
        (data['created_at'] as Timestamp?)?.toDate().toString() ?? '',
      ]);
    }

    // 3. Générer la chaîne CSV
    String csvString = const ListToCsvConverter().convert(csvData);

    // 4. Sauvegarder le fichier localement
    final directory = await getApplicationDocumentsDirectory();
    final path =
        '${directory.path}/export_${DateTime.now().millisecondsSinceEpoch}.csv';
    final file = File(path);
    await file.writeAsString(csvString);

    // 5. Partager ou télécharger le fichier
    await Share.shareFiles([file.path],
        text: 'Voici votre fichier exporté au format CSV');
  } catch (e) {
    print('Erreur lors de l\'exportation CSV: $e');
  }
}
