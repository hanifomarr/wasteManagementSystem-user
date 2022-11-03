import 'package:cowmes/constants.dart';
import 'package:cowmes/models/booking.dart';
import 'package:cowmes/pages/history/historyDetails.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cowmes/widgets/provider_widget.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "History",
          style: TextStyle(color: kPrimaryColor2, fontSize: 30),
        ),
      ),
      body: Container(
        child: StreamBuilder(
            stream: getUsersBookingStreamSnapshots(context),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text("Loading...");
              return new ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildTripCard(context, snapshot.data.documents[index]));
            }),
      ),
    );
  }

  Stream<QuerySnapshot> getUsersBookingStreamSnapshots(
      BuildContext context) async* {
    final uid = await Provider.of(context).auth.getCurrentUID();
    yield* Firestore.instance
        .collection('userData')
        .document(uid)
        .collection('booking')
        .where('status', isEqualTo: 'Booking Completed')
        .snapshots();
  }

  Widget buildTripCard(BuildContext context, DocumentSnapshot document) {
    final booking = Booking.fromSnapshot(document);
    return new Container(
      child: Card(
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kPrimaryColor2,
                  kPrimaryColor3,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(children: <Widget>[
                      Text(
                        "${booking.city}",
                        style: new TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Spacer(),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          booking.state,
                          style:
                              new TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => historyDetails(booking: booking)),
            );
          },
        ),
      ),
    );
  }
}
