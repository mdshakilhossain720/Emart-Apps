import 'package:emartapps/common_widgets/bg_widgets.dart';
import 'package:emartapps/view/categroity/item_deatils.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class CategorisDetails extends StatelessWidget {
  const CategorisDetails({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .size(12)

                        .fontFamily(semibold)
                        .makeCentered()
                        .color(darkFontGrey)
                        // .make()
                        .box
                        .white
                        .size(150, 60).rounded
                        .margin(EdgeInsets.symmetric(
                          horizontal: 4,
                        ))
                        .make()),
              ),
            ),
            20.heightBox,
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),

                        "Laptop4GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make()
                      ],
                    )
                        .box
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .padding(EdgeInsets.symmetric(horizontal: 4))
                        .make().onTap((){
                          Get.to(()=>ItemDeatils(title:"Dummy title"));
                    });
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
