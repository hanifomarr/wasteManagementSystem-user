import 'package:cowmes/constants.dart';
import 'package:cowmes/pages/reward/rewardPage.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RewardPage()));
                },
                child: SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: kSecondaryColor2,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/new1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Icon(
                          LineAwesomeIcons.plus,
                          size: 35,
                          color: kPrimaryColor2,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                            child: Text(
                          "Recycling Rate in Malaysia",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RewardPage()));
                },
                child: SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: kSecondaryColor2,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/new2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Icon(
                          LineAwesomeIcons.plus,
                          size: 35,
                          color: kPrimaryColor2,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                            child: Text(
                          "Operation Hour During MCO",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RewardPage()));
                },
                child: SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: kSecondaryColor2,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/new3.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Icon(
                          LineAwesomeIcons.plus,
                          size: 35,
                          color: kPrimaryColor2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                            child: Text(
                          "Happy Recycling Day",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RewardPage()));
                },
                child: SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: kSecondaryColor2,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/new4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Icon(
                          LineAwesomeIcons.plus,
                          size: 35,
                          color: kPrimaryColor2,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                            child: Text(
                          "Biodiesel production from used cooking oil",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
