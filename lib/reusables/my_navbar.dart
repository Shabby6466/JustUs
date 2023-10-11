// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justus/screens/homepages/justUsPage/JustusPage.dart';
import 'package:justus/screens/homepages/profile/profilepage.dart';
import 'package:justus/screens/notes/notes.dart';

final pages = [
  const Center(child: Text("home")),
  NotesPage(),
  JustUs(),
  const Center(child: Text("play")),
  const Profilepage()
];

Menus currentIndex = Menus.home;

enum Menus { home, diary, justus, chat, profile }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 75,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container( child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
            GestureDetector(
              onTap: () => onTap(Menus.home),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("assets/buttons_svg/music.png",
                        height: currentIndex == Menus.home ? 30 : 40,
                        width: currentIndex == Menus.home ? 30 : 40),
                  ),
                  Container(
                    height: 10,
                    width: 35,
                    decoration: BoxDecoration(
                      color: currentIndex == Menus.home
                          ? Colors.blue[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),   
            GestureDetector(
              onTap: () => onTap(Menus.diary),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("assets/buttons_svg/notes.png",
                        height: currentIndex == Menus.diary ? 30 : 40,
                        width: currentIndex == Menus.diary ? 30 : 40),
                  ),
                  Container(
                    height: 10,
                    width: 35,
                    decoration: BoxDecoration(
                      color: currentIndex == Menus.diary
                          ? Colors.blue[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => onTap(Menus.justus),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset("assets/buttons_svg/main_b.png",
                        height: 35, width: 35),
                  ),
                  Container(
                    height: 10,
                    width: 45,
                    decoration: BoxDecoration(
                      color: currentIndex == Menus.justus
                          ? Colors.blue[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => onTap(Menus.chat),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: currentIndex == Menus.chat
                        ? SvgPicture.asset(
                            "assets/buttons_svg/chat_active.svg",
                            height: 25,
                            width: 25)
                        : SvgPicture.asset(
                            "assets/buttons_svg/chat_nonactive.svg",
                            height: 30,
                            width: 30),
                  ),
                  Container(
                    height: 10,
                    width: 35,
                    decoration: BoxDecoration(
                      color: currentIndex == Menus.chat
                          ? Colors.blue[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
                  GestureDetector(
              onTap: () => onTap(Menus.chat),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: currentIndex == Menus.chat
                        ? SvgPicture.asset(
                            "assets/buttons_svg/chat_active.svg",
                            height: 25,
                            width: 25)
                        : SvgPicture.asset(
                            "assets/buttons_svg/chat_nonactive.svg",
                            height: 30,
                            width: 30),
                  ),
                  Container(
                    height: 10,
                    width: 35,
                    decoration: BoxDecoration(
                      color: currentIndex == Menus.chat
                          ? Colors.blue[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
          
            ],),),
          ],
        ),
      ),
    );
  }
}
