
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controllers/productCategoryController.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductCategoryController controller=Get.put(ProductCategoryController());
    return SafeArea(
        child:Scaffold(
          backgroundColor: AppColors.appBgClr,
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap: Get.back,
                child: Image.asset("assets/images/backArrow.png",),
              ),
            ),
            title:  const Center(
              child: TextWidget(txt: "SPEAKERS",
                fontWeight: FontWeight.bold,txtSize: 12,txtClr: AppColors.txtClr,),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: (){
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
                                        width: 305,
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
                                                  SizedBox(width: 95,
                                                    child: ElevatedButton(
                                                      onPressed: (){},
                                                      style: ElevatedButton.styleFrom(foregroundColor: AppColors.btnTxtClr,
                                                        backgroundColor: AppColors.btnClr,
                                                        minimumSize: const Size.fromHeight(50),
                                                      ),
                                                      child: const TextWidget(txt: "Men",
                                                        txtSize: 14,fontWeight: FontWeight.bold,),
                                                    ),),
                                                  SizedBox(width: 95,
                                                    child: ElevatedButton(
                                                      onPressed: (){},
                                                      style: ElevatedButton.styleFrom(foregroundColor: AppColors.genderBtnTxtClr,
                                                        backgroundColor: AppColors.disabledBtnClr,
                                                        minimumSize: const Size.fromHeight(50),
                                                      ),
                                                      child: const TextWidget(txt: "Women",
                                                        txtSize: 14,fontWeight: FontWeight.bold,),
                                                    ),),
                                                  SizedBox(width: 95,
                                                    child: ElevatedButton(
                                                      onPressed: (){},
                                                      style: ElevatedButton.styleFrom(foregroundColor: AppColors.genderBtnTxtClr,
                                                        backgroundColor: AppColors.disabledBtnClr,
                                                        minimumSize: const Size.fromHeight(50),
                                                      ),
                                                      child: const TextWidget(txt: "Both",
                                                        txtSize: 14,fontWeight: FontWeight.bold,),
                                                    ),),
                                                ],
                                              ),),
                                          ],
                                        ),
                                      )),
                                  Container(color:AppColors.dividerClr ,height: 1,),
                                  Center(
                                      child: SizedBox(
                                        width: 305,
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
                                                  values: controller.currentRangeValues.value,
                                                  max: 2000,
                                                  divisions: 10,
                                                  labels: RangeLabels(
                                                    controller.currentRangeValues.value.start.round().toString(),
                                                    controller.currentRangeValues.value.end.round().toString(),
                                                  ),
                                                  onChanged: (RangeValues values) {
                                                    controller.currentRangeValues.value = values;
                                                  },
                                                ))
                                            ),
                                            SizedBox(
                                              height: 44,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(width: 145,
                                                    decoration: BoxDecoration(
                                                      color:AppColors.cardClr,
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  child: Center(
                                                    child: Obx(()=>TextWidget(txt: "Min: "
                                                        "${controller.currentRangeValues.value.start.round().toString()}",
                                                    txtClr: AppColors.txtClr,fontWeight: FontWeight.bold,txtSize: 14,))
                                                  ),),
                                                  Container(width: 145,
                                                    decoration: BoxDecoration(
                                                      color:AppColors.cardClr,
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                    child: Center(
                                                        child: Obx(()=>TextWidget(txt: "Max: "
                                                            "${controller.currentRangeValues.value.end.round().toString()}",
                                                          txtClr: AppColors.txtClr,fontWeight: FontWeight.bold,txtSize: 14,))
                                                    ),),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
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
                  child: Image.asset("assets/images/filter.png",
                    height:17,width: 18,),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Center(
            child: SizedBox(
              width: 345,
              child: CustomScrollView(
        slivers: <Widget>[
        SliverAppBar(
              backgroundColor: AppColors.appBgClr,
              automaticallyImplyLeading: false,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                    width: 345,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 40,
                          child:Transform(
                            transform: Matrix4.skewY(-0.15),
                            child: Container(
                              width: 345,
                              height: 130,
                              decoration: BoxDecoration(
                                color: AppColors.cardClr,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child:Container(
                            width: 345,
                            height: 140,
                            decoration: BoxDecoration(
                              color: AppColors.cardClr,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 245,
                            width: 305,
                            child:FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset("assets/images/speaker.png")),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: SizedBox(
                            height: 66,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  const [
                                  SizedBox(
                                      height:32,
                                      child: TextWidget(txt: "Speakers",txtSize: 24,fontWeight: FontWeight.bold,)),
                                  SizedBox(
                                      height:20,
                                      child: TextWidget(txt: "Innovative, wireless home speaker",txtSize: 14,txtClr: AppColors.hintTxtClr,))
                                ],
                              ),
                            ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    width: 305,
                    height: 112,
                    decoration: BoxDecoration(
                      color: AppColors.cardClr,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          SizedBox(width: 88,height: 88,
                          child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset("assets/images/speaker.png")),),
                          SizedBox(
                            height: 72,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                    height:24,
                                    child: TextWidget(txt:"Beosound 1",txtSize: 16,fontWeight: FontWeight.bold,)),
                                SizedBox(
                                    height: 20,
                                    width: 82,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const TextWidget(txt:"4.5",txtSize: 12,),
                                        SizedBox(
                                          width: 54,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height:6,width:6,
                                                decoration: BoxDecoration(
                                                  color: AppColors.ratingClr,
                                                  borderRadius: BorderRadius.circular(40.0),
                                                ),
                                              ),
                                              Container(
                                                height:6,width:6,
                                                decoration: BoxDecoration(
                                                  color: AppColors.ratingClr,
                                                  borderRadius: BorderRadius.circular(40.0),
                                                ),
                                              ),
                                              Container(
                                                height:6,width:6,
                                                decoration: BoxDecoration(
                                                  color: AppColors.ratingClr,
                                                  borderRadius: BorderRadius.circular(40.0),
                                                ),
                                              ),
                                              Container(
                                                height:6,width:6,
                                                decoration: BoxDecoration(
                                                  color: AppColors.ratingClr,
                                                  borderRadius: BorderRadius.circular(40.0),
                                                ),
                                              ),
                                              Container(
                                                height:6,width:6,
                                                decoration: BoxDecoration(
                                                  color: AppColors.emptyRatingClr,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                const  SizedBox(height: 8,),
                                const  SizedBox(
                                    height: 20,
                                    child: TextWidget(txt:"\$ 1600",txtSize: 12,)),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: 20,
        ),
      ),
      ],
    ),
            ),
          ),
        ) );
  }
}

