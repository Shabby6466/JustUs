import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child:  Text(
              "Music",
              style: TextStyle(fontSize: 35, fontFamily: 'Poppins'),
            ),
          ),
        ],
      )),
    );
  }
}
