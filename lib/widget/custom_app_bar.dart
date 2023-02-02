import'package:flutter/material.dart';
import 'package:badges/badges.dart';


import '../widget/custom_icon_from_image.dart';
import '../common/static_variables.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(StaticVar.defaultPadding).copyWith(right:StaticVar.defaultPadding+6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const CustomIconFromImage(path:"menu.png" ),
            const Spacer(flex: 4,),
            const Text("4H",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
            const Spacer(flex: 3,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 const  CustomIconFromImage(path:"search.png",size: 24, ),
                 const SizedBox(width: 15),
                 Badge(
                   position: BadgePosition.topEnd(top: -14,end:-13 ),
                   badgeContent:const Text("1",style: TextStyle(color: StaticVar.whiteColor),),
                   badgeStyle:const BadgeStyle(badgeColor: StaticVar.orangeColor),
                   badgeAnimation:const BadgeAnimation.slide(animationDuration: Duration(microseconds: 200)),
                   child:const CustomIconFromImage(path:"shopping-bag.png",size: 24,),
                 ),
               ],
             )
          ],
        ),
      ),
    );
  }
}
