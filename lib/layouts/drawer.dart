import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onTap;
  const AppDrawer(
    {
      super.key,
      required this.selectedIndex,
      required this.onTap
    }
  );
  @override 
  Widget build(BuildContext context){
         return Drawer(
          child:Column(
            children: [
              DrawerHeader(
                child:Text("Menu")
              ),
            ],
          ),
         );
  }
  
  
}