import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget
{
  const WidgetContainer({this.ic,this.img,this.info,this.clr});
  final String info;
  final String img;
  final IconData ic;
  final Color clr;
  @override
  Widget build(BuildContext context) {
    return         Container(
      // padding: EdgeInsets.only(left: 20),
      height: 100,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: clr,
      ),
      child: Row(
        children: [Expanded(child:
        Image.asset(
         img,
          width: 50,
          height: 50,
        ),),
          Expanded(child:
          Text(info,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
          Expanded(child:   Icon(Icons.more,color: Colors.black54,))
        ],
      ),
    );
    throw UnimplementedError();
  }


}