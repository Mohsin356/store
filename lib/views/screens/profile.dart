
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/product.dart';
import 'package:store/views/widgets/textWidget.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgClr,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.mediaQuery.size.width,
              height: 569,
              child: Stack(
                children: [
                  Container(
                    height:553,
                    decoration: BoxDecoration(
                      color: AppColors.profileCardBgClr,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(height: 220,
                    width: 305,
                      child: Column(
                        children: [
                          const SizedBox(height: 68,),
                          Expanded(
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height:80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColors.cardClr,
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset("assets/images/profilePic.png")),
                                  ),
                                  const SizedBox(height: 32,
                                  child: TextWidget(txt: "Wilson",
                                    fontWeight: FontWeight.bold,txtSize: 24,),),
                                  const SizedBox(height: 20,
                                    child: TextWidget(txt: "abc@acount.com",txtSize: 16,),)
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      width: 305,
                      height: 313,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 37,
                              width: 305,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: SizedBox(
                                  height: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                    TextWidget(txt: "Order #CS1020",
                                    fontWeight: FontWeight.bold,txtSize: 10,),
                                      TextWidget(txt: "In Progress",txtClr: AppColors.statusClr,
                                        fontWeight: FontWeight.bold,txtSize: 10,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(color:AppColors.dividerClr ,height: 1,),
                            const SizedBox(height: 10,),
                            SizedBox(height: 109,
                            child: GridView.builder(
                              itemCount: 9,
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                                  mainAxisSpacing: 0),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: (){Get.to(()=>const Product());},
                                  child: SizedBox(
                                    width: 79,
                                    height: 92,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height:64,
                                          width: 79,
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
                                );
                              },
                            ),),
                            const SizedBox(height: 10,),
                            Container(color:AppColors.dividerClr ,height: 1,),
                            const SizedBox(height: 10,),
                            Center(
                              child: SizedBox(
                                height: 103,
                                width: 257,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: const [
                                        SizedBox(height: 24,
                                          child: TextWidget(txt: "Your order is on its way!",
                                            fontWeight: FontWeight.bold,txtSize: 14,),),
                                        SizedBox(height: 20,
                                          child: TextWidget(txt: "Orders will arrive in 3 days!",
                                            txtClr: AppColors.hintTxtClr,txtSize: 12,),),
                                      ],
                                    ),
                                    SizedBox(height: 32,
                                    width: 145,
                                    child: ElevatedButton(onPressed: ()
                                    {
                                      showModalBottomSheet<void>(
                                        isScrollControlled: true,
                                        backgroundColor: AppColors.appBgClr,
                                        context: context,
                                          shape: const RoundedRectangleBorder( // <-- SEE HERE
                                          borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.0),),),
                                        builder: (BuildContext context) {
                                          return Padding(
                                            padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                            child: SizedBox(
                                              height: 360,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(height: 5,width: 48,
                                                      decoration: BoxDecoration(
                                                        color:AppColors.dividerClr ,
                                                        borderRadius: BorderRadius.circular(20.0),
                                                      ),),
                                                    SizedBox(height: 180,
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
                                                                  padding: const EdgeInsets.all(25.0),
                                                                  child: Image.asset("assets/images/trackOrder.png"),
                                                                ))
                                                          ),
                                                          SizedBox(width: 305,
                                                          height: 60,
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: const[
                                                               SizedBox(width: 305,height: 32,
                                                                child: Center(
                                                                  child: TextWidget(txt: "Tracking Order",
                                                                    txtSize: 24,fontWeight: FontWeight.bold,),
                                                                ),),
                                                              SizedBox(width: 305,height: 20,
                                                                child: Center(
                                                                  child: TextWidget(txt: "Enter upto 25 tracking numbers,"
                                                                      " one per line.",txtClr: AppColors.hintTxtClr,
                                                                    txtSize: 14,fontWeight: FontWeight.bold,),
                                                                ),),
                                                            ],
                                                          ),),
                                                          Container(color:AppColors.dividerClr ,height: 1,),

                                                        ],
                                                      ),
                                                    ),
                                                  Container(height: 44,width: 305,
                                                    decoration: BoxDecoration(
                                                      color:AppColors.dividerClr ,
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                      child: TextFormField(
                                                        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                                        decoration: InputDecoration(hintText: "EnterCode",
                                                            hintStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                                            suffixIcon: Padding(
                                                              padding: const EdgeInsets.all(13.0),
                                                              child: Image.asset("assets/images/search.png",),
                                                            ),
                                                            border:InputBorder.none),
                                                        cursorColor: AppColors.cursorClr,
                                                      ),
                                                    ),),
                                                    SizedBox(height: 44,
                                                        width: 305,
                                                        child: ElevatedButton(
                                                          onPressed: (){},
                                                          style: ElevatedButton.styleFrom(
                                                            foregroundColor: AppColors.btnTxtClr,backgroundColor: AppColors.btnClr,
                                                            minimumSize: const Size.fromHeight(50),
                                                          ),
                                                          child: const TextWidget(txt: "APPLY FILTERS (4)",
                                                            txtSize: 12,fontWeight: FontWeight.bold,),
                                                        )),
                                                    Container(height: 5,width: 134,
                                                      decoration: BoxDecoration(
                                                        color:AppColors.dividerClr ,
                                                        borderRadius: BorderRadius.circular(20.0),
                                                      ),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: AppColors.btnTxtClr,backgroundColor: AppColors.btnClr,
                                        minimumSize: const Size.fromHeight(50),
                                      ),
                                        child: const TextWidget(txt: "TRACK",
                                          txtSize: 12,fontWeight: FontWeight.bold,),
                                    ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 65,
              width: 305,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/account.png",width:24,height: 24,),
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 24,
                            width: 201,
                            child: TextWidget(txt: "My Account",
                              fontWeight: FontWeight.bold,txtSize: 14,),
                          ),
                          SizedBox(
                            height: 20,
                            width: 201,
                            child: TextWidget(txt: "Edit your information",
                              txtSize: 12,txtClr: AppColors.hintTxtClr,),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/rightArrowBlack.png",width:24,height: 24,),
                      )
                    ],
                  ),
                  Container(color:AppColors.dividerClr ,height: 1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
