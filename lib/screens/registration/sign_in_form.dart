// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:justus/reusables/Navigationbar.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.blue)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  "assets/icons/email.svg",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        const Text("Password"),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter your password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.blue)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  "assets/icons/password.svg",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 16),
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SwipeNavigation()));
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.light
                          ? MyColors.lightPrimaryColor
                          : MyColors.darkPrimaryColor,
                  minimumSize: const Size(double.infinity, 56),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ))),
              icon: Icon(
                CupertinoIcons.arrow_right,
                color: Color(0xFFFE003),
              ),
              label: Text("Sign In", style: TextStyle(fontSize: 16))),
        )
      ],
    ));
  }
}
