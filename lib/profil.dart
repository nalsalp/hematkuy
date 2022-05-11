import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Profil",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 13, 31, 61),
                  fontSize: 26),
              textAlign: TextAlign.left,
            ),
            Icon(
              Icons.account_circle_rounded,
              size: 150,
            ),
            Text(
              "Edit foto profil",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 87, 217),
                  fontSize: 15),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Johanes Sinalsal Purba",
                    prefixIcon: Icon(Icons.account_circle_rounded)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "nalsalofficial@gmail.com",
                    prefixIcon: Icon(Icons.email_rounded)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "**************",
                    prefixIcon: Icon(Icons.lock_rounded)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
