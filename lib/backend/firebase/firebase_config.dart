import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAiG8Ydsh-0aLjYf5wU0YZFFX2_O6eOfAk",
            authDomain: "candsysvoto.firebaseapp.com",
            projectId: "candsysvoto",
            storageBucket: "candsysvoto.appspot.com",
            messagingSenderId: "53590807308",
            appId: "1:53590807308:web:3e7f3a4ae76831ceac6f29"));
  } else {
    await Firebase.initializeApp();
  }
}
