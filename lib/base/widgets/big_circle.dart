// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final isRight;
  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isRight == false
                ? BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))
                : BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
      ),
    );
  }
}
