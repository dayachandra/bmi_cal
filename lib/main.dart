
import 'package:bmi_cal/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        actionIconTheme:null,
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          // Set the app bar color to amber as well
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),

        )
        
      ),
      debugShowCheckedModeBanner: false,
      home:  InputPage(),
    );
  }
}

