import 'package:flutter/material.dart';
import 'package:justus/reusables/MyColors.dart';
import 'package:justus/screens/OnBoardingScreen/OnboardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
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
          titleSmall: TextStyle(
            color: Colors.red,
          ),
        ),
        
        iconTheme: IconThemeData(
          color: MyColors.darkFontColor,
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

      darkTheme: ThemeData(
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
          titleSmall: TextStyle(
            color: Colors.red,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: TextStyle(color: MyColors.darkFontColor),
          fillColor: MyColors.darkBackgroundColor.withOpacity(0.96),
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
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
    color: Colors.transparent,
    width: 1,
  ),
);
