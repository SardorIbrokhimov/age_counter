import 'package:age_counter/pages/info_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  alertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(
                "Error!  Your year of birth comes after the current year.  Would you like to check back again?"),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No")),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Yes")),
            ],
          );
        });
  }

  String age = '';
  String temp = "";

  String time = "";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Age Counter"),
        actions: [

      IconButton(onPressed: (){
        Navigator.pushReplacementNamed(context, InfoPage.id);
      }, icon: Icon(Icons.info_outline)) ,
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 25,
              child: Text(
                "Birth Year",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(7),
              height: 40,
              color: Colors.grey,
              child: Text(
                temp,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 25,
              child: Text(
                "Your age is:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
                padding: EdgeInsets.all(7),
                height: 40,
                color: Colors.grey,
                child: Text(
                  age,
                  style: TextStyle(fontSize: 25),
                )),
            Container(
              height: 50,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30),
                color: Color(0xfff5f5dc),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: (width - (3 * width * 0.2)) / 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '1';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "1",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += "2";
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "2",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '3';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (height - (155 + height * 0.13 * 3)) * 0.2 / 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (width - (3 * width * 0.2)) / 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '4';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "4",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '5';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "5",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '6';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "6",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (height - (155 + height * 0.13 * 3)) * 0.2 / 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (width - (3 * width * 0.2)) / 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '7';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "7",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '8';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "8",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += '9';
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "9",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (height - (155 + height * 0.13 * 3)) * 0.2 / 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (width - (3 * width * 0.2)) / 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              temp = temp.substring(0, temp.length - 1);
                              if (temp == '') {
                                temp = "0";
                              }
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child:
                                Center(child: Icon(Icons.backspace_outlined)),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            if (temp == '0') {
                              temp = "";
                            }
                            setState(() {
                              temp += "0";
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(
                                child: Text(
                              "0",
                              style: TextStyle(fontSize: 35),
                            )),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            final now = DateTime.now();
                            time = DateFormat("yyyy").format(now);
                            setState(() {
                              if (int.parse(time) < int.parse(temp)) {
                                age = "0";
                                alertDialog();
                              } else {
                                age = (int.parse(time) - int.parse(temp))
                                    .toString();
                              }
                            });
                          },
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.2,
                            color: Colors.brown,
                            child: Center(child: Icon(Icons.check)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
