import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKEhOx3BY272ZaWsikYteKnH2eTkSf8Nc",
            authDomain: "wewa-62fe8.firebaseapp.com",
            projectId: "wewa-62fe8",
            storageBucket: "wewa-62fe8.appspot.com",
            messagingSenderId: "628357408111",
            appId: "1:628357408111:web:e3cb2106dda0aaf27db49a",
            measurementId: "G-DMPVXTFHHL"));
  } else {
    await Firebase.initializeApp();
  }
}
