import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/index/mainindex.dart';
import '../utility/login/accountsignin.dart';
import '../utility/login/accountsignup.dart';
import '../utility/login/login.dart';
import '../utility/login/loginprofile.dart';
import '../utility/login/loginutility/communutility.dart';
import '../utility/orders/mainorder.dart';
import '../view/carnotification.dart';
import '../view/maindashborad.dart';
import '../view/mylistview.dart';
import '../view/notification.dart';
import '../view/otp.dart';

//signup
Rx<int> call=0.obs;
Rx<bool> showpass=true.obs;
bool checkboxv=false;
bool userphonenuber=false;

// Like veriable
Rx<bool> favoritelike = false.obs;

// Deshbord buttombar veriable
Rx<int> selectedindex = 0.obs;

// Deshbord veriable
Rx<String> select = 'All'.obs;

// Notification veriable
Rx<bool> generalvalue=false.obs; 
Rx<bool> soundvalue=false.obs; 
Rx<bool> vibratevalue=false.obs; 
Rx<bool> offersvalue=false.obs; 
Rx<bool> discountvalue=false.obs; 
Rx<bool> paymentsvalue=false.obs; 
Rx<bool> cashbackvalue=false.obs; 
Rx<bool> updatesvalue=false.obs; 
Rx<bool> servicevalue=false.obs; 
Rx<bool> tipsvalue=false.obs;

// App commun veriable
const titlecolor= Colors.black;
const bgcolor= Color.fromARGB(90, 197, 197, 197);
const bgcolordark= Colors.grey;
const nopadding= EdgeInsets.all(0);
const appfildcolor=Color.fromARGB(69, 209, 209, 209);

final formKey = GlobalKey<FormState>();
Rx<TextEditingController> otppin= TextEditingController().obs;
String otpdone='';

snackBardemo(BuildContext context, String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

class Routes {
  static final route=[
    GetPage(name: '/howLogin', page: () => const HowLogin(),),
    GetPage(name: '/maindashborad', page: () => const Maindashborad(),),
    GetPage(name: '/mylistview', page: () => const Mylistview(),),
    GetPage(name: '/appnotification', page: () => const Appnotification(),),
    GetPage(name: '/order', page: () => const Order(),),
    GetPage(name: '/mainindex', page: () => const Mainindex(),),
    GetPage(name: '/carnotification', page: () => const Carnotification(),),
    GetPage(name: '/accountsignup', page: () => const Accountsignup(),),
    GetPage(name: '/accountsignin', page: () => const Accountsignin(),),
    GetPage(name: '/loginProfile', page: () => const LoginProfile(),),
    GetPage(name: '/otpverification', page: () => Otpverification(phoneno: int.parse(number.text)),),
  ];
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> carsnackbar (BuildContext context , String massege)
{
  return  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(massege),));
}

BorderRadius radiusc(double number)
{
  return BorderRadius.all(Radius.circular(number));
} 

class Maintext 
{
  static Text dynamictext(String text, double size)
  {
    return Text(text,
      style: TextStyle(
        fontSize: size,
        color: titlecolor,
        fontWeight: FontWeight.bold
      )
    );
  }
  static Text dynamicnormaltext(String text, double size)
  {
    return Text(text,
      style: TextStyle(
        fontSize: size,
        color: titlecolor,
      )
    );
  }
  static Text dynamicsubtext(String text, double size)
  {
    return Text(text,
      style: TextStyle(
        fontSize: size,
        color: bgcolordark,
      )
    );
  }
  static Text dynamictextlight(String text, double size)
  {
    return Text(text,
      style: TextStyle(
        fontSize: size,
        color: const Color.fromARGB(174, 68, 68, 68),
      )
    );
  }
  static Text titletext(String text)
  {
    return Text(text,
      style: const TextStyle(
        color: titlecolor,
        fontSize: 18,
        fontWeight:FontWeight.bold, 
      ),
    );
  }
  static Text subtext(String text)
  {
    return Text(text,
      style: const TextStyle(
        fontSize: 12, 
      ),
    );
  }
  static Text subtitletext(String text)
  {
    return Text(text,
      style: const TextStyle(
        color: titlecolor,
        fontSize: 15,
        fontWeight:FontWeight.bold, 
      ),
    );
  }
}

class ScreenUtil 
{
  static isMobile(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return h > w;
  }

  static isTablet(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return w > h;
  }
}

class Overlisttile
{
  late final VoidCallback? press;

  static dynamic overlist(String bgimage, String listtitle, String listsubtitle, String image1, String image2)
  {
    return ListTile(
      contentPadding: nopadding,
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(bgimage)
      ),
      title: Text(listtitle,style: const TextStyle(fontSize: 14, color: Colors.black38),),
      subtitle: Maintext.titletext(listsubtitle),
      trailing: Wrap(
        children: [
          Image(image: AssetImage(image1),height: 23),
          const SizedBox(width: 5,),
          Image(image: AssetImage(image2),height: 23),
        ],
      ),
    );
  }
  static dynamic overlist2(String title2, String trailingtext)
  {
    return ListTile(
      contentPadding: nopadding,
      title: Maintext.titletext(title2),
      trailing: Maintext.subtitletext(trailingtext),
    );
  }
}