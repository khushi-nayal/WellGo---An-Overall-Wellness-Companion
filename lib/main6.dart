import 'package:flutter/material.dart';
import 'package:meditation_app/ui/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp6());
}

class MyApp6 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Events App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
        primaryColor: Colors.blue[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
