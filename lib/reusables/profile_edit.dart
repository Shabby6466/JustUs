// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:justus/screens/OnBoardingScreen/editform.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(26),
              alignment: Alignment.center,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  EditForm(),
                ],
              )),
        ),
      ),
    );
  }
}
