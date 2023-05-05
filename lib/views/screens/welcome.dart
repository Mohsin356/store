
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
              SizedBox(
                  width: Get.mediaQuery.size.width,
                  height: 422,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/img.png")),
              ),
              //const SizedBox(height: 132,),
              Center(
                child: SizedBox(
                  height: 188,
                    width: 305,
                    child: Column(
                  children: const [
                    TextWidget(txt: "Welcome to eStore",txtSize: 30,
                      fontWeight: FontWeight.bold,txtClr: AppColors.txtClr,),
                     SizedBox(height: 10,),
                     TextWidget(txt: "With long experience in the industry,"
                        "\n we create the best quality products",
                      txtSize: 19,txtClr: AppColors.hintTxtClr,),
                    /*const SizedBox(height: 15,),
                    ButtonWidget(btnTxt: "Get Started",btnClr: AppColors.btnClr,
                      btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 19,
                    spaceBeforeTxt: 30,
                    function: (){
                      Get.to(const LoginScreen());
                    },
                    btnIcon: "assets/images/rightArrow.png",
                      btnIconClr: AppColors.btnIconClr,),*/
                    //const SizedBox(height: 20,),
                     //SizedBox(height: 10,),
                  ],
                )),
              ),

            ],
          )),

    );
  }
}
