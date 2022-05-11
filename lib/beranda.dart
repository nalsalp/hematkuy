import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class beranda extends StatefulWidget {
  const beranda({Key? key}) : super(key: key);

  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Hai, " + "Nalsal" + " !",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 13, 31, 61),
                fontSize: 26),
            textAlign: TextAlign.left,
          ),
          Container(
            decoration: new BoxDecoration(
              color: Color.fromARGB(255, 0, 87, 217),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Jumlah sisa',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Color.fromARGB(137, 255, 255, 255),
                    ),
                  ],
                ),
                Text(
                  "-Rp.500k",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 0, 87, 217),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Pemasukkan',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.download_rounded,
                          color: Color.fromARGB(137, 255, 255, 255),
                        ),
                      ],
                    ),
                    Text(
                      "Rp.500k",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 0, 87, 217),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Pengeluaran',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.upload_rounded,
                          color: Color.fromARGB(137, 255, 255, 255),
                        ),
                      ],
                    ),
                    Text(
                      "-Rp.500k",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Target",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 13, 31, 61),
                    fontSize: 20),
                textAlign: TextAlign.left,
              ),
              Text(
                "Lihat semua",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 87, 217),
                    fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Riwayat",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 13, 31, 61),
                    fontSize: 20),
                textAlign: TextAlign.left,
              ),
              Text(
                "Lihat semua",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 87, 217),
                    fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromARGB(255, 0, 87, 217),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
