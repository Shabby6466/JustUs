import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:justus/reusables/Navigationbar.dart';

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
                child: const CircleAvatar(
                  radius: 60,
                  child: Icon(Icons.add_a_photo),
                ))),
        const Text(
          "Username",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.blue)),
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
        const Text("Phone Number"),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Phone Number",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.blue)),
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
        const Text("Birthday"),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "DD/MM/YYYY",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.blue)),
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
        const Text("Location"),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Where are you from?",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.blue)),
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
            const Text(
              "Gender",
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      title: const Text("Male"),
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
                    title: const Text("Female"),
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
          padding: const EdgeInsets.only(top: 18.0, bottom: 24),
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SwipeNavigation()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.light
                          ? MyColors.lightPrimaryColor
                          : MyColors.darkPrimaryColor,
                  minimumSize: const Size(double.infinity, 56),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ))),
              icon: const Icon(
                CupertinoIcons.arrow_right,
                color: Colors.white,
              ),
              label: const Text("Sign Up")),
        )
      ],
    ));
  }
}
