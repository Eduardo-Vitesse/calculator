import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:calculator/utils/variables.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key, required this.callBack});

  final void Function(String) callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Variables.colorBackground,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.big(
                  text: 'AC', color: Variables.colorDark, callBack: callBack),
              Button(text: '%', color: Variables.colorDark, callBack: callBack),
              Button.operation(text: '/', callBack: callBack),
            ],
          ),
          const SizedBox(height: 2),
          ButtonRow(
            buttons: [
              Button(text: '7', callBack: callBack),
              Button(text: '8', callBack: callBack),
              Button(text: '9', callBack: callBack),
              Button.operation(text: 'x', callBack: callBack),
            ],
          ),
          const SizedBox(height: 2),
          ButtonRow(
            buttons: [
              Button(text: '4', callBack: callBack),
              Button(text: '5', callBack: callBack),
              Button(text: '6', callBack: callBack),
              Button.operation(text: '-', callBack: callBack),
            ],
          ),
          const SizedBox(height: 2),
          ButtonRow(
            buttons: [
              Button(text: '1', callBack: callBack),
              Button(text: '2', callBack: callBack),
              Button(text: '3', callBack: callBack),
              Button.operation(text: '+', callBack: callBack),
            ],
          ),
          const SizedBox(height: 2),
          ButtonRow(
            buttons: [
              Button.big(text: '0', callBack: callBack),
              Button(text: '.', callBack: callBack),
              Button.operation(text: '=', callBack: callBack),
            ],
          ),
        ],
      ),
    );
  }
}
