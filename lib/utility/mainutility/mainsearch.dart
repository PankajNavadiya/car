import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mainsearch extends StatelessWidget {
  Mainsearch({super.key});

  TextEditingController conMainsearch= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        cursorColor: Colors.black,
        controller: conMainsearch,
        autofocus: false,
        keyboardType: TextInputType.name,
        cursorHeight: 20,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(82, 158, 158, 158),
          prefixIcon: Container(
            padding: const EdgeInsets.all(13),
            width: 17,
            child: Image.asset('assets/images/search.png',color: const Color.fromARGB(255, 175, 175, 175),)
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.all(13),
            width: 17,
            child: Image.asset('assets/images/more+.png',color: const Color.fromARGB(255, 175, 175, 175),)
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color.fromARGB(255, 175, 175, 175),fontSize: 17),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(15))
          )
        ),
      ),
    );
  }
}