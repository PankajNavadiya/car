import 'package:flutter/material.dart';

import '../utility.dart';

class Allcars extends StatefulWidget {
  const Allcars({super.key});

  @override
  State<Allcars> createState() => _AllcarsState();
}

class _AllcarsState extends State<Allcars> {
  @override
  Widget build(BuildContext context) {
    List<int> favoritelist=List.generate(10, (index) => index);
    bool isMobile = ScreenUtil.isMobile(context);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: favoritelist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 2 : 4,
                childAspectRatio: isMobile ? 0.7 : 1,
                crossAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: const Color.fromARGB(169, 255, 255, 255),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: h/5,
                            child: Image.asset('assets/images/carbmw.png'),
                          ),
                        ),
                        Positioned(
                          left: isMobile ? w/3.2 : w/6,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if(favoritelike.value==true && favoritelist[index]==index )
                                {
                                  favoritelike.value=false;
                                }
                                else
                                {
                                  favoritelike.value=true;
                                }
                              });
                            },
                            icon: favoritelike.value==false ? const Icon(Icons.favorite_border_outlined,size: 18,) : const Icon(Icons.favorite, size: 18,),
                          )
                        )
                      ]
                    ),
                    const Text('Sedan Series',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15),),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate_rounded,size: 20,),
                        Text(' 4.9 I '),
                        Card(color: Color.fromARGB(169, 255, 255, 255),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Text('New',style: TextStyle(fontSize: 12),),
                          ),
                        )
                      ],
                    ),
                    const Text('\$190.000',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13),)
                  ],
                );
              },
            )
          ),
        ],
      ),
    );
  }
}
