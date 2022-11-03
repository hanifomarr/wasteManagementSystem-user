import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:cowmes/constants.dart';
import 'package:cowmes/animation/FadeAnimation.dart';
import 'package:cowmes/services/auth_service.dart';
import 'package:cowmes/widgets/provider_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 110,
                    width: 110,
                    margin: EdgeInsets.only(top: 60),
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 35,
                            width: 35,
                            margin: EdgeInsets.only(left: 60),
                            decoration: BoxDecoration(
                              color: kPrimaryColor2,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              heightFactor: 15,
                              widthFactor: 15,
                              child: Icon(
                                LineAwesomeIcons.pen,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hanif',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'hanif@gmail.com',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kPrimaryColor2,
                    ),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("Container clicked");
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kPrimaryColor3,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineAwesomeIcons.user_shield,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Privacy",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            LineAwesomeIcons.angle_right,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Container clicked");
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kPrimaryColor3,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineAwesomeIcons.question_circle,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "FAQ",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            LineAwesomeIcons.angle_right,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Container clicked");
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kPrimaryColor3,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineAwesomeIcons.phone,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Help & Support",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            LineAwesomeIcons.angle_right,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Container clicked");
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kPrimaryColor3,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineAwesomeIcons.user_plus,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Invite a Friend",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            LineAwesomeIcons.angle_right,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      try {
                        AuthService auth = Provider.of(context).auth;
                        await auth.signOut();
                        print("Signed Out");
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kPrimaryColor3,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineAwesomeIcons.alternate_sign_out,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Sign Out",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
