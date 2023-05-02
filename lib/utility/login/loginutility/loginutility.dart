import 'package:flutter/material.dart';

import '../../utility.dart';


Widget facebutton()
{
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      )
    ),
    onPressed: () {}, 
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.facebook,size: 25,),
          const SizedBox(width: 10,),
          Maintext.subtitletext('Continue with Facebook')
        ],
      ),
    )
  );
}

Widget gbutton()
{
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      )
    ),
    onPressed: () {}, 
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/google.png',height: 25,width: 25,),
          const SizedBox(width: 10,),
          Maintext.subtitletext('Continue with Google')
        ],
      ),
    )
  );
}

Widget appbutton()
{
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      )
    ),
    onPressed: () {}, 
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.apple,size: 30,color: titlecolor,),
          const SizedBox(width: 10,),
          Maintext.subtitletext('Continue with Apple')
        ],
      ),
    )
  );
}