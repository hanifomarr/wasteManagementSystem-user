import 'package:cowmes/constants.dart';
import 'package:cowmes/pages/history/historyPage.dart';
import 'package:cowmes/pages/home/homePage.dart';
import 'package:cowmes/pages/profile/profilePage.dart';
import 'package:cowmes/pages/reward/rewardPage.dart';
import 'package:flutter/material.dart';

class MainNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainNavBarState();
  }
}

class _MainNavBarState extends State<MainNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    RewardPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [
          Icons.home,
          Icons.attach_money,
          Icons.history,
          Icons.account_circle,
        ]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    title: Text(''),
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex == key
                            ? kPrimaryColor2
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Icon(value),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
