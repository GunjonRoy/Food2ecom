import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/styles/colors.dart';
import 'package:foodecom/styles/dimenssions.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("images/d1.jpg",),
          ),
          Text("Edit Profile",style: TextStyle(color: mainColor,fontSize: 10),),
          Text("Hi there Emilla!",style: TextStyle(color: primaryFontColor,fontSize: 20),),
          Text("Sign Out",style: TextStyle(color: placeholderColor,fontSize: 10),),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: TextField(
              decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
                  //prefixIcon: Icon(Icons.search),
                  //hintText: 'Search food',
                labelText: 'Name',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: TextField(
              decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
                //prefixIcon: Icon(Icons.search),
                //hintText: 'Search food',
                labelText: 'Name',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: TextField(
              decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
                //prefixIcon: Icon(Icons.search),
                //hintText: 'Search food',
                labelText: 'Name',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: TextField(
              decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
                //prefixIcon: Icon(Icons.search),
                //hintText: 'Search food',
                labelText: 'Name',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: TextField(
              decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
                //prefixIcon: Icon(Icons.search),
                //hintText: 'Search food',
                labelText: 'Name',
              ),
            ),
          ),
          //TextButton(onPressed: (){}, child: Text("Edit Profile",style: TextStyle(color: mainColor,fontSize: 20),))
        ],
      ),
    );
  }
}
