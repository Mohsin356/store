
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/locationWidget.dart';
import 'package:store/views/widgets/textWidget.dart';
import 'package:store/views/widgets/userForm.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctime;
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: WillPopScope(
        onWillPop: () {
          DateTime now = DateTime.now();
          if (ctime == null || now.difference(ctime) > const Duration(seconds: 2)) {
            //add duration of press gap
            ctime = now;
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Press Back Button Again to Exit'))
            ); //scaffold message, you can show Toast message too.
            return Future.value(false);
          }

          return Future.value(true);
        },
        child: SafeArea(
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
                                  child:  TextWidget(txt: "Let's Sign You In",
                                    fontWeight:FontWeight.bold,txtSize: 24,txtClr: AppColors.txtClr,),
                                ),
                                SizedBox(
                                  height: 24,
                                  child:  TextWidget(txt: "Welcome back, you have been missed!",
                                    txtSize: 14,txtClr: AppColors.hintTxtClr,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        UserForm(),

                        SizedBox(
                          height: 107,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(color:AppColors.dividerClr ,height: 1,),
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
      ),
    );
  }
}
