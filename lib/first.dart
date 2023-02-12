import 'package:flutter/material.dart';
import 'package:screen_1/second.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Center(
              child: Container(
                child: Image.asset(
                  "asset/image/image_main.png",
                  height: 500,
                ),
                padding: EdgeInsets.only(bottom: 300),
              )),
          Center(
              child: Container(
                child: Text(
                  "Fast delivery at",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                padding: EdgeInsets.only(top: 50),
              )),
          Center(
              child: Container(
                child: Text(
                  "your doorstep",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                padding: EdgeInsets.only(top: 110),
              )),
          Center(
              child: Container(
                child: Text(
                  "Home delivery and online reservation",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                padding: EdgeInsets.only(top: 200),
              )),
          Center(
              child: Container(
                child: Text(
                  "system for restaurants & cafe",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                padding: EdgeInsets.only(top: 240),
              )),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 500),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return New();
                  }));
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                        child: Text(
                          'Let`s Explore',
                          style: TextStyle(
                              color: Colors.green,fontSize: 15
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}