import 'package:flutter/material.dart';
import 'package:mission1/layouts/master.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Mission1",
      home:MasterScreen()
    );
  }
}