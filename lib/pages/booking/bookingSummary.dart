import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';

Widget SummaryView(
    {label1,
    label2,
    label3,
    label4,
    label5,
    label6,
    label7,
    label8,
    label9,
    label10,
    label11,
    label12}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      //label 1
      Text(
        label1,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      //label 2
      Text(
        label2,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      SizedBox(
        height: 10,
      ),
      //label 3
      Text(
        label3,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label4,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label 4
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label5,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label5
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label6,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label6
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label7,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label7
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label8,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label8
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label9,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label9
      SizedBox(
        height: 10,
      ),
      const Divider(
        height: 20,
        thickness: 3,
        indent: 0,
        endIndent: 0,
        color: kSecondaryColor2,
      ),
      Text(
        label10,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label8
      Text(
        label11,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label9
      Text(
        label12,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label10
      //label11
      Text(
        label12,
        style: TextStyle(
            fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
      ),
      //label12
    ],
  );
}
