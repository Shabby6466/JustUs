import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JustUs extends StatefulWidget {
  static bool? isDarkMode = false;
  JustUs({Key? key}) : super(key: key);

  @override
  State<JustUs> createState() => _JustUsState();
}

class _JustUsState extends State<JustUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: 50,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Just Us',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            icon: const Icon(CupertinoIcons.light_min),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    'Its Just Us here',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          constraints: const BoxConstraints(
                              maxWidth: 330, maxHeight: 390),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.black
                                    : Colors.red,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 35, left: 75, right: 75),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: 180, maxHeight: 200),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.red
                                        : Colors.yellow,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 45,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: 80,
                                        width: 80,
                                        constraints: const BoxConstraints(
                                            maxWidth: 80, maxHeight: 80),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 2),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              alignment: Alignment.topLeft,
                                              child: Text("Days",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontFamily: 'Poppins',
                                                  )),
                                            ),
                                            Text("645",
                                                style: TextStyle(
                                                  color: Colors.red[700],
                                                  fontSize: 30,
                                                  fontFamily: 'Poppins',
                                                ))
                                          ],
                                        )),
                                    Container(
                                        constraints: const BoxConstraints(
                                            maxWidth: 80, maxHeight: 80),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 2),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              alignment: Alignment.topLeft,
                                              child: Text("Mood",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontFamily: 'Poppins',
                                                  )),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Container(
                                                child: Image.asset(
                                              "assets/icons/smilley.png",
                                              height: 45,
                                              width: 50,
                                            )),
                                          ],
                                        )),
                                    Container(
                                        constraints: const BoxConstraints(
                                            maxWidth: 80, maxHeight: 80),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 2),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              alignment: Alignment.topLeft,
                                              child: Text("Today",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppins',
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  )),
                                            ),
                                            SizedBox(height: 8),
                                            Text("Nothing",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins',
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : Colors.black,
                                                ))
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 230,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey.withOpacity(0.4)
                                  : Colors.transparent,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 2),
                        ),
                      ],
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      radius: 40,
                    ),
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? Colors.black
                              : Colors.pink,
                      radius: 40,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
