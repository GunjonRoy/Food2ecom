import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodecom/model/category_model.dart';
import 'package:foodecom/styles/colors.dart';
import 'package:foodecom/styles/dimenssions.dart';

class HomeCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.separated(
        separatorBuilder: (context,index){
          return SizedBox(width: kHorizontalPadding/2,);
        },
        padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: CategoryModel.list.length,
        itemBuilder: (context, index) {
          CategoryModel data = CategoryModel.list[index];
          return Column(
            children: [
              Container(
                width: 300.w,
                height: 300.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data.imagePath!.toString()),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                      )
                    ]),
              ),
              SizedBox(height: 25.h,),
              Text(
                data.label!.toString(),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: primaryFontColor,
                    ),
              )
            ],
          );
        },
      ),
    );
  }
}
