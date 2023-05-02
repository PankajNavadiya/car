import 'package:car/utility/appbar.dart';
import 'package:flutter/material.dart';

import '../maintab/maintab.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appbarteb('My Orders','Active','Completed'),
        body: const TabBarView(
          children: [
            Activetab(),
            Completedtab()
          ]
        ),
      ),
    );
  }
}

