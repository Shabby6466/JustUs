import 'package:flutter/material.dart';
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

enum Menus { home, diary, justus, chat, profile }

class SwipeNavigation extends StatefulWidget {
  @override
  _SwipeNavigationState createState() => _SwipeNavigationState();
}

class _SwipeNavigationState extends State<SwipeNavigation> {
  int currentIndex = 0; // Initialize with 0
  final PageController _pageController = PageController(initialPage: 0);

  void _onTabTapped(int index) {
    if (currentIndex != index) {
      _pageController.jumpToPage(index); // Jump to the selected page
      setState(() {
        currentIndex = index; // Update currentIndex with the selected index
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        child: Container(
          height: 65,
          child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
            currentIndex: currentIndex,
            elevation: 8,
            onTap: _onTabTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                  label: 'Home',
                  tooltip: "Home Screen"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.note,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                  label: 'Notes',
                  tooltip: "Notes Screen"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                  label: 'Just Us',
                  tooltip: "Main Screen"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                  label: 'Chat',
                  tooltip: "Chat Screen"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                  label: 'Profile',
                  tooltip: "Profile Screen"),
            ],
            selectedItemColor: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
