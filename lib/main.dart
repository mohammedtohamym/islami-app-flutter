import 'package:flutter/material.dart';
import 'package:islami_app/home/homescreen.dart';
import 'package:islami_app/my_theme_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: MyThemeData.myThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routeName,
      routes: {
        Homescreen.routeName : (context) => Homescreen(),
      },
    );
  }
}

