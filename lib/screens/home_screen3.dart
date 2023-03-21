
import 'package:flutter/material.dart';

import '../widgets/info.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Scaffold(
        body: Stack(children: <Widget>[
      Align(
        alignment: Alignment.topCenter,
        child: CircleAvatar(
          child: Image.asset("assets/tomato.png"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Icon(Icons.arrow_back), Icon(Icons.more_vert)],
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  color: const Color(0xff3C4F22),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables

                      children: const [
                        Text(
                          "Tomato",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "the green house",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff4E5516),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Reproductive",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffECD959)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Info("assets/icon4.png", "Hight", "120cm"),
                Info("assets/icon1.png", "watreing", "45%"),
                Info("assets/icon2.png", "fertlizer", "Organic"),
                Info("assets/icon3.png", "Age", "3 month")
              ],
            ),
            const Text(
              "Information",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables

              children: const [
                Text(
                  "the condition of the plants has started to",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  "improve compared to yesterday , now they are",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  "starting to bear fruit",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Humidity Level",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff4E5516),
                  ),
                  child: const Text(
                    "Laast week",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffBCB043),
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/icon5.png",
              width: double.infinity,
            )
          ],
        ),
      )
    ]));
  }
}
