import 'package:flutter/material.dart';

import '../common/static_variables.dart';

class CustomIconFromImage extends StatelessWidget {
  const CustomIconFromImage({Key? key,required this.path,this.size,this.onTap}) : super(key: key);

  final String path;
  final double? size;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Image.asset(StaticVar.defaultIconPath+path,width: size??30,));
  }
}
