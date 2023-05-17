
import 'package:flutter/material.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: AppColors.appBgClr,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                SizedBox(
                  height: 69,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Container(height: 44,width: 305,
                      decoration: BoxDecoration(
                        color:AppColors.dividerClr ,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(hintText: "Search on eStore",
                              hintStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Image.asset("assets/images/search.png",),
                          ),
                          border:InputBorder.none),
                        cursorColor: AppColors.cursorClr,
                        ),
                      ),),
                      Container(color:AppColors.dividerClr ,height: 2,),
                    ]
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(height: 480,
                width: 305,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 215,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const TextWidget(txt: "RECENT SEARCHES",
                            txtClr: AppColors.hintTxtClr,txtSize: 12,),
                          SingleChildScrollView(
                            child: SizedBox(
                              height: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.separated(
                                    shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 3,
                                      itemBuilder: (context,index){
                                        return SizedBox(
                                          height: 60,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Image.asset("assets/images/recentSearches.png",
                                                      width: 18,height: 18,),),
                                                    const TextWidget(txt: "Beolit 17",txtSize: 16,
                                                      fontWeight: FontWeight.bold,),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Image.asset("assets/images/cross.png",
                                                  width: 11,height: 11,),
                                              ),

                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          Container(color:AppColors.dividerClr ,height: 2,),
                                      ),
                                ],
                              ),
                            ),
                          )

                        ],
                      )),
                    SizedBox(height: 253,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(txt: "POPULAR SEARCHES",
                        txtSize: 12,txtClr: AppColors.hintTxtClr,),
                        const SizedBox(height: 24,),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 9,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return  Card(
                                color: AppColors.cardClr,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                shadowColor: Colors.black,
                                child: SizedBox(
                                  width: 140,
                                  height: 209,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 145,
                                        child:FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset("assets/images/speaker.png")),
                                      ),
                                      SizedBox(
                                        height: 48,
                                        width: 145,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: const [
                                            SizedBox(
                                                height:24,
                                                child: TextWidget(txt: "Beosound 1",txtSize: 16,fontWeight: FontWeight.bold,)),
                                            SizedBox(
                                                height:20,
                                                child: TextWidget(txt: "\$1,600",txtSize: 12,txtClr: AppColors.hintTxtClr,))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(
                              width: 10,
                            ),

                          ),
                        ),
                        const SizedBox(height: 24,),
                      ],
                    ),)
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
