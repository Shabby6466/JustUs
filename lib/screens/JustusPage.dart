import 'package:flutter/material.dart';

class JustUs extends StatelessWidget {
  const JustUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: 50,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Just Us',
          style: TextStyle(
            letterSpacing: 0.5,
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Circular',
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
      body: Column(
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
                    letterSpacing: 0.2,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Circular',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 330, maxHeight: 80),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(16),
                      child: Text("Ludamos",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                          ))),
                  Stack(
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 330, maxHeight: 390),
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(20),
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
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Container(  
                              constraints: const BoxConstraints(
                                    maxWidth: 50, maxHeight: 50),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(20),
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
        ],
      ),
    );
  }
}
