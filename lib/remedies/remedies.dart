import 'package:astrology/remedies/astromall.dart';
import 'package:astrology/remedies/evileye.dart';
import 'package:astrology/remedies/facereading.dart';
import 'package:astrology/remedies/gemstone.dart';
import 'package:astrology/remedies/kundli.dart';
import 'package:astrology/remedies/namecorrection.dart';
import 'package:astrology/remedies/palmistry.dart';
import 'package:astrology/remedies/pooja.dart';
import 'package:astrology/remedies/relationship.dart';
import 'package:astrology/remedies/rudraksha.dart';
import 'package:astrology/remedies/spell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Remedies extends StatefulWidget {
  const Remedies({super.key});

  @override
  State<Remedies> createState() => _RemediesState();
}

class _RemediesState extends State<Remedies> {
  final List<String> imagePaths = [
    'assets/images/spell.jpg',
    'assets/images/facereading.jpg',
    'assets/images/gemstone.png',
    'assets/images/rudraksha.png',
    'assets/images/pooja.png',
    'assets/images/namecorrection.jpg',
    'assets/images/relationship.png',
    'assets/images/evileye.png',
    'assets/images/pakmistry.jpeg',
    'assets/images/kundlimatching.jpg',
  ];

  final List<String> texts = [
    'Spell',
    'Face Reading',
    'Gemstone',
    'Rudraksha',
    'Pooja',
    'Name Correction',
    'Relationship',
    'Evil Eye Removal',
    'Palmistry',
    'Kundli Matching'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Astr Suvidha',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
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
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.blue.shade100,
                  ),
                  child: const Astromall(),
                ),
              ),
              const SizedBox(height: 10),
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
                                      builder: (context) => const Spell()));
                              break;
                            case 1:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FaceReading()));
                              break;
                            case 2:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Gemstone()));

                              break;
                            case 3:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Rudraksha()));

                              break;
                            case 4:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Pooja()));

                              break;
                            case 5:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NameCorrection()));

                              break;
                            case 6:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Relationship()));

                              break;
                            case 7:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const EvilEye()));

                              break;
                            case 8:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Palmistry()));

                              break;
                            case 9:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const KundliMatching()));

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
                              alignment: Alignment.bottomCenter,
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
