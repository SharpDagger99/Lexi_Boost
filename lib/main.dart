import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lexi_teacher/home.dart';
import 'package:lexi_teacher/start2.dart';
import 'package:lexi_teacher/starting.dart';
import 'package:lexi_teacher/widgets/pages/contact.dart';
import 'package:lexi_teacher/widgets/pages/mail.dart';
import 'package:lexi_teacher/widgets/pages/profile.dart';
import 'package:lexi_teacher/widgets/pages/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAjlu_d1T3MBlNrpdefh2mMkycj0OJGWqs",
        authDomain: "lexiboost-7de91.firebaseapp.com",
        projectId: "lexiboost-7de91",
        storageBucket: "lexiboost-7de91.firebasestorage.app",
        messagingSenderId: "303696333249",
        appId: "1:303696333249:web:a999b16984515765d60740",
        measurementId: "G-54FTGB3MMZ"
    )
    
  );

  if(Firebase.apps.isNotEmpty){
    print("Firebase is connected successfully!");
  } else {
    print("Firebase failed $errorTextConfiguration");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
     initialRoute: '/start',
     routes: {
      'start2' : (context) => const MyStart2(),
      'starting' : (context) => const MyStarting(),
      'home' : (context) => const MyHome(),
      'contact' : (context) => const MyContact(),
      'settings' : (contact) => const MySettings(),
      'mail' : (context) => const MyMail(notifications: []),
      'profile' : (context) => const MyProfile(),
     },
    );
  }
}