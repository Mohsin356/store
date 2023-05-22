
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/orderComplete.dart';
import 'package:store/views/screens/product.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/textWidget.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap: Get.back,
                child: Image.asset("assets/images/backArrow.png",),
              ),
            ),
            title:  const Center(
              child: TextWidget(txt: "ORDER REVIEW",
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: Get.mediaQuery.size.width*0.79,
                  child:  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(txt: "Products",txtClr: AppColors.txtClr,
                        fontWeight: FontWeight.bold,txtSize: 14,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/dropDownIcon.png",width:22,height: 22,),
                      ),
                    ],
                  ),
                ),
              ),
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
              Container(color:AppColors.dividerClr ,height: 1,),
              Center(
                child: SizedBox(height: 250,
                width: Get.mediaQuery.size.width*0.79,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextWidget(txt: "SHIPPING",
                      fontWeight: FontWeight.bold,txtSize: 10,
                      txtClr:AppColors.hintTxtClr ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            Image.asset("assets/images/pinnedLocation.png",width:24,height: 24,),
                            const TextWidget(txt: "Lahore, Pakistan",
                              fontWeight: FontWeight.bold,txtSize: 16,
                              txtClr:AppColors.txtClr ,),
                          ],
                        ),
                        GestureDetector(
                          child: Container(
                            height:24,width: 56,
                            decoration: BoxDecoration(
                              color: AppColors.btnClr,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child:  const Center(
                              child:  TextWidget(txt: "CHANGE",
                                txtSize: 10,fontWeight: FontWeight.bold,),
                            ),
                          ),
                          onTap: (){},
                        ),
                      ],
                    ),
                    Container(
                      height: 78,
                      width: Get.mediaQuery.size.width*0.79,
                      decoration: BoxDecoration(
                          color:AppColors.appBgClr,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                              color: AppColors.cardClr,
                              width: 1
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset("assets/images/shoppingCart.png",width:24,height: 24,),
                          ),
                          SizedBox(
                            width: Get.mediaQuery.size.width*0.41,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  const [
                                SizedBox(
                                  height: 24,
                                  child: TextWidget(txt: "Standard",
                                    fontWeight: FontWeight.bold,txtSize: 16,),
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextWidget(txt: "2-3 days",
                                    txtSize: 12,txtClr: AppColors.hintTxtClr,),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset("assets/images/arrowDown.png",width:24,height: 24,),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: Get.mediaQuery.size.width*0.79,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(txt: "PAYMENT",
                            fontWeight: FontWeight.bold,txtSize: 10,
                            txtClr:AppColors.hintTxtClr ,),
                          Container(
                            height: 48,
                            width: Get.mediaQuery.size.width*0.79,
                            decoration: BoxDecoration(
                                color:AppColors.creditCardOneClr,
                                borderRadius: BorderRadius.circular(17.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 36.25,
                                          height: 23.97,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Image.asset("assets/images/creditLogo.png")),
                                        ),
                                        const  SizedBox(
                                          width: 100,
                                          child: TextWidget(txt: "****9000",fontWeight: FontWeight.bold,
                                            txtSize: 16,txtClr: AppColors.btnTxtClr,),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height:24,width: 56,
                                      decoration: BoxDecoration(
                                        color: AppColors.btnClr,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child:  const Center(
                                        child:  TextWidget(txt: "CHANGE",
                                          txtSize: 10,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    onTap: (){},
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    )

                  ],
                ),),
              ),
              Container(color:AppColors.dividerClr ,height: 1,),
              Center(
                child: SizedBox(
                  height: 56,
                  width: Get.mediaQuery.size.width*0.79,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                           TextWidget(txt: "Shipping", txtSize: 14,
                            txtClr:AppColors.hintTxtClr ,),
                          TextWidget(txt: "Free",
                            fontWeight: FontWeight.bold,txtSize: 14,
                            txtClr:AppColors.hintTxtClr ,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          TextWidget(txt: "Total", txtSize: 16,
                            txtClr:AppColors.txtClr ,),
                          TextWidget(txt: "\$ 9,800",
                            fontWeight: FontWeight.bold,txtSize: 16,
                            txtClr:AppColors.txtClr ,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: SizedBox(
                    width: Get.mediaQuery.size.width*0.79,
                    height: 44,
                    child: ButtonWidget(btnTxt: "PLACE ORDER",btnClr: AppColors.btnClr,
                      btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 14,
                      spaceBeforeTxt: 30,
                      function: (){
                        Get.to(()=>const OrderCompleteScreen());
                      },
                      btnIcon: "assets/images/rightArrow.png",
                      btnIconClr: AppColors.btnIconClr,),
                  ),
                ),
              ),

            ],
          ),
        ) );
  }
}
