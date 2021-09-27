import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.label, required this.navigator});
  final String label;
  final Function navigator;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigator as void Function()?,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomcolor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomcontainerheight,
      ),
    );
  }
}
