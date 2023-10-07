import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:justus/screens/homepages/justUsPage/JustusPage.dart';
import 'package:justus/screens/homepages/profile/profilepage.dart';
import 'package:justus/screens/notes/Notes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
          child: Scaffold(
        extendBody: true,
        body: pages[currentIndex.index],
        bottomNavigationBar: MyBottomNavigation(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}

final pages = [
  const Center(child: Text("home")),
  const Notes(),
  const JustUs(),
  const Center(child: Text("play")),
  const Profilepage()
];

enum Menus { home, diary, justus, chat, profile }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      height: 70,
      elevation: 0.0,
      backgroundColor: const Color(0xFF17203A).withOpacity(0.8),
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.file_copy, title: 'Notes'),
        TabItem(
          icon: Icons.add,
          title: 'Just Us',
          activeIcon: Icon(
            Icons.add_box_rounded,
            color: Colors.white,
          ),
        ),
        TabItem(icon: Icons.chat_bubble_outline, title: 'Chat'),
        TabItem(icon: Icons.person, title: 'Profile'),
      ],
      onTap: (index) {
        onTap(Menus.values[index]);
      },
    );
  }
}
