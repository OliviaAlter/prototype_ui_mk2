import 'package:flutter/material.dart';
import 'package:money2/money2.dart';

class CharityEventDonate extends StatefulWidget {
  final String url;
  CharityEventDonate(this.url);
  final TextEditingController moneyController = TextEditingController();

  @override
  _CharityEventDonateScreen createState() => _CharityEventDonateScreen(url);
}

class _CharityEventDonateScreen extends State<CharityEventDonate> {
  final String url;
  bool isSelected = false;
  _CharityEventDonateScreen(this.url);

  @override
  Widget build(BuildContext context) {

    final TextEditingController customAmount = TextEditingController();

    Widget buildTextField(String text, TextEditingController controller, bool obscureTextOrNot) {
      return TextFormField(
          autofocus: false,
          controller: controller,
          obscureText: obscureTextOrNot,
          onSaved: (value) {
            controller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: text,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
          )
      );
    }

    final customField = buildTextField("Custom amount", customAmount, false);
    Money donation1 = Money.fromInt(500, code: 'USD');
    Money donation2 = Money.fromInt(1000, code: 'USD');
    Money donation3 = Money.fromInt(2500, code: 'USD');

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Donation",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xFFe53547),
          elevation: 1,
          toolbarHeight: 55,
        ),
        body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 15),
              Image.network(url,
                  fit: BoxFit.cover,
                  height: 100),
              const SizedBox(height: 20),
              const Text("Your donation will help us \n achieve our goal faster",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 21,
                    color: Colors.black87
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: <Widget>[
                  const SizedBox(width: 15),
                  SizedBox(
                      height: 60,
                      width: 110,
                      //color: const Color(0xFFe53547),
                      child: FlatButton(
                        color:  const Color(0xFFff4d4d),
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Text(donation1.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFFfaedef),
                                fontWeight: FontWeight.bold)
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: isSelected ? const Color(0xFFff4d4d) : Colors.transparent, width: 1),
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      )
                  ),
                  const SizedBox(width: 25),
                  SizedBox(
                      height: 60,
                      width: 110,
                      child: FlatButton(
                        color:  const Color(0xFFff4d4d),
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Text(donation2.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFFfaedef),
                                fontWeight: FontWeight.bold)
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: isSelected ? const Color(0xFFff4d4d) : Colors.transparent, width: 1),
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      )
                  ),
                  const SizedBox(width: 25),
                  SizedBox(
                      height: 60,
                      width: 110,
                      child: FlatButton(
                        color:  const Color(0xFFff4d4d),
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Text(donation3.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFFfaedef),
                                fontWeight: FontWeight.bold)
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: isSelected ? const Color(0xFFff4d4d) : Colors.transparent, width: 1),
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 55),
              Row(
                children: <Widget>[
                  const SizedBox(width: 150),
                  SizedBox(
                      height: 60,
                      width: 110,
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Text(donation3.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFFfaedef),
                                fontWeight: FontWeight.bold)
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: isSelected ? const Color(0xFFe53547) : Colors.transparent, width: 1),
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 55),
            ]
        )
    );
  }
}