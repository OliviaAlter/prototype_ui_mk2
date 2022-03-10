import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/profile/profile_org.dart';
import 'package:prototype_ui_mk2/profile/profile_user.dart';

import '../basic_data/org_user_data.dart';
import '../basic_data/user_data.dart';
import '../models/user_entity.dart';
import '../widget/app_bar_base_widget.dart';
import '../widget/user_profile_custom_widget.dart';
import '../widget/user_profile_text_view_widget.dart';

class EditOrgProfilePage extends StatefulWidget {
  const EditOrgProfilePage({Key? key}) : super(key: key);

  @override
  _EditOrgProfilePageStage createState() => _EditOrgProfilePageStage();
}


class _EditOrgProfilePageStage extends State<EditOrgProfilePage>{
  User user = UserOrgPreference.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBarOrgProfileEditMode(context),
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
                    MaterialPageRoute(builder: (context) => const UserOrgProfile()),
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