import 'package:car/utility/appbar.dart';
import 'package:flutter/material.dart';

class Appnotification extends StatefulWidget {
  const Appnotification({super.key});

  @override
  State<Appnotification> createState() => _AppnotificationState();
}

class _AppnotificationState extends State<Appnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarshort(),
      body: Container(),
    );
  }
}