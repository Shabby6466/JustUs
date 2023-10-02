import 'package:flutter/material.dart';
import 'package:justus/screens/registration/loginpage.dart';
import 'package:justus/screens/registration/signuppage.dart';


class LoginOrSignupPage extends StatefulWidget {
  const LoginOrSignupPage({ Key? key }) : super(key: key);

  @override
  _LoginOrSignupPageState createState() => _LoginOrSignupPageState();
}

class _LoginOrSignupPageState extends State<LoginOrSignupPage> {
  bool showLoginPage = true;

  void tooglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return Loginpage();
    }
    else{
      return Signup();
    }
  }
}