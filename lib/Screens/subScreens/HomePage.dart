import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/widgets/home/homeCategoryList.dart';
import 'package:foodecom/Screens/widgets/home/popular_Resturant_Category.dart';
import '../widgets/home/currentLocationBotton.dart';
import '../widgets/home/searchFoodTextField.dart';
import 'package:foodecom/styles/dimenssions.dart';
import '../../styles/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Good morning Akila!"),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(FontAwesomeIcons.shoppingCart))
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kScaffoldPadding),
          child: currentLocationButton(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: searchFoodTextField(),
        ),
        SizedBox(
          height: kVerticalPadding,
        ),
        HomeCategoryList(),
        SizedBox(
          height: kVerticalPadding,
        ),
        PopulerRestaurantsCategoryList(),
        SizedBox(
          height: kVerticalPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Most Popular",
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
        HomeCategoryList(),
      ]),
    );
  }
}
