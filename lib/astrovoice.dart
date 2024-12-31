import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AstrologersVoice(),
    );
  }
}

class AstrologersVoice extends StatelessWidget {
  final List<Map<String, dynamic>> astrologers = [
    
    {
      'name': 'Monia Singh',
      'skills': 'Vedic Astrology, Tarot Card +2 more',
      'languages': 'Hindi, English',
      'experience': '10 years',
      'rate': '115/min',
      'status': 'Online',
      'availability': true,
      'rating': 5.0,
      'image': 'assets/images/Monia.PNG'
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
      'skills': 'Vasthu consultation, Vedic Astrology +7 more',
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
      'skills': 'Vasthu consultation, Vedic Astrology +7 more',
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
      'skills': 'Vasthu consultation, Vedic Astrology +7 more',
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
      'skills': 'Vasthu consultation, Vedic Astrology +7 more',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Astrologers list'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  _buildFilterChip('Hindi'),
                  _buildFilterChip('English'),
                  _buildFilterChip('Online'),
                  _buildFilterChip('Offline'),
                  _buildFilterChip('Highest to Lowest'),
                  _buildFilterChip('Lowest to Highest'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: astrologers.length,
        itemBuilder: (context, index) {
          return _buildAstrologerCard(astrologers[index]);
        },
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: FilterChip(
        label: Text(label),
        onSelected: (bool value) {},
      ),
    );
  }

  Widget _buildAstrologerCard(Map<String, dynamic> astrologer) {
    return Card(
      margin: const EdgeInsets.all(10.0),
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
                // IconButton(
                //   icon: const Icon(Icons.chat),
                //   onPressed: () {},
                // ),
                // const SizedBox(height: 25.0),
                IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
