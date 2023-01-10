import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: Image.asset(
              'images/logos/fm.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            color: kkYellowColor,
          ),
        ),
      ]),
    );
  }
}
