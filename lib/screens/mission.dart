import 'package:flutter/material.dart';

class MissionScreen extends StatelessWidget{
  final String? email;
  const MissionScreen({
    super.key,
     this.email
    });
  @override
  Widget build(BuildContext context){
     return Center(
          child:Text("Misssion Screeen Data Received:$email")
     );

  }
}