
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap: Get.back,
                child: Image.asset("assets/images/backArrow.png",),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: (){

                  },
                  child: const Icon(LineIcons.shoppingBag,color: AppColors.iconClr,size: 24,),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: AppColors.cardClr,
          body: SizedBox(
            height: Get.mediaQuery.size.height,
            child: Stack(
              children: [
                Positioned(
                  left: 40,
                  top: 20,
                  child: SizedBox(
                    height: 240,
                    width: 170,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 88,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 20,
                              child: TextWidget(txt: "Speakers",
                                txtClr: AppColors.hintTxtClr,txtSize: 12,),),
                            SizedBox(height: 64,
                              child: TextWidget(txt: "Beosound\nBalance",
                                txtClr: AppColors.txtClr,txtSize: 24,
                                fontWeight: FontWeight.bold,),)
                          ],
                        ),),
                        SizedBox(height: 48,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20,
                                child: TextWidget(txt: "From",
                                  txtClr: AppColors.hintTxtClr,txtSize: 12,),),
                              SizedBox(height: 24,
                                child: TextWidget(txt: "\$ 1600",
                                  txtClr: AppColors.txtClr,fontWeight: FontWeight.bold,
                                  txtSize: 20,),),
                            ],
                          ),),
                        SizedBox(height: 56,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 20,
                                child: TextWidget(txt: "Available Colors",
                                  txtClr: AppColors.hintTxtClr,txtSize: 12,),),
                              SizedBox(height: 24,width: 96,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:24,width: 24,
                                      decoration: BoxDecoration(
                                        color: AppColors.profileCardBgClr,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    Container(
                                      height:24,width: 24,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF8B697),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    Container(
                                      height:24,width: 24,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF171717),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ],
                                )),
                            ],
                          ),),


                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: AppColors.appBgClr,
                    height: 300,
                    width: Get.mediaQuery.size.width,

                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 360,
                    width: Get.mediaQuery.size.width,
                    decoration: BoxDecoration(
                      color: AppColors.appBgClr,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 230,
                        width:305,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 120,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                 SizedBox(
                                  height: 24,
                                  child: TextWidget(txt: "Wireless, smart home speaker",
                                    txtClr: AppColors.txtClr,txtSize: 18,fontWeight: FontWeight.bold,),
                                ),
                                 SizedBox(
                                  height: 80,
                                  child: TextWidget(txt: "A wireless speaker "
                                      "with a dynamic acoustic performance "
                                      "designed to be positioned up against "
                                      "the wall on a shelf or side table in "
                                      "your home. Impressive sound compared to its size.",
                                    txtSize: 14,txtClr: AppColors.hintTxtClr,),
                                ),
                              ],
                            ),),
                            SizedBox(
                              width:305,
                              height: 44,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: AppColors.btnTxtClr,
                                    backgroundColor: AppColors.btnClr
                                ),
                                child: const TextWidget(txt: "ADD TO CART ",
                                  txtSize: 12,fontWeight: FontWeight.bold,),
                              ),
                            )
                          ],
                        ),
                      ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 60,
                  child: SizedBox(
                    height: 360,
                    width: 170,
                    child:FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/images/speaker.png")),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
