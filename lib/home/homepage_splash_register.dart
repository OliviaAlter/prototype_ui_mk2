import 'package:flutter/material.dart';

import '../home/homepage.dart';

class HomePageSplash extends StatefulWidget {
  const HomePageSplash({Key? key}) : super(key: key);

  @override
  _HomePageSplashState createState() => _HomePageSplashState();
}

class _HomePageSplashState extends State<HomePageSplash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent,
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
            children: <Widget> [
              SizedBox(
                height: 180,
                child: Image.asset("assets/images/a.jpg", fit: BoxFit.contain),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Welcome onboard !",
                  style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17)
              ),
              const SizedBox(
                  height: 250
              ),
            ],
          ),
        ),
      ),
    );
  }
}
