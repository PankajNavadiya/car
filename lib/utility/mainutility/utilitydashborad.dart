
import 'package:flutter/material.dart';

import '../utility.dart';

Widget teb(BuildContext context, String tebname)
{
  return Container(
    height: 35,
    margin: const EdgeInsets.only(right: 8),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      border: Border.all(width: 2),
      color:select.value==tebname? Colors.black : Colors.white,
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(child: Text(tebname,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: select.value==tebname? Colors.white : Colors.black),),)
  );
}

List<Map> carname = [
  {'name': 'Mercedes', 'logo': 'assets/images/mercedes.png', 'iconcolor': Colors.blue, 'Callhistory': 'Incoming Call', 'date': 'Feb,19,2023','time':'10.25'},
  {'name': 'Tesla', 'logo': 'assets/images/tesla.png', 'iconcolor': Colors.red, 'Callhistory': 'Missed Call', 'date': 'Feb,18,2023','time':'09.41'},
  {'name': 'BMW', 'logo': 'assets/images/bmw.png', 'iconcolor': Colors.green, 'Callhistory': 'Outgoing Call', 'date': 'Feb,18,2023','time':'09.25'},
  {'name': 'Toyota', 'logo': 'assets/images/toyota.png', 'iconcolor': Colors.blue, 'Callhistory': 'Incoming Call', 'date': 'Feb,17,2023','time':'Yesterday'},
  {'name': 'Volvo', 'logo': 'assets/images/volvo.png', 'iconcolor': Colors.green, 'Callhistory': 'Outgoing Call', 'date': 'Feb,17,2023','time':'Feb,17,2023'},
  {'name': 'Bugatti', 'logo': 'assets/images/bugatti.png', 'iconcolor': Colors.green, 'Callhistory': 'Outgoing Call', 'date': 'Feb,17,2023','time':'Feb,15,2023'},
  {'name': 'Honda', 'logo': 'assets/images/honda.png', 'iconcolor': Colors.red, 'Callhistory': 'Missed Call', 'date': 'Feb,16,2023','time':'Feb,13,2023'},
  {'name': 'More', 'logo': 'assets/images/more.png', 'iconcolor': Colors.green, 'Callhistory': 'Incoming Call', 'date': 'Feb,16,2023','time':'Feb,12,2023'}
];

GridView cars(BuildContext context) { 
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: ScreenUtil.isMobile(context) ? 4 :8,
      crossAxisSpacing: ScreenUtil.isMobile(context) ? 2 : 0,
      childAspectRatio: 0.9
    ),
    itemCount: carname.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            InkWell(
              child: CircleAvatar(
                maxRadius: 25,
                backgroundColor: const Color.fromARGB(82, 158, 158, 158),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(carname[index]['logo'].toString()),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Text(carname[index]['name'].toString(),style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w800,color: Colors.black),)
          ],
        ),
      );
    }
  );
}
