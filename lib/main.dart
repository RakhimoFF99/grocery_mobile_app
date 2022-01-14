import 'package:flutter/material.dart';
import 'package:grocery/screens/HomePage/HomePage.dart';
import 'package:grocery/screens/WelcomePage/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashFactory: InkRipple.splashFactory,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
    );
  }
}
