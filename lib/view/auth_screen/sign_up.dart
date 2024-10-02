import 'package:emartapps/common_widgets/app_logo.dart';
import 'package:emartapps/common_widgets/bg_widgets.dart';
import 'package:emartapps/common_widgets/custom_text_field.dart';

import 'package:get/get.dart';

import '../../common_widgets/custom_button.dart';
import '../../consts/consts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ? isCheek=false;
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
            'Join The $appname '.text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                CustomTextField(hint: nameHint, title: name),
                CustomTextField(hint: hintEmail, title: email),
                CustomTextField(hint: hintPassword, title: password),
                CustomTextField(hint: hintPassword, title: reTypePassword),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPassword.text.make())),

                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: redColor,
                        value: isCheek, onChanged:(newValue){
                        setState(() {
                          isCheek=newValue;
                        });


                    }),
                    10.widthBox,
                    Expanded(
                      child: RichText(text: TextSpan(children: [
                        TextSpan(
                          text: "I agree to the ",style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        ),

                        ),
                          TextSpan(
                              text:"Term and Conditions",style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          ),),
                        TextSpan(
                          text: "&",style: TextStyle(
                          fontFamily: bold,
                          color:fontGrey,
                        ),),
                        TextSpan(
                          text: privacyPolicy,style: TextStyle(
                          fontFamily: bold,
                          color:redColor,
                        ),),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                ourButton(
                    onPress: () {},
                    color:isCheek ==true ? redColor:lightGrey,
                    textColor: whiteColor,
                    title:sign)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(text: TextSpan(children: [
                  TextSpan(
                    text: alreadyHaveAccount,style: TextStyle(
                    fontFamily: bold,
                    color: fontGrey,

                  )
                  ),
                  TextSpan(
                      text:  login,style: TextStyle(
                    fontFamily: bold,
                    color:redColor,

                  )
                  )
                ])).onTap((){
                  Get.back();
                }),





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
