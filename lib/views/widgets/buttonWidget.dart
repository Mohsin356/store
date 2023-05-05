


import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key,this.function, this.btnTxt,this.btnClr,this.btnTxtClr,
    this.btnTxtSize,this.btnIcon,this.btnIconClr,this.spaceBeforeTxt}) : super(key: key);
  final VoidCallback? function;
  final String? btnTxt;
  final double? btnTxtSize;
  final Color? btnTxtClr;
  final Color? btnClr;
  //final IconData? btnIcon;
  final String? btnIcon;
  //final double? btnIconSize;
  final Color? btnIconClr;
  final double? spaceBeforeTxt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305,
      child: ElevatedButton(onPressed: function,
          style: ElevatedButton.styleFrom(
            foregroundColor: btnTxtClr,backgroundColor: btnClr,
            minimumSize: const Size.fromHeight(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               SizedBox(width: spaceBeforeTxt,),
              Text(btnTxt!,style:  TextStyle(fontSize: btnTxtSize),),
              IconButton(
                icon: Image.asset(btnIcon!),
                onPressed: function,color: btnIconClr,
              ),
              //IconButton(icon: Image.asset(btnIcon!),onPressed: function,color: btnIconClr,),
            ],
          ),),
    );
  }
}
