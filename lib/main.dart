import 'package:car/utility/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utility/utility.dart';

void main() {
  runApp(const Car());
}

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}


class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HowLogin(),
      getPages: Routes.route,
    );
  }
}

