import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      'assets/buttons_svg/back.svg',
                      alignment: Alignment.center,
                    )),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 25),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: const Text(
                  "Hello Shoaib",
                  style: TextStyle(fontSize: 40, fontFamily: 'Poppins'),
                )),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 20),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 317,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(245, 147, 151, 1),
                          borderRadius: BorderRadius.circular(34),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            children: [
                              Text(
                                "Shoaib",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                              Text(
                                "Shoaib",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 50, left: 60, right: 60, bottom: 20),
              child: Container(
                height: 70,
                width: 261,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60, right: 60, bottom: 20),
              child: Container(
                height: 70,
                width: 261,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60, right: 60, bottom: 20),
              child: Container(
                height: 70,
                width: 261,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
