import 'package:flutter/material.dart';

import '../charity/charity_builder.dart';
import '../models/charity_entity.dart';

class DetailCharity extends StatelessWidget{
  final Charity charityDetailList;

  const DetailCharity({Key? key, required this.charityDetailList}) : super(key: key);

  @override
  Widget build(BuildContext context)
  => Scaffold(
      appBar: AppBar(
        title: Text(charityDetailList.name),
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFFe53547),
        elevation: 1,
        toolbarHeight: 55,),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 15),
          Image.network(charityDetailList.imageUrl,
              fit: BoxFit.cover,
              width: 180,
              height: 150),

          const SizedBox(height: 20),
          buildAboutCharity(charityDetailList),
        ],
      )
  );
}

