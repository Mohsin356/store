
import 'package:flutter/material.dart';
import 'package:store/utils/colors.dart';


class InputFormField extends StatelessWidget {
  const InputFormField({Key? key, this.labelTxt, this.inputType, this.inputAction,
    this.focusNode, this.function,this.maxLines,this.controller,
    this.functionSaveForm,this.validator,this.initVal,  this.onChangedFunction,
    this.txtFieldIcon, this.iconClr, this.iconSize, }) : super(key: key);
  final String? labelTxt;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  final String? Function(String?)? function;
  final String? Function(String?)? functionSaveForm;
  final String? Function(String?)? validator;
  final int? maxLines;
  final TextEditingController? controller;
  final String? initVal;
  //final IconData? txtFieldIcon;
  final String? txtFieldIcon;

  final Color? iconClr;
  final double? iconSize;

  final Function? onChangedFunction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.bold),
      keyboardType: inputType,
      onChanged: function,
      decoration:  InputDecoration(
        //prefixIcon: Icon(txtFieldIcon,color: iconClr,size: iconSize,),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(txtFieldIcon!,width:24,height: 24,),
        ),

        hintText: labelTxt,
        border: const  UnderlineInputBorder(
            borderSide: BorderSide(color:AppColors.dividerClr,)
        ),
        focusedBorder:  const UnderlineInputBorder(
            borderSide: BorderSide(color:AppColors.focusClr,)
        ),
      ),
      cursorColor: AppColors.cursorClr,

    );
  }
}