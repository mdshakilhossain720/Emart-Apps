
import 'package:emartapps/common_widgets/app_logo.dart';
import 'package:emartapps/consts/consts.dart';
import 'package:emartapps/view/auth_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  screenChange(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screenChange();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,

      body: Column(
        children: [
          Align(
            alignment: Alignment.center,

              child: Image.asset(icSplashBg,width: 300,)),
          20.heightBox,
          appLogoWidgets(),
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
        ],
      ),

    );
  }
}
