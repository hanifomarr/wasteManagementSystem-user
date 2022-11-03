import 'package:cowmes/constants.dart';
import 'package:cowmes/models/booking.dart';
import 'package:cowmes/pages/history/historyDetails.dart';
import 'package:cowmes/pages/reward/rewardDetails.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cowmes/widgets/provider_widget.dart';
import 'package:cowmes/pages/reward/rewardRedeem.dart';
import 'package:flutter/cupertino.dart';

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Reward",
          style: TextStyle(color: kPrimaryColor2, fontSize: 30),
        ),
        actions: <Widget>[],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Current Balance",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "RM 52 ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/logo.png'))),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 2),
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: Text(
                                          "Moahamd Hanif Omar",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 2),
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: Text(
                                          "1000221022",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 25, bottom: 20, left: 20),
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        children: <Widget>[
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            rewardRedeem()));
                                              },
                                              child: Container(
                                                width: 150.0,
                                                padding: EdgeInsets.all(11),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white,
                                                ),
                                                child: Column(children: [
                                                  Text(
                                                    "Redeem Reward",
                                                    style: TextStyle(
                                                        color: kPrimaryColor2,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ]),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 90,
                              height: 20,
                              child: Text(
                                '',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [
                            kPrimaryColor3,
                            kPrimaryColor2,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25, top: 10),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: StreamBuilder(
                    stream: getUsersBookingStreamSnapshots(context),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) return const Text("Loading...");
                      return new ListView.builder(
                          itemCount: snapshot.data.documents.length,
                          itemBuilder: (BuildContext context, int index) =>
                              buildTripCard(
                                  context, snapshot.data.documents[index]));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
          width: 400,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Reward",
                      style: TextStyle(
                          color: kPrimaryColor2,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      booking.state,
                      style: TextStyle(color: kPrimaryColor2, fontSize: 16),
                    ),
                  ],
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    width: 90,
                    height: 20,
                    child: Text(
                      '- RM 2.00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => rewardDetails(booking: booking)),
          );
        },
      ),
    ),
  );
}
