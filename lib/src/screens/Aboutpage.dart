import 'package:flutter/material.dart';
import 'package:flutterte/src/screens/HomePage.dart';
import 'package:flutterte/src/shared/buttons.dart';
import 'package:flutterte/src/shared/styles.dart';
import 'package:page_transition/page_transition.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(35),
                margin: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                      'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu '
                      'MOBİL PROGRAMLAMA dersi kapsamında '
                      '183301018 numaralı Alaaddin Erdinç Dal tarafından'
                      ' 14 Nisan 2023 günü yapılmıştır.',
                      style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                      textAlign: TextAlign.center),
                ),
              ),
              Container(

                width: 200,
                padding: EdgeInsets.all(0),
                child: OutlineBtn('Geri Dön', () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.rotate,
                          duration: Duration(seconds: 1),
                          child: HomePage()));

                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
