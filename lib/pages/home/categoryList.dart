import 'dart:ffi';

import 'package:cowmes/constants.dart';
import 'package:cowmes/pages/booking/bookingPage.dart';
import 'package:cowmes/pages/history/historyPage.dart';
import 'package:cowmes/pages/news/newsPage.dart';
import 'package:cowmes/pages/reward/rewardPage.dart';
import 'package:cowmes/pages/calculatorRate.dart';
import 'package:cowmes/pages/reward/rewardRedeem.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:cowmes/models/booking.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookingPage =
        new Booking(null, null, null, null, null, null, null, null);
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BookingPage(
                            booking: bookingPage,
                          )));
            },
            child: SizedBox(
              width: 65,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kSecondaryColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      LineAwesomeIcons.plus,
                      size: 35,
                      color: kPrimaryColor2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Booking", textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => newsPage()));
            },
            child: SizedBox(
              width: 65,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kSecondaryColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      LineAwesomeIcons.newspaper,
                      size: 35,
                      color: kPrimaryColor2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Tips and News", textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalculatorRate()));
            },
            child: SizedBox(
              width: 65,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kSecondaryColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      LineAwesomeIcons.calculator,
                      size: 35,
                      color: kPrimaryColor2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Recycling Rate", textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HistoryPage()));
            },
            child: SizedBox(
              width: 65,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kSecondaryColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.history,
                      size: 35,
                      color: kPrimaryColor2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("History", textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => rewardRedeem()));
            },
            child: SizedBox(
              width: 65,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kSecondaryColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.redeem,
                      size: 35,
                      color: kPrimaryColor2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Redeem Reward", textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
