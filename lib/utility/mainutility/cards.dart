import 'package:flutter/material.dart';

import '../utility.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pagecontrol = PageController();
    double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: ScreenUtil.isMobile(context) ? h / 4.2 : h/2,
      child: PageView(
        controller: pagecontrol,
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.transparent,),
              borderRadius: radiusc(25)
            ),
            color: const Color.fromARGB(82, 158, 158, 158),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:ScreenUtil.isMobile(context) ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.center,
                        children: [
                          Maintext.dynamictext('20%',35),
                          Maintext.dynamictext('Week Deals!',20),
                          SizedBox(height: ScreenUtil.isMobile(context) ? 0 : 7 ),
                          Maintext.subtext('Get a new car discount, only valid this week'),
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    flex: ScreenUtil.isMobile(context) ? 3 : 2,
                    child: Padding(
                      padding: ScreenUtil.isMobile(context) ? const EdgeInsets.all(0.0) : const EdgeInsets.all(15),
                      child: Image.asset('assets/images/carbmw.png'),
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}