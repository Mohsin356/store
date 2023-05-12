
import 'package:flutter/material.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.appBgClr,
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset("assets/images/menu.png",),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                SizedBox(height: 316,
                child:
                  Column(
                    children: [
                      const SizedBox(
                          width: 305,
                          height: 20,
                          child: Center(
                            child: Text("Browse By Categories",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          )),
                      const SizedBox(height: 24,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 248,
                            child: GridView.builder(
                              itemCount: 9,
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                                  mainAxisSpacing: 0),
                              itemBuilder: (BuildContext context, int index) {
                                return SizedBox(
                                  width: 205,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 60,
                                        child:Card(
                                          color: AppColors.cardClr,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)),
                                          shadowColor: Colors.black,
                                          child: const SizedBox(
                                            width: 205,
                                            height: 180,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 160,
                                        child:FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.asset("assets/images/speaker.png")),
                                      ),
                                      Positioned(
                                        bottom: 20,
                                        child: SizedBox(
                                          height: 48,
                                          width: 205,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              SizedBox(
                                                  height:24,
                                                  child: TextWidget(txt: "Speakers",txtSize: 16,fontWeight: FontWeight.bold,)),
                                              SizedBox(
                                                  height:20,
                                                  child: TextWidget(txt: "100+ Products",txtSize: 12,txtClr: AppColors.hintTxtClr,))

                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24,),
                    ],
                  ),),
                Container(color:AppColors.dividerClr ,height: 2,),
                const SizedBox(height: 20,),
                SizedBox(height: 316,
                  child:
                  Column(
                    children: [
                      const SizedBox(
                          width: 305,
                          height: 20,
                          child: Center(
                            child: Text("Recommended For You",
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          )),
                      const SizedBox(height: 24,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 209,
                            child: ListView.separated(
                              itemCount: 9,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return  Card(
                                  color: AppColors.cardClr,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  shadowColor: Colors.black,
                                  child: const SizedBox(
                                    width: 145,
                                    height: 209,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),

                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24,),
                    ],
                  ),),
              ],
            ),
          ),
        ));
  }
}
