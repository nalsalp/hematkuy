import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'beranda.dart';
import 'button_widget.dart';

class perkenalan extends StatelessWidget {
  @override
  Widget build(BuildContext contexgit) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Selamat datang di HematKuy !',
              body: 'Kelola keuanganmu dengan terstruktur dan tanpa ribet !',
              image: buildImage('assets/slide1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Catat Pengeluaranmu',
              body: 'Available right at your fingerprints',
              image: buildImage('assets/slide2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Analisa Keuanganmu',
              body: 'For enhanced reading experience',
              image: buildImage('assets/slide3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Buat Tujuanmu',
              body: 'Start your journey',
              image: buildImage('assets/slide4.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Mulai HematKuy !',
              body:
                  '"Karena setiap rupiah perlu dipertanggungjawabkan" ~ Pak Willy"',
              image: buildImage('assets/slide5.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Daftar',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 87, 217))),
          onDone: () => () {},
          showSkipButton: true,
          skip: Text('Lewati',
              style: TextStyle(color: Color.fromARGB(255, 0, 87, 217))),
          onSkip: () => () {},
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

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => beranda()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

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
        pageColor: Colors.white,
      );
}

TextStyle teksbiru() => TextStyle(color: Color.fromARGB(255, 0, 87, 217));
