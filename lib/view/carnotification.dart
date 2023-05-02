import 'package:car/utility/appbar.dart';
import 'package:car/utility/notification/mainnotification.dart';
import 'package:flutter/material.dart';

class Carnotification extends StatefulWidget {
  const Carnotification({super.key});

  @override
  State<Carnotification> createState() => _CarnotificationState();
}

class _CarnotificationState extends State<Carnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: normalappbar('Notification'),
      body: const SafeArea(
        child: Mainnotification(),
      ),
    );
  }
}