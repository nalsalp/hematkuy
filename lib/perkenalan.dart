import 'package:flutter/material.dart';
import 'package:hematkuy/daftar.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'beranda.dart';
import 'button_widget.dart';

class perkenalan extends StatefulWidget {
  @override
  State<perkenalan> createState() => _perkenalanState();
}

class _perkenalanState extends State<perkenalan> {
  @override
  Widget build(BuildContext contexgit) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Selamat Datang di HematKuy !',
              body:
                  'HematKuy akan membantumu dalam mengelola uang dengan mudah !',
              image: buildImage('assets/slide1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Catat Pemasukkan dan Pengeluaranmu',
              body: 'Mencatat kini lebih seru dan mudah dalam satu aplikasi',
              image: buildImage('assets/slide2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Analisa Keuanganmu',
              body:
                  'Kamu bisa memantau dan mengontrol rekam jejak keuanganmu semudah menggerakkan jari',
              image: buildImage('assets/slide3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Buat Tujuanmu',
              body:
                  'Dengan target, kamu akan memiliki tujuan keuangan yang jelas dan terarah',
              image: buildImage('assets/slide4.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Mulai HematKuy !',
              body:
                  '"Karena setiap rupiah perlu dipertanggungjawabkan" ~ Pak Willy',
              image: buildImage('assets/slide5.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Daftar',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 87, 217))),
          onDone: () => onDone(context),
          showSkipButton: true,
          skip: Text('Lewati',
              style: TextStyle(color: Color.fromARGB(255, 0, 87, 217))),
          next: Icon(
            Icons.arrow_forward_rounded,
            color: Color.fromARGB(255, 0, 87, 217),
          ),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    print(context);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const daftar()));
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 250));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color.fromARGB(255, 141, 141, 141),
        activeColor: Color.fromARGB(255, 0, 87, 217),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 13, 31, 61)),
        bodyTextStyle:
            TextStyle(fontSize: 20, color: Color.fromARGB(255, 124, 129, 143)),
        imagePadding: EdgeInsets.all(24),
        imageFlex: 1,
        pageColor: Colors.white,
      );
}

TextStyle teksbiru() => TextStyle(color: Color.fromARGB(255, 0, 87, 217));
