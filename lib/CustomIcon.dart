import 'package:flutter/material.dart';
import 'constants.dart';

class CustomIcon extends StatelessWidget {
  // const CustomIcon({
  //   Key key,
  // }) : super(key: key);
  CustomIcon({required this.label, required this.icon});
  final String label;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
