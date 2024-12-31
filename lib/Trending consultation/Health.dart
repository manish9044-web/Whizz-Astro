import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HealthConsultation());
}

class HealthConsultation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blue[800],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Health Consultation',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                      icon: Icons.person,
                      label: 'Astrologer',
                      count: '50+ Astrologer'),
                  CategoryItem(
                      icon: Icons.mouse_rounded,
                      label: 'Health Astro\n   Services',
                      count: '9+ Services'),
                  CategoryItem(
                      icon: Icons.local_offer,
                      label: ' Combine\n Packages',
                      count: '20+ Packages'),
                ],
              ),
              SizedBox(height: 32),
              Text('Health Consultation For Diseases -- ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeelingItem(label: 'Cancer', emoji: '🤧'),
                  FeelingItem(label: 'Diabetes', emoji: '🤒'),
                  FeelingItem(label: 'Migraine', emoji: '🤕'),
                  FeelingItem(label: 'Heart Diseases', emoji: '❤️'),
                ],
              ),
              SizedBox(height: 32),
              Text('Services',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              ServiceItem(name: 'Health Horoscope', price: 500),
              ServiceItem(name: 'Health Predictions', price: 700),
              ServiceItem(name: 'Holistic Healing', price: 1000),
              ServiceItem(name: 'Astrological Diet Advice', price: 1200),
              ServiceItem(name: 'Wellness Rituals', price: 1500),
              ServiceItem(name: 'Lunar Health Insights', price: 1800),
              ServiceItem(name: 'Astrological Remedies', price: 2000),
              ServiceItem(
                  name: 'Personalized Health Consultation', price: 3000),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String count;

  CategoryItem({required this.icon, required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryPage(label: label)),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[800],
            child: Icon(icon, size: 30, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(color: Colors.white)),
          SizedBox(height: 4),
          Text(count, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class FeelingItem extends StatelessWidget {
  final String label;
  final String emoji;

  FeelingItem({required this.label, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FeelingPage(feeling: label)),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[800],
            child: Text(emoji, style: TextStyle(fontSize: 24)),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String name;
  final double price;

  ServiceItem({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ServicePage(serviceName: name)),
        );
      },
      child: ListTile(
        leading: Image.asset('assets/images/HealthConsultation.PNG',
            width: 50), // Example image asset
        title: Text(name, style: TextStyle(color: Colors.white)),
        subtitle: Text('₹$price', style: TextStyle(color: Colors.grey)),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ServicePage(serviceName: name)),
            );
          },
          child: Text('Book'),
        ),
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String label;

  CategoryPage({required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Center(
        child: Text('Details for $label', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class FeelingPage extends StatelessWidget {
  final String feeling;

  FeelingPage({required this.feeling});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(feeling),
      ),
      body: Center(
        child: Text('Details for feeling: $feeling',
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class ServicePage extends StatelessWidget {
  final String serviceName;

  ServicePage({required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceName),
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('services').doc(serviceName).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('No data available for this service'));
          }

          var serviceData = snapshot.data!.data() as Map<String, dynamic>;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Details for service: $serviceName', style: TextStyle(fontSize: 24)),
                SizedBox(height: 16),
                Text('Description: ${serviceData['description']}', style: TextStyle(fontSize: 18)),
                SizedBox(height: 16),
                Text('Price: ₹${serviceData['price']}', style: TextStyle(fontSize: 18)),
                // Add more fields as needed
              ],
            ),
          );
        },
      ),
    );
  }
}
