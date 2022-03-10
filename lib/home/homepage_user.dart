import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prototype_ui_mk2/profile/profile_user.dart';

import '../charity_activities/donation_charities_slider_user.dart';
import '../charity_activities/user_view_charity.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({Key? key}) : super(key: key);

  @override
  _HomePageUserState createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const EventSliderUser(),
    const CharityOnGoingUser(),
    Container(), //
  ];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: const Color(0xFFe53547),
        elevation: 1,
        toolbarHeight: 55,
        automaticallyImplyLeading: false,
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.account_circle_sharp, size : 30),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const UserProfile()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFe53547),
        elevation: 0,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.handHoldingHeart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.heartbeat),
            label: "",
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
