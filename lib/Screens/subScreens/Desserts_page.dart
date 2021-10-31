import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/widgets/desserts.dart';
import 'package:foodecom/Screens/widgets/home/searchFoodTextField.dart';
import 'package:foodecom/model/Desserts_list_model.dart';
import 'package:foodecom/styles/colors.dart';
import 'package:foodecom/styles/dimenssions.dart';

class Desserts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
          leading: GestureDetector(
            onTap: () { /* Write listener code here */ },
            child: Icon(
              Icons.arrow_back_ios,color: primaryFontColor,  // add custom icons also
            ),
          ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Desserts",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: searchFoodTextField(),
          ),
          SizedBox(height: 30,),
          dessertsListView()
        ],
      ),
    );
  }
}
