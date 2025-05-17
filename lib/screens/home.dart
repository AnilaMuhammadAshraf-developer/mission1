import 'package:flutter/material.dart';
import 'package:mission1/layouts/custom_button.dart';
import 'package:mission1/layouts/master.dart';
import 'package:mission1/screens/mission.dart';

class HomeScreen extends StatelessWidget{

  final String userEmail="user@getnada.com";
  final String userName="John Johnny";
    const HomeScreen({
      super.key
      });
      
      
      void _onTap(BuildContext context){
        debugPrint("function click");
        int index=1;
        Navigator.push(context,MaterialPageRoute(builder:(context)=>MasterScreen(email:userEmail,screeenIndex:index)));
      }
  @override
  Widget build(BuildContext context){
     return Center(
          child:Column(
            children: [
              Text("Home Screeeeeen"),
              CustomButton(label:"Send Data", onTap: _onTap)
            ],
          )
     );

  }
}