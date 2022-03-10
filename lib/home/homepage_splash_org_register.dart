import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../home/homepage_user.dart';
import 'homepage_org.dart';

class HomePageOrgSplash extends StatefulWidget {
  const HomePageOrgSplash({Key? key}) : super(key: key);

  @override
  _HomePageOrgSplashState createState() => _HomePageOrgSplashState();
}

class _HomePageOrgSplashState extends State<HomePageOrgSplash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const HomePageOrg()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to our app!"),
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
            children: <Widget> [
              SizedBox(
                height: 200,
                child: Image.asset("assets/images/a.jpg", fit: BoxFit.contain),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Welcome onboard !",
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
