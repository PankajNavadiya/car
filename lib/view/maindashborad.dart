import 'package:car/utility/Profile/profile.dart';
import 'package:car/utility/index/mainindex.dart';
import 'package:car/utility/mainutility/allmainutility.dart';
import 'package:car/utility/orders/mainorder.dart';
import 'package:car/utility/wallet/mainwallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/utility.dart';

class Maindashborad extends StatefulWidget {
  const Maindashborad({super.key});

  @override
  State<Maindashborad> createState() => _MaindashboradState();
}

class _MaindashboradState extends State<Maindashborad> {
  
  List<Widget> homelist = [
    const Allmail(),
    const Order(),
    const Mainindex(),
    const Mainwallet(),
    const MainProfile(),
  ];
  void bottumselect(int index) {
      selectedindex.value = index;
  }

  PageController pagecontrol = PageController();
  @override
  Widget build(BuildContext context) {
    return Obx(()=> WillPopScope(
      onWillPop: () {
        if(selectedindex.value==0){
          // SystemNavigator.pop();
          Navigator.pop(context);
        }
        else{
          selectedindex.value=0;
        }
        return true as Future<bool>;
      },
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
                activeIcon: Icon(Icons.person)),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Orders',
                activeIcon: Icon(Icons.shopping_cart_rounded)),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Index',
                activeIcon: Icon(Icons.chat_bubble_outlined)),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'Wallet',
                activeIcon: Icon(Icons.account_balance_wallet_rounded)),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: 'Profile',
                activeIcon: Icon(Icons.person)),
            ],
            currentIndex: selectedindex.value,
            unselectedItemColor: const Color.fromARGB(171, 124, 124, 124),
            selectedItemColor: selectedindex == selectedindex? Colors.black: const Color.fromARGB(82, 158, 158, 158),
            onTap: bottumselect,
            showUnselectedLabels: true,
          ),
          body: SafeArea(
            child: Center(
              child: homelist.elementAt(selectedindex.value),
            ),
          )
        ),
      )
    );
  }
}
