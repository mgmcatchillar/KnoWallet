import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBvOulZ4ZOKUWyfp5U1Vr5WuyLN60YOKiM",
            authDomain: "knowallet-ec8a4.firebaseapp.com",
            projectId: "knowallet-ec8a4",
            storageBucket: "knowallet-ec8a4.firebasestorage.app",
            messagingSenderId: "710580441124",
            appId: "1:710580441124:web:e3e423d03487bdaec388b1"));
  } else {
    await Firebase.initializeApp();
  }
}
