import 'package:flutter/material.dart';
import 'package:mission1/utils/app_color.dart';
import 'package:mission1/utils/app_constant.dart';


class AppDrawer extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onTap;
  final String? email;
  const AppDrawer(
    {
      super.key,
      required this.selectedIndex,
      required this.onTap,
      this.email
    }
  );
  @override 
  Widget build(BuildContext context){
         return Drawer(
          child:Column(
            children: [
              DrawerHeader(
               decoration: BoxDecoration(
                color:AppColor.appMainColor,
               ),
                
 
                child:Align(
                  alignment: Alignment.topLeft,
                 child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ClipRRect(
                      child:Image.asset("assets/images/person.png",width:70,height:70),
                    
                    ),
                     Text("Joseph Smith",style:TextStyle(color:AppColor.appTextColor)),
                       Text("josephsmith@getnada.com",style:TextStyle(color:AppColor.appTextColor)),
                      
                  ],
                 ),
               
                ),
                
                ),
           
              

              ...AppConstant.pages.asMap().entries.map((entry) {
                  int index = entry.key;
                  var item = entry.value;
                   bool isSelected = selectedIndex == index;
                  return ListTile(
                      title: Text(item['title'],style:TextStyle(color:isSelected ? AppColor.appTextColor : null)),
                      tileColor: isSelected ? AppColor.appMainColor : null,
                      onTap: () { 
                        Navigator.pop(context);
                        onTap(index);
                      },
                  );

              }).toList(),
              Spacer(),
               Container(
              width:MediaQuery.of(context).size.width,
              height:90,
              
              decoration: BoxDecoration(
                color:AppColor.appMainColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(90))
              

              ),
             
             ),
            
            ],
          ),
         );
  }
  
  
}