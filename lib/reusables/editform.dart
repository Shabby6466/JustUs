import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justus/reusables/profile_edit.dart';
import 'package:justus/screens/mainpage.dart';

enum Gender { none, male, female }

class EditForm extends StatefulWidget {
  const EditForm({
    super.key,
  });

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  var gender = Gender.none;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child: CupertinoButton(
                onPressed: () {},
                child: CircleAvatar(
                  radius: 60,
                  child: Icon(Icons.add_a_photo),
                ))),
        const Text("Username", style: TextStyle(color: Colors.black54)),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your username",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  "assets/icons/email.svg",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        Text("Phone Number", style: TextStyle(color: Colors.black54)),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Phone Number",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  "assets/icons/password.svg",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        Text("Birthday", style: TextStyle(color: Colors.black54)),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "DD/MM/YYYY",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  "assets/icons/password.svg",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        const Text("Location", style: TextStyle(color: Colors.black54)),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Where are you from?",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  "assets/icons/password.svg",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gender",
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      title: Text("Male"),
                      value: Gender.male,
                      groupValue: gender,
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.male;
                        });
                      }),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("Female"),
                    value: Gender.female,
                    groupValue: gender,
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    contentPadding: EdgeInsets.zero,
                    onChanged: (value) {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 24),
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const MainPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF77D8E),
                  minimumSize: const Size(double.infinity, 56),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ))),
              icon: Icon(
                CupertinoIcons.arrow_right,
                color: Color(0xFFFE003),
              ),
              label: Text("Sign Up")),
        )
      ],
    ));
  }
}
