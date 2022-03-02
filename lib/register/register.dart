import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/login/login.dart';

import '../home/homepage_splash_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


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

    Widget buildRowRegister(String firstText, String childText) {
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

    Widget buildRowLogin(String firstText, String childText) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(firstText),
          GestureDetector(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()),
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
    final nameField = buildTextField("Name", const Icon(Icons.mail), nameController, false);
    final passwordField = buildTextField("Confirm password", const Icon(Icons.mail), passwordController, true);
    final confirmPasswordField = buildTextField("Password", const Icon(Icons.key), confirmPasswordController, true);

    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.lightBlueAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePageSplash()),
          );
        },
        child: const Text("Sign up",
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
                      nameField,
                      const SizedBox(
                        height: 17,
                      ),
                      passwordField,
                      const SizedBox(
                        height: 17,
                      ),
                      confirmPasswordField,
                      const SizedBox(
                        height: 17,
                      ),
                      signupButton,
                      const SizedBox(
                        height: 25,
                      ),
                      buildRowLogin("","Already have an account ?"),
                      const SizedBox(
                          height: 15
                      ),
                      buildRowLogin("","Sign in"),
                      const SizedBox(
                          height: 10
                      ),
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