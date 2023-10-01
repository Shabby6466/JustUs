import 'package:flutter/material.dart';
import 'package:justus/screens/registration/loginpage.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 120),
              Center(
                child: Text(
                  "Registration",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Be a part of us",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const Loginpage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 115),
                child: Row(
                  children: [
                    Text("Alredy a member ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Loginpage()));
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
