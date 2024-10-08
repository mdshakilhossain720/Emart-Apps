
import 'package:emartapps/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'consts/style.dart';
import 'view/solash_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EmartApps',
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
     iconTheme: IconThemeData(
       color: darkFontGrey,
     )
        ),
        fontFamily: regular,

      ),
      home: SplashScreen(),
    );
  }
}
