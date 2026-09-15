import 'package:flutter/material.dart';
import 'package:project_3/Screens/home.dart';
import 'package:project_3/Screens/login.dart';
import 'package:project_3/Screens/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'register' : (context) => const MyRegister(),
      'login' : (context) => const MyLogin(),
      'home' : (context) => const MyHome(),
    },
  ));
}


