import 'package:flutter/material.dart';
import '../basic_data/charity_event_data.dart';
import '../models/charity_entity.dart';
import '../widget/app_bar_base_widget.dart';
import '../widget/charity_detail_widget.dart';

late List<Charity> charityDetailList;

class TestRun extends StatefulWidget {
  const TestRun({Key? key}) : super(key: key);

  @override
  _FilterLocalListPageState createState() => _FilterLocalListPageState();
}

class _FilterLocalListPageState extends State<TestRun>{

  @override
  void initState(){
    super.initState();
    charityDetailList = allCharitiesDetails;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBarSearch(context),
    body: Column(
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
  );

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
}