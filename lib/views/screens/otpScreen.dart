
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:store/controllers/phoneNumberController.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/locationWidget.dart';
import 'package:store/views/widgets/textWidget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PhoneNumberController phoneController=Get.find<PhoneNumberController>();
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Container(
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
                                height: 88,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    const SizedBox(
                                      height: 32,
                                      child:  TextWidget(txt: "OTP Authentication",
                                        fontWeight:FontWeight.bold,txtSize: 24,txtClr: AppColors.txtClr,),
                                    ),
                                    SizedBox(
                                      height: 48,
                                      child:  TextWidget(txt: "An authentication code has been \nsent to"
                                          " ${phoneController.phoneNumber.value}",
                                        txtSize: 14,txtClr: AppColors.hintTxtClr,),
                                    ),
                                  ],
                                ),
                              ),
                              OTPTextField(
                                  length: 4,
                                  width: MediaQuery.of(context).size.width,
                                  fieldWidth: 60,
                                  obscureText: false,
                                  style: const TextStyle(
                                      fontSize: 24,fontWeight: FontWeight.bold
                                  ),
                                  otpFieldStyle: OtpFieldStyle(
                                    focusBorderColor: AppColors.focusClr,
                                    disabledBorderColor: AppColors.dividerClr,
                                    enabledBorderColor: AppColors.dividerClr
                                  ),
                                  textFieldAlignment: MainAxisAlignment.spaceAround,
                                  fieldStyle: FieldStyle.underline,
                                  keyboardType: TextInputType.phone,
                                  onChanged: (String? pin) {
                                    if (pin?.length == 4) {
                                      // print(pin);
                                    }
                                  }
                                // onCompleted: (pin)
                                // {
                                //   print("Completed:" + pin);
                                // },
                              ),


                              ButtonWidget(btnTxt: "CONTINUE",btnClr: AppColors.btnClr,
                                btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 17,
                                spaceBeforeTxt: 30,
                                function: (){},
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
