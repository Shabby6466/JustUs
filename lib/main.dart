import 'package:flutter/material.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:justus/screens/OnBoardingScreen/OnboardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const bgclr = Colors.white;
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
          displayLarge:  TextStyle(
            color:  MyColors.lightFontColor,
          ),
          displayMedium:  TextStyle(
            color: MyColors.lightFontColor,
          ),
          displaySmall:  TextStyle(
            color: MyColors.lightFontColor,
          ),
          headlineMedium: TextStyle(
            color:  MyColors.lightFontColor,
          ),
          headlineSmall: TextStyle(
            color: MyColors.lightFontColor,
          ),
          titleLarge: TextStyle(
            color:  MyColors.lightFontColor,
          ),
          titleMedium: TextStyle(
            color:  MyColors.lightFontColor,
          ),
          titleSmall: TextStyle(
            color: Colors.red,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MyColors.lightBackgroundColor.withOpacity(0.96),
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}

final defaultInputBorder = OutlineInputBorder(
  borderRadius: const BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: MyColors.lightBackgroundColor,
    width: 1,
  ),
);
