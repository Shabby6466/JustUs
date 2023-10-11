// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:get/get.dart';
import 'package:justus/screens/OnBoardingScreen/OnboardingScreen.dart';

void main()  {;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: MyColors.lightBackgroundColor,
        fontFamily: 'Intel',
        appBarTheme: AppBarTheme(
          foregroundColor: MyColors.lightFontColor,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: MyColors.lightFontColor,
          ),
          bodyMedium: TextStyle(
            color: MyColors.lightFontColor,
          ),
          displayLarge: TextStyle(
            color: MyColors.lightFontColor,
          ),
          displayMedium: TextStyle(
            color: MyColors.lightFontColor,
          ),
          displaySmall: TextStyle(
            color: MyColors.lightFontColor,
          ),
          headlineMedium: TextStyle(
            color: MyColors.lightFontColor,
          ),
          headlineSmall: TextStyle(
            color: MyColors.lightFontColor,
          ),
          titleLarge: TextStyle(
            color: MyColors.lightFontColor,
          ),
          titleMedium: TextStyle(
            color: MyColors.lightFontColor,
          ),
          titleSmall: const TextStyle(
            color: Colors.red,
          ),
        ),
        iconTheme: IconThemeData(
          color: MyColors.lightPrimaryColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MyColors.lightPrimaryColor.withOpacity(0.1),
          errorStyle: const TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: MyColors.darkBackgroundColor,
        fontFamily: 'Intel',
        appBarTheme: AppBarTheme(
          foregroundColor: MyColors.darkFontColor,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: MyColors.darkFontColor,
          ),
          bodyMedium: TextStyle(
            color: MyColors.darkFontColor,
          ),
          displayLarge: TextStyle(
            color: MyColors.darkFontColor,
          ),
          displayMedium: TextStyle(
            color: MyColors.darkFontColor,
          ),
          displaySmall: TextStyle(
            color: MyColors.darkFontColor,
          ),
          headlineMedium: TextStyle(
            color: MyColors.darkFontColor,
          ),
          headlineSmall: TextStyle(
            color: MyColors.darkFontColor,
          ),
          titleLarge: TextStyle(
            color: MyColors.darkFontColor,
          ),
          titleMedium: TextStyle(
            color: MyColors.darkFontColor,
          ),
          titleSmall: const TextStyle(
            color: Colors.red,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: TextStyle(color: MyColors.darkFontColor),
          fillColor: MyColors.darkBackground2.withOpacity(0.96),
          errorStyle: const TextStyle(height: 0),
          focusedBorder: simpleInputBorder,
          border: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
        iconTheme: IconThemeData(
          color: MyColors.darkPrimaryColor,
        ),
      ),
      home:  OnboardingScreen(),
    );
  }
}

const simpleInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(25)),
  borderSide: BorderSide(
    color: Colors.red,
    width: 1,
  ),
);

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(25)),
  borderSide: BorderSide(
    color: Colors.red,
    width: 1,
  ),
);
