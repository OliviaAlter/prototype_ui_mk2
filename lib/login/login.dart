import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
  }

  class _LoginScreenState extends State<LoginScreen> {

    // form key
/*
    final _formKey = GlobalKey<FormState>();

  // editing controller

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    @override
  Widget build(BuildContext context) {

      final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15 ),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
      );

      final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.key),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15 ),
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
      );

      final loginButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.lightBlueAccent,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
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
              padding: const EdgeInsets.all(38),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                     height: 200,
                     child: Image.asset("assets/images/a.png", fit: BoxFit.contain,),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    emailField,
                    SizedBox(
                      height: 17,
                    ),
                    passwordField,
                    SizedBox(
                      height: 22,
                    ),
                    loginButton,
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Text("Forgot your password ?",
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15
                          ),
                        ),
                        GestureDetector(onTap: () {}),
                      ],

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
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/c2/47/e9/c247e913a0214313045a8a5c39f8522b.jpg')
                )
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 58.0,
                    child: Text('Donation'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white38,
                        hintText: 'Username'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.white38,
                        hintText: 'Password'),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot your Password?',
                        style: const TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    height: 15.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('LOGIN')),
                    color: Colors.redAccent,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: const Text('Register')),
                    color: Colors.grey,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 8.0,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 8.0,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // TODO Social Icons
                    ],
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