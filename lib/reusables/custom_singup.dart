import 'package:flutter/material.dart';
import 'package:justus/reusables/signUpform.dart';

Future<Object?> customSignUpDialogue(BuildContext context) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Sign Up",
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
              height: 560,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.96),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                                "Connect, Create and Store your memories only on JustUs.!",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16)),
                          ),
                          const SignUpForm(),
                        ],
                      ),
                    ],
                  )),
            ),
          )));
}
