// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 220,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    TextStyleThird(text: "NYC"),
                    Expanded(child: Container()),
                    BigDot(),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(
                            randomDivider: 6,
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.57,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
                    BigDot(),
                    Expanded(child: Container()),
                    TextStyleThird(text: "LDN"),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                // SHow departure and destination names with time
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextStyleFourth(text: "New-York"),
                    ),
                    Expanded(child: Container()),
                    TextStyleFourth(text: "8H 30M"),
                    Expanded(child: Container()),
                    SizedBox(
                      width: 100,
                      child: TextStyleFourth(
                        text: "London",
                        align: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            color: AppStyles.ticketOrange,
            child: Row(
              children: [
                BigCircle(
                  isRight: false,
                ),
                Expanded(
                    child: AppLayoutBuilderWidget(
                  randomDivider: 20,
                  width: 8,
                )),
                BigCircle(
                  isRight: true,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AppColumnTextLayout(
                          text1: "1 May",
                          text2: "Date",
                          alignment: CrossAxisAlignment.start,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AppColumnTextLayout(
                          text1: "08:00 AM",
                          text2: "Departure time",
                          alignment: CrossAxisAlignment.center,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        AppColumnTextLayout(
                          text1: "23",
                          text2: "Number",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
