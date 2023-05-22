
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/homePageNavigationBar.dart';
import 'package:store/views/screens/product.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/textWidget.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap:(){Get.to(()=>const MyHomePage());},
                child: Image.asset("assets/images/backArrow.png",),
              ),
            ),
            title:  const Center(
              child: TextWidget(txt: "ORDER COMPLETE",
                fontWeight: FontWeight.bold,
                txtSize: 12,txtClr: AppColors.txtClr,),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  child: Image.asset("assets/images/threeDotMenu.png",),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: AppColors.appBgClr,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 337,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 164,
                          width: Get.mediaQuery.size.width*0.79,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 80,width: 80,
                                  decoration: BoxDecoration(
                                    color:AppColors.iconBgClr ,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Padding(
                                        padding: const EdgeInsets.all(40.0),
                                        child: Image.asset("assets/images/successfulPayment.png"),
                                      ))
                              ),
                              SizedBox(width: Get.mediaQuery.size.width*0.79,
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(width: Get.mediaQuery.size.width*0.79,
                                      height: 32,
                                      child: const Center(
                                        child: TextWidget(txt: "Payment Successful!",
                                          txtSize: 24,fontWeight: FontWeight.bold,),
                                      ),),
                                    SizedBox(width: Get.mediaQuery.size.width*0.79,
                                      height: 20,
                                      child: const Center(
                                        child: TextWidget(txt: "Order will arrive in 3 days!",
                                          txtClr: AppColors.hintTxtClr, txtSize: 14,),
                                      ),),
                                  ],
                                ),),
                            ],
                          ),
                        ),
                      ),
                      Container(color:AppColors.dividerClr ,height: 1,),
                      SizedBox(height: 108,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:6,
                            itemBuilder:(context, index){
                              return Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: GestureDetector(
                                  onTap: (){Get.to(()=>const Product());},
                                  child: SizedBox(
                                    width: 80,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height:80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: AppColors.cardClr,
                                            borderRadius: BorderRadius.circular(20.0),
                                          ),
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Image.asset("assets/images/speaker.png")),
                                        ),
                                        const SizedBox(
                                          height:20,
                                          child: TextWidget(txt: "Basesound",
                                            fontWeight: FontWeight.bold,txtSize: 12,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            } ),),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: Get.mediaQuery.size.width*0.79,
                    height: 44,
                    child: ButtonWidget(btnTxt: "GO TO HOME",btnClr: AppColors.btnClr,
                      btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 14,
                      spaceBeforeTxt: 30,
                      function: (){
                        Get.to(()=>const MyHomePage());
                      },
                      btnIcon: "assets/images/rightArrow.png",
                      btnIconClr: AppColors.btnIconClr,),
                  ),
                )
              ],
            ),
          ),

        ) );
  }
}
