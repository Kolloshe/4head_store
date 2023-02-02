import 'package:flutter/material.dart';
import 'package:four_head_store/common/static_variables.dart';

class CustomBorderForIcon extends StatelessWidget {
  const CustomBorderForIcon({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(StaticVar.defaultPadding-3),
margin: const EdgeInsets.all(StaticVar.defaultMargin) ,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: StaticVar.garyColor.withAlpha(100),width: 1.1)
      ),
      child: child,
    );
  }
}
