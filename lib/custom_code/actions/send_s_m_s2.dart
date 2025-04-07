// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:twilio_flutter/twilio_flutter.dart';

Future sendSMS2(String phoneNumber, String twilioAccountSid,
    String twilioAuthToken, String twilioNumber, String message) async {
  // Add your function code here!
  try {
    TwilioFlutter twilioFlutter = TwilioFlutter(
      accountSid: twilioAccountSid,
      authToken: twilioAuthToken,
      twilioNumber: twilioNumber,
    );

    await twilioFlutter.sendSMS(toNumber: phoneNumber, messageBody: message);
  } catch (e) {
    print('Error sending SMS: $e');
    // Gérer les erreurs ou lancer des exceptions si nécessaire
  }
}
