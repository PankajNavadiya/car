import 'package:car/utility/mainutility/mainsearch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility.dart';
import 'utilitydashborad.dart';
import 'cards.dart';


class Allmail extends StatefulWidget {
  const Allmail({super.key});

  @override
  State<Allmail> createState() => _AllmailState();
}

class _AllmailState extends State<Allmail> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Obx (() => 
      Column(
        children: [
          Expanded(
            child:SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Overlisttile.overlist('assets/images/user.png','Good Morning','Andrew Ainsley','assets/images/notification.png','assets/images/wishlist.png'),
                    Mainsearch(),
                    SizedBox(height: 50,child: Overlisttile.overlist2('Special Offers','See All')),
                    const Cards(),
                    SizedBox(height: h / 3.9,width: w,child: cars(context)),
                    SizedBox(height: 50,child: Overlisttile.overlist2('Top Deals','See All'),),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              select.value='All';
                              Get.toNamed('/mylistview');
                            },
                            child: teb(context, 'All'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='Mercedes';
                            },
                            child: teb(context, 'Mercedes'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='Tesla';
                            },
                            child: teb(context, 'Tesla'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='BMW';
                            },
                            child: teb(context, 'BMW'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='Toyota';
                            },
                            child: teb(context, 'Toyota'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='Volvo';
                            },
                            child: teb(context, 'Volvo'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='Bugatti';
                            },
                            child: teb(context, 'Bugatti'),
                          ),
                          InkWell(
                            onTap: () {
                              select.value='Honda';
                            },
                            child: teb(context, 'Honda'),
                          ),
                        ],
                      ),  
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
