import 'package:flutter/material.dart';

import '../appbar.dart';
import '../utility.dart';
import 'loginutility/communutility.dart';

class Accountsignin extends StatefulWidget {
  const Accountsignin({super.key});

  @override
  State<Accountsignin> createState() => _AccountsigninState();
}

class _AccountsigninState extends State<Accountsignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: normalappbar(''),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Communlogin.loginimage(context),
                Maintext.dynamictext('Login to Your Account', 27),
                const SizedBox(height: 25),
                Communsign.email('Email'),
                const SizedBox(height: 15),
                const Textfildpass(),
                const Check(),
                Communlogin.loginbutton(context,'Sign in','loginProfile'),
                const SizedBox(height: 20),
                Maintext.subtitletext('Forgot the password?'),
                const SizedBox(height: 20),
                Communlogin.loginpart(context,'Or Continue with'),
                const SizedBox(height: 20),
                Communsign.img(context),
                const SizedBox(height: 5),
                Communlogin.loginbottum('Already have an account?','Sign up','accountsignup')
              ],
            ),
          ),
        )
      )
    );
  }
}