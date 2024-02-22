import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnBoardingCustomText extends StatelessWidget {
  OnBoardingCustomText(
      {super.key, required this.text, required this.textStyle});
  String text;
  TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
