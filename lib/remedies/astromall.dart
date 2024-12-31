import 'dart:async';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter News Bulletin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Astromall(),
    );
  }
}

class Astromall extends StatefulWidget {
  const Astromall({super.key});

  @override
  State<Astromall> createState() => _AstromallState();
}

class _AstromallState extends State<Astromall> {
  List<Map<String, dynamic>> astroData =[
    {
      "title": "Astro News Bulletin",
      "imageAsset": "palmistrylanding.png",
      "description": "Astro News Bulletin",
      'fullUrl': "full_astro_url_1",
    },
    {
      "title": "Astro News Bulletin",
      "imageAsset": "kundlimatchinglndling.jpg",
      "description": "Astro News Bulletin",
      'fullUrl': "full_astro_url_1",
    },
    {
      "title": "Astro News Bulletin",
      "imageAsset": "gemstonelnding.png",
      "description": "Astro News Bulletin",
      'fullUrl': "full_astro_url_1",
    },
    {
      "title": "Astro News Bulletin",
      "imageAsset": "evileyelnding.png",
      "description": "Astro News Bulletin",
      'fullUrl': "full_astro_url_1",
    }
  ];

  int _currentIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < astroData.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: astroData.length,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){},
                  child: Container(
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/${astroData[index]['imageAsset']}',
                          height: 140,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                );
              }
              ),
              ),
                Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ), 
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < astroData.length; i++) {
      indicators.add(i == _currentIndex
          ? _activePageIndicator()
          : _inactivePageIndicator());
    }
    return indicators;
  }

  Widget _activePageIndicator() {
    return Container(
      width: 12.0,
      height: 12.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }

  Widget _inactivePageIndicator() {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }


}