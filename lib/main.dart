import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hematkuy/beranda.dart';
import 'package:hematkuy/daftar.dart';
import 'package:hematkuy/masuk.dart';
import 'package:hematkuy/perkenalan.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data.dart';
import 'package:hematkuy/profil.dart';
import 'riwayat.dart';
import 'target.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

bool show = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    final prefs = await SharedPreferences.getInstance();
    show = prefs.getBool('ON_BOARDING') ?? true;
  }

  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      // home: show ? perkenalan() : const MyApp(),
      home: masuk(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _page = 0;

  dynamic page = new beranda();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/logo.png'),
          title: Text(
            "HematKuy",
            style: TextStyle(color: Color.fromARGB(255, 0, 87, 217)),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_rounded,
                    color: Color.fromARGB(255, 0, 87, 217)))
          ],
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          elevation: 0,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromARGB(255, 0, 87, 217),
          backgroundColor: Colors.white,
          height: 55,
          animationDuration: Duration(milliseconds: 250),
          items: <Widget>[
            Icon(
              Icons.home_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(Icons.bar_chart_rounded, size: 30, color: Colors.white),
            Icon(Icons.history_rounded, size: 30, color: Colors.white),
            Icon(Icons.ads_click_rounded, size: 30, color: Colors.white),
            Icon(Icons.account_circle_rounded, size: 30, color: Colors.white)
          ],
          onTap: (index) {
            if (index == 0) {
              setState(() {
                page = beranda();
              });
            } else if (index == 1) {
              setState(() {
                page = data();
              });
            } else if (index == 2) {
              setState(() {
                page = riwayat();
              });
            } else if (index == 3) {
              setState(() {
                page = target();
              });
            } else if (index == 4) {
              setState(() {
                page = profil();
              });
            }
          },
        ),
        body: page);
  }
}
