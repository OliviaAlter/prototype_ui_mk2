import 'package:flutter/material.dart';

import '../basic_data/org_user_data.dart';
import '../models/user_entity.dart';
import '../widget/app_bar_base_widget.dart';
import '../widget/org_profile_number_widget.dart';
import '../widget/user_profile_custom_widget.dart';
import 'edit_profile_org.dart';

class UserOrgProfile extends StatefulWidget {
  const UserOrgProfile({Key? key}) : super(key: key);
  @override
  _UserOrgProfileState createState() => _UserOrgProfileState();
}

class _UserOrgProfileState extends State<UserOrgProfile>{
  @override
  Widget build(BuildContext context) {
    const user = UserOrgPreference.myUser;

    return Scaffold(
      appBar: buildAppBarOrgProfile(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const EditOrgProfilePage()),
              );
            },
            isEdit: true,
          ),
          const SizedBox(height: 20),
          buildName(user),
          const OrgNumbersWidget(),
          const SizedBox(height: 35),
          buildAboutUser(user)
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(height: 10),
      Text(
        user.email,
        style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black87),
      ),
    ],
  );

  Widget buildAboutUser(User user) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black87, height: 0.4),
          ),
          const SizedBox(height: 18),
          Text(
            user.about,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black87, height: 0.8),
          ),
        ],
      )
  );
}
