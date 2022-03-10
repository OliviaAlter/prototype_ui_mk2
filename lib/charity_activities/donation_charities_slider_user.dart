import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/charity_activities/donation_charities_detail.dart';

import '../models/charity_entity.dart';

late List<Charity> charityDetailList;

class EventSliderUser extends StatefulWidget {
  const EventSliderUser({Key? key}) : super(key: key);

  @override
  _EventSliderUserState createState() => _EventSliderUserState();
}

class _EventSliderUserState extends State<EventSliderUser>{

  @override
  Widget build(BuildContext context) {

    Widget buildListViewEventForCharity () {
      return ListTile(
        trailing: const Icon(Icons.more_vert),
        leading: Image.asset("assets/images/a.jpg"),
        title: const Text("Dallas Morning News",
            style: TextStyle(
                fontFamily: "CentraleSansRegular",
                fontSize: 18,
                fontWeight: FontWeight.bold
            )),
        subtitle: const Text("Washington",
            style: TextStyle(
              fontFamily: "CentraleSansRegular",
              fontSize: 15,
            )),
        onTap: () {},
      );
    }

    Widget imageCarousel = SizedBox(
        height: 350,
        child: CarouselSlider(
          items: [
            'https://media.discordapp.net/attachments/932856866655068180/951391813174956082/20200628YM01_blood_donation_pack.jpg',
            'https://media.discordapp.net/attachments/932856866655068180/951389752727330816/bistandsminister-isabella-lovin-besoker-en-skola-i-civilian-protection-site-i-juba-sydsudan-3.png',
            'https://media.discordapp.net/attachments/932856866655068180/951391958838960189/588A8245_1-edit.png',
            'https://2lkcp81qv9i72rn88i4dfqq1-wpengine.netdna-ssl.com/wp-content/uploads/2016/10/iStock-540095978-1024x683.jpg',
            'https://cdn.discordapp.com/attachments/932856866655068180/951389860202184734/90.png',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fitWidth),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(builder: (context)
                            => CharityEventDetail(i),
                            ),
                          );
                        }));
              },
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: 350,
          ),
        ));

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 32,
              ),
              imageCarousel,
              Container(
                margin: const EdgeInsets.all(13),
                height: 580,
                width: 400,
                child: Column(
                  children: <Widget>[
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                    buildListViewEventForCharity(),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
