import 'package:flutter/material.dart';
import 'package:calculator/components/button.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.buttons});

  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(
          <Widget>[],
          (previousValue, element) {
            previousValue.isEmpty
                ? previousValue.add(element)
                : previousValue.addAll(
                    [const SizedBox(width: 2), element],
                  );
            return previousValue;
          },
        ),
      ),
    );
  }
}
