
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
        IconButton(onPressed: (){}, icon: Icon(Icons.share,color: darkFontGrey,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: darkFontGrey)),
      ],),

      body: Container(),
    );
  }
}
