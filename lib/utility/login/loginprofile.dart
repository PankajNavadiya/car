import 'package:car/utility/appbar.dart';
import 'package:car/utility/login/loginutility/communutility.dart';
import 'package:flutter/material.dart';

import '../utility.dart';

class LoginProfile extends StatefulWidget {
  const LoginProfile({super.key});

  @override
  State<LoginProfile> createState() => _LoginProfileState();
}

class _LoginProfileState extends State<LoginProfile> {

  int gendervalue=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: normalappbar('Fill Your Profile'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 115,
                        width: 115,
                        child: Stack(
                          fit: StackFit.expand,
                          clipBehavior: Clip.none,
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/profileman.jpg'),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: InkWell(
                                onTap: () {
                                  carsnackbar(context, 'Select Profile Photo');
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
                      const SizedBox(height: 15),
                      Communsign.fullname('Full Name'),
                      const SizedBox(height: 15),
                      Communsign.nickname('Nick Name'),
                      const SizedBox(height: 15),
                      Communsign.userdob(context,'Date Of Birth'),
                      const SizedBox(height: 15),
                      Communsign.email('Email'),
                      const SizedBox(height: 15),
                      phonenuber('Phone Number'),
                      const SizedBox(height: 15),
                      // Communsign.usergender('Gender')
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: appfildcolor,
                          shape: BoxShape.rectangle,
                          borderRadius: radiusc(10)
                        ),
                        child: DropdownButton(
                          value: gendervalue,
                          items: const [
                            DropdownMenuItem(
                              value: 0,
                              child: Text('Select Gender',style: TextStyle(fontSize: 17,color: bgcolordark))
                            ),
                            DropdownMenuItem(
                              value: 1,
                              child: Text('Male')
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text('Female')
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text('Other')
                            ),
                          ],
                          isExpanded: true,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down,size: 30),
                          onChanged: (value) {
                            setState(() {
                              gendervalue=value as int;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 35),
                      Communlogin.perimeterbutton(context,'Continue','otpverification',number.text),
                    ]
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