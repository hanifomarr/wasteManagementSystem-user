import 'package:cowmes/models/booking.dart';
import 'package:cowmes/widgets/provider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookingSummary extends StatefulWidget {
  final Booking booking;
  BookingSummary({Key key, @required this.booking}) : super(key: key);

  @override
  _BookingSummaryState createState() => _BookingSummaryState();
}

class _BookingSummaryState extends State<BookingSummary> {
  final db = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
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
        title: Text("Booking Summary"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 380,
              height: 520,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${widget.booking.name}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //label 2
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${widget.booking.phone}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
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
                        "Address",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${widget.booking.address}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${widget.booking.city}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${widget.booking.postcode} ${widget.booking.state}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
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
                        "Date",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${widget.booking.selectedDate}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Notes",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${widget.booking.notes}",
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: MaterialButton(
                minWidth: 380,
                height: 60,
                onPressed: () async {
                  //save to firestore

                  final uid = await Provider.of(context).auth.getCurrentUID();
                  var randomDoc = await Firestore.instance
                      .collection('userData')
                      .document(uid)
                      .collection('booking')
                      .document();

                  await db
                      .collection("userData")
                      .document(uid)
                      .collection("booking")
                      .document(randomDoc.documentID)
                      .setData({
                    'name': widget.booking.name,
                    'address': widget.booking.address,
                    'city': widget.booking.city,
                    'state': widget.booking.state,
                    'postcode': widget.booking.postcode,
                    'phone': widget.booking.phone,
                    'date': widget.booking.selectedDate,
                    'notes': widget.booking.notes,
                    'bookingID': randomDoc.documentID,
                    'status': 'In Progress'
                  });

                  await db.collection("booking").add({
                    'userID': uid,
                    'name': widget.booking.name,
                    'address': widget.booking.address,
                    'city': widget.booking.city,
                    'state': widget.booking.state,
                    'postcode': widget.booking.postcode,
                    'phone': widget.booking.phone,
                    'date': widget.booking.selectedDate,
                    'notes': widget.booking.notes,
                    'bookingID': randomDoc.documentID,
                    'status': 'In Progress'
                  });

                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                color: kSecondaryColor2,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      color: kPrimaryColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
