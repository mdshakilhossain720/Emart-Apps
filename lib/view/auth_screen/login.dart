import 'package:emartapps/common_widgets/app_logo.dart';
import 'package:emartapps/common_widgets/bg_widgets.dart';
import 'package:emartapps/common_widgets/custom_text_field.dart';
import 'package:emartapps/consts/list.dart';
import 'package:emartapps/view/auth_screen/sign_up.dart';
import 'package:emartapps/view/homescreen/home_screen.dart';
import 'package:get/get.dart';

import '../../common_widgets/custom_button.dart';
import '../../consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidgets(),
            10.heightBox,
            'Login in to $appname '.text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                CustomTextField(hint: hintEmail, title: email),
                CustomTextField(hint: hintPassword, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Get.to(()=>SignUpScreen());
                        }, child: forgetPassword.text.make())),
                5.heightBox,
                ourButton(
                        onPress: () {
                          Get.to(()=>HomeScreen());
                        },
                        color: redColor,
                        textColor: whiteColor,
                        title: login)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccoutn.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                        color: lightGrey,
                        title: sign,
                        textColor: redColor,
                     onPress: () {
                          Get.to(()=>SignUpScreen());
                        })
                    .box
                    .white
                    .rounded
                    .padding(EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .make(),
                10.heightBox,
                loginWith.text.color(lightGolden).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3,(index)=>Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child:Image.asset(socialIconList[index],width: 30,),

                    ),
                  )),
                )

              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth)
                .make(),
          ],
        ),
      ),
    ));
  }
}
