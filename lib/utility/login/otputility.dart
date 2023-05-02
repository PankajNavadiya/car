import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utility.dart';


class Carotp extends StatefulWidget {
  const Carotp({super.key});

  @override
  State<Carotp> createState() => _CarotpState();
}

class _CarotpState extends State<Carotp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: PinCodeTextField(
          controller: otppin.value,
          length: 6, 
          appContext: context, 
          onChanged: (String value) { 
            otpdone=value;
          },
          obscureText: false,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            inactiveColor: Colors.grey[400],
            activeColor: Colors.green,
            borderWidth: 1.5,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            shape: PinCodeFieldShape.box,
            activeFillColor: Colors.grey
          ),
          onCompleted: (value) {},
        ),
      )
    );
  }
}