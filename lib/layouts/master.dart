import 'package:flutter/material.dart';
import 'package:mission1/layouts/bottom_nav.dart';
import 'package:mission1/layouts/custom_appbar.dart';
import 'package:mission1/layouts/drawer.dart';
import 'package:mission1/utils/app_constant.dart';

class MasterScreen extends StatefulWidget{
  const MasterScreen({super.key});
  @override
  _MasterScreenState createState()=>_MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen>{
  int selectedIndex=0;
  
  void onSelected(index){
     setState(() {
         selectedIndex=index;
     });
  }
  @override
  Widget build(BuildContext context){

     return Scaffold(

        appBar:CustomAppBar(selectedIndex: selectedIndex),

        endDrawer: AppDrawer(selectedIndex: selectedIndex, onTap: onSelected),

        body:AppConstant.pages[selectedIndex]['widget'],


        bottomNavigationBar: BottomNav(selectedIndex: selectedIndex, onTap: onSelected),
        
     );
  }
}