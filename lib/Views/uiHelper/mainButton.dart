import 'dart:ui';

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,required this.title,required this.onTap,required this.color, required this.fontWeight, });
  final String title;
  final Color color;
  final FontWeight fontWeight;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if(width>1200){
      return InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: width*80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff2258CF),

          ),
          child: Center(child: Text(title,style: TextStyle(color: color,fontWeight: fontWeight,),),),
        ),
      );
    }else if(width>500){
      return InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: width*80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff2258CF),

          ),
          child: Center(child: Text(title,style: TextStyle(color: color,fontWeight: fontWeight,),),),
        ),
      );}
    else{
      return InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: width*80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff2258CF),

          ),
          child: Center(child: Text(title,style: TextStyle(color: color,fontWeight: fontWeight,),),),
        ),
      );
    }
  }
}
