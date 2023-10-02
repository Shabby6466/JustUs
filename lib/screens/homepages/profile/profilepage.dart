import 'package:flutter/material.dart';
import 'package:justus/reusables/profile_buttons.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  print("personal profile");
                },
                child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          child: Image(
                            width: 50,
                            image: AssetImage('assets/icons/login.png'),
                            fit: BoxFit.contain,
                          ),
                          radius: 35,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Personal Profile',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'See Your Profile',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.edit_attributes_rounded,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: GestureDetector(
                onTap: () {
                  print("partners");
                },
                child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Expanded(
                    flex: 1,
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            child: Image(
                              width: 50,
                              image: AssetImage('assets/icons/signup.png'),
                              fit: BoxFit.contain,
                            ),
                            radius: 35,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Partners Profile',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'See Their Profile',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 85,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.edit_attributes_rounded,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 40),
              child: const Text(
                "Features",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ProfileButtons(
                          icon: Icon(
                            Icons.workspace_premium_sharp,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          name: "Premium"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.calendar_month_rounded,
                            //Icons.miscellaneous_services_rounded,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          name: "Calendar"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.lock_person,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          name: "Private"),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      ProfileButtons(
                          icon: Icon(
                            Icons.screen_share,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          name: "Watch"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.note,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          name: "Diary"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.photo_album,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          name: "Memories"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print("Settings & Privacy");
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 400,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.settings,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          radius: 35,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Settings & Privacy',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Settings & Privacy");
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Container(
                  width: 400,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.person_2,
                            color: Colors.purple[700],
                            size: 40,
                          ),
                          radius: 35,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Developer',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Settings & Privacy");
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Container(
                  width: 400,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.logout_rounded,
                            color: Colors.red[700],
                            size: 40,
                          ),
                          radius: 35,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Signout',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
