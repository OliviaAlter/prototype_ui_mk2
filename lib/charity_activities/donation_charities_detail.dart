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

    final donateButton = SizedBox(
        width: 100,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFe53547),
          child: MaterialButton(
            minWidth: 100,
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)
                => CharityEventDonate(url)),
              );
            },
            child: const Text("Donate",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFFfaedef),
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Details",
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
              width: 235,
              height: 235),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              const SizedBox(width: 8),
              SizedBox(
                width: 60,
                height: 65,
                child: Image.asset("assets/images/dollars.png", fit: BoxFit.fitWidth),
              ),
              const SizedBox(
                height: 60,
                width: 135,
                child: Text("Remaining days  \n       13 days",
                    style: TextStyle(
                        fontSize: 19,
                        color: Color(0xFFe53547),
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ),
              SizedBox(
                width: 60,
                height: 65,
                child: Image.asset("assets/images/calendar.png", fit: BoxFit.fitWidth),
              ),
              const SizedBox(width: 8),
              const SizedBox(
                height: 60,
                width: 135,
                child: Text("Remaining days  \n       13 days",
                    style: TextStyle(
                        fontSize: 19,
                        color: Color(0xFFe53547),
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ),
            ],
          ),
          const SizedBox(height: 45),
          buildAboutCharityDemo(),
          const SizedBox(height: 20),
          donateButton
        ],
      ),
    );
  }
}