
import 'package:emartapps/consts/consts.dart';

Widget bgWidget(Widget? child){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.cover),

    ),
    child:child ,
  );
}