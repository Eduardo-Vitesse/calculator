import 'package:calculator/utils/variables.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = Variables.colorDefault,
    required this.callBack,
  });

  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = Variables.colorDefault,
    required this.callBack,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.big = false,
    this.color = Variables.colorOperation,
    required this.callBack,
  });

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () => callBack(text),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
