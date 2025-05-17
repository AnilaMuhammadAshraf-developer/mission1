import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mission1/layouts/bottom_nav.dart';
import 'package:mission1/layouts/custom_appbar.dart';
import 'package:mission1/layouts/drawer.dart';
import 'package:mission1/utils/app_constant.dart';

class MasterScreen extends StatefulWidget{
   final int? screeenIndex;
   final String? email;
  const MasterScreen({
    super.key,
    this.email,
    this.screeenIndex
    });
     
  @override
  _MasterScreenState createState()=>_MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen>{
  int selectedIndex=0;
   late bool isSelectedIndex;
   String newEmail="";
    @override
  void initState() {
    super.initState();
    isSelectedIndex = (widget.screeenIndex != null && widget.screeenIndex! > 0);
    newEmail=widget.email ?? 'user';
   
  }
  void onSelected(index){
    debugPrint("Email :  ${widget.email}");
     setState(() {
         selectedIndex=index;
          newEmail=widget.email ?? 'user';
     });

  }

  //  void _onTap(BuildContext context){
  //       debugPrint("function click");
        
  //       // Navigator.push(context,MaterialPageRoute(builder:(context)=>MissionScreen(email:userEmail)));
  //     }
    
  @override
  Widget build(BuildContext context){

     return Scaffold(

        appBar:CustomAppBar(selectedIndex: widget.screeenIndex ?? selectedIndex),

        endDrawer: AppDrawer(selectedIndex: widget.screeenIndex ?? selectedIndex, onTap: onSelected,email: widget.email),

        // body:isSelectedIndex ? AppConstant.pages[widget.screeenIndex]['widget'] : AppConstant.pages[selectedIndex]['widget'],

      body: widget.screeenIndex != null
        ? AppConstant.pages[widget.screeenIndex!]['builder']!(newEmail)!
        : AppConstant.pages[selectedIndex]['builder']!,

        bottomNavigationBar: BottomNav(selectedIndex: widget.screeenIndex ?? selectedIndex, onTap: onSelected),
        
     );
  }
}