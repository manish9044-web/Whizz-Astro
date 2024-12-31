import 'package:astrology/AstroService/chatroom.dart';
import 'package:astrology/Audiocall/audio_call.dart';
import 'package:astrology/profile/ProfileFull.dart';
import 'package:astrology/profile/profile1.dart';
import 'package:astrology/profile/profile2.dart';
import 'package:astrology/profile/profile3.dart';
import 'package:astrology/profile/profile4.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatList(),
    );
  }
}

class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> astrologers = [
    {
      'name': 'Saurabh Tiwari',
      'skills': 'Vastu consultation, Vedic Astrology +7 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '30/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/AstroProfile.jpg'
    },
    {
      'name': 'Monia Singh',
      'skills': 'Vedic Astrology, Life Astrology +2 more',
      'languages': 'Hindi, English',
      'experience': '10 years',
      'rate': '115/min',
      'status': 'Offline',
      'availability': false,
      'rating': 5.0,
      'image': 'assets/images/Monia.PNG'
    },
    {
      'name': 'Manish Gupta',
      'skills': 'Life Astrology, Planetary Aspects +2 more',
      'languages': 'English, Hindi +1 more',
      'experience': '5 years',
      'rate': '75/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/Manish.JPG'
    },
    {
      'name': 'ShashiKant Giri',
      'skills': 'Vedic Astrology, Numerology +2 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '75/min',
      'status': 'Offline',
      'availability': false,
      'rating': 5.0,
      'image': 'assets/images/Shahsi.jpg'
    },
    {
      'name': 'Pratibha',
      'skills': 'Vastu consultation, Vedic Astrology +7 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '30/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/Prathibha.PNG'
    },
    {
      'name': 'Vatika',
      'skills': 'Vastu consultation, Vedic Astrology +7 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '30/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/Vatika.PNG'
    },
    {
      'name': 'Abha',
      'skills': 'Vedic Astrology, Numerology +2 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '75/min',
      'status': 'Offline',
      'availability': false,
      'rating': 5.0,
      'image': 'assets/images/Abha.PNG'
    },
    {
      'name': 'Shubham Sharma',
      'skills': 'Vastu consultation, Vedic Astrology +7 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '30/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/Shubham.PNG'
    },
    {
      'name': 'Dharmendra',
      'skills': 'Vastu consultation, Vedic Astrology +7 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '30/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/Dharmendra.PNG'
    },
    {
      'name': 'Pankaj Padol',
      'skills': 'Vedic Astrology, Numerology +2 more',
      'languages': 'English, Hindi +1 more',
      'experience': '2 years',
      'rate': '75/min',
      'status': 'Offline',
      'availability': false,
      'rating': 5.0,
      'image': 'assets/images/Pankaj.jpg'
    }
  ];
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 77, 57),
        title: const Text('Astrologers list'),
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(50.0),
        //   child: Column(
        //     children: [
        //       const SizedBox(height: 10,),
        //       Container(
        //         color: Colors.white,
        //         padding: const EdgeInsets.symmetric(vertical: 5.0), 
        //         child: SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             children: <Widget>[
        //               // const SizedBox(width: 10.0),
        //               _buildFilterChip('Hindi'),
        //               _buildFilterChip('English'),
        //               _buildFilterChip('Online'),
        //               _buildFilterChip('Offline'),
        //               _buildFilterChip('Highest to Lowest'),
        //               _buildFilterChip('Lowest to Highest'),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
      body: ListView.builder(
        itemCount: astrologers.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              switch (index) {
                case 0:
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
            break;
            case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen3(),
              ),
            );
            break;
            case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen2(),
              ),
            );
            break;
            case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen1(),
              ),
            );
            break;
            case 4:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen4(),
              ),
            );
            break;
              }
            },
            child: _buildAstrologerCard(astrologers[index], context),
          );
        },
      ),
    );
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

  Widget _buildAstrologerCard(Map<String, dynamic> astrologer, BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      color: const Color.fromARGB(255, 255, 185, 175),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 120.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(astrologer['image']),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                    8.0), // For rounded corners, remove this line for a perfect square
              ),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    astrologer['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    astrologer['skills'],
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    astrologer['languages'],
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    '${astrologer['experience']} | ${astrologer['rate']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Text(
                    astrologer['status'],
                    style: TextStyle(
                      color: astrologer['availability']
                          ? Colors.green
                          : Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.chat,
                  color: Colors.green,
                  size: 30.0,
                ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Chatroom(),
                      ),
                    );
                  },
                ),
                // const SizedBox(height: 25.0),
                // IconButton(
                //   icon: const Icon(Icons.call,
                //   color: Colors.green,
                //   size: 30.0,
                // ),
                //   onPressed: () {
                //     // Call the astrologer
                //     // Add your call logic here
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const AudioCallingScreen(),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
