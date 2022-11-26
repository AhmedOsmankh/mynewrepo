// ignore_for_file: prefer_const_constructors, deprecated_member_use
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/creb/addnotes.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import "auth/Login.dart";
import 'auth/Signup.dart';
Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      theme: ThemeData(
          primaryColor: Colors.blue,
          buttonColor: Colors.blue,
          textTheme: TextTheme(
              headline6: TextStyle(color: Colors.white, fontSize: 20))),
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        "login": ((context) => const Login()),
        "signup": (context) => Signup(),
        "homepage": ((context) => Homepage()),
        "addnotes": (context) => addnotes()
      },
    );
  }
}
