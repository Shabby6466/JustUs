import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  final Icon icon;
  final String name;
  final int padding;
  const ProfileButtons({Key? key, required this.icon, required this.name, this.padding = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right:5),
        child: Container(
          height: 80,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(1, 2), // changes position of shadow
              ),
            ],
          ),
          child: InkWell(
            onLongPress: () {},
            onTap: () {
              print("split tapped");
            },
            borderRadius: BorderRadius.circular(35),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  icon,
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 11,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
