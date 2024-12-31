import 'dart:async';
import 'dart:core';
import 'package:astrology/AstroList.dart';
import 'package:astrology/Audiocall/audio_call.dart';
import 'package:astrology/LiveStreaming/livestream.dart';
import 'package:astrology/Profile.dart';
import 'package:astrology/Reports/reporthome.dart';
import 'package:astrology/Trending%20consultation/Carrer.dart';
import 'package:astrology/Trending%20consultation/Education.dart';
import 'package:astrology/Trending%20consultation/Health.dart';
import 'package:astrology/Trending%20consultation/Relationship.dart';
import 'package:astrology/Trending%20consultation/Wealth.dart';
import 'package:astrology/astrovoice.dart';
import 'package:astrology/calllist.dart';
import 'package:astrology/chatlist.dart';
import 'package:astrology/horoscope/aquarius.dart';
import 'package:astrology/horoscope/aries.dart';
import 'package:astrology/horoscope/cancer.dart';
import 'package:astrology/horoscope/capricon.dart';
import 'package:astrology/horoscope/gemini.dart';
import 'package:astrology/horoscope/leo.dart';
import 'package:astrology/horoscope/libra.dart';
import 'package:astrology/horoscope/pisces.dart';
import 'package:astrology/horoscope/sagittarius.dart';
import 'package:astrology/horoscope/scorpio.dart';
import 'package:astrology/horoscope/taurus.dart';
import 'package:astrology/horoscope/virgo.dart';
import 'package:astrology/navbar.dart';
import 'package:astrology/paynowForm/paynow1.dart';
import 'package:astrology/profile/ProfileFull.dart';
import 'package:astrology/profile/profile1.dart';
import 'package:astrology/profile/profile2.dart';
import 'package:astrology/profile/profile3.dart';
import 'package:astrology/profile/profile4.dart';
import 'package:astrology/remedies.dart';
import 'package:astrology/commingsoon.dart';
import 'package:astrology/remedies/evileye.dart';
import 'package:astrology/remedies/pooja.dart';
import 'package:astrology/remedies/relationship.dart';
import 'package:astrology/remedies/spell.dart';
import 'package:astrology/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'AstroService/Widget/chat_user_card.dart';
import 'AstroService/chatroom.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pagecontroller = PageController();
  final ScrollController _blogScrollController = ScrollController();
  final ScrollController _consultationScrollController = ScrollController();
  Timer? _blogAutoScrollTimer;
  Timer? _consultationAutoScrollTimer;

  final List<String> _texts = [
    'Are you worried about your business?',
    'Are you worried about your Carrer?',
    'Are you worried about your Love?',
    'Are you worried about your Relationship?',
  ];

  Timer? _timer;
  bool _isScollingForward = true;
  String selectedLanguage = 'English';

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_isScollingForward) {
        if (_pagecontroller.page! < _texts.length - 1) {
          _pagecontroller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        } else {
          _isScollingForward = false;
          _pagecontroller.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      } else {
        if (_pagecontroller.page! > 0) {
          _pagecontroller.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        } else {
          _isScollingForward = true;
          _pagecontroller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      }
    }
    );
    _startBlogAutoScroll();
    _startConsultationAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pagecontroller.dispose();
    _blogScrollController.dispose();
    _consultationScrollController.dispose();
    _blogAutoScrollTimer?.cancel();
    _consultationAutoScrollTimer?.cancel();
    super.dispose();
  }

  void _startBlogAutoScroll() {
    _blogAutoScrollTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_blogScrollController.hasClients) {
        double maxScroll = _blogScrollController.position.maxScrollExtent;
        double currentScroll = _blogScrollController.position.pixels;

        if (currentScroll < maxScroll) {
          _blogScrollController.animateTo(
            currentScroll + 100, // Adjust to match item width
            duration: const Duration(seconds: 3),
            curve: Curves.easeInOut,
          );
        } else {
          _blogScrollController.animateTo(
            0,
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  void _startConsultationAutoScroll() {
    _consultationAutoScrollTimer =
        Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_consultationScrollController.hasClients) {
        double maxScroll = _consultationScrollController.position.maxScrollExtent;
        double currentScroll = _consultationScrollController.position.pixels;

        if (currentScroll < maxScroll) {
          _consultationScrollController.animateTo(
            currentScroll + 150, // Adjust to match item width
            duration: const Duration(seconds: 3),
            curve: Curves.easeInOut,
          );
        } else {
          _consultationScrollController.animateTo(
            0,
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 207, 77, 57),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/homelogo.png',
              height: 35,
            ),
            const SizedBox(width: 8),
            const Text('Whizz-Astro',
            style: TextStyle(
              color: Colors.white
            ),),
          ],
        ),
      ),
      // endDrawer: const NavBar(),
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 40,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) => InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: const Icon(
                      Icons.account_circle,
                      size: 35,
                      color: Colors.black,
                    ),
                    ), 
                    ),
                    const SizedBox(width: 8,),
                    _buildFilterChip('Free Horoscope'),
                    _buildFilterChip('Astro Consultation'),
                    _buildFilterChip('Consult Now'),
                    _buildFilterChip('Trending Consultations'),
                    _buildFilterChip('Astro Suvidha'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 245, // Increase height to accommodate two lines of text
              color: Colors.white,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horoscope',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                        height: 5), // Add some space between the two texts
                    const Text(
                      "The stars are in your favor, you can't be horrible. They won't let you down!",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      //for height of image circle can be  adjust here
                      height:
                          130, // Adjust height to accommodate images and titles
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(10),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildCircularServices(
                            context,
                            index,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 160, // Increase height to accommodate two lines of text
              color: Colors.transparent,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Services',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height:
                          100, // Adjust height to accommodate images and titles
                      // color: Colors.orange.shade50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color.fromARGB(255, 207, 77, 57),
                        // color: const Color(0xFF000080),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 244, 214, 214), width: 2),
                            // color: const Color(0xFF000080), width: 2),
                      ),
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           const AudioCallingScreen()), // Replace ReportHomePage() with your desired screen
                              // );
                              // Handle call pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CallList()), // Replace ReportHomePage() with your desired screen
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Image.asset(
                                    'assets/images/phone.png', // Replace with your call icon asset path
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Call",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle chat pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Chatroom()), // Replace ReportHomePage() with your desired screen
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Image.asset(
                                    'assets/images/chat.png', // Replace with your chat icon asset path
                                    width: 50,
                                    height: 50,
                                  ),
                                ), // Adjust size as needed
                                const SizedBox(height: 10),
                                const Text(
                                  "Chat",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle video pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LiveStream()), // Replace ReportHomePage() with your desired screen
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Image.asset(
                                    'assets/images/video.png', // Replace with your video icon asset path
                                    width: 50,
                                    height: 50,
                                  ),
                                ), // Adjust size as needed
                                const SizedBox(height: 10),
                                const Text(
                                  "Live",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportHomePage()),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Image.asset(
                                    'assets/images/report.png', // Replace with your report icon asset path
                                    width: 50,
                                    height: 50,
                                  ),
                                ), // Adjust size as needed
                                const SizedBox(height: 10),
                                const Text(
                                  "Report",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => const Remedies()),
                          //     );
                          //   },
                          //   child: Column(
                          //     mainAxisSize: MainAxisSize.min,
                          //     children: [
                          //       Container(
                          //         color: Colors.transparent,
                          //         child: Image.asset(
                          //           'assets/images/namaste.png',
                          //           width: 50,
                          //           height: 50,
                          //         ),
                          //       ), // Adjust size as needed
                          //       const SizedBox(height: 10),
                          //       const Text(
                          //         "Remedies",
                          //         style: TextStyle(
                          //             fontSize: 15,
                          //             fontWeight: FontWeight.w600,
                          //             color: Colors.white),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 210, // Increase height to accommodate two lines of text
              color: Colors.transparent,
              margin: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommended Astrologers',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AstrologersList()),
                            );
                          },
                          child: const Text('See all >'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height:
                          140, // Adjust height to accommodate images and titles
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(5),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildAstrologerServices(
                            context,
                            index,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 30,
              alignment:
                  Alignment.centerLeft, // Align the entire content to the start
                  margin: const EdgeInsets.only(top: 0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Ensure the text is aligned to the start
                mainAxisAlignment: MainAxisAlignment
                    .center, // Vertically center the text inside the Column
                children: [
                  Text(
                    '  Learn with us Assured Placement',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              // padding: const EdgeInsets.all(10),
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                  controller: _blogScrollController,
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  itemCount: 8, // Number of items in your grid
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: _buildBlogItem(context, index),
                    );
                  })),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 30, // Increase height to accommodate two lines of text
              color: Colors.transparent,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: PageView.builder(
                          controller: _pagecontroller,
                          itemCount: _texts.length,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                _texts[index],
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.bold,
                                  // color: Colors.white,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              ),

              Container(
              height: 200, // Increase height to accommodate two lines of text
              color: Colors.transparent,
              margin: const EdgeInsets.all(5),
              // padding:
              //                     const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        const Text(
                          '  Astro Suvidha',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Remedies()),
                            );
                          },
                          child: const Text('See all >'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height:
                          140, // Adjust height to accommodate images and titles
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(5),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildAstroRemedies(
                            context,
                            index,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Starting Trending consulations
            Container(
                height: 250,
                // color: Colors.blue.shade900,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  // color: const Color(0xFF000080),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color.fromARGB(255, 244, 214, 214), width: 2),
                ),
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // First Container
                    Container(
                      // height: 140,
                      // width: 160,
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trending Consultations',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                              height:
                                  2), // Adding space between title and description
                          Text(
                            'Astrology is a language,If you want to understand this language,speak to us !',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // SizedBox(
                          //     height:
                          //         30), // Adding space between title and description
                          // Text(
                          //   'Swipe',
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.w300,
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                    // Third Container with Horizontal Grid
                    Expanded(
                      child: Container(
                        height:
                            80, // Adjust height to accommodate images and titles
                        color: Colors.transparent,
                        margin: const EdgeInsets.all(8),
                        child: GridView.builder(
                          controller: _consultationScrollController,
                          scrollDirection: Axis.horizontal,
                          physics: const PageScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 20.0,
                            crossAxisSpacing: 20.0,
                          ),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildtrendingconsultations(
                              context,
                              index,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )),
            // Container(
            //   height: 260, // Increase height to accommodate two lines of text
            //   color: Colors.transparent,
            //   margin: const EdgeInsets.all(10),
            //   child: Center(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Expanded(
            //           child: PageView.builder(
            //               controller: _pagecontroller,
            //               itemCount: _texts.length,
            //               itemBuilder: (context, index) {
            //                 return Container(
            //                   alignment: Alignment.centerLeft,
            //                   padding:
            //                       const EdgeInsets.symmetric(horizontal: 14.0),
            //                   child: Text(
            //                     _texts[index],
            //                     textAlign: TextAlign.left,
            //                     style: const TextStyle(
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.bold,
            //                       // color: Colors.white,
            //                     ),
            //                   ),
            //                 );
            //               }),
            //         ),
            //         // Add some space between the two texts
            //         const SizedBox(
            //           height: 5,
            //         ),
            //         const Text(
            //           "   Our astrolgers are there to guide/help you",
            //           style: TextStyle(fontSize: 14),
            //         ),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 180,
            //           // Adjust height to accommodate images and titles
            //           color: Colors.transparent,
            //           margin: const EdgeInsets.all(10),
            //           child: GridView.builder(
            //             scrollDirection: Axis.horizontal,
            //             physics: const PageScrollPhysics(),
            //             gridDelegate:
            //                 const SliverGridDelegateWithFixedCrossAxisCount(
            //               crossAxisCount: 1,
            //               mainAxisSpacing: 20.0,
            //               crossAxisSpacing: 20.0,
            //             ),
            //             itemCount: 3,
            //             itemBuilder: (BuildContext context, int index) {
            //               return _buildbussiness(
            //                 context,
            //                 index,
            //               );
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularServices(BuildContext context, int index) {
    List<Map<String, dynamic>> serviceData = [
      {
        'image': 'assets/images/Aries.png',
        'title': 'Aries',
        'color': Colors.orange,
        'route': const Aries(),
      },
      {
        'image': 'assets/images/Taurus.png',
        'title': 'Taurus',
        'color': Colors.teal,
        'route': const Taurus(),
      },
      {
        'image': 'assets/images/Gemini.png',
        'title': 'Gemini',
        'color': Colors.red,
        'route': const Gemini(),
      },
      {
        'image': 'assets/images/Cancer.png',
        'title': 'Cancer',
        'color': Colors.purple,
        'route': const Cancer(),
      },
      {
        'image': 'assets/images/Leo.png',
        'title': 'Leo',
        'color': Colors.teal,
        'route': const Leo(),
      },
      {
        'image': 'assets/images/Virgo.png',
        'title': 'Virgo',
        'color': Colors.teal,
        'route': const Virgo(),
      },
      {
        'image': 'assets/images/Libra.png',
        'title': 'Libra',
        'color': Colors.teal,
        'route': const Libra(),
      },
      {
        'image': 'assets/images/Scorpio.png',
        'title': 'Scorpio',
        'color': Colors.teal,
        'route': const Scorpio(),
      },
      {
        'image': 'assets/images/Sagittarius.png',
        'title': 'Sagittarius',
        'color': Colors.teal,
        'route': const Sagittarius(),
      },
      {
        'image': 'assets/images/Capricorn.png',
        'title': 'Capricorn',
        'color': Colors.green,
        'route': const Capricorn(),
      },
      {
        'image': 'assets/images/Aquarious.png',
        'title': 'Aqaurius',
        'color': Colors.blue,
        'route': const Aquar(),
      },
      {
        'image': 'assets/images/Pisces.png',
        'title': 'Pisces',
        'color': Colors.teal,
        'route': const Pisces(),
      },
    ];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => serviceData[index]['route']),
        );
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color.fromARGB(255, 126, 52, 40),
          borderRadius: BorderRadius.circular(10),
          // color: Colors.blue.shade100,
          border: Border.all(color: Colors.blue.shade100, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                serviceData[index]['image'],
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 2),
              Text(
                serviceData[index]['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAstrologerServices(BuildContext context, int index) {
    List<Map<String, dynamic>> serviceData = [
      {
        'image': 'assets/images/saurabh.jpg',
        'title': 'Saurabh',
        'subtitle': 'Rs 30/min',
        'color': Colors.blue,
        'route': const ProfileScreen(), 
      },
      {
        'image': 'assets/images/Monia.PNG',
        'title': 'Monia Singh',
        'subtitle': 'Rs 70/min',
        'color': Colors.green,
        'route': ProfileScreen3(),
      },
      {
        'image': 'assets/images/shashi.jpg',
        'title': 'Shashi',
        'subtitle': 'Rs 50/min',
        'color': Colors.orange,
        'route': ProfileScreen1(),
      },
      {
        'image': 'assets/images/Manish.JPG',
        'title': 'Manish',
        'subtitle': 'Rs 20/min',
        'color': Colors.purple,
        'route': ProfileScreen2(),
      },
      {
        'image': 'assets/images/women.png',
        'title': 'Sneha',
        'subtitle': 'Rs 20/min',
        'color': Colors.purple,
        'route': ProfileScreen4(),
      },
    ];

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => serviceData[index]['route'],
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          // color: Colors.blue.shade100,
          color: const Color.fromARGB(255, 207, 77, 57),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue.shade100, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  serviceData[index]['image'],
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover, // Ensures the image covers the circle
                ),
              ),
              const SizedBox(height: 2),
              // Container(
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: Colors.white,
              //     border: Border.all(color: serviceData[index]['color'], width: 2),
              //   ),
              //   width: MediaQuery.of(context).size.width * 0.06, // Adjust the width of the circular container dynamically
              //   height: MediaQuery.of(context).size.width * 0.06, // Adjust the height of the circular container dynamically
              //   child: Text(
              //     '*5', // Adjust the text as needed, e.g., '*5'
              //     style: TextStyle(
              //       fontSize: MediaQuery.of(context).size.width * 0.02, // Adjust the font size dynamically
              //       color: serviceData[index]['color'],
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 2),
              Text(
                serviceData[index]['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
              const SizedBox(height: 2),
              Text(
                serviceData[index]['subtitle'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     // Define what happens when the button is pressed.
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => serviceData[index]['route'],
              //       ),
              //     );
              //   },
              //   child: const Text('Connect'),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildtrendingconsultations(BuildContext context, int index) {
    List<Map<String, dynamic>> serviceData = [
      {
        'image': 'assets/images/health.png',
        'title': 'Health',
        'color': Colors.blue,
        'route': HealthConsultation(),
      },
      {
        'image': 'assets/images/education.png',
        'title': 'Education',
        'color': Colors.orange,
        'route': EducationAstrologyConsultation(),
      },
      {
        'image': 'assets/images/wealth.png',
        'title': 'Wealth',
        'color': Colors.purple,
        'route': WealthAstrologyConsultation()
      },
      {
        'image': 'assets/images/career.png',
        'title': 'Career',
        'color': Colors.green,
        'route': CareerAstrologyConsultation()
      },
      {
        'image': 'assets/images/love.png',
        'title': 'Realtionship',
        'color': Colors.red,
        'route': RelationshipAstrologyConsultation()
      },
    ];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => serviceData[index]['route']),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color.fromARGB(255, 207, 77, 57),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue.shade100, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                serviceData[index]['image'],
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 2),
              Text(
                serviceData[index]['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildbussiness(BuildContext context, int index) {
    List<Map<String, dynamic>> serviceData = [
      {
        'image': 'assets/images/Manish.JPG',
        'title': 'Manish',
        'subtitle': 'Rs 40/min',
        'color': Colors.blue,
        'route': ProfileScreen2(),
        // 'route': LibraPage(), // Make sure to replace with your actual route
      },
      {
        'image': 'assets/images/saurabh.jpg',
        'title': 'Saurabh',
        'subtitle': 'Rs 90/min',
        'color': Colors.orange,
        'route': const ProfileScreen(), // Make sure to replace with your actual route
      },
      {
        'image': 'assets/images/shashi.jpg',
        'title': 'Shashi',
        'subtitle': 'Rs 50/min',
        'color': Colors.purple,
        'route': ProfileScreen1(),
      },
      {
        'image': 'assets/images/Monia.PNG',
        'title': 'Monia',
        'subtitle': 'Rs 50/min',
        'color': Colors.purple,
        'route': ProfileScreen3(),
      },
    ];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => serviceData[index]['route']),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue.shade100, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                serviceData[index]['image'],
                height: 100,
                width: 120,
              ),
              const SizedBox(height: 2),
              Text(
                serviceData[index]['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                serviceData[index]['subtitle'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DiagonalGradientPainter extends CustomPainter {
  //app bar gradient color custom
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
        colors: [Colors.blue.shade900, Colors.white],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(const Rect.fromLTRB(0, 0, 350, 0));

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget _buildFilterChip(String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6.0),
    child: FilterChip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 207, 77, 57), // Default color for the chip
      selectedColor: Colors.blue, // Color when the chip is selected
      shape: const StadiumBorder(), // Rounded corners or CircleBorder for circular
      onSelected: (bool value) {
        // Handle chip selection if necessary
      },
    ),
  );
}

Widget _buildBlogItem(BuildContext context, int index) {
  List<Map<String, dynamic>> blogData = [
    {
      // 'image': 'assets/images/digital-edu.png',
      'title': 'Learn Astrology',
      'description': 'Rs 10,000 /-',
      'route': PayNow1(),
      'color': Colors.orange,
    },
    {
      // 'image': 'assets/images/skills.jpg',
      'title': 'Learn Numerology',
      'description': 'Rs 1999 /-',
      'route': PayNow1(),
      // 'route': PersonalInfoScreen1(),
      'color': Colors.orange,
    },
    {
      // 'image': 'assets/images/blog1.png',
      'description': 'Rs 499 /- ',
      'route': PayNow1(),
      // 'route': PersonalInfoScreen1(),
      'color': Colors.blue,
      'title': 'Get your numerology report',
    },
    {
      // 'image': 'assets/images/blog2.png',
      'title': 'Get your Career report',
      'description': 'Rs 199 /-',
      'route': PayNow1(),
      // 'route': PersonalInfoScreen1(),
      'color': Colors.orange,
    },
    {
      // 'image': 'assets/images/blog1.png',
      'title': 'Get your Marriage consultant report',
      'description': 'Rs 199 /- ',
      'route': PayNow1(),
      // 'route': PersonalInfoForm(),
      'color': Colors.blue,
    },
    {
      // 'image': 'assets/images/carrer-coaching.jpeg',
      'title': 'Get your personal kundli report',
      'description': 'Rs 399 /-',
      'route': PayNow1(),
      // 'route': const blog4(),
      'color': Colors.orange,
    },
    {
      // 'image': 'assets/images/adm-guid.png',
      'title': 'Get your 10 year Kundli report',
      'description': 'Rs 499 /-',
      'route': PayNow1(),
      // 'route': const blog5(),
      'color': Colors.orange,
    },
    {
      // 'image': 'assets/images/clg-logo.png',
      'title': 'Get your Gems report',
      'description': 'Rs 299 /-',
      'route': PayNow1(),
      // 'route': const blog6(),
      'color': Colors.orange,
    },

    {
      // 'image': 'assets/images/skills.jpg',
      'title': 'The Power of Self-Driven Extracurricular Activities',
      'description': 'Ms. Shriya Chourasiya                    April 05,2024 ',
      // 'route': const blog9(),
      'color': Colors.orange,
    },
    {
      // 'image': 'assets/images/educ.png',
      'title': 'Fulfilling Educational Dreams',
      'description': 'Mr. Saurabh Tiwari                       April 05,2024 ',
      // 'route': const blog10(),
      'color': Colors.orange,
    },
    // Add more blog data as needed
  ];

  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => blogData[index]['route']),
        );
      },
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: const Color.fromARGB(255, 239, 168, 127),
          // color: const Color.fromARGB(255, 239, 172, 110),
          // color: const Color(0xFF000080),
          color: const Color.fromARGB(255, 207, 77, 57),
        ),
        child: Column(
          children: [
            // Expanded(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(blogData[index]['image']),
            //         fit: BoxFit.cover,
            //       ),
            //       borderRadius: BorderRadius.circular(8.0),
            //     ),
            //     // Add any additional widgets here like badges, overlays, etc.
            //   ),
            // ),
            const SizedBox(height: 8),
            // Title (disabled)
            Text(
              blogData[index]['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                // color: Color.fromARGB(255, 7, 51, 85),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            // Description
            Text(
              blogData[index]['description'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                // color: Color.fromARGB(255, 7, 51, 85),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

 Widget _buildAstroRemedies(BuildContext context, int index) {
  // Sample data for images and text
  final List<Map<String, dynamic>> remedies = [
    {
      'image': 'assets/images/spell.jpg',
      'text': 'Spell',
      'route': const Spell(),
    },
    {
      'image': 'assets/images/poja.jpg',
      'text': 'Pooja',
      'route': const Pooja(),
    },
    {
      'image': 'assets/images/relationship.png',
      'text': 'Relationship',
      'route': const Relationship(),
    },
    {
      'image': 'assets/images/facereading.jpg',
      'text': 'Face Reading',
      'route': const EvilEye(),
    },
    {
      'image': 'assets/images/gemstone.png',
      'text': 'Gemstone',
      'route': const Relationship(),
    },
    {
      'image': 'assets/images/pakmistry.jpeg',
      'text': 'Palmistry',
      'route': const EvilEye(),
    },
    {
      'image': 'assets/images/rudraksha.png',
      'text': 'Rudraksha',
      'route': const Relationship(),
    },
    {
      'image': 'assets/images/namecorrection.jpg',
      'text': 'Name Correction',
      'route': const EvilEye(),
    },
  ];

  return InkWell(
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => remedies[index]['route']),
        );
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
                                  remedies[index]['image']!,
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
                                remedies[index]['text']!,
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
} 