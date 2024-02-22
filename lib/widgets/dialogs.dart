import 'package:flutter/material.dart';

Widget animateFromTop(BuildContext context, Animation<double> anim1, Animation<double> anim2, Widget child) {
  final height = MediaQuery.of(context).size.height;
  final interpolatedValue = Curves.easeOut.transform(anim1.value);
  return Transform.translate(
      offset: Offset(0, (interpolatedValue - 1) * height), child: child);
}