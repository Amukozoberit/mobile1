import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_3/src/constants/logos.dart';
import 'package:mobile_app_3/src/screens/otp_screen.dart';

import '../constants/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _textEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(
                FUNDMASTER_LOGO,
                fit: BoxFit.contain,
                height: 50,
                width: 50,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: kkYellowColor,
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your phone number',
                      prefixIcon: IconButton(
                        icon: const Icon(
                          Icons.phone,
                        ),
                        onPressed: () {},
                      )),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your password',
                      prefixIcon: IconButton(
                        icon: const Icon(
                          Icons.wifi_password,
                        ),
                        onPressed: () {},
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTPScreen()),
                    );
                  },
                  color: Colors.blue,
                  child: Text(
                    'Tap Here',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h);

    path.quadraticBezierTo(
      w * 1.0,
      h - 100,
      w,
      h,
    );
    path.lineTo(w, h);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
