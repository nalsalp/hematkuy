import 'package:flutter/material.dart';
import 'package:hematkuy/daftar.dart';

class masuk extends StatelessWidget {
  const masuk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/logo.png'),
        title: Text(
          "HematKuy",
          style: TextStyle(color: Color.fromARGB(255, 0, 87, 217)),
        ),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: ListView(children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 40),
                child: Image.asset(
                  'assets/login.png',
                  width: 200,
                ),
              )),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 13, 31, 61),
                      fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      prefixIcon: Icon(Icons.alternate_email_rounded)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      prefixIcon: Icon(Icons.lock_rounded)),
                  obscureText: true,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Lupa sandi ?",
                  style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 310,
                    decoration: new BoxDecoration(
                      color: Color.fromARGB(255, 0, 87, 217),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Masuk",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const daftar()),
                      );
                    },
                    child: Text(
                      "Belum punya akun ? Daftar",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2661FA)),
                    ),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
