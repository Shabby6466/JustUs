import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justus/screens/registration/sign_in_form.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 60),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Never be apart",
                  style: TextStyle(
                    color: Colors.purple.shade900,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              Center(
                child: Image.asset(
                  "assets/icons/bears.png",
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(height: 45),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Fully Customize your love space to make it feel like home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              InkWell(
                onTap: () {
                  showGeneralDialog(
                      context: context,
                      pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) =>
                          Center(
                              child: Container(
                                  height: 630,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 30),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.96),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Scaffold(
                                      backgroundColor: Colors.transparent,
                                      body: Column(
                                        children: [
                                          Text(
                                            "Sign In",
                                            style: TextStyle(
                                              fontSize: 34,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 16),
                                            child: Text(
                                              "Welcome back, you've been missed!and Welcome back and you i we, you've been missed! Welcome back, you've been missed!",
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SignInForm(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Divider(),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                                child: Text(
                                                  "OR",
                                                  style: TextStyle(
                                                    color: Colors.black26,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Divider(),
                                              ),
                                            ],
                                          )
                                        ],
                                      )))));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  width: 250,
                  child: Center(
                    child: Text(
                      "START NOW",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Connect with your partner",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
