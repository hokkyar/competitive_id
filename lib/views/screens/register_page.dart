// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('lib/assets/images/2.png'),
      ),
    );

    final username = Padding(
        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: TextFormField(
          autofocus: false,
          decoration: InputDecoration(
              hintText: 'Masukkan Username',
              labelText: 'Username',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              fillColor: Colors.white,
              filled: true),
        ));

    final email = Padding(
        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
              hintText: 'Masukkan Email',
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              fillColor: Colors.white,
              filled: true),
        ));

    final password = Padding(
        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Masukkan Password',
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              fillColor: Colors.white,
              filled: true),
        ));

    final confirmPass = Padding(
        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Masukkan Konfirmasi Password',
              labelText: 'Konfirmasi Password',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              fillColor: Colors.white,
              filled: true),
        ));

    final registerButton = Padding(
      padding: EdgeInsets.fromLTRB(150, 15, 150, 15),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () => Navigator.of(context),
        padding: EdgeInsets.all(12),
        color: Colors.blue.shade700,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final loginButton = FlatButton(
      child: Center(
        child: Row(
          children: [
            Text(
              'Sudah punya akun?',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              ' Login sekarang',
              style: TextStyle(
                  color: Colors.blue.shade900, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
      onPressed: () {},
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/images/bg.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 40.0),
              Center(
                child: Container(
                  child: Text(
                    'MASUK',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              username,
              SizedBox(height: 8.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 8.0),
              confirmPass,
              SizedBox(height: 24.0),
              registerButton,
              SizedBox(height: 28.0),
              loginButton
            ],
          ),
        ),
      ),
    );
  }
}
