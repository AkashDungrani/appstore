import 'package:appstore/models/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
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
              navigationBar: CupertinoNavigationBar(middle: Text("Updates"),),
              child: Container(alignment: Alignment.center,
                // color: Colors.amberAccent,
              child:Stack(
              alignment: Alignment.center,
              
                children: [
                  // SizedBox(height: 200,),
                 
                Container(
                  alignment: Alignment.topCenter,
                width: double.infinity,
                margin: EdgeInsets.only(top: 5,bottom: 5),
                  child: Image.asset("assets/images/arcade2.jpeg",height: 500,)),
                  // Spacer(),
                  Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 5,bottom: 5),
                            child: Image.asset(
                              "assets/images/applearcade.jpeg",
                              // height: 500,
                            )),
                            // Spacer(),
                            SizedBox(height: 10,),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.bottomCenter,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/arcade3.jpeg",
                          height: 500,
                        )),
              ]),
            )),
          );
  }
}
