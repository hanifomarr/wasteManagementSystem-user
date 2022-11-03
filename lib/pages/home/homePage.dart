import 'package:cowmes/constants.dart';
import 'package:cowmes/models/booking.dart';
import 'package:cowmes/pages/booking/bookingPage.dart';
import 'package:cowmes/pages/home/NewsList.dart';
import 'package:cowmes/pages/home/categoryList.dart';
import 'package:cowmes/pages/home/dashboard.dart';
import 'package:cowmes/pages/home/infoCards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookingPage =
        new Booking(null, null, null, null, null, null, null, null);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(color: kPrimaryColor2, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            dashboard(),
            Categories(),
            infoCards(),
            SizedBox(
              child: Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "News and Tips",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  )),
            ),
            NewsList()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BookingPage(
                        booking: bookingPage,
                      )));
        },
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor2,
      ),
    );
  }
}
