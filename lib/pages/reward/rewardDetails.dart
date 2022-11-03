import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';
import 'package:cowmes/models/booking.dart';

class rewardDetails extends StatefulWidget {
  final Booking booking;
  rewardDetails({Key key, @required this.booking}) : super(key: key);
  @override
  _rewardDetailsState createState() => _rewardDetailsState();
}

class _rewardDetailsState extends State<rewardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 0),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Transaction Details",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            heading1(),
            heading2(),
            heading3(),
            heading4(),
            heading5(),
            heading6(),
          ],
        ),
      ),
    );
  }

  Widget Header() {
    return Container(
      width: double.infinity,
      height: 130,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor2,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "- RM 2.00",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Redeem Successful",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading1() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 20, right: 25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Transaction Type",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            "Reward",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget heading2() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 20, right: 25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Transaction ID",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            "700000123",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget heading3() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 20, right: 25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "User ID",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            "100002123",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget heading4() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 20, right: 25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Date",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            "22/10/2020",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget heading5() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 20, right: 25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Amount",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            "RM 2.00",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget heading6() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 20, right: 25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Status",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            "Successful",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
