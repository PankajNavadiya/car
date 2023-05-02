import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utility.dart';

class Profilelist extends StatelessWidget {
  final String text, icon;
  final VoidCallback? press;
  
  const Profilelist({super.key, 
    required this.text,
    required this.icon,
    required this.press
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 15,top: 8.0,bottom: 8.0),
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            SizedBox(
              height: 17,
              width: 17,
              child: Image.asset(icon),
            ),
            const SizedBox(width: 15,),
            Maintext.dynamictext(text, 17),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: titlecolor)
          ],
        ),
      ),
    );
  }
}


class Proflienewlist extends StatefulWidget {
  final String text, icon;
  final VoidCallback? press;
  const Proflienewlist({super.key,
    required this.text,
    required this.press,
    required this.icon
  });

  @override
  State<Proflienewlist> createState() => _ProflienewlistState();
}

bool switchvalue=false;

class _ProflienewlistState extends State<Proflienewlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
          SizedBox(
            height: 17,
            width: 17,
            child: Image.asset(widget.icon),
          ),
          const SizedBox(width: 15,),
          Maintext.dynamictext(widget.text, 17),
          const Spacer(),
          Transform.scale(
            transformHitTests: false,
            scale: 0.8,
            origin: const Offset(15, 0),
            child: CupertinoSwitch(
              value: switchvalue,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  switchvalue= switchvalue== true ? false : true ;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
