import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/charity_activities/donation_charities_detail.dart';

import '../models/charity_entity.dart';

late List<Charity> charityDetailList;

class EventSlider extends StatefulWidget {
  const EventSlider({Key? key}) : super(key: key);

  @override
  _EventSliderState createState() => _EventSliderState();
}

class _EventSliderState extends State<EventSlider>{

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = SizedBox(
        height: 350,
        child: CarouselSlider(
          items: [
            'https://fikrirasyid.com/wp-content/uploads/2016/10/placeholder-portrait-9-16.jpg',
            'https://fikrirasyid.com/wp-content/uploads/2016/10/placeholder-portrait-9-16.jpg',
            'https://fikrirasyid.com/wp-content/uploads/2016/10/placeholder-portrait-9-16.jpg',
            'https://fikrirasyid.com/wp-content/uploads/2016/10/placeholder-portrait-9-16.jpg',
            'https://fikrirasyid.com/wp-content/uploads/2016/10/placeholder-portrait-9-16.jpg',
            'https://fikrirasyid.com/wp-content/uploads/2016/10/placeholder-portrait-9-16.jpg'
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
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 35,
          ),
          imageCarousel,
        ],
      ),
    );
  }
}
