import 'package:flutter/material.dart';
import 'package:four_head_store/common/static_variables.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.child,this.width,this.height});

  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
   
    return Container(
      padding: const EdgeInsets.all(StaticVar.defaultPadding),

      margin: const EdgeInsets.all(StaticVar.defaultMargin),

      width: width,

      height: height ,

      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(StaticVar.defaultRadius),
        
        boxShadow: const [
         BoxShadow(
           offset: Offset(0, 0),
           spreadRadius: 0,
           blurRadius: 25,
           color: Color.fromRGBO(0, 0, 0, 0.09)
             )],
           ),
          child: child,
    );
  }
}