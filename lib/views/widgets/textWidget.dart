import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, this.txt,this.txtSize,this.fontWeight,this.txtClr}) : super(key: key);
  final String? txt;
  final double? txtSize;
  final FontWeight? fontWeight;
  final Color? txtClr;


  @override
  Widget build(BuildContext context) {
    return Text(txt!,style: TextStyle(
      fontSize: txtSize,fontWeight: fontWeight,color: txtClr,
      ),textAlign: TextAlign.left,);
  }
}