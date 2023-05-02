import 'package:car/utility/appbar.dart';
import 'package:flutter/material.dart';

import '../utility/login/login.dart';

class Howtologin extends StatefulWidget {
  const Howtologin({super.key});

  @override
  State<Howtologin> createState() => _HowtologinState();
}

class _HowtologinState extends State<Howtologin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: normalappbar(''),
      body: const HowLogin()
    );
  }
}