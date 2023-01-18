import 'package:appstore/models/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<String> Weekday = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday"
        "Friday",
    "Saturday"
  ];
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "Octomber",
    "November"
        "December",
  ];
  DateTime currenttime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return (Globals.isios == false)
        ? Container(
            alignment: Alignment.center,
            child: Text("No Data Found"),
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
                        Text(
                          "${Weekday[currenttime.weekday]},${months[currenttime.month - 1]},${currenttime.day}",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w600),
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/akash1.jpeg"),
                              radius: 30,
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        ...todaypageimage
                            .map((e) => Container(
                                  height: 400,
                                  child: Image.asset(
                                    e["image"],
                                    height: 400,
                                  ),
                                ))
                            .toList(),
                      ]),
                ),
              ),
            ),
          );
  }
}
