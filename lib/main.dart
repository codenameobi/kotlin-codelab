import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:inventory_app/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:inventory_app/signin.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: Icons.home,
        duration: 5000,
        nextScreen: Signin(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.blue,
        // pageTransitionType: PageTransitionType.scale,
      ),
    );
  }
}
