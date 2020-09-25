
import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
import 'package:login/pages/splash.dart';
import 'package:login/pages/register.dart';
void main() {
  runApp(MaterialApp(


  debugShowCheckedModeBanner: false,
    initialRoute: '/register',

    routes: {
      '/':(context)=>Splash(),
      '/login':(context)=>Login(),
      '/register':(context)=>Register(),

    },
  ));




}

