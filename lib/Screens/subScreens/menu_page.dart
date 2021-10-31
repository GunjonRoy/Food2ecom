

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/subScreens/Desserts_page.dart';
import 'package:foodecom/Screens/widgets/menu_page.dart';
import 'package:foodecom/styles/dimenssions.dart';

class MenuHome extends StatefulWidget {
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  bool state=true;
//  Menu({this.state=false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        //backgroundColor: mainColor,
//        title: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Text(
//            "Menu",
//            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//          ),
//        ),
//        actions: [
//          Padding(
//            padding: const EdgeInsets.only(right: 15.0),
//            child: IconButton(
//                onPressed: () {}, icon: Icon(FontAwesomeIcons.shoppingCart)),
//          )
//        ],
//      ),
      body: checkState(),
    );
  }
  Widget checkState(){
    if(state==true){
      return menuHome();
    }else{
      state=true;
      return Desserts();
    }
  }
  Widget menuHome(){
    return Container(
      height: MediaQuery.of(context).size.height*.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/menu1.PNG",),
              fit: BoxFit.fill
          )
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 245,),
          InkWell(
            onTap: () {
              setState(() {
                state = false;
              });
              print(state.toString());
            },
            child: Container(
              height: 92,
              width: MediaQuery.of(context).size.width*.88,

              decoration: BoxDecoration(
                //color: Colors.black12,
                  borderRadius: BorderRadius.circular(50)
              ),
            ),
          )
        ],
      ),
    );
  }
}
