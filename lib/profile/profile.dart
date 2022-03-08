import 'package:flutter/material.dart';

import '../basic_data/user_data.dart';
import '../models/user_entity.dart';
import '../widget/app_bar_base_widget.dart';
import '../widget/user_profile_custom_widget.dart';
import '../widget/user_profile_number_widget.dart';
import 'edit_profile.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>{
  @override
  Widget build(BuildContext context) {
    const user = UserPreference.myUser;

    return Scaffold(
      appBar: buildAppBarProfile(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)
                => const EditProfilePage()),
              );
            },
            isEdit: true,
          ),
          const SizedBox(height: 20),
          buildName(user),
          const NumbersWidget(),
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
