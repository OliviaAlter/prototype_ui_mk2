import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/login/login.dart';

import '../home/homepage_splash_org_register.dart';

class RegisterOrgScreen extends StatefulWidget {
  const RegisterOrgScreen({Key? key}) : super(key: key);

  @override
  _RegisterOrgScreenState createState() => _RegisterOrgScreenState();
}

class _RegisterOrgScreenState extends State<RegisterOrgScreen> {

  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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

    Widget buildRowLogin(String firstText, String childText) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(firstText),
          GestureDetector(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)
              => const LoginScreen()),
            );
          },
            child: Text(childText,
              style: const TextStyle(
                  color: Color(0xFFec94a4),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
        ],
      );
    }

    final emailField = buildTextField("Organization email", emailController, false);
    final nameField = buildTextField("Organization name", nameController, false);
    final passwordField = buildTextField("Confirm password", passwordController, true);
    final confirmPasswordField = buildTextField("Password", confirmPasswordController, true);

    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xFFe53547),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePageOrgSplash()),
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
                      height: 160,
                      child: Image.asset("assets/images/a.jpg", fit: BoxFit.contain,),
                    ),
                    const SizedBox(
                      height: 40,
                      child: Text("Create organization's account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
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
                      height: 25,
                    ),
                    signupButton,
                    const SizedBox(
                      height: 25,
                    ),
                    buildRowLogin("","Already have an account ?"),
                    const SizedBox(
                        height: 15
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}