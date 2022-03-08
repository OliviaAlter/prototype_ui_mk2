import 'package:flutter/material.dart';

import '../charity/charity_builder.dart';
import '../donation/donation_user.dart';

class CharityEventDetail extends StatefulWidget {
  final String url;
  CharityEventDetail(this.url);

  @override
  _CharityEventDetailScreen createState() => _CharityEventDetailScreen(url);
}

class _CharityEventDetailScreen extends State<CharityEventDetail> {
  final String url;
  _CharityEventDetailScreen(this.url);

  @override
  Widget build(BuildContext context) {

    final donateButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xFFe53547),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)
            => CharityEventDonate(url)),
          );
        },
        child: const Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26,
              color: Color(0xFFfaedef),
              fontWeight: FontWeight.bold),
        ),
      ),
    );


    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Test",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xFFe53547),
          elevation: 1,
          toolbarHeight: 55,
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 15),
            Image.network(url,
                fit: BoxFit.cover,
                width: 250,
                height: 250),
            const SizedBox(height: 20),
            buildAboutCharityDemo(),
            const SizedBox(height: 50),
            donateButton
          ],
        ),
    );
  }
}