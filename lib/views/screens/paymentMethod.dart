
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/textWidget.dart';
class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

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
              title:  const Center(
                child: TextWidget(txt: "PAYMENT METHOD",
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
            body: SizedBox(
              height: Get.mediaQuery.size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 410,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: SizedBox(
                          width: Get.mediaQuery.size.width*0.79,
                          height: 183,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset("assets/images/paymentCard.png",width:24,height: 24,),
                                      ),
                                      const SizedBox(width: 8,),
                                      const TextWidget(txt: "Credit Card",txtClr: AppColors.txtClr,
                                        fontWeight: FontWeight.bold,txtSize: 14,)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/dropDownIcon.png",width:24,height: 24,),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 135,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: 87,
                                        width:39,
                                        decoration: BoxDecoration(
                                          color: AppColors.cardClr,
                                          borderRadius: BorderRadius.circular(18.0),
                                        ),
                                        child:
                                        const Center(
                                          child: Icon(Icons.add,size: 24,color: AppColors.iconClr,),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.mediaQuery.size.width*0.66,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 28,
                                            right: 0,
                                            child: Container(
                                              height: 79,
                                              width:Get.mediaQuery.size.width*0.4,
                                              decoration: BoxDecoration(
                                                color: AppColors.creditCardThreeClr,
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 14,
                                            right: 12,
                                            child: Container(
                                              height: 107,
                                              width:192,
                                              decoration: BoxDecoration(
                                                color: AppColors.creditCardTwoClr,
                                                borderRadius: BorderRadius.circular(25.0),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width:Get.mediaQuery.size.width*0.598,
                                            decoration: BoxDecoration(
                                              color: AppColors.creditCardOneClr,
                                              borderRadius: BorderRadius.circular(25.0),
                                            ),
                                            child: Center(
                                              child: SizedBox(
                                                width: 193,
                                                height: 87,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: const[
                                                        TextWidget(txt: "****9000",txtSize: 14,txtClr: AppColors.btnTxtClr,),
                                                        TextWidget(txt: "01/23",txtSize: 14,txtClr: AppColors.btnTxtClr,),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 48,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          const TextWidget(txt: "Travel Card",txtSize: 12,txtClr: AppColors.creditCardTwoClr,),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              const TextWidget(txt: "&3,580.04",txtSize: 16,txtClr: AppColors.btnTxtClr,),
                                                              SizedBox(
                                                                width: 36.25,
                                                                height: 23.97,
                                                                child: FittedBox(
                                                                    fit: BoxFit.fill,
                                                                    child: Image.asset("assets/images/creditLogo.png")),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(color:AppColors.dividerClr ,height: 1,),
                      SizedBox(
                        height: 162,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 48,
                              width: Get.mediaQuery.size.width*0.79,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset("assets/images/payPalLogo.png",width:24,height: 24,),
                                  ),
                                  SizedBox(
                                    width: Get.mediaQuery.size.width*0.5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  const [
                                        SizedBox(
                                          height: 24,
                                          child: TextWidget(txt: "PayPal",
                                            fontWeight: FontWeight.bold,txtSize: 16,),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: TextWidget(txt: "abc@acount.com",
                                            txtSize: 14,txtClr: AppColors.hintTxtClr,),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/creditAccountTick.png",width:30,height: 30,),
                                  )
                                ],
                              ),

                            ),
                            Container(color:AppColors.dividerClr ,height: 1,),
                            SizedBox(
                              height: 48,
                              width: Get.mediaQuery.size.width*0.79,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset("assets/images/appleLogo.png",width:24,height: 24,),
                                  ),
                                  SizedBox(
                                    width: Get.mediaQuery.size.width*0.5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  const [
                                        SizedBox(
                                          height: 24,
                                          child: TextWidget(txt: "Apple Pay",
                                            fontWeight: FontWeight.bold,txtSize: 16,),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: TextWidget(txt: "****9000",
                                            txtSize: 14,txtClr: AppColors.hintTxtClr,),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/crediCardAccountTickDisabled.png",width:32,height: 32,),
                                  )
                                ],
                              ),

                            ),
                            Container(color:AppColors.dividerClr ,height: 1,),
                          ],
                        ),
                      )
                    ],
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: Get.mediaQuery.size.width*0.79,
                      height: 44,
                      child: ButtonWidget(btnTxt: "ORDER REVIEW",btnClr: AppColors.btnClr,
                        btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 14,
                        spaceBeforeTxt: 30,
                        function: (){},
                        btnIcon: "assets/images/rightArrow.png",
                        btnIconClr: AppColors.btnIconClr,),
                    ),
                  ),
                ],
              ),
            ),

        ));
  }
}
