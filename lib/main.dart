import 'package:flutter/material.dart';

import 'modules/bmi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'laloted',
      ),
      debugShowCheckedModeBanner: false,
      // home:MessengerScreen(),
      home:BmiScreen(),
      // home: UserScreen(),
    );
  }
}