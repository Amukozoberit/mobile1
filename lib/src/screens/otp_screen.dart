import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_app_3/src/constants/colors.dart';

import '../constants/logos.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.0,
              ),
              //Fundmaster logo
              Image.asset(
                FUNDMASTER_LOGO,
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),

              SizedBox(
                height: 120.0,
              ),

              //welcome back text
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: kkLoginHeaderColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              //we wiill....
              Text(
                'We will send you a one time password. Please enter your registered phone number',
                style: TextStyle(
                  color: kkLoginHeaderColor,
                ),
              ),

              SizedBox(
                height: 10.0,
              ),
              //Phone Number TextField
              TextField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your phone number',
                    labelText: 'Phone number',
                    prefixIcon: IconButton(
                      icon: const Icon(
                        Icons.phone,
                      ),
                      onPressed: () {},
                    )),
              ),

              SizedBox(
                height: 10.0,
              ),

              //Limit text number
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  '9/9',
                  style: TextStyle(
                    color: kkLoginHeaderColor,
                  ),
                ),
              ),

              SizedBox(
                height: 50.0,
              ),

              //Get OTp number
              TextButton(
                onPressed: () => {},
                child: const Text("GET OTP"),
                style: ,
              ),
              SizedBox(
                height: 50.0,
              ),
              //Powered
              Text(
                'Powered by Systech',
              ),

              SizedBox(
                height: 50.0,
              ),
            ]),
      ),
    );
  }
}
