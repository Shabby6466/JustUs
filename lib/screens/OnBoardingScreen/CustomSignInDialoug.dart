// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:justus/screens/registration/sign_in_form.dart';

Future<Object?> customSignInDialogue(BuildContext context) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Sign In",
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        Tween<Offset> tween;
        tween = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          Center(
              child: SingleChildScrollView(
            child: Container(
              height: 570,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? MyColors.lightBackgroundColor.withOpacity(0.8)
                    : MyColors.darkBackgroundColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                  body: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                                "Elevate your bond and create lasting memories treasured for a lifetime,\n only on JustUs.!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ),
                          const SignInForm(),
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       child: Divider(
                          //         color: Theme.of(context).brightness ==
                          //                 Brightness.dark
                          //             ? Colors.black
                          //             : Colors.white,
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding:
                          //           const EdgeInsets.symmetric(horizontal: 16),
                          //       child: Text(
                          //         "OR",
                          //         style: TextStyle(),
                          //       ),
                          //     ),
                          //     Expanded(
                          //       child: Divider(
                          //         color: Theme.of(context).brightness ==
                          //                 Brightness.dark
                          //            ? Colors.black
                          //             : Colors.white,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Signup with Google or Facebook",
                              style: TextStyle(),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/email_box.svg",
                                  height: 64,
                                  width: 64,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/google_box.svg",
                                  height: 64,
                                  width: 64,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/apple_box.svg",
                                  height: 64,
                                  width: 64,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          )));
}
