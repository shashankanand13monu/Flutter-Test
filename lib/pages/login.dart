import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          // ignore: prefer_const_constructors
          Text(
            "Login Page",
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Image.asset(
            "assets/Images/login_.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: Column(
              children: [
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
