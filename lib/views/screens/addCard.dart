
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controllers/userController.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/orderReview.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/inputFormField.dart';
import 'package:store/views/widgets/textWidget.dart';

class AddCreditCard extends StatelessWidget {
  AddCreditCard({Key? key}) : super(key: key);
  final UserController controller= Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap: ()async{
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                      Get.back();
                    }
                },
                child: Image.asset("assets/images/backArrow.png",),
              ),
            ),
            title:  const Center(
              child: TextWidget(txt: "ADD NEW CARD",
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
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  width: Get.mediaQuery.size.width*0.79,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(txt: "Card Holder",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
                      const SizedBox(height: 10,),
                      InputFormField(inputType:TextInputType.text,
                        onChangedFunction: (value)=>controller.setName(value),
                        txtFieldIcon: "assets/images/account.png",),
                      const SizedBox(height: 20,),
                      const TextWidget(txt: "Card Number",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
                      const SizedBox(height: 10,),
                      InputFormField(inputType:TextInputType.text,
                        onChangedFunction: (value)=>controller.setName(value),
                        txtFieldIcon: "assets/images/paymentCard.png",),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: Get.mediaQuery.size.width*0.79,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 145,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TextWidget(txt: "Expiry Date",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
                                  const SizedBox(height: 10,),
                                  InputFormField(inputType:TextInputType.text,
                                    onChangedFunction: (value)=>controller.setName(value),
                                    txtFieldIcon: "assets/images/calender.png",),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 145,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TextWidget(txt: "CVV",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
                                  const SizedBox(height: 10,),
                                  InputFormField(inputType:TextInputType.text,
                                    onChangedFunction: (value)=>controller.setName(value),
                                    txtFieldIcon: "assets/images/pass.png",),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Obx(() => SizedBox(
                        height: 40,
                        width: Get.mediaQuery.size.width*0.79,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: AppColors.checkBoxClr,
                              value: controller.selected.value == 2,
                              onChanged: (val) {
                                val ?? true ? controller.selected.value = 2 : controller.selected.value = null;
                              },),
                            const TextWidget(txt: "Save to My Cards",txtClr: AppColors.txtClr,
                              txtSize: 14,fontWeight: FontWeight.bold,),
                          ],
                        ),
                      )),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: Get.mediaQuery.size.width*0.79,
                        height: 44,
                        child: ButtonWidget(btnTxt: "ORDER REVIEW",btnClr: AppColors.btnClr,
                          btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 14,
                          spaceBeforeTxt: 30,
                          function: (){
                            Get.to(()=>const OrderReview());
                          },
                          btnIcon: "assets/images/rightArrow.png",
                          btnIconClr: AppColors.btnIconClr,),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
