
import 'package:emartapps/view/homescreen/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeController());

    var navbarItem=[
      BottomNavigationBarItem(icon:Image.asset(icHome,width: 26,),label: 'Home'),
      BottomNavigationBarItem(icon:Image.asset(icCategories,width: 26,),label: 'Categories'),
      BottomNavigationBarItem(icon:Image.asset(icCart,width: 26,),label: 'Cart'),
      BottomNavigationBarItem(icon:Image.asset(icProfile,width: 26,),label: 'Profile'),

    ];
    var navBody=[
      Container(color: Colors.red,),
      Container(color: Colors.grey,),
      Container(color: Colors.green,),
      Container(color: Colors.red,),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
          ()=> BottomNavigationBar(
            onTap: (value){
              controller.currentNavIndex.value=value;
            },
            currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(
            fontFamily: semibold,

          ),
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,

            items: navbarItem),
      ),
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      )
    );
  }
}
