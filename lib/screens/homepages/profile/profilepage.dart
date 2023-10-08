import 'package:flutter/material.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:justus/reusables/profile_buttons.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 24,
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
                onTap: () {},
                child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: MyColors.lightBackgroundColor.withOpacity(0.96),
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
                                fontFamily: "Poppins",
                                color:  Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'See Your Profile',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Padding(
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
                        offset:
                            const Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: MyColors.lightBackgroundColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            child: Image(
                              width: 50,
                              image: AssetImage('assets/icons/signup.png'),
                              fit: BoxFit.contain,
                            ),
                            backgroundColor: Colors.white,
                            radius: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Partners Profile',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'See Their Profile',
                                style: TextStyle(
                                  fontSize: 15,
                                  color:  Colors.black,
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
              padding: const EdgeInsets.only(left: 40),
              child: const Text(
                "Features",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ProfileButtons(
                        icon: Icon(
                          Icons.workspace_premium_sharp,
                          size: 40,
                        ),
                        name: "Premium",
                      ),
                      ProfileButtons(
                          icon: Icon(
                            Icons.calendar_month_rounded,
                            //Icons.miscellaneous_services_rounded,
                            size: 40,
                          ),
                          name: "Calendar"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.lock_person,
                            size: 40,
                          ),
                          name: "Private"),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      ProfileButtons(
                          icon: Icon(
                            Icons.screen_share,
                            size: 40,
                          ),
                          name: "Watch"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.note,
                            size: 40,
                          ),
                          name: "Diary"),
                      ProfileButtons(
                          icon: Icon(
                            Icons.photo_album,
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
            Padding(
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
                      offset: const Offset(1, 2), // changes position of shadow
                    ),
                  ],
                  color: MyColors.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: MyColors.lightBackgroundColor,
                        child: const Icon(
                          Icons.settings,
                          size: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Settings & Privacy',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins",
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.black
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
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
                      offset: const Offset(1, 2), // changes position of shadow
                    ),
                  ],
                  color: MyColors.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 35,
                        child: Icon(
                          Icons.person_2,
                          size: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About Developer',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
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
                      offset: const Offset(1, 2), // changes position of shadow
                    ),
                  ],
                  color: MyColors.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: MyColors.lightBackgroundColor,
                        child: Icon(
                          Icons.logout_rounded,
                          color: Colors.red[700],
                          size: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Signout',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
