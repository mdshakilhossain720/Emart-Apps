import 'package:emartapps/common_widgets/bg_widgets.dart';
import 'package:emartapps/consts/list.dart';
import 'package:emartapps/view/profile/compnet/cart_details.dart';

import '../../consts/consts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              // edit profile

              Align(
                alignment: Alignment.topRight,
                  child: Icon(Icons.edit,color: whiteColor,)),


              // user deatil section
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Image.asset(
                    imgProfile,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    5.heightBox,
                    "Customer@exmaple.com".text.white.make(),

                  ],)),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: whiteColor,
                      )
                    ),

                      onPressed: (){}, child:"logout".text.fontFamily(semibold).white.make()),
                ],
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(count: "00",title: "in Your Cart",width: context.screenWidth/3.4),
                  detailsCard(count: "32",title: "in Your WishList",width: context.screenWidth/3.4),
                  detailsCard(count: "345",title: "Your Orders",width: context.screenWidth/3.4),
                ],
              ),

              20.heightBox,

              // button section
              ListView.separated(
                shrinkWrap: true,
                itemCount: profileButton.length,
                  itemBuilder: (BuildContext contex,int index){
                return ListTile(
                  leading: Image.asset(profileButtonIcon[index],width: 22,),
                  title:"${ profileButton[index]}".text.fontFamily(semibold).color(fontGrey).make(),
                );
              }, separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: lightGrey,
                  );
              },).box.white.rounded.margin(EdgeInsets.all(8)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),


            ],
          )),
    ));
  }
}
