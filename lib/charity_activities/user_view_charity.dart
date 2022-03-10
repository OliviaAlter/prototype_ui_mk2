import 'package:flutter/material.dart';

import '../basic_data/charity_event_data.dart';
import '../models/charity_entity.dart';
import '../widget/charity_detail_widget.dart';


class CharityOnGoingUser extends StatefulWidget {
  const CharityOnGoingUser({Key? key}) : super(key: key);

  @override
  _CharityOnGoingUserState createState() => _CharityOnGoingUserState();
}


class _CharityOnGoingUserState extends State<CharityOnGoingUser>{

  late List<Charity> charityList;
  late List<Charity> filteredList;

  @override
  void initState(){
    super.initState();
    charityList = allCharitiesDetails;
    setState(() {
      filteredList = charityList;
    });
  }

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
          => DetailCharity(charityDetailList: charityList[index])));
    },
    title: Text(charityLocation.name),
    subtitle: Text("Charity location : " + charityLocation.address),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          TextField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Filter charities by name or address',
            ),
            onChanged: (string) {
              setState(() {
                filteredList = charityList
                    .where((charity) => (charity.name
                    .toLowerCase()
                    .contains(string.toLowerCase()) ||
                    charity.address.toLowerCase().contains(string.toLowerCase())))
                    .toList();
              });
            },
          ),
          Container(
            margin: const EdgeInsets.all(18),
            height: 600,
            width: 400,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    ListTile(
                                      leading: Image.network(
                                        filteredList[index].imageUrl,
                                        fit: BoxFit.cover,
                                        width: 50,
                                        height: 50,
                                      ),
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)
                                        => DetailCharity(charityDetailList: filteredList[index])));
                                      },
                                      title: Text(filteredList[index].name),
                                      subtitle: Text("Charity location : " + filteredList[index].address),
                                    )
                                  ],
                                )
                            )
                        );
                      }),
                ),
                const SizedBox(
                  height: 45.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
