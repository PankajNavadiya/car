import 'package:flutter/material.dart';

import '../orders/ordersutility/ordersutility.dart';
import '../utility.dart';

class Activetab extends StatefulWidget {
  const Activetab({super.key});

  @override
  State<Activetab> createState() => _ActivetabState();
}

class _ActivetabState extends State<Activetab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgcolor,
      body: Activepage(),
    );
  }
}

class Completedtab extends StatefulWidget {
  const Completedtab({super.key});

  @override
  State<Completedtab> createState() => _CompletedtabState();
}

class _CompletedtabState extends State<Completedtab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgcolor,
      body: Completedpage()
    );
  }
}