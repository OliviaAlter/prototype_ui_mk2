import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../home/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

  class _SplashState extends State<Splash> {
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
        backgroundColor: Colors.white38,
          body: Stack(
            children: <Widget>[
              Image.asset("assets/images/a.png",
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,),
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      SpinKitPumpingHeart(
                        color: Colors.lightBlueAccent,
                        size: 90.0,
                      ),
                      SizedBox(
                        height: 440,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }
