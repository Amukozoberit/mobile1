import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

// import 'package:gradient_like_css/gradient_like_css.dart';
import 'package:mobile_app_3/src/constants/colors.dart';
import 'package:mobile_app_3/src/screens/tablePinScreen.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PinScreenUi());
  }
}

class PinScreenUi extends StatefulWidget {
  const PinScreenUi({super.key});

  @override
  State<PinScreenUi> createState() => _PinScreenUiState();
}

class _PinScreenUiState extends State<PinScreenUi> {
  String name = "Mwashe Berit";
  final TextEditingController _pincontroller1 = TextEditingController();
  final TextEditingController _pincontroller2 = TextEditingController();
  final TextEditingController _pincontroller3 = TextEditingController();
  final TextEditingController _pincontroller4 = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _pincontroller1.dispose();
    _pincontroller2.dispose();
    _pincontroller3.dispose();
    _pincontroller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft,
                // stops: [0.1, 0.5, 0.7, 0.9],
                colors: [Colors.indigo, Colors.indigoAccent]),

        // gradient:linearGradient(-225, ['#1f005c', '#5b0060', '#870160', '#ac255e', '#ca485c', '#e16b5c', '#f39060', '#ffb56b'
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,

              // mainAxisAlignment: MainAxisAlignment.center,
              shrinkWrap: true,
              // shrinkWrap: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logos/Group 5@1.5x.png',
                    ),
                    Container(
                        child: Text("$name",
                            style: Theme.of(context).textTheme.headline3))
                  ],
                ),
                // SizedBox(height: 30),
                Column(
                 
                
                  children: [
                    Container(
                        child: Text("Enter Pin",
                            style: Theme.of(context).textTheme.headline3)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PinController(
                          controll: _pincontroller1,
                        ),
                        PinController(
                          controll: _pincontroller2,
                        ),
                        PinController(
                          controll: _pincontroller3,
                        ),
                        PinController(
                          controll: _pincontroller4,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: [
                          TablePinScreen(value:'1'),
                          TablePinScreen(value:'2'),
                          TablePinScreen(value:'3')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TablePinScreen(value:'4'),
                          TablePinScreen(value:'5'),
                          TablePinScreen(value:'6')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TablePinScreen(value:'7'),
                          TablePinScreen(value:'8'),
                          TablePinScreen(value:'9')
                        ],
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TablePinScreen(value:'*'),
                          TablePinScreen(value:'0'),
                          TablePinScreen(value:'#')
                        ],
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class PinController extends StatelessWidget {
  final TextEditingController controll;

  const PinController({super.key, required this.controll});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Form(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 68,
                      width: (width / 8),
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                                color: kkNormalColor, width: 1),
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                            autofocus: true,
                            controller: controll,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            cursorColor: kkLoginHeaderColor,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )))
                ])));
  }
}
