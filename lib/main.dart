import 'package:flutter/material.dart';
import 'package:musicgenie/screens/splash_screen.dart';

Color musicWhite = Color(0xfff0efed);
Color musicBlue = Color(0xff7cebeb);
Color musicYellow = Color(0xffffcb00);
Color musicOrange = Color(0xfffe6600);
Color musicGreen = Color(0xff009898);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: musicWhite),
      home: SplashScreenPage(),
    );
  }
}
