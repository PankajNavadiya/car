import 'package:car/utility/appbar.dart';
import 'package:car/utility/wallet/walletutility/walletutility.dart';
import 'package:flutter/material.dart';

import '../mainutility/utilitydashborad.dart';
import '../utility.dart';

class Mainwallet extends StatefulWidget {
  const Mainwallet({super.key});

  @override
  State<Mainwallet> createState() => _MainwalletState();
}

class _MainwalletState extends State<Mainwallet> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: commonappbar('My E-Wallet'),
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: 
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const Walletytility(),
                        Overlisttile.overlist2('Transation History', 'See All'),
                        Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: carname.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  contentPadding: const EdgeInsets.all(5),
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset(carname[index]['logo']),
                                  ),
                                  title: Maintext.titletext(carname[index]['name']),
                                  subtitle: Row(
                                    children: [
                                      SizedBox(
                                        height: 13,
                                        width: 13,
                                        child: Image.asset('assets/images/phone-call.png',color: carname[index]['iconcolor'],),
                                      ),
                                      const SizedBox(width: 3,),
                                      Maintext.subtext(carname[index]['Callhistory']),
                                      const SizedBox(width: 3,),
                                      Maintext.subtext(' | '),
                                      const SizedBox(width: 3,),
                                      Maintext.subtext(carname[index]['date']),
                                    ],
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset('assets/images/telephone.png',color: Colors.black87,),
                                  )
                                );
                              }
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              )
            ]
          ),
        )
      ),
    );
  }
}