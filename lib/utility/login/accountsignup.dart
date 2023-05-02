import 'package:car/utility/appbar.dart';
import 'package:flutter/material.dart';

import '../utility.dart';
import 'loginutility/communutility.dart';

class Accountsignup extends StatefulWidget {
  const Accountsignup({super.key});

  @override
  State<Accountsignup> createState() => _AccountsignupState();
}

TextEditingController signupname = TextEditingController();
TextEditingController signuppassword = TextEditingController();

class _AccountsignupState extends State<Accountsignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: normalappbar(''),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Communlogin.loginimage(context),
                const SizedBox(height: 20),
                Maintext.dynamictext('Create Your Account', 27),
                const SizedBox(height: 25),
                Communsign.email('Email'),
                const SizedBox(height: 15),
                const Textfildpass(),
                const Check(),
                Communlogin.loginbutton(context,'Sign up','loginProfile'),
                const SizedBox(height: 30),
                Communlogin.loginpart(context,'Or Continue with'),
                const SizedBox(height: 20),
                Communsign.img(context),
                const SizedBox(height: 10),
                Communlogin.loginbottum('Already have an account?','Sign in','accountsignin')
              ],
            ),
          ),
        )
      )
    );
  }
}