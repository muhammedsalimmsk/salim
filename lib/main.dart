import 'package:flutter/material.dart';
import 'package:freshfood/login.dart';
import 'package:freshfood/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false
    ,
    initialRoute: 'login',
    routes: {
      'login' :(context)=>MyLogin(),
      'register' :(context)=>Myregister(),


    },
  ));
}