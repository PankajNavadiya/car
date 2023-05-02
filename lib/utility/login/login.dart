import 'package:car/utility/login/loginutility/communutility.dart';
import 'package:car/utility/login/loginutility/loginutility.dart';
import 'package:flutter/material.dart';

import '../utility.dart';

class HowLogin extends StatefulWidget {
  const HowLogin({super.key});

  @override
  State<HowLogin> createState() => _HowLoginState();
}

class _HowLoginState extends State<HowLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              const SizedBox(),
              Communlogin.loginimage(context),
              Maintext.dynamictext('Let\'s you in', 50),
              facebutton(),
              gbutton(),
              appbutton(),
              Communlogin.loginpart(context,'Or'),
              Communlogin.loginbutton(context,'Sign in with password','accountsignin'),
              Communlogin.loginbottum('Don\'t have an account?','Sign up','accountsignup')
            ],
          ),
        )
      ),
    );
  }
}