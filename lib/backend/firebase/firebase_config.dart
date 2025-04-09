import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCpeGvNeCcNGwW_4Pns4tOYVq8HbzjUGvw",
            authDomain: "wewa-62fe8.firebaseapp.com",
            projectId: "wewa-62fe8",
            storageBucket: "wewa-62fe8.appspot.com",
            messagingSenderId: "628357408111",
            appId: "1:628357408111:web:95a0969f0ca1e0fa7db49a",
            measurementId: "G-V8ZBEBXE02"));
  } else {
    await Firebase.initializeApp();
  }
}
