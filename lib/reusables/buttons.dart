import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final backbutton = Container(
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
    ));

class LinktreeButtons {
  Widget linktreeButton(String platform, String idname, SvgPicture image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CupertinoButton(
                borderRadius: null,
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 96,
                  width: 260,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            platform,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Circular'),
                          ),
                          Text(
                            idname,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Container(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  height: 96,
                  width: 92,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.black,
                        height: 96,
                        width: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 60,
                        width: 50,
                        child: image,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Notebookbutton {
  Widget Notebookbuttons(String heading, String bodytext) {
    return CupertinoButton(
      onPressed: () {},
      child: Container(
          height: 230,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(heading,
                      style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
                  Text(bodytext,
                      style: TextStyle(fontSize: 15, fontFamily: 'Circular')),
                ],
              ))),
    );
  }
}

var notebooknote = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text("SHOAIB IS DA BEST OFC,", style: TextStyle(fontSize: 15, fontFamily: 'Poppins'))),
);
