import 'package:flutter/material.dart';

import '../profile/profile_user.dart';

class CharityHistoryUser extends StatefulWidget {
  const CharityHistoryUser({Key? key}) : super(key: key);

  @override
  _CharityHistoryUserState createState() => _CharityHistoryUserState();
}

class _CharityHistoryUserState extends State<CharityHistoryUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFe53547),
          elevation: 1,
          toolbarHeight: 55,
          automaticallyImplyLeading: false,
          title: const Text("Donation history"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle_sharp, size: 30),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserProfile(),
                ));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: const <Widget>[
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hintText: 'Filter history by name',
              ),
            ),
          ],
        )));
  }
}
