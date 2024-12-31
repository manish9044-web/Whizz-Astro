import 'package:flutter/material.dart';

void main() {
  runApp(const ReportHomePage());
}

class ReportHomePage extends StatelessWidget {
  const ReportHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Home Page',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    FoldersPage(),
    const AstrologicalEducationalReportPage(),
    const AstrologicalProfessionalReport(),
    const HoroscopeChartPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 50), label: 'Reports'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cast_for_education_sharp, size: 50),
              label: 'Educational Report'),
          BottomNavigationBarItem(
              icon: Icon(Icons.work, size: 50), 
              label: 'Professional Report'),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined, size: 50),
              label: 'HoroscopeChartPage'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        iconSize: 45, // Make the icons very large
        selectedLabelStyle: const TextStyle(
          color: Colors.green,
          fontSize: 16, // Increase the font size of the labels
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}

class FoldersPage extends StatelessWidget {
  final List<Map<String, String>> folders = [
    {
      'title': 'Educational One Year Report ',
      'image': 'assets/images/EducationReport.jpg'
    },
    {
      'title': 'Professional One Year Report',
      'image': 'assets/images/CareerReport.jpg'
    },
    {'title': 'HoroscopeChartPage', 'image': 'assets/images/saturn.png'},
  ];

  FoldersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: folders.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContentPage(folders[index]['title']!),
              ),
            ),
            child: Card(
              elevation: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    folders[index]['image']!,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    folders[index]['title']!,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AstrologicalEducationalReportPage extends StatelessWidget {
  const AstrologicalEducationalReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Astrological Educational Report'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Astrological Educational Report for Saurabh: Final Year Engineering Student',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text('Date: May 28, 2024',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Text(
                      'Overview\nAs you enter your final year of engineering, the stars and planets have significant influences on your academic and personal life. This report will provide insights into your educational journey over the next year, focusing on your studies, career prospects, and personal growth.',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(height: 16),
                  Text(
                      'Key Astrological Influences\nJupiter in Aries (Until October 2024): Jupiter, the planet of expansion and higher learning, will be in Aries, encouraging you to take bold steps in your education. You might feel a surge of confidence and ambition, pushing you to excel in your studies and explore new opportunities.\nSaturn in Pisces (All Year): Saturn\'s influence in Pisces emphasizes discipline and hard work. This period may require you to be more organized and diligent in your studies, ensuring that you balance your workload effectively.',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(height: 16),
                  Text(
                      'Monthly Breakdown\nJune 2024:\nFocus: Coursework and project planning.\nAdvice: Jupiter\'s influence will help you grasp complex concepts easily. Take advantage of this period to start working on major projects and assignments.\nJuly 2024:\nFocus: Practical applications and internships.\nAdvice: Seek out internships or practical experiences that complement your studies. Networking during this time can open doors to future career opportunities.\nAugust 2024:\nFocus: Mid-term assessments and Mercury',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AstrologicalProfessionalReport extends StatelessWidget {
  const AstrologicalProfessionalReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Astrological Professional Report'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Astrological Professional Report for Saurabh',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Date: May 28, 2024\n\nOverview:\nAs you embark on your professional journey as a Software Developer at SSMS Software Solutions, the stars and planets hold significant influences on your career and personal growth over the next year. This report will provide insights into your professional journey, focusing on career development, opportunities, and challenges.\n\nKey Astrological Influences:\nJupiter in Aries (Until October 2024): Jupiter\'s presence in Aries boosts your ambition and confidence, encouraging you to take on new challenges and expand your skill set. This is a favorable time for career growth and innovation.\n\nSaturn in Pisces (All Year): Saturn\'s influence in Pisces highlights the importance of discipline and structure. You may need to establish clear goals and work diligently towards them, ensuring steady progress in your career.\n\nMercury Retrogrades (April, August, December 2024): Mercury retrogrades can cause communication issues and delays. During these periods, be cautious with project deadlines, client communications, and avoid major launches or changes.\n\nMonthly Breakdown:\nJune 2024:\nFocus: Skill development and learning.\nAdvice: Leverage Jupiter\'s influence to enroll in courses or certifications that enhance your technical skills. Embrace opportunities to learn new programming languages or technologies.\n\nJuly 2024:\nFocus: Team collaboration and projects.\nAdvice: Work closely with your team on key projects. Your collaborative efforts will lead to successful outcomes. Networking within the company can also open doors to new opportunities.\n\nAugust 2024:\nFocus: Mercury retrograde and careful planning.\nAdvice: Be meticulous with your work as Mercury\'s retrograde can cause misunderstandings. Double-check code, document everything clearly, and avoid starting new projects.\n\nSeptember 2024:\nFocus: Innovation and creative solutions.\nAdvice: Use this period to brainstorm and propose innovative solutions to existing problems. Your creativity will be highly valued, and you might impress your superiors with your proactive approach.\n\nOctober 2024:\nFocus: Career advancement and Jupiter in Taurus.\nAdvice: As Jupiter transitions into Taurus, focus on practical and sustainable career growth. This is a good time to seek promotions or take on additional responsibilities that showcase your leadership skills.\n\nNovember 2024:\nFocus: Performance reviews and feedback.\nAdvice: Prepare for performance reviews by highlighting your achievements and contributions. Use feedback constructively to set new goals and improve your performance.\n\nDecember 2024:\nFocus: Mercury retrograde and project revisions.\nAdvice: Revisit and revise ongoing projects. Mercury\'s retrograde may reveal overlooked issues, so take this time to fine-tune your work and ensure everything is up to standard.\n\nJanuary 2025:\nFocus: Strategic planning and new goals.\nAdvice: Start the year by setting clear career goals and developing a strategic plan to achieve them. Seek mentorship or guidance from experienced colleagues to help you navigate your career path.\n\nFebruary 2025:\nFocus: Major projects and client interactions.\nAdvice: Focus on delivering high-quality work on major projects. Strengthen your relationships with clients through effective communication and timely delivery of solutions.\n\nMarch 2025:\nFocus: Recognition and rewards.\nAdvice: Your hard work is likely to be recognized during this period. Celebrate your achievements and continue to build on your success. This is also a good time to seek new challenges and responsibilities.\n\nApril 2025:\nFocus: Mercury retrograde and careful communication.\nAdvice: Be extra cautious with client communications and project deadlines. Use this time to revisit long-term goals and make necessary adjustments to your plans.\n\nMay 2025:\nFocus: Reflection and future planning.\nAdvice: Reflect on your professional journey over the past year. Assess your progress, acknowledge your achievements, and set new goals for the coming year. This is a good time to plan for future career advancements and skill development.\n\nConclusion:\nThe coming year will be marked by significant professional growth and opportunities. The astrological influences suggest a period of innovation, collaboration, and careful planning. Stay disciplined, embrace new challenges, and trust in your abilities. The stars are aligned to guide you towards success in your role at SSMS Software Solutions.\n\nWishing you a stellar year ahead, Saurabh!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HoroscopeChartPage extends StatelessWidget {
  const HoroscopeChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Horoscope Chart for Saurabh',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Nakshatra Birth Chart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  _showImageDialog(context, 'assets/images/Nakshtra.jpeg.jpg');
                },
                child: Container(
                  height: 200, // Adjust the height as needed
                  width: double.infinity,
                  color:
                      Colors.white, // Background color for the image container
                  child: Image.asset(
                    'assets/images/Nakshtra.jpeg', // Path to your image asset
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'Birth Chart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  _showImageDialog(context, 'assets/images/Birthchart.jpg');
                },
                child: Container(
                  height: 200, // Adjust the height as needed
                  width: double.infinity,
                  color:
                      Colors.white, // Background color for the image container
                  child: Image.asset(
                    'assets/images/Birthchart.jpg', // Path to your image asset
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Element Chart Text Section
              const Text(
                'Element Chart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  _showImageDialog(context, 'assets/images/Element chart.jpg');
                },
                child: Container(
                  height: 200, // Adjust the height as needed
                  width: double.infinity,
                  color:
                      Colors.white, // Background color for the image container
                  child: Image.asset(
                    'assets/images/Element chart.jpg', // Path to your image asset
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Nakshatra Birth Chart Text Section
              // Birth Vedic Text Section
              const Text(
                'Birth Vedic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  _showImageDialog(context, 'assets/images/Birth vedic.webp');
                },
                child: Container(
                  height: 200, // Adjust the height as needed
                  width: double.infinity,
                  color:
                      Colors.white, // Background color for the image container
                  child: Image.asset(
                    'assets/images/Birth vedic.webp', // Path to your image asset
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to show image in a dialog
  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContentPage extends StatelessWidget {
  final String title;

  const ContentPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Content for $title',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    'If your $title report is already generated, go back and navigate to the report section to see your generated report.',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 46),
                  const Text(
                    'Connect with the Astrologer for further insights and guidance.',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
