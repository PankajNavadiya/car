import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility.dart';

class Mainnotification extends StatefulWidget {
  const Mainnotification({super.key});

  @override
  State<Mainnotification> createState() => _MainnotificationState();
}

class _MainnotificationState extends State<Mainnotification> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      Column(
        children: [
          ListTile(
            dense: true,
            title: Maintext.titletext('General Notification'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  generalvalue.value=generalvalue.value==false ? true : false;
                },  
                value: generalvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('Sound'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  soundvalue.value = soundvalue.value==true ? false : true;
                },  
                value: soundvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('Vibrate'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  vibratevalue.value = vibratevalue.value==true ? false : true;
                },  
                value: vibratevalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('Special Offers'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  offersvalue.value = offersvalue.value==true ? false : true;
                },  
                value: offersvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('Promo & Discount'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  discountvalue.value = discountvalue.value==true ? false : true;
                },  
                value: discountvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('Payments'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  paymentsvalue.value = paymentsvalue.value==true ? false : true;
                },  
                value: paymentsvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('Cashback'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  cashbackvalue.value = cashbackvalue.value==true ? false : true;
                },  
                value: cashbackvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('App Updates'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  updatesvalue.value = updatesvalue.value==true ? false : true;
                },  
                value: updatesvalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('New Service Available'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  servicevalue.value = servicevalue.value==true ? false : true;
                },  
                value: servicevalue.value,
              ),
            ),
          ),
          ListTile(
            dense: true,
            title: Maintext.titletext('New Tips Available'),
            trailing: Transform.scale(
              scale: 0.7,
              origin: const Offset(20, 0),
              child: CupertinoSwitch(
                activeColor: titlecolor,
                onChanged: (value) {
                  tipsvalue.value = tipsvalue.value==true ? false : true;
                },  
                value: tipsvalue.value,
              ),
            ),
          ),
        ]
      ),
    );
  }
}
