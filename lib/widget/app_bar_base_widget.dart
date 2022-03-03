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
        child: const Text("Log out",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 17,
              color: Colors.blueGrey
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

AppBar buildAppBarSearch(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Charity organizations",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.lightBlueAccent,
    elevation: 1,
    toolbarHeight: 55,
  );
}

