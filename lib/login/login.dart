import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/home/homepage.dart';

import '../register/register.dart';

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

    Widget buildTextField(String text, Icon icon, TextEditingController controller, bool obscureTextOrNot) {
      return TextFormField(
          autofocus: false,
          controller: controller,
          obscureText: obscureTextOrNot,
          onSaved: (value) {
            controller.text = value!;
          },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
            prefixIcon: icon ,
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: text,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
          )
        )
      );
    }

    Widget buildRow(String firstText, String childText) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(firstText),
          GestureDetector(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const RegisterScreen()),
            );
          },
            child: Text(childText,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 17),
            ),
          ),
        ],
      );
    }

    final emailField = buildTextField("Email", const Icon(Icons.mail), emailController, false);
    final passwordField = buildTextField("Password", const Icon(Icons.key), passwordController, true);

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.lightBlueAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: const Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
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
                        height: 180,
                        child: Image.asset("assets/images/a.jpg", fit: BoxFit.contain,),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      emailField,
                      const SizedBox(
                        height: 17,
                      ),
                      passwordField,
                      const SizedBox(
                        height: 22,
                      ),
                      loginButton,
                      const SizedBox(
                        height: 25,
                      ),
                      buildRow("","Forgot your password ?"),
                      const SizedBox(
                          height: 15
                      ),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            child: Divider(
                              color: Colors.blueGrey,
                              height: 8.0,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Or',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17)),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.blueGrey,
                              height: 8.0,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                          height: 10
                      ),
                      buildRow("","Don't have an account ?"),
                      const SizedBox(
                          height: 10
                      ),
                      buildRow("","Sign up"),
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