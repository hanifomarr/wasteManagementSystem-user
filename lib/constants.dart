import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFFBF6EC);
const kPrimaryColor = Color(0xFFE21010);
const kPrimaryColor2 = Color(0xFFE23466);
const kPrimaryColor3 = Color(0xffE21040);
const kPrimaryColor4 = Color(0xff009688);
const kSecondaryColor = Color(0xFFf9ecb8);
const kSecondaryColor2 = Color(0xFFF9ECB9);
const kTextColor = Color(0xFF000839);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);

const kDefaultPadding = 20.0;

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget TextFieldContainer({TextField child}) {}
}
