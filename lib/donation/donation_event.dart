import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({Key? key}) : super(key: key);

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
                    color: Color(0x0ff41324),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            height: 600,
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