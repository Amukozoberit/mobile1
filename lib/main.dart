import 'package:flutter/material.dart';

import 'src/screens/otp_screen.dart';
import 'src/screens/sign_up_screen.dart';
import 'src/screens/welcome_screen(test).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FundMaster',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       themeMode: ThemeMode.dark,
      home: const OTPScreen(),
    );
  }
}
