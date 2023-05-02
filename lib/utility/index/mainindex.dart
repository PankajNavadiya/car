import 'package:car/utility/appbar.dart';
import 'package:car/utility/index/indexutility/indexutility.dart';
import 'package:flutter/material.dart';

class Mainindex extends StatefulWidget {
  const Mainindex({super.key});

  @override
  State<Mainindex> createState() => _MainindexState();
}

class _MainindexState extends State<Mainindex> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: appbarteb('Index', 'Chats', 'Calls'),
        body: const TabBarView(
          children: [
            Chats(),
            Calls()
          ]
        ),
      )
    );
  }
}