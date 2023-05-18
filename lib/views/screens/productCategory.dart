
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controllers/productCategoryController.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/product.dart';
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
                    controller.showFilterBottomSheet(context);
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
                  child: GestureDetector(
                    onTap: (){Get.to(()=>const Product());},
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

