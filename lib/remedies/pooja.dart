import 'package:astrology/horoscope/aries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pooja extends StatefulWidget {
  const Pooja({super.key});

  @override
  State<Pooja> createState() => _PoojaState();
}

class _PoojaState extends State<Pooja> {
  final List<String> imagePaths = [
    'assets/images/poja.jpg',
    'assets/images/poja1.png',
    'assets/images/poja3.jpg',
    'assets/images/poja2.jpg',
    'assets/images/navgrah.jpg',
    'assets/images/RudrabhishekPuja.png',
  ];

  final List<String> texts = [
    'Online Pooja',
    'Ganesh Lakshmi Pooja',
    'Pooja for Relationships',
    'Mukti Pooja',
    'Navgrah Shanti Pooja',
    'Maha Rudraabhishek Pooja',
  ];

  final List<String> text = [
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
    'Book',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 208, 228),
        // title: const Text('Spell'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.blue.shade100,
                  ),
                  child: Image.asset('assets/images/Poojalnding.png'),
                ),
              ),
              SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                    ),
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pooja()));
                              break;
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Text(
                                texts[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: TextButton(
                                  onPressed: () {
                                    // switch (index) {
                                    //   case 0:
                                    //     Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(
                                    //             builder: (context) => Aries()));
                                    //     break;
                                    // }
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    // backgroundColor:
                                    //     Colors.black.withOpacity(0.5),
                                        side: BorderSide(color: Colors.white, width: 1)
                                  ),
                                  child: Text(
                                    text[index],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
