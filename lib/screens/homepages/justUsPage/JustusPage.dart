import 'package:flutter/material.dart';

class JustUs extends StatelessWidget {
  const JustUs({Key? key}) : super(key: key);

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
        title: const Text(
          'Just Us',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
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
                      fontSize: 16,
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
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 2), // changes position of shadow
                              ),
                            ],
                            color: const Color(0xFF17203A).withOpacity(0.2),
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
                                    color: Color(0xFF17203A).withOpacity(0.3),
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
                                          color: Colors.white,
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
                                          color: Colors.white,
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
                                          color: Colors.white,
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
                                                  )),
                                            ),
                                            SizedBox(height: 8),
                                            Text("Nothing",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins',
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
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 2), // changes position of shadow
                        ),
                      ],
                      color: Color(0xFF17203A).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                    ),
                    CircleAvatar(
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
