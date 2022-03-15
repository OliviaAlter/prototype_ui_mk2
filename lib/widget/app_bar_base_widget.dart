import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/home/homepage_org.dart';
import 'package:prototype_ui_mk2/home/homepage_user.dart';
import 'package:prototype_ui_mk2/login/login.dart';
import 'package:prototype_ui_mk2/profile/edit_profile_user.dart';
import 'package:prototype_ui_mk2/profile/profile_org.dart';

import '../profile/edit_profile_org.dart';
import '../profile/profile_user.dart';

AppBar buildAppBarUserProfile(BuildContext context){
  return AppBar(
      centerTitle: true,
      title: const Text(
        "User profile",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFe53547),
      elevation: 1,
      toolbarHeight: 55,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, size: 30),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePageUser()),
          );
        },
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Menu',
              child: const Icon(
                Icons.more_vert,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)
                              => const EditProfilePage()),
                            );
                          },
                          child: const Text("Edit profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFec94a4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)
                              => const LoginScreen()),
                            );
                          },
                          child: const Text("Log out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFec94a4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
        )
      ]
  );
}

AppBar buildAppBarUserProfileEditMode(BuildContext context){
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

AppBar buildAppBarOrgProfile(BuildContext context){
  return AppBar(
      centerTitle: true,
      title: const Text(
        "Organization profile",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFe53547),
      elevation: 1,
      toolbarHeight: 55,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, size: 30),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePageOrg()),
          );
        },
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Menu',
              child: const Icon(
                Icons.more_vert,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)
                              => const EditOrgProfilePage()),
                            );
                          },
                          child: const Text("Edit profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFec94a4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)
                              => const LoginScreen()),
                            );
                          },
                          child: const Text("Log out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFec94a4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
        )
      ]
  );
}


AppBar buildAppBarOrgProfileEditMode(BuildContext context){
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
          MaterialPageRoute(builder: (context) => const UserOrgProfile()),
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

