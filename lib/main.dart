import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:inventory_app/home.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

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
        nextScreen: MyHomePage(title: "Inventory App"),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.blue,
        // pageTransitionType: PageTransitionType.scale,
      ),
    );
  }
}
