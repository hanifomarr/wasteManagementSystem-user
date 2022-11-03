import 'package:cowmes/models/booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class historyDetails extends StatefulWidget {
  final Booking booking;
  historyDetails({Key key, @required this.booking}) : super(key: key);

  @override
  _historyDetailsState createState() => _historyDetailsState();
}

class _historyDetailsState extends State<historyDetails> {
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
          "Booking History",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Header(),
                heading1(),
                customerInfo(),
                heading2(),
                bookingInfo(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stream<QuerySnapshot> getUsersBookingStreamSnapshots(
      BuildContext context) async* {
    // final uid = await Provider.of(context).auth.getCurrentUID();
    yield* Firestore.instance
        .collection('booking')
        .where('status', isEqualTo: 'In Progress')
//        .orderBy('date', descending: true)
        .snapshots();
  }

  Widget Header() {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.only(top: 20, left: 25, bottom: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor2,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Reward Earning",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "RM 3.4",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading1() {
    return Container(
      width: double.infinity,
      height: 53,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Customer Information",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading2() {
    return Container(
      width: double.infinity,
      height: 53,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Booking Information",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget customerInfo() {
    return Container(
      width: double.infinity,
      height: 280,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Name",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Hanif Omar",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Phone Number",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "+60132847103",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Address",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.booking.address,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.booking.city,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "${widget.booking.postcode} ${widget.booking.state}",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget bookingInfo() {
    return Container(
      width: double.infinity,
      height: 170,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Date",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.booking.city,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Date",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.booking.city,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Note",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.booking.city,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
