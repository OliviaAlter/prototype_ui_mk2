import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            height: 200,
            width: 400,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
                const SizedBox(width: 20),
                Image.asset("assets/images/a.jpg", height: 100, width: 100,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            height: 290,
            width: 400,
            child: ListView(
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
    );
  }

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

}