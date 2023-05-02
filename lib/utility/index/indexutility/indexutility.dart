import 'package:flutter/material.dart';

import '../../mainutility/utilitydashborad.dart';
import '../../utility.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carname.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(carname[index]['logo']),
          ),
          contentPadding: const EdgeInsets.all(5),
          title: Maintext.titletext(carname[index]['name']),
          subtitle: Maintext.subtext(carname[index]['name']),
          trailing: SizedBox(
            width: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.chat_bubble_outline),
                Maintext.subtext(carname[index]['time'])
              ],
            ),
          )
        );
      }
    );
  }
}


class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carname.length,
      itemBuilder: (context, index) {
        return ListTile(
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
    );
  }
}