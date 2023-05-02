import 'package:flutter/material.dart';

import '../../utility.dart';

class Activepage extends StatefulWidget {
  const Activepage({super.key});

  @override
  State<Activepage> createState() => _ActivepageState();
}

class _ActivepageState extends State<Activepage> {

  List<Map> activecar=[
    {
      'carname':'BMW MS Series',
      'carcolor':bgcolor,
      'colorname':'Silver',
      'carprize':'\$171,250'
    },
    {
      'carname':'Ferrari Sports',
      'carcolor':const Color(0xFFFFB300),
      'colorname':'Yellow',
      'carprize':'\$186,500'
    },
    {
      'carname':'Audi Sports',
      'carcolor':const Color(0xFFFF0000),
      'colorname':'Red',
      'carprize':'\$134,250'
    },
    {
      'carname':'McLaren Sports',
      'carcolor':bgcolor,
      'colorname':'Silver',
      'carprize':'\$156,500'
    },
    {
      'carname':'Porsche Sports',
      'carcolor':const Color(0xFFFF0000),
      'colorname':'Red',
      'carprize':'\$172,500'
    },
    {
      'carname':'Toyota Sports',
      'carcolor':titlecolor,
      'colorname':'Black',
      'carprize':'\$168,250'
    },
    {
      'carname':'Camaro Sports',
      'carcolor':const Color(0xFFFFB300),
      'colorname':'Yellow',
      'carprize':'\$186,500'
    },
    {
      'carname':'Opel Series',
      'carcolor':Colors.white,
      'colorname':'White',
      'carprize':'\$132,500'
    }
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenUtil.isMobile(context);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: activecar.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: radiusc(25)
            ),
            padding: const EdgeInsets.all(13),
            height: isMobile ? h/5.5 : h/2.5, // ScreenUtil.isMobile(context)?h/5.5 : h/2.5 aam pan chale
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: isMobile ? w/3.2 : w/3.5,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: bgcolor,
                    borderRadius: radiusc(17)
                  ),
                  child: Image.asset('assets/images/carbmw.png',fit: BoxFit.contain),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Maintext.titletext(activecar[index]['carname']),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: activecar[index]['carcolor'],
                                borderRadius: BorderRadius.circular(25)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Maintext.dynamicsubtext(activecar[index]['colorname'],15),
                            const SizedBox(width: 10,),
                            Container(
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: bgcolor,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Maintext.dynamictext('In Delivery',11),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Maintext.titletext(activecar[index]['carprize']),
                            const SizedBox(width: 10,),
                            Container(
                              height: h/22,
                              width: w/4,
                              decoration: const BoxDecoration(
                                color: titlecolor,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                              ),
                              child: const Center(child: Text('Track Order',style: TextStyle(color: Colors.white,fontSize: 13),)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class Completedpage extends StatefulWidget {
  const Completedpage({super.key});

  @override
  State<Completedpage> createState() => _CompletedpageState();
}

class _CompletedpageState extends State<Completedpage> {

  List<Map> activecar=[
    {
      'carname':'BMW MS Series',
      'carcolor':bgcolor,
      'colorname':'Silver',
      'carprize':'\$171,250'
    },
    {
      'carname':'Ferrari Sports',
      'carcolor':const Color(0xFFFFB300),
      'colorname':'Yellow',
      'carprize':'\$186,500'
    },
    {
      'carname':'Audi Sports',
      'carcolor':const Color(0xFFFF0000),
      'colorname':'Red',
      'carprize':'\$134,250'
    },
    {
      'carname':'McLaren Sports',
      'carcolor':bgcolor,
      'colorname':'Silver',
      'carprize':'\$156,500'
    },
    {
      'carname':'Porsche Sports',
      'carcolor':const Color(0xFFFF0000),
      'colorname':'Red',
      'carprize':'\$172,500'
    },
    {
      'carname':'Toyota Sports',
      'carcolor':titlecolor,
      'colorname':'Black',
      'carprize':'\$168,250'
    },
    {
      'carname':'Camaro Sports',
      'carcolor':const Color(0xFFFFB300),
      'colorname':'Yellow',
      'carprize':'\$186,500'
    },
    {
      'carname':'Opel Series',
      'carcolor':Colors.white,
      'colorname':'White',
      'carprize':'\$132,500'
    }
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenUtil.isMobile(context);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: activecar.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: radiusc(25)
            ),
            padding: const EdgeInsets.all(13),
            height: isMobile ? h/5.5 : h/2.5, // ScreenUtil.isMobile(context)?h/5.5 : h/2.5 aam pan chale
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: isMobile ? w/3.2 : w/3.5,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: bgcolor,
                    borderRadius: radiusc(17)
                  ),
                  child: Image.asset('assets/images/carbmw.png',fit: BoxFit.contain),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Maintext.titletext(activecar[index]['carname']),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: activecar[index]['carcolor'],
                                borderRadius: BorderRadius.circular(25)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Maintext.dynamicsubtext(activecar[index]['colorname'],15),
                            const SizedBox(width: 10,),
                            Container(
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: bgcolor,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Maintext.dynamictext('In Delivery',11),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Maintext.titletext(activecar[index]['carprize']),
                            const SizedBox(width: 10,),
                            Container(
                              height: h/22,
                              width: w/4,
                              decoration: const BoxDecoration(
                                color: titlecolor,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                              ),
                              child: const Center(child: Text('Leave Review',style: TextStyle(color: Colors.white,fontSize: 13),)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}