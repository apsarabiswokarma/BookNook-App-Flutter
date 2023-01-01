import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true, //password hidden garna
                      decoration: const InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.green),

                      // onPressed: ()
                      // this can take multiple statements
                      //   print("didi");
                      //   print("vhai");
                      // },

                      // this takes only one statement
                      // onPressed: () => print("didi"),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: const Text("LOGIN"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
