
import 'package:flutter/material.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: SafeArea(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30,),
                    Row(
                      children: const[
                        Icon(Icons.location_on_outlined,color: AppColors.iconClr,size: 28,),
                         SizedBox(width: 5,),
                        TextWidget(txt: "Lahore, Pakistan",txtSize: 19,txtClr: AppColors.txtClr,),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextWidget(txt: "Let's Sign You In",
                        fontWeight:FontWeight.bold,txtSize: 30,txtClr: AppColors.txtClr,),
                    ),
                     const Padding(
                       padding: EdgeInsets.only(left: 8.0,top: 10),
                       child: TextWidget(txt: "Welcome back, you've been missed!",
                        txtSize: 19,txtClr: AppColors.hintTxtClr,),
                     ),

                  ],
                ),
              ),
            ],
          ) ),
    );
  }
}
