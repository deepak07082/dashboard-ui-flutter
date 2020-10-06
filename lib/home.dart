import 'package:admindashboard/row.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Color(0xFFcfcfcf),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Classify Transaction",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Classify Transaction into the particular catagory",
                    style: TextStyle(
                      fontSize: 19.8,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customcard(
                      imgpath: "menu.svg",
                      name: "General",
                      cval: () {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            elevation: 5,
                            duration: Duration(milliseconds: 900),
                            content: Text("General"),
                          ),
                        );
                        print("pressed menu");
                      },
                    ),
                    customcard(
                      imgpath: "traffic.svg",
                      name: "Transport",
                      cval: () {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            elevation: 5,
                            duration: Duration(milliseconds: 900),
                            content: Text("traffic"),
                          ),
                        );
                        print("pressed traffic");
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customcard(
                      imgpath: "shopping.svg",
                      name: "Shopping",
                      cval: () {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            elevation: 5,
                            duration: Duration(milliseconds: 900),
                            content: Text("shopping"),
                          ),
                        );
                        print("pressed shopping");
                      },
                    ),
                    customcard(
                      imgpath: "notes.svg",
                      name: "Edit",
                      cval: () {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            elevation: 5,
                            duration: Duration(milliseconds: 900),
                            content: Text("editing"),
                          ),
                        );
                        print("pressed editing");
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customcard(
                      imgpath: "entertainment.svg",
                      name: "Entertainment",
                      cval: () {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            elevation: 5,
                            duration: Duration(milliseconds: 900),
                            content: Text("Entertainment"),
                          ),
                        );
                        print("pressed entertainment");
                      },
                    ),
                    customcard(
                      imgpath: "health.svg",
                      name: "Grocery",
                      cval: () {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            elevation: 5,
                            duration: Duration(milliseconds: 900),
                            content: Text("health"),
                          ),
                        );
                        print("pressed health");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
