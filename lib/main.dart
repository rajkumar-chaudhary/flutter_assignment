import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/Home/home_screen.dart';
import 'package:flutter_assignment/Screens/Home/survey_screen.dart';
import 'package:flutter_assignment/Screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Tabs(),
    );
  }
}
