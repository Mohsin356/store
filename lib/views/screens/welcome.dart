
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/loginScreen.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/textWidget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/img.png"),
              //const SizedBox(height: 15,),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const TextWidget(txt: "Welcome to eStore",txtSize: 30,
                    fontWeight: FontWeight.bold,txtClr: AppColors.txtClr,),
                  const TextWidget(txt: "With long experience in the industry,"
                      "\n we create the best quality products",
                    txtSize: 19,txtClr: AppColors.hintTxtClr,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ButtonWidget(btnTxt: "Get Started",btnClr: AppColors.btnClr,
                      btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 19,
                    spaceBeforeTxt: 30,
                    function: (){
                      Get.to(const LoginScreen());
                    },
                    btnIcon: Icons.arrow_forward_sharp,
                      btnIconClr: AppColors.btnIconClr,
                    btnIconSize: 30,),
                  )
                ],
              ))
            ],
          )),

    );
  }
}
