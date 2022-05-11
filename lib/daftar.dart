import 'package:flutter/material.dart';
import 'package:hematkuy/helper/auth_helper.dart';
import 'package:hematkuy/masuk.dart';

class daftar extends StatefulWidget {
  const daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  AuthService as = new AuthService();
  late TextEditingController nama;
  late TextEditingController email;
  late TextEditingController password;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nama = new TextEditingController();
    email = new TextEditingController();
    password = new TextEditingController();
  }

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
      body: Form(
        key: _formKey,
        child: ListView(children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 40),
                  child: Image.asset(
                    'assets/daftar.png',
                    width: 200,
                  ),
                )),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 13, 31, 61),
                        fontSize: 26),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: nama,
                    decoration: InputDecoration(
                        labelText: "Nama Lengkap",
                        prefixIcon: Icon(Icons.account_circle_rounded)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.alternate_email_rounded)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        labelText: "Kata sandi",
                        prefixIcon: Icon(Icons.lock_rounded)),
                    obscureText: true,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Konfirmasi kata sandi",
                        prefixIcon: Icon(Icons.lock_rounded)),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: RaisedButton(
                    onPressed: () async {
                      await as.register(
                          email: email.text,
                          password: password.text,
                          nama: nama.text);
                    },
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
                        "Daftar",
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
                          MaterialPageRoute(
                              builder: (context) => const masuk()),
                        );
                      },
                      child: Text(
                        "Sudah punya akun ? Masuk",
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
      ),
    );
  }
}
