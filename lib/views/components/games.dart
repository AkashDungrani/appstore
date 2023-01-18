import 'package:appstore/views/appinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/Globals.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  bool install = false;

  @override
  Widget build(BuildContext context) {
    return (Globals.isios == false)
        ? Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Show Installed App",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Switch(
                      value: install,
                      onChanged: (val) {
                        setState(() {
                          install = val;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green.shade100),
                        child: Text("Top Free"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200),
                        child: Text("Top Grossing"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200),
                        child: Text("Trending"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200),
                        child: Text("New Arrived"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 559,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...games
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Appinfo()));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: double.infinity,
                                    margin: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade300)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(e["id"]),
                                         SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 70,
                                          width: 70,
                                          margin: EdgeInsets.all(5),
                                          child: Image.asset(e["image"]),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(e["Name"]),
                                            Row(
                                              children: [
                                                Text(e["Rating"]),
                                                Icon(Icons.star)
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                            .toList(),
                        ...game2
                            .map(
                              (e) => Container(
                                height: 100,
                                width: double.infinity,
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade300)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(e["id"]),
                                     SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.all(5),
                                      child: Image.asset(e["image"]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(e["Name"]),
                                        Row(
                                          children: [
                                            Text(e["Rating"]),
                                            Icon(Icons.star)
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ],
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
                                "Games",
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
                            "Play Game",
                            style: TextStyle(color: CupertinoColors.activeBlue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Call Of Duty",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "BattelGround ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 280,
                                  width: 300,
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset("assets/images/cod3.webp"),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 280,
                                  width: 300,
                                  child: Image.asset("assets/images/cod2.jpeg"),
                                ),
                                Container(
                                  height: 280,
                                  width: 300,
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset("assets/images/cod.jpeg"),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discover AR Gaming",
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
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ...games
                                    .map((e) => Container(
                                          width: 350,
                                          height: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 2, bottom: 2),
                                                height: 80,
                                                width: 100,
                                                child: Image.asset(e["image"]),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e["Name"],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    e["des"],
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 30,
                                                    width: 100,
                                                    child: Text(
                                                      "Get",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .grey.shade300,
                                                        // border: Border.all(
                                                        //     color: Colors.blue),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                  )
                                                ],
                                              ),

                                              // Container(
                                              //   alignment: Alignment.center,
                                              //   height: 30,
                                              //   width: 100,
                                              //   child: Text(
                                              //     "Get",
                                              //     style: TextStyle(
                                              //         color: Colors.blue,
                                              //         fontWeight: FontWeight.w600),
                                              //   ),
                                              //   decoration: BoxDecoration(
                                              //       color: Colors.grey.shade300,
                                              //       // border: Border.all(
                                              //       //     color: Colors.blue),
                                              //       borderRadius:
                                              //           BorderRadius.circular(50)),
                                              // )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                ...game2
                                    .map((e) => Container(
                                          width: 325,
                                          height: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 2, bottom: 2),
                                                height: 80,
                                                width: 100,
                                                child: Image.asset(e["image"]),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e["Name"],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    e["des"],
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 30,
                                                    width: 100,
                                                    child: Text(
                                                      "Get",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .grey.shade300,
                                                        // border: Border.all(
                                                        //     color: Colors.blue),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                  )
                                                ],
                                              ),

                                              // Container(
                                              //   alignment: Alignment.center,
                                              //   height: 30,
                                              //   width: 100,
                                              //   child: Text(
                                              //     "Get",
                                              //     style: TextStyle(
                                              //         color: Colors.blue,
                                              //         fontWeight: FontWeight.w600),
                                              //   ),
                                              //   decoration: BoxDecoration(
                                              //       color: Colors.grey.shade300,
                                              //       // border: Border.all(
                                              //       //     color: Colors.blue),
                                              //       borderRadius:
                                              //           BorderRadius.circular(50)),
                                              // )
                                            ],
                                          ),
                                        ))
                                    .toList()
                              ],
                            ),
                          )
                        ],
                      ),
                    ))),
          );
  }
}
