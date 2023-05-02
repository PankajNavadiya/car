import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

import '../../utility.dart';

class Communlogin 
{
  static loginimage(BuildContext context)
  {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h/5,
      width: w,
      child: Image.asset('assets/images/ic_launcher.png',fit: BoxFit.cover),
    );
  }

  static loginbutton(BuildContext context, String name, String press)
  {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shadowColor: titlecolor,
        elevation: 10,
        fixedSize: Size(w, h/13),
        backgroundColor: titlecolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))
        )
      ),
      onPressed: () {Get.toNamed(press);}, 
      child: Text(name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight:FontWeight.bold, 
        ),
      )
    );
  }

  static verifybutton(BuildContext context, String name, String press)
  {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shadowColor: titlecolor,
        elevation: 10,
        fixedSize: Size(w, h/13),
        backgroundColor: titlecolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))
        )
      ),
      onPressed: () {
        formKey.currentState!.validate();
        if(otpdone.length!=6 || otpdone!='123456')
        {
          snackBardemo(context, 'Wrong Otp');
          otppin.value.clear();
        }
        else
        {
          snackBardemo(context, 'Otp ZVerify');
          Get.toNamed(press);
          otppin.value.clear();
        }
        }, 
      child: Text(name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight:FontWeight.bold, 
        ),
      )
    );
  }

  static perimeterbutton(BuildContext context, String name, String press, String arguments)
  {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shadowColor: titlecolor,
        elevation: 10,
        fixedSize: Size(w, h/13),
        backgroundColor: titlecolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))
        )
      ),
      onPressed: () {
        if(number.text.isEmpty)
        {
          snackBardemo(context, "Please Enter A number");
        }
        else
        {
          Get.toNamed(press ,arguments: {'phone': number.text});
        }
      },
      child: Text(name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight:FontWeight.bold, 
        ),
      )
    );
  }

  static loginbottum(String name, String name2, String press)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Maintext.dynamicsubtext(name,15),
        const SizedBox(width: 8,),
        TextButton(
          onPressed: () {Get.toNamed(press);},
          child: Maintext.dynamictext(name2,16)
        )
      ],
    );
  }
  
  static loginpart(BuildContext context, String name)
  {
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 1,
            width: w/2.50,
            color: const Color.fromARGB(255, 199, 199, 199),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(name,style: const TextStyle(fontWeight: FontWeight.bold,color: bgcolordark, fontSize: 15),)
        ),
        Expanded(
          child: Container(
            height: 1,
            width: w/2.50,
            color: const Color.fromARGB(255, 199, 199, 199),
          ),
        ),
      ],
    );
  }
}

class Communsign
{
  static TextEditingController username = TextEditingController();
  static TextEditingController usernickname = TextEditingController();
  static TextEditingController dateofbirth = TextEditingController();
  static TextEditingController useremail = TextEditingController();
  static TextEditingController gender = TextEditingController();

