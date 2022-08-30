import 'package:flutter/material.dart';
import 'package:meditation_app/main2.dart';
import 'package:meditation_app/pages/home_page.dart';
import 'package:meditation_app/pages/login/login_page.dart';
import 'package:meditation_app/pages/login/register.dart';



void main() => runApp(MyApp1());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new MyApp(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp1 extends StatelessWidget {
 
 @override
 Widget build(BuildContext context){
   return new MaterialApp(
     title: 'Well-Go App',
     theme: new ThemeData(primarySwatch: Colors.teal),
     routes: routes,
   );
 }
}
