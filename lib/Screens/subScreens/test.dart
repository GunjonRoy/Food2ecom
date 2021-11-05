import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/subScreens/Desserts_page.dart';
import 'package:foodecom/styles/colors.dart';
//import 'package:shape_of_view/shape_of_view.dart';

class TestMenu extends StatefulWidget {
  @override
  _TestMenuState createState() => _TestMenuState();
}

class _TestMenuState extends State<TestMenu> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Menu",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
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
      body: Stack(
        clipBehavior: Clip.none,
        //alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 500,
              width: 120,
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: (){
                print("Something");
              },
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width * .70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 65.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Copal",
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: primaryFontColor, fontWeight: FontWeight.bold)),
                      Text(
                        " Items",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: primaryFontColor, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.rotate(
              angle: 1.0,
              child: InkWell(
                onTap: (){
                  print("Something");
                },
                child: Container(
                  height: 73,
                  width: 73,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/menu1.jpg"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xFFE8581C),
                  ),
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 73,
            child: MenuButtons(
              type: 'Food',
              items: "120",
              level: '1',
            ),
          ),
          Positioned(
            top: 147,
            left: 73,
            child: MenuButtons(
              type: 'Beverages',
              items: "220",
              level: '2',
            ),
          ),
          Positioned(
            bottom: 147,
            left: 73,
            child: MenuButtons(
              type: 'Desserts',
              items: "155",
              level: '3',
            ),
          ),
          Positioned(
            bottom: 30,
            left: 73,
            child: MenuButtons(
              type: 'Promotions',
              items: "230",
              level: '4',
            ),
          ),
          //MenuButtons(type: 'Food', items: "230"),
        ],
      ),
    );
  }

  Widget checkState() {
    if (state == true) {
      return menuHome();
    } else {
      state = true;
      return Desserts();
    }
  }

  Widget menuHome() {
    return Container(
      height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/menu1.PNG",
              ),
              fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 245,
          ),
          InkWell(
            onTap: () {
              setState(() {
                state = false;
              });
              print(state.toString());
            },
            child: Container(
              height: 92,
              width: MediaQuery.of(context).size.width * .88,
              decoration: BoxDecoration(
                  //color: Colors.black12,
                  borderRadius: BorderRadius.circular(50)),
            ),
          )
        ],
      ),
    );
  }
}

class MenuButtons extends StatelessWidget {
  String? type;
  String? items;
  String? level;
  MenuButtons({required this.type, required this.items, required this.level});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width * .70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                bottomLeft: Radius.circular(70),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 65.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(type.toString(),
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: primaryFontColor, fontWeight: FontWeight.bold)),
                Text(
                  items.toString() + " Items",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: primaryFontColor, fontSize: 10),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: -20,
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: IconButton(
                onPressed: (){
                  if(level.toString()=='3'){
                    print("Desserts >>>>>>>>>>>>>>>>>>>>>>>>");
                  }
                },
                icon: Icon(
                  Icons.navigate_next,
                  color: mainColor,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: -40,
          child: conditionStateLevel(level.toString()),
        )
//                        ClipPath(
//                          clipper: TraingleClip(),
//                          child: Image.asset("images/p1.png"),
//                        ),
      ],
    );
  }

  Widget conditionStateLevel(String level) {
    if (level == '4') {
      return Transform.rotate(
        angle: 1.0,
        child: Container(
          height: 73,
          width: 73,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/menu1.jpg"), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFE8581C),
          ),
          padding: const EdgeInsets.all(8.0),
        ),
      );
    } else if (level == '2') {
      return Container(
        height: 73,
        width: 73,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/offer1.jpg"), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFE8581C),
        ),
        padding: const EdgeInsets.all(8.0),
      );
    } else if (level == '1') {
      return Container(
        height: 73,
        width: 73,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage("images/res1.png"), fit: BoxFit.fill),
          //borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFE8581C),
        ),
        padding: const EdgeInsets.all(8.0),
      );
    } else {
      return InkWell(
        onTap: (){
          print("OK>>>>>>>>>>>>>>>>>>>>>");
        },
        child: Container(
          height: 73,
          width: 73,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("images/srilankan.png"), fit: BoxFit.fill),
            //borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFE8581C),
          ),
          padding: const EdgeInsets.all(8.0),
        ),
      );
    }
  }
}

class TraingleClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();

    //path.quadraticBezierTo(0, size.height, 50, size.height);
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width / 2, size.height / 2 / 2);
    //path.lineTo(size.width/2, 0);
    //path.quadraticBezierTo(0, size.height/4, size.width/5,0);
//    path.moveTo(size.width/5, 0);  // move path point to (w/2,0)
//    path.lineTo(0, size.width);
//    path.lineTo(size.width, size.height);
    //path.quadraticBezierTo(Offset(size.width/2, size.height/2).dx,Offset(size.width/2, size.height/2).dy, Offset(size.width,size.height).dx,Offset(size.width,size.height).dx,);
    path.close();
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
    throw UnimplementedError();
  }
}