  static fullname(String fildname)
  {
    return TextField(
      controller: username,
      cursorColor: titlecolor,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
        filled: true,
        fillColor: appfildcolor,
        contentPadding: const EdgeInsets.only(left: 15),
        hintText: fildname,
        isDense: false,
        focusColor: Colors.yellow,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: titlecolor), 
          borderRadius: radiusc(10)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: radiusc(10)
        )
      ),
    );
  }
  static nickname(String nickname)
  {
    return TextField(
      controller: usernickname,
      cursorColor: titlecolor,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
        filled: true,
        fillColor: appfildcolor,
        contentPadding: const EdgeInsets.only(left: 15),
        hintText: nickname,
        isDense: false,
        focusColor: Colors.yellow,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: titlecolor), 
          borderRadius: radiusc(10)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: radiusc(10)
        )
      ),
    );
  }
  static birthdate(BuildContext context) async
  {
    DateTime today=DateTime.now();
    String selectdate='';
    await showDatePicker(
      confirmText: 'Ok',
      context: context, 
      initialDate: today, 
      firstDate: DateTime(1950), 
      lastDate: DateTime(2050),
      initialDatePickerMode: DatePickerMode.day,
      helpText: 'Select Birth Date',
    ).then((value) {
      selectdate=value.toString();
      dateofbirth.text=DateFormat('dd/MM/yyyy').format(DateTime.parse(selectdate));
      // dateofbirth.text=DateFormat('dd-mm-yyyy').format(today);
    } );
  }
  static userdob(BuildContext context,String dob)
  {
    return TextField(
      onTap: () {
        birthdate(context);
      },
      controller: dateofbirth,
      cursorColor: titlecolor,
      keyboardType: TextInputType.none,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
        filled: true,
        fillColor: appfildcolor,
        contentPadding: const EdgeInsets.only(left: 15),
        hintText: dob,
        isDense: false,
        suffixIcon: const Icon(Icons.calendar_month,size: 18),
        suffixIconColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.focused) ? titlecolor : bgcolordark),
        focusColor: Colors.yellow,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: titlecolor), 
          borderRadius: radiusc(10)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: radiusc(10)
        )
      ),
    );
  }
  static email(String fildname)
  {
    return TextField(
      controller: useremail,
      cursorColor: titlecolor,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
        filled: true,
        fillColor: appfildcolor,
        contentPadding: const EdgeInsets.only(left: 15),
        hintText: fildname,
        isDense: false,
        suffixIcon: const Icon(Icons.mail,size: 18),
        suffixIconColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.focused) ? titlecolor : bgcolordark),
        focusColor: Colors.yellow,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: titlecolor), 
          borderRadius: radiusc(10)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: radiusc(10)
        )
      ),
    );
  }
  
  static img(BuildContext context)
  {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(w/4.5, h/12)
          ),
          child: const Icon(Icons.facebook,size: 30,),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(w/4.5, h/12)
          ),
          child: Image.asset('assets/images/google.png',height: 25,width: 25,),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(w/4.5, h/12)
          ),
          child: const Icon(Icons.apple,size: 30,color: titlecolor,),
        ),
      ],
    );
  }
}

TextEditingController number = TextEditingController();

phonenuber(String nonumber)
  {
    return TextField(
      controller: number,
      cursorColor: titlecolor,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
        filled: true,
        fillColor: appfildcolor,
        contentPadding: const EdgeInsets.only(left: 15),
        hintText: nonumber,
        isDense: false,
        prefixIcon: const Icon(Icons.phone_android,size: 18),
        prefixIconColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.focused) ? titlecolor : bgcolordark),
        focusColor: Colors.yellow,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: titlecolor), 
          borderRadius: radiusc(10)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: radiusc(10)
        )
      )
    );
  }

class Textfildpass extends StatefulWidget {
  const Textfildpass({super.key});

  @override
  State<Textfildpass> createState() => _TextfildpassState();
}

class _TextfildpassState extends State<Textfildpass> {

  TextEditingController signuppassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(() => 
      TextField(
        controller: signuppassword,
        cursorColor: titlecolor,
        keyboardType: TextInputType.emailAddress,
        obscureText: showpass.value,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
          filled: true,
          fillColor: appfildcolor,
          contentPadding: nopadding,
          hintText: 'Password',
          isDense: false,
          suffixIcon: Container(
            padding: const EdgeInsets.all(15),
            width: 15,
            child: InkWell(
              onTap: () {
                setState(() {
                  if(call.value==0)
                  {
                    call.value=1;
                    showpass.value=false;
                  }else{
                    call.value=0;
                    showpass.value=true;
                  }
                });
              },
              child: Image.asset('assets/images/hide.png',color: call.value==0? const Color.fromARGB(255, 175, 175, 175) : titlecolor)
            )
          ),
          prefixIcon: const Icon(Icons.lock,size: 18),
          prefixIconColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.focused) ? Colors.black : bgcolordark),
          focusColor: Colors.yellow,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: titlecolor), 
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
      ),
    );
  }
}

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return titlecolor.withOpacity(.32);
            }
            return titlecolor;
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          value:checkboxv, 
          onChanged: (value) {
            setState(() {
                if(checkboxv==false)
                {
                  checkboxv=true;
                }else
                {
                  checkboxv=false;
                }
              }
            );
          },
        ),
        Maintext.dynamicnormaltext('Remember me', 13),
      ],
    );
  }
}