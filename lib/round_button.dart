import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.inputIcon, required this.selector});
  final IconData inputIcon;
  final Function selector;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(inputIcon),
      onPressed: selector as void Function(),
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
