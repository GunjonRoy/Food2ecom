import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodecom/model/category_model.dart';
import 'package:foodecom/model/popuarRestaurantsList.dart';
import 'package:foodecom/styles/colors.dart';
import 'package:foodecom/styles/dimenssions.dart';
class PopulerRestaurantsCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Popular Restaurants",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: primaryFontColor),
            ),
            TextButton(
              onPressed: () {},
              child: Text("View all",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: mainColor
              ),),),

          ],
        ),
        SizedBox(
          height: 1000.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            separatorBuilder: (context,index){
              return SizedBox(width: kHorizontalPadding/2,);
            },
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: RestaurantsList.list.length,
            itemBuilder: (context, index) {
              RestaurantsList data = RestaurantsList.list[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 1000.w,
                    height: 700.h,
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
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: primaryFontColor,
                    ),
                  ),
                  SizedBox(height: 25.h,),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
