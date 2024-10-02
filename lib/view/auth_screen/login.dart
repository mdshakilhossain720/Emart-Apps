import 'package:emartapps/common_widgets/app_logo.dart';
import 'package:emartapps/common_widgets/bg_widgets.dart';

import '../../consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight *0.1).heightBox,
            appLogoWidgets(),
            10.heightBox,
            'Login in to $appname '.text.fontFamily(bold).white.size(18).make(),


          ],
        ),
      ),
    ));
  }
}
