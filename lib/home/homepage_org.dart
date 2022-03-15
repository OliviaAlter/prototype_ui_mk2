import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../charity_activities/donation_charities_slider_org.dart';
import '../charity_activities/org_view_charity.dart';
import '../charity_history/org_charity_history.dart';

class HomePageOrg extends StatefulWidget {
  const HomePageOrg({Key? key}) : super(key: key);

  @override
  _HomePageOrgState createState() => _HomePageOrgState();
}

class _HomePageOrgState extends State<HomePageOrg> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const EventSliderOrg(),
    const CharityOnGoingOrg(),
    const CharityHistoryOrg(), //
  ];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
