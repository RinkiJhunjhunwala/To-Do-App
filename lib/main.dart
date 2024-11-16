import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_practice/HomeScreen.dart';
//import 'package:firebase_practice/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/login.dart';

//import 'HomeScreen.dart';
import 'HomeScreen.dart';
import 'firebase_options.dart';
//import 'HomeScreen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => HomeScreen(),
        '/login': (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}