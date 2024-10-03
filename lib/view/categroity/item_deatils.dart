import 'package:emartapps/common_widgets/custom_button.dart';
import 'package:emartapps/consts/list.dart';

import '../../consts/consts.dart';

class ItemDeatils extends StatelessWidget {
  const ItemDeatils({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: darkFontGrey,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border, color: darkFontGrey)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // swipper section
                      VxSwiper.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Image.asset(imgFc5,
                                width: double.infinity, fit: BoxFit.cover);
                          }),
                      10.heightBox,
                      title.text
                          .size(16)
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .make(),
                      10.heightBox,
                      // rating
                      VxRating(
                        onRatingUpdate: (value) {},
                        normalColor: textfieldGrey,
                        selectionColor: golden,
                        count: 5,
                        size: 25,
                        stepInt: true,
                      ),
                      10.heightBox,
                      "\$30,000"
                          .text
                          .color(redColor)
                          .fontFamily(bold)
                          .size(18)
                          .make(),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Seller".text.white.fontFamily(semibold).make(),
                                5.heightBox,
                                "In House Brands"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .size(16)
                                    .make()
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.message,
                              color: darkFontGrey,
                            ),
                          )
                        ],
                      )
                          .box
                          .height(60)
                          .padding(EdgeInsets.symmetric(horizontal: 16))
                          .color(textfieldGrey)
                          .make(),

                      // color section
                      20.heightBox,
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child:
                                    "Color:".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .size(40, 40)
                                        .roundedFull
                                        .color(Vx.randomPrimaryColor)
                                        .margin(
                                            EdgeInsets.symmetric(horizontal: 6))
                                        .make()),
                              )
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),

                          // quentity section

                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child:
                                    "Color:".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove)),
                                  "0"
                                      .text
                                      .size(16)
                                      .color(darkFontGrey)
                                      .fontFamily(bold)
                                      .make(),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.add)),
                                  10.widthBox,
                                  "(0 available)"
                                      .text
                                      .color(textfieldGrey)
                                      .make(),
                                ],
                              )
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child:
                                    "Total:".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: [Text("\$2000")],
                              )
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                        ],
                      ).box.white.shadowSm.make(),

                      // description section

                      10.heightBox,
                      "Description"
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .make(),
                      10.heightBox,
                      "This is  a dummy items and dummy description here ..."
                          .text
                          .color(darkFontGrey)
                          .make(),
                      10.heightBox,
                      
                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children:List.generate(itemDetailsList.length,(index)=>ListTile(
                          title: "${itemDetailsList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                          trailing: Icon(Icons.arrow_forward),
                          
                        )),
                      ),

                      "Product May Be Like".text.fontFamily(semibold).size(16).color(darkFontGrey).make(),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(
                                6,
                                    (index) => Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "Laptop4GB"
                                        .text
                                        .fontFamily(semibold)
                                        .color(lightGrey)
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
                                    .margin(EdgeInsets.symmetric(
                                    horizontal: 5))
                                    .rounded
                                    .padding(EdgeInsets.all(8))
                                    .make())),
                      )
                      
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ourButton(
                  color: redColor,
                  onPress: () {},
                  textColor: whiteColor,
                  title: 'Add To Cart'),
            )
          ],
        ));
  }
}
