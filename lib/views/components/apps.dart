import 'package:appstore/models/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return (Globals.isios == false)
        ? Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommended For you",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...socialapp.map((e) => Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "info",
                                        arguments: e);
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    margin: EdgeInsets.all(5),
                                    child: Image.asset(e["image"]),
                                  ),
                                ),
                                Text(e["Name"]),
                                Row(
                                  children: [Text(e["Rating"]), Icon(Icons.star)],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Apps",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...payment.map((e) => Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset(e["image"]),
                                ),
                                Text(e["Name"]),
                                Row(
                                  children: [Text(e["Rating"]), Icon(Icons.star)],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Apps",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...shopping.map((e) => Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset(e["image"]),
                                ),
                                Text(e["Name"]),
                                Row(
                                  children: [Text(e["Rating"]), Icon(Icons.star)],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...games.map((e) => Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset(e["image"]),
                                ),
                                Text(e["Name"]),
                                Row(
                                  children: [Text(e["Rating"]), Icon(Icons.star)],
                                ),
                              ],
                            )),
                            ...game2.map((e) => Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset(e["image"]),
                                ),
                                Text(e["Name"]),
                                Row(
                                  children: [
                                    Text(e["Rating"]),
                                    Icon(Icons.star)
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Apps",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w600),
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/akash1.jpeg"),
                                radius: 30,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Text(
                            "Now With Siri",
                            style: TextStyle(color: CupertinoColors.activeBlue),
                          ),
                          Text(
                            "Amazon Prime Videos",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Original Movies,Tv & Sports",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            child: Image.asset("assets/images/amv.webp"),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5 Great App For iOS 14",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 100,
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(50)),
                              )
                            ],
                          ),
                          ...shopping
                              .map((e) => Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 2, bottom: 2),
                                          height: 80,
                                          width: 100,
                                          child: Image.asset(e["image"]),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e["Name"],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              e["des"],
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.pushNamed(context, " appinfo",arguments: e);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 100,
                                            child: Text(
                                              "Get",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade300,
                                                // border: Border.all(
                                                //     color: Colors.blue),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                              .toList()
                        ],
                      ),
                    ))),
          );
  }
}
