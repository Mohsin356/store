
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class ProductCategoryController extends GetxController{
  Rx<RangeValues> currentRangeValues =  const RangeValues(500, 1600).obs;
  RxList colorsList=[[false.obs,const Color(0xFFC6AB59)],[false.obs,const Color(0xFF02C697)],
    [false.obs,const Color(0xFFF8B697)],[false.obs,const Color(0xFFA63EFF)],
    [false.obs,const Color(0xFF171717)],[false.obs,const Color(0xFF8F92A1),]].obs;
  RxBool isClickedMen=false.obs;
  RxBool isClickedWomen=false.obs;
  RxBool isClickedBoth=false.obs;


  showFilterBottomSheet(BuildContext context){
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
            height: 605,
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
                  Center(
                      child: SizedBox(
                        width: Get.mediaQuery.size.width*0.79,
                        height: 84,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidget(txt: "Gender",txtSize: 16,
                              fontWeight:FontWeight.bold,txtClr: AppColors.txtClr,),
                            SizedBox(height: 44,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: Get.mediaQuery.size.width*0.24,
                                    child: Obx(() => ElevatedButton(
                                      onPressed: (){
                                        isClickedMen.value=!isClickedMen.value;
                                        isClickedWomen.value=false;
                                        isClickedBoth.value=false;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: isClickedMen.value?AppColors.btnTxtClr:AppColors.genderBtnTxtClr,
                                        backgroundColor: isClickedMen.value? AppColors.btnClr:AppColors.disabledBtnClr,
                                        minimumSize: const Size.fromHeight(50),
                                      ),
                                      child: const TextWidget(txt: "Men",
                                        txtSize: 14,fontWeight: FontWeight.bold,),
                                    )),),
                                  SizedBox(width: Get.mediaQuery.size.width*0.24,
                                    child: Obx(() => ElevatedButton(
                                      onPressed: (){
                                        isClickedMen.value=false;
                                        isClickedWomen.value=!isClickedWomen.value;
                                        isClickedBoth.value=false;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: isClickedWomen.value?AppColors.btnTxtClr:AppColors.genderBtnTxtClr,
                                        backgroundColor: isClickedWomen.value? AppColors.btnClr:AppColors.disabledBtnClr,
                                        minimumSize: const Size.fromHeight(50),
                                      ),
                                      child: const TextWidget(txt: "Women",
                                        txtSize: 14,fontWeight: FontWeight.bold,),
                                    )),),
                                  SizedBox(width: Get.mediaQuery.size.width*0.24,
                                    child: Obx(() => ElevatedButton(
                                      onPressed: (){
                                        isClickedMen.value=false;
                                        isClickedWomen.value=false;
                                        isClickedBoth.value=!isClickedBoth.value;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: isClickedBoth.value?AppColors.btnTxtClr:AppColors.genderBtnTxtClr,
                                        backgroundColor: isClickedBoth.value? AppColors.btnClr:AppColors.disabledBtnClr,
                                        minimumSize: const Size.fromHeight(50),
                                      ),
                                      child: const TextWidget(txt: "Both",
                                        txtSize: 14,fontWeight: FontWeight.bold,),
                                    )),),

                                ],
                              ),),
                          ],
                        ),
                      )),
                  Container(color:AppColors.dividerClr ,height: 1,),
                  Center(
                      child: SizedBox(
                        width: Get.mediaQuery.size.width*0.79,
                        height: 148,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(txt: "Price Rate",txtSize: 16,
                              fontWeight:FontWeight.bold,txtClr: AppColors.txtClr,),
                            SizedBox(height: 45,
                                child: Obx(() => RangeSlider(
                                  activeColor: AppColors.activeRangeSliderClr,
                                  inactiveColor: AppColors.inactiveRangeSliserClr,
                                  values: currentRangeValues.value,
                                  max: 2000,
                                  divisions: 10,
                                  labels: RangeLabels(
                                    currentRangeValues.value.start.round().toString(),
                                    currentRangeValues.value.end.round().toString(),
                                  ),
                                  onChanged: (RangeValues values) {
                                    currentRangeValues.value = values;
                                  },
                                ))
                            ),
                            SizedBox(
                              height: 44,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(width: Get.mediaQuery.size.width*0.38,
                                    decoration: BoxDecoration(
                                      color:AppColors.cardClr,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                        child: Obx(()=>TextWidget(txt: "Min: "
                                            "${currentRangeValues.value.start.round().toString()}",
                                          txtClr: AppColors.txtClr,fontWeight: FontWeight.bold,txtSize: 14,))
                                    ),),
                                  Container(width: Get.mediaQuery.size.width*0.38,
                                    decoration: BoxDecoration(
                                      color:AppColors.cardClr,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                        child: Obx(()=>TextWidget(txt: "Max: "
                                            "${currentRangeValues.value.end.round().toString()}",
                                          txtClr: AppColors.txtClr,fontWeight: FontWeight.bold,txtSize: 14,))
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(color:AppColors.dividerClr ,height: 1,),
                  SizedBox(
                    height: 84,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: Get.mediaQuery.size.width*0.79,
                          child: const TextWidget(txt: "Color",txtSize: 16,
                            fontWeight: FontWeight.bold,txtClr: AppColors.txtClr,),),
                        ),
                        Center(
                          child: SizedBox(
                            width: Get.mediaQuery.size.width*0.83,
                            height: 44,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: ListView.separated(
                                itemCount: colorsList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return  Obx(() => GestureDetector(
                                    onTap: (){
                                      colorsList[index][0].value=!colorsList[index][0].value;
                                    },
                                    child:  Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: colorsList[index][0].value?AppColors.selectedClr:Colors.transparent,
                                          width: colorsList[index][0].value?3.0:0,
                                        ),
                                        color:colorsList[index][1],
                                        borderRadius: BorderRadius.circular(6.0),
                                      ),
                                    ),
                                  ));
                                }, separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(width: 10,),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(color:AppColors.dividerClr ,height: 1,),
                  Center(
                    child: SizedBox(
                      width: Get.mediaQuery.size.width*0.79,
                      height: 44,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        SizedBox(height: 44,
                          width: Get.mediaQuery.size.width*0.51,
                        child: ElevatedButton(onPressed: (){}
                        ,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: AppColors.btnTxtClr,backgroundColor: AppColors.btnClr,
                          ), child: const TextWidget(txt: "APPLY FILTERS (4)",
                          fontWeight: FontWeight.bold,txtSize: 12,),),),
                          SizedBox(height: 44,
                            width: Get.mediaQuery.size.width*0.25,
                            child: ElevatedButton(onPressed: (){}
                              ,
                              style: ElevatedButton.styleFrom(
                                foregroundColor: AppColors.genderBtnTxtClr,backgroundColor: AppColors.disabledBtnClr,
                              ), child: const TextWidget(txt: "RESET",
                                fontWeight: FontWeight.bold,txtSize: 12,),),),
                        ],
                      ),

                    ),
                  ),
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
  }
}
