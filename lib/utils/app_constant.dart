import 'package:flutter/material.dart';
import 'package:mission1/screens/home.dart';
import 'package:mission1/screens/mission.dart';
import 'package:mission1/screens/next.dart';


class AppConstant{

  static final List<Map<String,dynamic>> pages=[
    {
      "title":"Welcome To Mission1 App",
      "label":"Home",
      "builder":HomeScreen(),
      "icon":Icon(Icons.home)
    },
     {
      "title":"Mission",
      "label":"Mission",
      "builder": (String? email)=>MissionScreen(email: email),
      "icon":Icon(Icons.task)
    },
    {
      "title":"Next Screen",
      "label":"Next",
      "builder":NextScreen(),
      "icon":Icon(Icons.next_plan)
    }
  ];
  
}