import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<Map<String, String>> _allItems = [
    {'name': '   Update \nPhone Number', 'image': 'assets/images/phone1.png'},
    {'name': 'Coupon', 'image': 'assets/images/coupons.png'},
    {'name': '  Terms &\nConditions', 'image': 'assets/images/terms.png'},
    {'name': 'Bank Details', 'image': 'assets/images/bank.png'},
    {'name': 'Followers', 'image': 'assets/images/followers.png'},
    {'name': 'Support', 'image': 'assets/images/support1.png'},
    {'name': 'Wallet', 'image': 'assets/images/wallet.png'},
    {'name': 'Feedback', 'image': 'assets/images/feedback.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontSize = screenWidth * 0.04; // Adjust font size based on screen width

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(), // Disable GridView scrolling
            shrinkWrap: true, // Make GridView as small as possible
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10, // Horizontal spacing between items
              mainAxisSpacing: 10, // Vertical spacing between items
              childAspectRatio: 1, // Aspect ratio of each item
            ),
            itemCount: _allItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle navigation or actions
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 207, 77, 57),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.0,
                        spreadRadius: 2.0,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        _allItems[index]['image']!,
                        height: 70,
                        width: 70,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _allItems[index]['name']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2, // Ensure text wraps to the next line
                        overflow: TextOverflow.ellipsis, // Handle overflow
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Settings(),
  ));
}
