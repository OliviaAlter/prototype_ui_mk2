import 'package:flutter/material.dart';

class UserNumbersWidget extends StatelessWidget {
  const UserNumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildDivider(),
            buildText(context, 'Joined', 'April 2018'),
            buildDivider(),
            buildText(context, 'Charities joined  ', '3'),
            //buildDivider(),
            buildText(context, 'Total donation ', '23'),
          ],
        ),
      );

  Widget buildText(BuildContext context, String value, String text)
  => MaterialButton(
    padding: const EdgeInsets.symmetric(vertical: 15),
    onPressed: () {},
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 2),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
        ),
      ],
    ),
  );

  Widget buildDivider() =>  const SizedBox(
      height: 25,
      child: VerticalDivider()
  );

}