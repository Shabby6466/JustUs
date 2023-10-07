import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justus/screens/OnBoardingScreen/CustomSignInDialoug.dart';
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
                  customSignInDialogue(context);
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