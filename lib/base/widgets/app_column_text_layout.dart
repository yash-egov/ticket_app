import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String text1, text2;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout(
      {super.key,
      required this.text1,
      required this.text2,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: text1),
        SizedBox(
          height: 5,
        ),
        TextStyleFourth(text: text2),
      ],
    );
  }
}
