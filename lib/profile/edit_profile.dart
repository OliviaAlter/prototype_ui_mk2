import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/profile/profile.dart';

import '../basic_data/user_data.dart';
import '../models/user_entity.dart';
import '../widget/app_bar_base_widget.dart';
import '../widget/user_profile_custom_widget.dart';
import '../widget/user_profile_text_view_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageStage createState() => _EditProfilePageStage();
}


class _EditProfilePageStage extends State<EditProfilePage>{
  User user = UserPreference.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBarProfileEditMode(context),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(height: 20),
        ProfileWidget(
          imagePath: user.imagePath,
          isEdit : true,
          onClicked: () async {},
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          label: "Full name",
          text: user.name,
          onChanged: (name) {},
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          label: "Email",
          text: user.email,
          onChanged: (name) {},
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          label: "About",
          text: user.about,
          maxLines: 4,
          onChanged: (about) {},
        ),
        const SizedBox(height: 16),
        Container(
            height: 35,
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const UserProfile()),
                  );
                },
                child: const Text(
                  "Save", textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFdb7b86),
                      fontWeight: FontWeight.bold, fontSize: 20),
                ))
        ),
      ],
    ),
  );

}