import 'package:car/utility/allcars/utilityallcar.dart';
import 'package:flutter/material.dart';

import '../utility/appbar.dart';

class Mylistview extends StatefulWidget {
  const Mylistview({super.key});

  @override
  State<Mylistview> createState() => _MylistviewState();
}

class _MylistviewState extends State<Mylistview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarshort(),
      body: const SafeArea(
        child: SafeArea(
          child: Allcars()
        )
      ),
    );
  }
}
