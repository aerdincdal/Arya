import 'package:flutter/material.dart';
import 'package:flutterte/src/screens/HomePage.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import 'package:page_transition/page_transition.dart';
import './SignInPage.dart';
import './Dashboard.dart';


class SignUpPage extends StatefulWidget {
  final String pageTitle;

  SignUpPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: Text('Kaydol',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signin');
                Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: SignInPage()));

              },
              child: Text('Giriş Yap', style: contrastText),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Arya', style: h3),
                      Text('Hoş Geldin', style: taglineText),
                      TextInput('Kullanıcı Adı:'),
                      TextInput('Ad Soyad'),
                      EmailInput('E-posta Adresi'),
                      PasswordInput('Şifre')
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    right: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: HomePage()));
                      },
                      color: primaryColor,
                      padding: EdgeInsets.all(9),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_back, color: white),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: -15,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Dashboard()));
                      },
                      color: primaryColor,
                      padding: EdgeInsets.all(9),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  )
                ],
              ),
              height: 360,

              width: double.infinity,
              decoration: authPlateDecoration,
            ),
          ],
        )
    );
  }
}