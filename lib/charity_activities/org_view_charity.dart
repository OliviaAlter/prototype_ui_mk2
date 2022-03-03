import 'package:flutter/material.dart';

import '../basic_data/charity_event_data.dart';
import '../models/charity_entity.dart';
import '../profile/profile.dart';
import '../widget/charity_detail_widget.dart';

late List<Charity> charityDetailList;

class EventOnGoing extends StatefulWidget {
  const EventOnGoing({Key? key}) : super(key: key);

  @override
  _EventOnGoingState createState() => _EventOnGoingState();
}

class _EventOnGoingState extends State<EventOnGoing>{

  Widget buildCharity(Charity charityLocation, int index)
  => ListTile(
    leading: Image.network(
      charityLocation.imageUrl,
      fit: BoxFit.cover,
      width: 50,
      height: 50,
    ),
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)
          => DetailCharity(charityDetailList: charityDetailList[index])));
    },
    title: Text(charityLocation.name),
    subtitle: Text("Charity location : " + charityLocation.address),
  );

  @override
  void initState(){
    super.initState();
    charityDetailList = allCharitiesDetails;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(5),
            height: 222,
            child: SizedBox(
              child: Container(
                margin: const EdgeInsets.all(15),
                height: 200,
                width: 350,
                child: Image.asset(
                  "assets/images/a.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
            child: Text("Featured charities",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            height: 600,
            width: 400,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                      itemCount: charityDetailList.length,
                      itemBuilder: (context, index) {
                        final charity = charityDetailList[index];
                        return buildCharity(charity, index);
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
