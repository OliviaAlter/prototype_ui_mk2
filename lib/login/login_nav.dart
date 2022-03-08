import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prototype_ui_mk2/profile/profile.dart';

import '../register/register.dart';
import '../register/register_org.dart';

class SignupHelper extends StatefulWidget {
  const SignupHelper({Key? key}) : super(key: key);

  @override
  _SignupHelperState createState() => _SignupHelperState();
}

class _SignupHelperState extends State<SignupHelper> {
  //navigation tab
  int _currentIndex = 0;
  final List<Widget> _children = [
    const RegisterScreen(),
    const RegisterOrgScreen(), //
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
