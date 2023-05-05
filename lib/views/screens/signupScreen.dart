
import 'package:flutter/material.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/locationWidget.dart';
import 'package:store/views/widgets/signupForm.dart';
import 'package:store/views/widgets/textWidget.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 10,),
                const LocationWidget(),
                const SizedBox(height: 50,),
                SizedBox(
                  height: 664,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          width: 305,
                          height: 64,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                child:  TextWidget(txt: "Getting Started",
                                  fontWeight:FontWeight.bold,txtSize: 24,txtClr: AppColors.txtClr,),
                              ),
                              SizedBox(
                                height: 24,
                                child:  TextWidget(txt: "Create an account to continue!",
                                  txtSize: 14,txtClr: AppColors.hintTxtClr,),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SignUpForm(),
                      SizedBox(
                        height: 107,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(color:AppColors.dividerClr ,height: 2,),
                            Center(
                              child: SizedBox(
                                width: 305,
                                child: ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: AppColors.btnTxtClr,backgroundColor: AppColors.fbBtnClr,
                                    minimumSize: const Size.fromHeight(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(Icons.facebook,color: AppColors.btnIconClr,),
                                      Text("Connect with Facebook",style:  TextStyle(fontSize: 17),),
                                    ],
                                  ),),
                              ),
                            ),
                            const SizedBox(height: 2,)
                          ],
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
