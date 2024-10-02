import 'package:emartapps/common_widgets/bg_widgets.dart';
import 'package:emartapps/consts/list.dart';
import 'package:emartapps/view/categroity/categoris_details.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class Categority extends StatelessWidget {
  const Categority({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(
            color: Colors.white,
            fontFamily: semibold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
            itemCount: 9,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 200
                
                ),
            itemBuilder: (context,index){
              return Column(
                 children: [
                   Image.asset(categoriesImgages[index],height: 120,width: 200,fit: BoxFit.cover,),
                   10.heightBox,
                   CategoriList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
                   
                 ],
              ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap((){
                Get.to(()=>CategorisDetails(title: CategoriList[index],));
              });
            }),
      ),
    ));
  }
}
