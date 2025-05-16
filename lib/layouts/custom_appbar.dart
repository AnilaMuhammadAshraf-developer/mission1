import 'package:flutter/material.dart';
import 'package:mission1/utils/app_color.dart';
import 'package:mission1/utils/app_constant.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final int selectedIndex;
  const CustomAppBar({
    super.key,
    required this.selectedIndex
  });
  @override
  Widget build(BuildContext context){
    return AppBar(
        title:Text(AppConstant.pages[selectedIndex]['title'],style:TextStyle(color:AppColor.appTextColor)),
        centerTitle: true,
        backgroundColor: AppColor.appMainColor,
        iconTheme: IconThemeData(color:AppColor.appTextColor)
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

} 