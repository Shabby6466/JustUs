import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justus/reusables/animatedbutton.dart';
import 'package:justus/screens/OnBoardingScreen/CustomSignInDialoug.dart';
import 'package:justus/screens/OnBoardingScreen/CustomSignUpdialogue.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool isSignInDialogueShown = false;
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    super.initState();
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            left: 100,
            bottom: 200,
            child: Image.asset('assets/RivAssets/Spline.png'),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 15),
              child: const SizedBox(),
            ),
          ),
          RiveAnimation.asset(
            "assets/RivAssets/shapes.riv",
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: const SizedBox(),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 240),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            top: isSignInDialogueShown ? -50 : 0,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Your Exclusive World, Together",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: MyColors.lightFontColor,
                              fontSize: 50,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Unlock a world of shared experiences and unforgettable moments that you can curate together, exclusively on JustUs.",
                            style: TextStyle(
                                fontSize: 16, color: MyColors.lightFontColor),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    AnimatedBtn(
                        btnAnimationController: _btnAnimationController,
                        press: () {
                          _btnAnimationController.isActive = true;
                          Future.delayed(
                            const Duration(milliseconds: 200),
                            () {
                              customSignInDialogue(context);
                            },
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have account?",
                                style:
                                    TextStyle(color: MyColors.lightFontColor)),
                            TextButton(
                                onPressed: () {
                                  customSignUpDialogue(context);
                                },
                                child: Text("Sign Up",))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
