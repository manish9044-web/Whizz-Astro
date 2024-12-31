import 'package:flutter/material.dart';

void main() {
  runApp(CareerAstrologyConsultation());
}

class CareerAstrologyConsultation extends StatelessWidget {
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
          'Career Astrology Consultation',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(),
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
                      icon: Icons.work,
                      label: 'Career Astro\n   Services',
                      count: '9+ Services'),
                  CategoryItem(
                      icon: Icons.local_offer,
                      label: ' Combine\nPackages',
                      count: '20+ Packages'),
                ],
              ),
              SizedBox(height: 32),
              Text('Career Consultation For Fields -- ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeelingItem(label: 'Technology', emoji: '💻'),
                  FeelingItem(label: 'Finance', emoji: '💼'),
                  FeelingItem(label: 'Healthcare', emoji: '🩺'),
                  FeelingItem(label: 'Education', emoji: '📚'),
                ],
              ),
              SizedBox(height: 32),
              Text('Services',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              ServiceItem(name: 'Career Horoscope', price: 500),
              ServiceItem(name: 'Career Predictions', price: 700),
              ServiceItem(name: 'Job Transition Guidance', price: 1000),
              ServiceItem(name: 'Astrological Career Advice', price: 1200),
              ServiceItem(name: 'Career Rituals', price: 1500),
              ServiceItem(name: 'Lunar Career Insights', price: 1800),
              ServiceItem(name: 'Astrological Remedies', price: 2000),
              ServiceItem(
                  name: 'Personalized Career Consultation', price: 3000),

              // Add more services here as needed
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
        leading: Image.asset('assets/images/CarrerConsultation.PNG',
            width: 50), // Example image asset
        title: Text(name, style: TextStyle(color: Colors.white)),
        subtitle: Text('\Rs$price', style: TextStyle(color: Colors.grey)),
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
      body: Center(
        child: Text('Details for service: $serviceName',
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
