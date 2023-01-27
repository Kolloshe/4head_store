import 'package:flutter/material.dart';
import 'package:four_head_store/widget/custom_container.dart';
import 'package:sizer/sizer.dart';

import '../common/static_variables.dart';
import '../models/product_model.dart';

class SingleProductCard extends StatelessWidget {
   const SingleProductCard({super.key,required this.product});
   final Product product;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 20.h,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(StaticVar.defaultRadius), 
              topRight: Radius.circular(StaticVar.defaultRadius)
              ),
            child: Image.asset(product.productImage,fit: BoxFit.cover,)),
        ),

        SizedBox(
          child: Text(product.productName,
          style: TextStyle(
            fontSize: StaticVar.productTitleFontSize.sp,
            fontWeight: StaticVar.productTitleFontWeight,
            color: StaticVar.blackColor
          )),
        ),

        _buildSpacer(),

        SizedBox(width: 60.w,
        child: Text(product.productDescription,
        style: TextStyle(
            fontSize: StaticVar.productSubtitleFontSize.sp,
            fontWeight: StaticVar.productSubtitleFontWeight,
            color: StaticVar.garyColor
          ))),

        _buildSpacer(),

      ],
    ));
  }

  Widget _buildSpacer()=> SizedBox(height: StaticVar.defaultSeparateHights.h);

}