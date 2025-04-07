// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Importez la bibliothèque 'mailer'
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

Future<void> sendEmail(
  String email,
  String subject,
  String emailMessage,
) async {
  // Replacez les valeurs avec votre configuration SMTP
  final smtpServer = SmtpServer('smtp.sendgrid.net',
      username: 'apikey',
      password:
          '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',
      port: 465);

  final message = Message()
    ..from = Address('noreply@wewaexpress.com')
    ..recipients.add(email)
    ..subject = subject
    ..text = emailMessage;

  try {
    await send(message, smtpServer);
    print('Email sent successfully');
  } catch (e) {
    print('Error sending email: $e');
  }
}
