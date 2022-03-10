import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/login/login_nav.dart';

import '../forget_password/forget_password.dart';
import '../home/homepage_splash_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

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


    Widget buildRowRegister(String firstText, String childText) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(firstText),
          GestureDetector(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)
              => const SignupHelper()),
            );
          },
            child: Text(childText,
              style: const TextStyle(
                  color: Color(0xFFec94a4),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
        ],
      );
    }

    Widget buildRowForgetPassword(String firstText, String childText) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(firstText),
          GestureDetector(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)
              => const ForgetPasswordScreen()),
            );
          },
            child: Text(childText,
              style: const TextStyle(
                  color: Color(0xFFec94a4),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      );
    }

    final emailField = buildTextField("Email", emailController, false);
    final passwordField = buildTextField("Password", passwordController, true);

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xFFe53547),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)
            => const HomePageSplash()),
          );
        },
        child: const Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26,
              color: Color(0xFFfaedef),
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      SizedBox(
                        height: 160,
                        child: Image.asset("assets/images/a.jpg", fit: BoxFit.contain,),
                      ),
                      const SizedBox(
                        height: 40,
                        child: Text("Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              color: Color(0xFFec94a4),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      emailField,
                      const SizedBox(
                        height: 17,
                      ),
                      passwordField,
                      const SizedBox(
                        height: 25,
                      ),
                      loginButton,
                      const SizedBox(
                        height: 25,
                      ),
                      buildRowForgetPassword("","Forgot your password ?"),
                      const SizedBox(
                          height: 17
                      ),
                      buildRowRegister("","Sign up"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}