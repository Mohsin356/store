
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

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
              child: TextWidget(txt: "MY CART",
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
            height: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 148,
                child: ListView.builder(
                  itemCount: 9,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Card(
                        color: AppColors.cardClr,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        shadowColor: Colors.black,
                        child: SizedBox(
                          width: 305,
                          height: 148,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 124,
                                width: 120,
                                child:FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image.asset("assets/images/speaker.png")),
                              ),
                            ],
                          )
                          /*Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              SizedBox(
                                height: 48,
                                width: 145,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                        height:24,
                                        child: TextWidget(txt: "Speakers",txtSize: 16,fontWeight: FontWeight.bold,)),
                                    SizedBox(
                                        height:20,
                                        child: TextWidget(txt: "\$1,600",txtSize: 12,txtClr: AppColors.hintTxtClr,))
                                  ],
                                ),
                              ),
                            ],
                          ),*/
                        ),
                      ),
                    );
                  },


                ),),
                Container(
                  height: 78,
                  width: 305,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 24,
                            width: 161,
                            child: TextWidget(txt: "Shipping",
                              fontWeight: FontWeight.bold,txtSize: 16,),
                          ),
                          SizedBox(
                            height: 20,
                            width: 161,
                            child: TextWidget(txt: "2-3 days",
                              txtSize: 12,txtClr: AppColors.hintTxtClr,),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/arrowDown.png",width:24,height: 24,),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 78,
                  width: 305,
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
                        child: Image.asset("assets/images/percent.png",width:24,height: 24,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 24,
                            width: 96,
                            child: TextWidget(txt: "Promo Code",
                              fontWeight: FontWeight.bold,txtSize: 16,),
                          ),
                          SizedBox(
                            height: 20,
                            width: 96,
                            child: TextWidget(txt: "-\$100.00",
                              txtSize: 12,txtClr: AppColors.hintTxtClr,),
                          ),
                        ],
                      ),
                      Container(
                        height: 24,
                        width: 56,
                        decoration: BoxDecoration(
                            color:AppColors.btnClr,
                            borderRadius: BorderRadius.circular(5.0),
                        ),
                      child: const Center(
                        child:  TextWidget(txt: "ST#132",txtClr: AppColors.txtClr,
                          txtSize: 10,fontWeight: FontWeight.bold,),
                      ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/greenTick.png",width:24,height: 24,),
                      )
                    ],
                  ),
                ),
                Container(color:AppColors.dividerClr ,height: 1,),
                Center(
                  child: SizedBox(width: 305,
                  height: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 49,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextWidget(txt: "Total:",txtSize: 14,),
                          TextWidget(txt: "\$ 9,800",
                            fontWeight: FontWeight.bold,txtSize: 16,),
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
                          child: const TextWidget(txt: "CHECKOUT",
                            txtSize: 12,fontWeight: FontWeight.bold,),
                        ),
                      )
                    ],
                  ),),
                )
              ],

            ),
          )
        ));
  }
}
