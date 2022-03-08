import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/charity_activities/donation_charities_detail.dart';

import '../basic_data/charity_event_data.dart';
import '../models/charity_entity.dart';
import '../widget/charity_detail_widget.dart';

late List<Charity> charityDetailList;

class TestListView extends StatefulWidget {
  const TestListView({Key? key}) : super(key: key);

  @override
  _TestListViewState createState() => _TestListViewState();
}

class _TestListViewState extends State<TestListView>{

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = SizedBox(
        height: 470,
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
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fill),
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
            height: 470.0,
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
