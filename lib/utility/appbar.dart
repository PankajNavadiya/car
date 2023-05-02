import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utility.dart';

AppBar appbarshort() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: const Text('My Wishlist',
        style: TextStyle(color: Colors.black, fontSize: 22)),
    leading: InkWell(
      onTap: () {
        Get.back();
      },
      child: const Icon(Icons.arrow_back, color: Colors.black)),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: SizedBox(
          height: 22,
          width: 22,
          child: Image.asset('assets/images/search.png',
              color: const Color.fromARGB(255, 175, 175, 175)
            )
          ),
      ),
    ],
  );
}
AppBar appbarteb(String tebbarname, String teb1, String teb2)
{
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: const CircleAvatar(
      radius: 3,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage('assets/images/ic_launcher.png')
    ),
    titleSpacing: 2,
    title: Maintext.dynamictext(tebbarname,21),
    actions: const [
      SizedBox(
        height: 23,
        width: 23,
        child: Image(image: AssetImage('assets/images/search.png'),color: Colors.black54,)
      ),
      SizedBox(width: 10,),
      SizedBox(
        height: 23,
        width: 23,
        child: Image(image: AssetImage('assets/images/more.png'),color: Colors.black54,)
      ),
      SizedBox(width: 10,)
    ],
    bottom: TabBar(
      indicatorColor: titlecolor,
      indicatorWeight: 3,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      automaticIndicatorColorAdjustment: true,
      unselectedLabelColor: Colors.black38,
      labelColor: Colors.black,
      tabs: [
        Tab(child: Text(teb1,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
        Tab(child: Text(teb2,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)
      ]
    ),
  );
}           
AppBar commonappbar(String tebbarname)
{
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: const CircleAvatar(
      radius: 3,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage('assets/images/ic_launcher.png')
    ),
    titleSpacing: 2,
    title: Maintext.dynamictext(tebbarname,21),
    actions: const [
      SizedBox(
        height: 23,
        width: 23,
        child: Image(image: AssetImage('assets/images/search.png'),color: Colors.black54,)
      ),
      SizedBox(width: 10,),
      SizedBox(
        height: 23,
        width: 23,
        child: Image(image: AssetImage('assets/images/more.png'),color: Colors.black54,)
      ),
      SizedBox(width: 10,)
    ],
  );
}           
AppBar normalappbar(String normalname)
{
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    titleSpacing: 2,
    leading: InkWell(
      onTap: () {
        Get.back();
      },
      child: const Icon(Icons.arrow_back,color: Colors.black,)
    ),
    title: Maintext.dynamictext(normalname,21),
  );
}