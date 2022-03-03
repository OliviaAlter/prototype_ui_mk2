import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prototype_ui_mk2/profile/profile.dart';

import '../charity/charity_event_detail.dart';
import '../charity_activities/org_view_charity.dart';
import '../donation_news/donation_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Donation(),
    const EventOnGoing(),
    //const TestRun(),
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
        backgroundColor: Colors.lightBlueAccent,
        elevation: 1,
        toolbarHeight: 55,
        leading: IconButton(
          icon: const Icon(Icons.account_circle_sharp, size : 30),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const UserProfile()),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        elevation: 0,
        iconSize: 32,
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
