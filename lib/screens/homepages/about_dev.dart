// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justus/reusables/buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDev extends StatelessWidget {
  const AboutDev({Key? key}) : super(key: key);

  // ignore: unused_element
  void _openSocialMediaLink(String socialMedia) async {
    final socialMediaLinks = {
      'Facebook': 'https://www.facebook.com/Haji.Shoaib.646/',
      'Instagram': 'https://www.instagram.com/shabby646',
      'GitHub': 'https://github.com/Shabby6466',
      'Twitter': 'https://twitter.com/ShoaibFayy55205',
      'Mail': 'mailto:shoaib.chrome@gmail.com',
    };

    final uri = Uri.parse(socialMediaLinks[socialMedia]!);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: backbutton,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: width,
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("assets/icons/me.jpg"),
                            ),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shoaib Fayyaz",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                          Text(
                            "Software Engineer",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LinktreeButtons().linktreeButton(
                      "Facebook",
                      "Haji Shoaib Fayyaz",
                      SvgPicture.asset("assets/buttons_svg/facebook-dark.svg")),
                  LinktreeButtons().linktreeButton(
                      "Instagram",
                      "@shabby646",
                      SvgPicture.asset("assets/buttons_svg/insta-dark.svg",
                          fit: BoxFit.contain)),
                  LinktreeButtons().linktreeButton(
                      "GitHub",
                      "@Shabby6466",
                      SvgPicture.asset("assets/buttons_svg/github-dark.svg",
                          fit: BoxFit.contain)),
                  LinktreeButtons().linktreeButton(
                      "Twitter",
                      "@ShoaibFayy55205",
                      SvgPicture.asset("assets/buttons_svg/twitter-dark.svg",
                          fit: BoxFit.contain)),
                  LinktreeButtons().linktreeButton(
                      "Mail",
                      "@shoaib.chrome",
                      SvgPicture.asset("assets/buttons_svg/email-dark.svg",
                          fit: BoxFit.contain)),
                  LinktreeButtons().linktreeButton(
                      "GitHub",
                      "@Shabby6466",
                      SvgPicture.asset("assets/buttons_svg/github-dark.svg",
                          fit: BoxFit.contain)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
