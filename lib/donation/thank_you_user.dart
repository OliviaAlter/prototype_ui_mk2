import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/home/homepage_user.dart';

class ThankYouUserSplash extends StatefulWidget {
  const ThankYouUserSplash({Key? key}) : super(key: key);

  @override
  _ThankYouUserSplashState createState() => _ThankYouUserSplashState();
}

class _ThankYouUserSplashState extends State<ThankYouUserSplash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const HomePageUser()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thank you !"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFe53547),
        elevation: 1,
        toolbarHeight: 55,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 45,
              ),
              SizedBox(
                height: 200,
                child: Image.asset("assets/images/a.jpg", fit: BoxFit.contain),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Thank you for\n your support !",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 19)
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                  height: 200
              ),
            ],
          ),
        ),
      ),
    );
  }
}
