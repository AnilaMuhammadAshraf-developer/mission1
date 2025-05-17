import 'package:flutter/material.dart';
import 'package:mission1/utils/app_color.dart';


class CustomButton extends StatelessWidget{
  final String label;
  final Function onTap;
  const CustomButton({
    super.key,
    required this.label,
    required this.onTap
    });
  @override
 Widget build(BuildContext context){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor:AppColor.appMainColor,
      foregroundColor: AppColor.appTextColor
    ),
    onPressed:()=> onTap(context),
     child:Text(label)
  );
 }
}