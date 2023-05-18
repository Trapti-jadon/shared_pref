import 'package:flutter/material.dart';
import 'package:widgets_practice/calling.dart';
import 'package:widgets_practice/homepage.dart';
import 'package:widgets_practice/responsive.dart';
import 'package:widgets_practice/shared_pref/sharedpref.dart';
import 'package:widgets_practice/shared_pref/splash_screen.dart';
import 'package:widgets_practice/ui_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.light(),
      // themeMode: themeMode,
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
      ),
      home: SplashScreen()
    );
  }
}

