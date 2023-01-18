import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/Globals.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return (Globals.isios == false)
        ? Container(
            child: Column(children: [
              CircularProgressIndicator(),
              Text("Something Went Wrong Please Try Again Later!!!")
            ]),
          )
        : CupertinoApp(
            home: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text("Search"),
                ),
                child: Container(
                    alignment: Alignment.center,
                    // color: Colors.amberAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 110,),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                Icon(Icons.search),
                                SizedBox(width: 20,),
                                Text("Search"),
                              ],)
                        ),
                        SizedBox(height: 300,),
                        CupertinoActivityIndicator(
                          color: Colors.grey,
                          radius: 30,
                        ),
                      ],
                    ))),
          );
  }
}
