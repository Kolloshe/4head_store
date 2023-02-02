import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widget/custom_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(preferredSize: Size(100.w,9.h),

      child:const CustomAppBar()),
      body: ListView(

      ),
    );
  }
}