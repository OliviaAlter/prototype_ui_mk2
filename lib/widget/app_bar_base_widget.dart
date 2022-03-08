import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/home/homepage.dart';

import '../login/login_nav.dart';
import '../profile/profile.dart';

AppBar buildAppBarProfile(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Profile",
      textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20
      ),
    ),
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xFFe53547),
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
            MaterialPageRoute(builder: (context)
            => const SignupHelper()),
          );
        },
        child: const Text("Log out",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xFFfaedef)
          ),
        ),
      ),
    ],
  );
}

AppBar buildAppBarProfileEditMode(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Editing profile",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20
      ),
    ),
    automaticallyImplyLeading: false,
    backgroundColor:const Color(0xFFe53547),
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

