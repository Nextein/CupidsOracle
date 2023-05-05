import 'package:cupidsoracle/layout.dart';
import 'package:cupidsoracle/screens/affinity.dart';
import 'package:cupidsoracle/screens/chat.dart';
import 'package:cupidsoracle/screens/login.dart';
import 'package:cupidsoracle/screens/play.dart';
import 'package:cupidsoracle/screens/profile.dart';
import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: const FirebaseOptions(
  //     apiKey: "YOUR_API_KEY",
  //     appId: "YOUR_APP_ID",
  //     messagingSenderId: "YOUR_SENDER_ID",
  //     projectId: "cupidsoracle-4e147",
  //     databaseURL:
  //         "https://console.firebase.google.com/u/0/project/cupidsoracle-4e147/database/cupidsoracle-4e147-default-rtdb/data/~2F",
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupids Oracle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nunito",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const Layout(),
    );
  }
}
