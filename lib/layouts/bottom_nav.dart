import 'package:flutter/material.dart';
import 'package:mission1/utils/app_color.dart';
import 'package:mission1/utils/app_constant.dart';

class BottomNav extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onTap;
  const  BottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap

  });
  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      backgroundColor: AppColor.appMainColor,
      unselectedItemColor: AppColor.appTextColor,
      selectedItemColor:Colors.black,
      currentIndex: selectedIndex,
      onTap: onTap,
      items:List.generate(AppConstant.pages.length,(index){
        return BottomNavigationBarItem(
          icon:AppConstant.pages[index]['icon'],
          label:AppConstant.pages[index]['label'],
        );

      })
    );
  }
}