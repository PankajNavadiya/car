import 'package:car/utility/appbar.dart';
import 'package:car/utility/profile/profileutility/profileutility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonappbar('Profile'),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 50,
                              backgroundImage: AssetImage('assets/images/profileman.jpg'),
                            ),
                            Positioned(
                              left: 70,
                              bottom: 0,
                              child: InkWell(
                                onTap: () {
                                   ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Select Profile Photo'),
                                    )
                                  );
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: const Icon(Icons.edit,color: Colors.white,size: 17,)
                                ),
                              )
                            )
                          ],
                        )
                      ),
                      const SizedBox(height: 5),
                      Maintext.dynamictext('User Name',21),
                      const SizedBox(height: 5),
                      Maintext.subtext('User Mo-Number'),
                      const Divider(
                        color: bgcolordark,
                      ),
                      Profilelist(
                        text: 'Edit Profile',
                        icon: 'assets/images/useroutline.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Notification',
                        icon: 'assets/images/notification.png',
                        press: (){Get.toNamed('/carnotification');}
                      ),
                       Profilelist(
                        text: 'Address',
                        icon: 'assets/images/address.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Payment',
                        icon: 'assets/images/wallet.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Security',
                        icon: 'assets/images/security.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Language',
                        icon: 'assets/images/language.png',
                        press: (){}
                      ),
                      Proflienewlist(
                        text: 'Dark Mode',
                        icon: 'assets/images/darkmode.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Privacy Policy',
                        icon: 'assets/images/security.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Help Center',
                        icon: 'assets/images/help.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Invite Friends',
                        icon: 'assets/images/invitefriend.png',
                        press: (){}
                      ),
                      Profilelist(
                        text: 'Logout',
                        icon: 'assets/images/lock.png',
                        press: (){}
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        )
      ),
    );
  }
}