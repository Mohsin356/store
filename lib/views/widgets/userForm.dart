
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controllers/userController.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/phoneSignUp.dart';
import 'package:store/views/screens/signupScreen.dart';
import 'package:store/views/widgets/buttonWidget.dart';
import 'package:store/views/widgets/inputFormField.dart';
import 'package:store/views/widgets/textWidget.dart';

class UserForm extends StatelessWidget {
  final UserController controller = Get.put(UserController());

   UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 305,
        height: 453,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const SizedBox(height: 20,),
               const TextWidget(txt: "Username or Email",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
               const SizedBox(height: 10,),
               InputFormField(inputType:TextInputType.text,
                 onChangedFunction: (value)=>controller.setName(value),
                 txtFieldIcon: "assets/images/account.png",),
               const SizedBox(height: 20,),
               const TextWidget(txt: "Password",txtClr:AppColors.hintTxtClr ,txtSize: 12,),
               const SizedBox(height: 10,),
               Obx(() => TextFormField(
                 style: const TextStyle(fontWeight: FontWeight.bold),
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: controller.hiddenPass.value,
                 onChanged: (value)=>controller.setName(value),
                 decoration:  InputDecoration(
                   //prefixIcon: Icon(txtFieldIcon,color: iconClr,size: iconSize,),
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Image.asset("assets/images/pass.png",width:24,height: 24,),
                   ),
                   suffixIcon: GestureDetector(
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Image.asset(controller.hiddenPass.value?"assets/images/hidePass.png":"assets/images/showPass.png",width:24,height: 24,),
                     ),
                     onTap: (){controller.togglePassword();},
                   ),
                   border: const  UnderlineInputBorder(
                       borderSide: BorderSide(color:AppColors.dividerClr,)
                   ),
                   focusedBorder:  const UnderlineInputBorder(
                       borderSide: BorderSide(color:AppColors.focusClr,)
                   ),
                 ),
                 cursorColor: AppColors.cursorClr,

               )),
               const SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [ GestureDetector(child: const TextWidget(txt: "Forgot Password?",
                   txtSize: 13,txtClr: AppColors.txtClr,
                   fontWeight: FontWeight.bold,),
                   onTap: (){Get.to(const PhoneSignUp());},)],
               ),
             ],
           ),
            Column(
              children: [
                ButtonWidget(btnTxt: "SIGN IN",btnClr: AppColors.btnClr,
                  btnTxtClr: AppColors.btnTxtClr,btnTxtSize: 17,
                  spaceBeforeTxt: 30,
                  function: () => controller.saveUser(),
                  btnIcon: "assets/images/signInIcon.png",
                  btnIconClr: AppColors.btnIconClr,),
                Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(txt: "Don't have an account?",txtClr: AppColors.hintTxtClr,txtSize: 13,),
                      const SizedBox(width: 5,),
                      GestureDetector(child: const TextWidget(txt: "Sign up",
                        txtSize: 13,txtClr: AppColors.txtClr,
                        fontWeight: FontWeight.bold,),
                        onTap: (){Get.to(const SignUp());},)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}