// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.smallText, required this.bigText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: AppStyles.textColor),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              smallText,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppStyles.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
