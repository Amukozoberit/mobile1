import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_app_3/src/screens/sign_up_screen.dart';

class WelcomeTestScreen extends StatelessWidget {
  const WelcomeTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const SignUpScreen()),
              ),
            );
          },
          color: Colors.blue,
          child: const Text(
            'Click Me',
          ),
        ),
      ),
    );
  }
}
