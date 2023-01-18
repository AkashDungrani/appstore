import 'package:appstore/views/appinfo.dart';
import 'package:appstore/views/components/apps.dart';
import 'package:appstore/views/components/games.dart';
import 'package:appstore/views/components/search.dart';
import 'package:appstore/views/components/today.dart';
import 'package:appstore/views/components/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'models/Globals.dart';

void main() {
  runApp(
    Appstore(),
  );
}

class Appstore extends StatefulWidget {
  const Appstore({super.key});

  @override
  State<Appstore> createState() => _AppstoreState();
}

class _AppstoreState extends State<Appstore>
    with SingleTickerProviderStateMixin {
  int cupertinoindex = 0;
  late TabController tabController;
  PageController pagecontroller = PageController();
  int currentpage = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  int initialpage = 0;
  @override
  Widget build(BuildContext context) {
    return (Globals.isios == false)
        ? MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "info":(context) => Appinfo(),
          },
            // theme: ThemeData(
            //     buttonTheme: ButtonThemeData(),
            //     primarySwatch: Colors.blueGrey,
            //     // elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty<Color>Colors.bluegrey)),
            //     appBarTheme: AppBarTheme(
            //         backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
            //         ),
            home: Scaffold(
              appBar: AppBar(
                // backgroundColor: Colors.white,
                backgroundColor: Colors.black,
                title: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        Text(
                          "search for apps & games",
                          style: TextStyle(color: Colors.black),
                        ),
                        Switch(
                          value: Globals.isios,
                          onChanged: (val) {
                            setState(() {
                              Globals.isios = val;
                            });
                          },
                          inactiveTrackColor: Colors.black,
                          activeColor: Colors.green,
                        )
                      ]),
                ),

                bottom: TabBar(
                  indicatorWeight: 4,
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.green,
                  indicatorColor: Colors.green,
                  onTap: (val) {
                    setState(() {
                      currentpage = val;
                    });
                    pagecontroller.animateToPage(val,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  controller: tabController,
                  tabs: [
                    Tab(
                      child: Text("For you"),
                      // icon: Icon(Icons.chat),
                    ),
                    Tab(
                      child: Text("Top charts"),
                      // icon: Icon(Icons.call),
                    ),
                    Tab(
                      child: Text("Categories"),
                      // icon: Icon(Icons.settings),
                    ),
                    Tab(
                      child: Text("Edditor's choice"),
                    )
                  ],
                ),
              ),
              body: PageView(
                controller: pagecontroller,
                onPageChanged: (val) {
                  setState(() {
                    currentpage = val;
                  });
                  tabController.animateTo(val);
                },
                children: [
                  Apps(),
                  Games(),
                  Update(),
                  //  Appinfo(),
                  Today(),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                // selectedItemColor: Colors.red,
                // unselectedItemColor: Colors.black,
                // selectedIconTheme: IconThemeData(color: Colors.green),
                // unselectedIconTheme: IconThemeData(color: Colors.black),
                  currentIndex: currentpage,
                  onTap: (val) {
                    setState(() {
                      currentpage = val;
                    });
                    tabController.animateTo(val);
                    pagecontroller.animateToPage(val,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.apps_rounded,
                          color: Colors.black,
                        ),
                        label: "Apps",
                        backgroundColor: Colors.grey),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.game_controller_solid,
                          color: Colors.black,
                        ),
                        label: "Games",
                        backgroundColor: Colors.grey),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.movie,
                          color: Colors.black,
                        ),
                        label: "Movies",
                        backgroundColor: Colors.grey),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.menu_book,
                          color: Colors.black,
                        ),
                        label: "Books",
                        backgroundColor: Colors.grey),
                  ]),
            ),
          )
        : CupertinoApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "appinfo": (context) => Appinfo(),
          },
            home: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  trailing: CupertinoSwitch(
                    value: Globals.isios,
                    onChanged: (val) {
                      setState(() {
                        Globals.isios = val;
                      });
                    },
                  ),
                ),
                child: Container(
                    color: Colors.blue,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        IndexedStack(
                          index: cupertinoindex,
                          children: [
                            Today(),
                            Games(),
                            Apps(),
                            Update(),
                            Search(),
                          ],
                        ),
                        CupertinoTabBar(
                          currentIndex: cupertinoindex,
                          onTap: (val) {
                            setState(() {
                              cupertinoindex = val;
                            });
                            // tabController.animateTo(val);
                            // pagecontroller.animateToPage(val,
                            //     duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                          },
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.today),
                                label: "Today",
                                backgroundColor: Colors.black),
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.rocket_fill),
                                label: "Games"),
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.layers_alt_fill),
                                label: "Apps"),
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.arrow_down_square_fill),
                                label: "Updates"),
                                 BottomNavigationBarItem(
                                icon:
                                    Icon(CupertinoIcons.search),
                                label: "Search"),
                          ],
                        ),
                      ],
                    ))),
          );
    // : CupertinoApp(
    //     home: CupertinoPageScaffold(
    //       navigationBar: CupertinoNavigationBar(
    //         trailing: Builder(
    //           builder: (context) {
    //             return CupertinoSwitch(
    //                 value: Globals.isios,
    //                 onChanged: (val) {
    //                   setState(() {
    //                     Globals.isios = val;
    //                   });
    //                 });
    //           }
    //         ),
    //       ),
    //       child: Builder(
    //         builder: (context) {
    // return Container(
    //   alignment: Alignment.center,
    //   child: Stack(
    //     alignment: Alignment.bottomCenter,
    //     children: [
    //       IndexedStack(
    //         index: cupertinoindex,
    //         children: [
    //           Today(),
    //           Games(),
    //           Apps(),
    //           Update(),
    //         ],
    //       ),
    //       CupertinoTabBar(
    //         currentIndex: cupertinoindex,
    //         onTap: (val) {
    //           setState(() {
    //             cupertinoindex = val;
    //           });
    //           // tabController.animateTo(val);
    //           // pagecontroller.animateToPage(val,
    //           //     duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    //         },
    //         items: [
    //           BottomNavigationBarItem(
    //               icon: Icon(CupertinoIcons.chat_bubble),
    //               label: "Chat"),
    //           BottomNavigationBarItem(
    //               icon: Icon(CupertinoIcons.phone), label: "Calls"),
    //           BottomNavigationBarItem(
    //               icon: Icon(CupertinoIcons.settings),
    //               label: "Settings"),
    //         ],
    //       )
    //     ],
    //   ),
    // );
    //         }
    //       ),
    //     ),
    //   );
  }
}
