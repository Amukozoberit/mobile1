import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_app_3/src/constants/colors.dart';
// imp[ort ]

class TablePinScreen extends StatelessWidget {
  final String value;

  const TablePinScreen({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
            onTap: () {
              print(value);
            },
            child: Container(
                height: 50,
                width: 50,
                child: AutoSizeText(
                  '$value',
                  style: Theme.of(context).textTheme.headline5,
                  maxLines: 2,
                ))));
  }
}
