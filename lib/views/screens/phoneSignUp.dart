
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:store/controllers/phoneNumberController.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/otpScreen.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/locationWidget.dart';
import 'package:store/views/widgets/textWidget.dart';

class PhoneSignUp extends StatelessWidget {
  const PhoneSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PhoneNumberController phoneController=Get.put(PhoneNumberController());
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                SizedBox(
                  height: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LocationWidget(),
                      Center(
                        child: SizedBox(
                          width: 305,
                          height: 280,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              SizedBox(
                                height: 180,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    const SizedBox(
                                      height: 32,
                                      child:  TextWidget(txt: "Password Recovery",
                                        fontWeight:FontWeight.bold,txtSize: 24,txtClr: AppColors.txtClr,),
                                    ),
                                    const SizedBox(
                                      height: 32,
                                      child:  TextWidget(txt: "Enter your phone number to recover\nyour password",
                                        txtSize: 14,txtClr: AppColors.hintTxtClr,),
                                    ),
                                    const SizedBox(height: 30,),
                                    const TextWidget(txt: "Phone Number",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
                                    IntlPhoneField(
                                      keyboardType: TextInputType.phone,
                                      style: const TextStyle(color: AppColors.focusClr),
                                      decoration: const InputDecoration(
                                        border:  UnderlineInputBorder(
                                            borderSide: BorderSide(color:AppColors.dividerClr,)
                                        ),
                                        focusedBorder:   UnderlineInputBorder(
                                            borderSide: BorderSide(color:AppColors.focusClr,)
                                        ),
                                      ),
                                      cursorColor: AppColors.cursorClr,
                                      initialCountryCode: phoneController.initCountryCode.value,
                                      onChanged: (phone) {
                                        phoneController.phoneNumber.value=phone.completeNumber;
                                        print(phone.completeNumber);
                                      },
                                    )
                                  ],
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                ],
                              ),
                              ButtonWidget(btnTxt: "CONTINUE",btnClr: AppColors.btnClr,
                                btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 17,
                                spaceBeforeTxt: 30,
                                function: (){
                                  phoneController.phoneNumber.value=="12345"?
                                  Get.showSnackbar(
                                    const GetSnackBar(
                                      message: 'Enter Phone Number',
                                      duration: Duration(seconds: 3),
                                      backgroundColor: AppColors.snackBarClr,
                                    ),
                                  ) :Get.to(()=>const OtpScreen());
                                },
                                btnIcon: "assets/images/rightArrow.png",
                                btnIconClr: AppColors.btnIconClr,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ) ),
    );
  }
}
