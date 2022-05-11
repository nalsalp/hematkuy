import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class riwayat extends StatefulWidget {
  const riwayat({Key? key}) : super(key: key);

  @override
  State<riwayat> createState() => _riwayatState();
}

class _riwayatState extends State<riwayat> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            Text(
              "Riwayat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 13, 31, 61),
                fontSize: 24,
              ),
              textAlign: TextAlign.left,
            ),
            new TabBar(
              tabs: [
                Tab(
                  text: "Semua",
                ),
                Tab(
                  text: "Pemasukkan",
                ),
                Tab(
                  text: "Pengeluaran",
                ),
              ],
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Color.fromARGB(255, 64, 64, 64),
              indicator: BubbleTabIndicator(
                indicatorHeight: 25.0,
                indicatorColor: Color.fromARGB(255, 0, 87, 217),
                tabBarIndicatorSize: TabBarIndicatorSize.tab,

                // Other flags
                // indicatorRadius: 1,
                // insets: EdgeInsets.all(1),
                // padding: EdgeInsets.all(10)
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 236, 57, 57),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.upload_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    "Riwayat",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Column(
                    children: [
                      Text(
                        "-Rp.500k",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "16/9/2020" + " 16:00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ));
}
