
import 'package:flutter/material.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/widgets/textWidget.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 315,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            Icon(Icons.location_on_outlined,color: AppColors.iconClr,size: 24,),
            SizedBox(width: 5,),
            TextWidget(txt: "Lahore, Pakistan",txtSize: 12,txtClr: AppColors.txtClr,),
          ],
        ),
      ),
    );
  }
}
