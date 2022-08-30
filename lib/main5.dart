import 'package:flutter/material.dart';
import 'package:meditation_app/models/activity.dart';
import 'package:meditation_app/models/moodcard.dart';
import 'package:meditation_app/screens/chart.dart';
import 'package:meditation_app/screens/homepage.dart';
import 'package:meditation_app/screens/start.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
    value: MoodCard(),
    child:
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage(),
      routes: {

        '/home_screen':(ctx)=>HomeScreen(),
        '/chart':(ctx)=> MoodChart(),
      },
    ));
  }
}

