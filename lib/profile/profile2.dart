import 'package:astrology/Audiocall/audio_call.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen2(),
    );
  }
}

class ProfileScreen2 extends StatefulWidget {
  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  bool _isExpanded = false;
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 77, 57),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/images/Manish.JPG'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Manish',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8.0),
                      const Text('Vastu consultant, Vedic Astrologer'),
                      const SizedBox(height: 5.0),
                      const Text('English, Hindi'),
                      const SizedBox(height: 8.0),
                      const Row(
                        children: [
                          Text('27 yrs'),
                          SizedBox(width: 15),
                          Text('₹50/min'),
                          SizedBox(width: 20),
                          Text('Online',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Watch Intro'),
                      ),
                    ],
                  ),
                ],
              ),
              // About Me Section
              const SizedBox(height: 18.0),
              Card(
                color: Colors.yellow[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _isExpanded
                            ? 'Expert in Vastu consultation and Vedic Astrology. Gain insights in Hindi or English. Discover cosmic alignments for harmony in life. Resolve queries on career, relationships, and more. Book your session for personalized guidance. Unlock your potential with ancient wisdom tailored for modern living!'
                            : 'Expert in Vastu consultation and Vedic Astrology. Gain insights in Hindi or English. Discover cosmic alignments for harmony in life. Resolve queries on career, relationships, and more. Unlock ....',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8.0),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                        child: Text(
                          _isExpanded ? 'Read less' : 'Read more',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18.0),
              // Rating Overview
              const Text('Rating overview',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  const Text('4/5',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 15.0),
                  Column(
                    children: [
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(Icons.local_fire_department,
                                color: Colors.red[600])),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('348 Ratings',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              // Reviews Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    ReviewCard(
                        name: 'Pratibha',
                        review:
                            'Astrologer  gently answered to my questions and shared remedial advise...',
                        image: 'assets/images/Prathibha.PNG'),
                    ReviewCard(
                        name: 'Abha',
                        review:
                            'Amazing astrologer mostly all doubts are clear....',
                        image: 'assets/images/Abha.PNG'),
                    ReviewCard(
                        name: 'Monia Singh',
                        review:
                            'Astrologer not gently answered to my questions and don’t ever shared any remedial advise ....',
                        image: 'assets/images/Monia.PNG'),
                    ReviewCard(
                        name: 'Vatika',
                        review:
                            'He has revealed the problems and gave solutions to come out of it...',
                        image: 'assets/images/Vatika.PNG'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('See all reviews',
                    style: TextStyle(color: Colors.green)),
              ),
              const SizedBox(height: 18.0),
              //Report Section
              Card(
                color: const Color.fromARGB(255, 207, 77, 57),
                child: Column(
                  children: [
                    ReportRow(
                        title: '1 Year Education Report',
                        priceRange: '₹2923 - ₹5547'),
                    ReportRow(title: 'Saturn Transit Report', price: '₹3566'),
                    ReportRow(
                        title: '1 Year Professional Report', price: '₹3566'),
                    const SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('View all'),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              //More Astrologers Section
              const Text('More Astrologer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AstrologerCard(
                        name: 'Manish',
                        image: 'assets/images/Manish.JPG',
                        price: '₹40/min'),
                    const SizedBox(width: 8.0), // Add spacing between cards
                    AstrologerCard(
                        name: 'Monia',
                        image: 'assets/images/Monia.PNG',
                        price: '₹32/min'),
                    const SizedBox(width: 8.0), // Add spacing between cards
                    AstrologerCard(
                        name: 'Pratibha',
                        image: 'assets/images/Prathibha.PNG',
                        price: '₹90/min'),

                    const SizedBox(width: 8.0),
                    AstrologerCard(
                        name: 'Vatika',
                        image: 'assets/images/Vatika.PNG',
                        price: '₹70/min'),
                    const SizedBox(width: 8.0),
                    AstrologerCard(
                        name: 'ShashiKant',
                        image: 'assets/images/Shahsi.jpg',
                        price: '₹50/min'),
                  ],
                ),
              ),
              const SizedBox(height: 18.0),
              //Chat and Call Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AudioCallingScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // White background color
                      shadowColor: Colors.grey, // Shadow color
                      elevation: 4.0, // Elevation for the shadow effect
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize
                          .min, // Ensures the button size adapts to content
                      children: [
                        Icon(
                          Icons.chat,
                          size: 18.0,
                          color: Colors.green,
                        ), // Chat icon
                        SizedBox(width: 8.0), // Space between icon and text
                        Text(
                          'Chat',
                          style: TextStyle(color: Colors.green, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const AudioCallingScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // White background color
                      shadowColor: Colors.grey, // Shadow color
                      elevation: 4.0, // Elevation for the shadow effect
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize
                          .min, // Ensures the button size adapts to content
                      children: [
                        Icon(
                          Icons.call,
                          size: 18.0,
                          color: Colors.green,
                        ), // Chat icon
                        SizedBox(width: 8.0), // Space between icon and text
                        Text(
                          'Call',
                          style: TextStyle(color: Colors.green, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18.0),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String review;
  final String image;

  ReviewCard(
      {super.key,
      required this.name,
      required this.review,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: const Color.fromARGB(255, 207, 77, 57),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(image),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              review,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ReportRow extends StatelessWidget {
  final String title;
  final String? priceRange;
  final String? price;

  ReportRow({super.key, required this.title, this.priceRange, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (priceRange != null)
            Text(
              priceRange!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          else if (price != null)
            Text(
              price!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}

class AstrologerCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  AstrologerCard(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              price,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
