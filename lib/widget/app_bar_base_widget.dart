import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/home/homepage.dart';
import 'package:prototype_ui_mk2/login/login.dart';

import '../profile/profile.dart';

AppBar buildAppBarProfile(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Profile"),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.lightBlueAccent,
    elevation: 1,
    toolbarHeight: 55,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, size : 30),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
        child: const Text("Logout",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15,
              color: Colors.black87
          ),
        ),
      ),
    ],
  );
}

AppBar buildAppBarProfileEditMode(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Editing profile"),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.lightBlueAccent,
    elevation: 1,
    toolbarHeight: 55,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, size : 30),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const UserProfile()),
        );
      },
    ),
  );
}

