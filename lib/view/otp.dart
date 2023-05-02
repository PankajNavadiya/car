import 'package:car/utility/appbar.dart';
import 'package:car/utility/login/loginutility/communutility.dart';
import 'package:car/utility/login/otputility.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utility/utility.dart';

// ignore: must_be_immutable
class Otpverification extends StatefulWidget {
  int phoneno;
  Otpverification({super.key, required this.phoneno});

  @override
  State<Otpverification> createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification> {

  @override
  void dispose() {
    // TODO: implement dispose
    print(widget.phoneno);
    number.clear();
    otppin.value.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: normalappbar('Otp Verification'),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: Lottie.asset('assets/animation/otp.json'),
            ),
            const SizedBox(height: 30,),
            Maintext.dynamictext('Phone Number Verification', 22),
            const SizedBox(height: 15,),
            Maintext.dynamictextlight('Code has been send to ${widget.phoneno}',15),
            const SizedBox(height: 30,),
            const Carotp(),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Communlogin.verifybutton(context, 'Verify','maindashborad'),
            )
          ],
        )
      ),
    );
  }
}