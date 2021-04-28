import 'package:flutter/material.dart';
import 'package:flutterte/src/screens/HomePage.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './Dashboard.dart';

class SignInPage extends StatefulWidget {
  final String pageTitle;

  SignInPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text('Giriş Yap',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signup');
                Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft,  child: SignUpPage()));

              },
              child: Text('Kaydol', style: contrastText),
            )
          ],
        ),*/
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
                      Text('Tekrar Hoş geldin.', style: h3),
                      Text('Hadi giriş yapalım.', style: taglineText),
                      TextInput('Kullanıcı Adı: '),
                      PasswordInput('Şifre: '),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Şifremi unuttum.', style: contrastTextBold),
                      )
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
              height: 245,

              width: double.infinity,
              decoration: authPlateDecoration,
            ),
          ],
        )
    );
  }
}