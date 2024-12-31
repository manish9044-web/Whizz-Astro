import 'package:astrology/AstroService/chatroom.dart';
import 'package:astrology/Audiocall/audio_call.dart';
import 'package:astrology/commingsoon.dart';
import 'package:astrology/homepage.dart';
import 'package:astrology/remedies/remedies.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> _allItems = [
    {'name': 'Call', 'image': 'assets/images/call.png'},
    {'name': 'Chat', 'image': 'assets/images/chat.png'},
    {'name': 'Wallet', 'image': 'assets/images/wallet.png'},
    {'name': ' Training \n  videos', 'image': 'assets/images/training.png'},
    {'name': 'Support', 'image': 'assets/images/support.png'},
    {'name': 'Profile', 'image': 'assets/images/profile.png'},
    {'name': 'Settings', 'image': 'assets/images/settings.png'},
    {'name': '  Suggested \n  Remedies', 'image': 'assets/images/kundli.png'},
    {'name': 'Feedback', 'image': 'assets/images/feedback.png'},
    {'name': 'Language', 'image': 'assets/images/language1.png'},
    {'name': 'Bank Details', 'image': 'assets/images/bank.png'},
    {'name': '  Terms & \nConditions', 'image': 'assets/images/terms.png'},
    {'name': 'Privacy Policy', 'image': 'assets/images/terms.png'},
    {'name': 'Waitlist', 'image': 'assets/images/waitlist.png'},
    {'name': 'Calendar', 'image': 'assets/images/calendar.png'},
    {'name': 'Coupon', 'image': 'assets/images/coupons.png'},
    {'name': 'Followers', 'image': 'assets/images/followers.png'},
    {'name': '       Update \nPhone Number', 'image': 'assets/images/phone1.png'},
  ];
  List<Map<String, String>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems.addAll(_allItems);
    _searchController.addListener(() {
      _filterItems(_searchController.text);
    });
  }

  void _filterItems(String query) {
    List<Map<String, String>> _searchResults = [];
    if (query.isNotEmpty) {
      _searchResults = _allItems
          .where((item) =>
              item['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      _searchResults = _allItems;
    }
    setState(() {
      _filteredItems = _searchResults;
    });
  }

  void _onItemTapped(String item) {
    switch (item) {
      case 'Call':
        // Navigate to Call Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AudioCallingScreen()),
      );
        break;
      case 'Chat':
        // Navigate to Chat Screen
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Chatroom()),
      );
        break;
      case 'Wallet':
        // Navigate to Wallet Screen
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Training \n  videos':
        // Navigate to Training Videos Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Support':
        // Navigate to Support Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Profile':
        // Navigate to Profile Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Settings':
        // Navigate to Settings Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case '  Suggested \n  Remedies':
        // Navigate to Suggested Remedies Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Remedies()),
      );
        break;
      case 'Feedback':
        // Navigate to Feedback Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Language':
        // Navigate to Language Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Bank Details':
        // Navigate to Bank Details Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case '  Terms & \nConditions':
        // Navigate to Terms & Conditions Screen
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
        break;
      case 'Privacy Policy':
       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ComingSoon()),
      );
    }
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('You tapped on $item'),
    //   ),
    // );
    // You can add your navigation or other logic here
  }

  void _clearSearch() {
    _searchController.clear();
    _filterItems('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (Route<dynamic> route) => false, // Remove all previous routes
            );
          },
        ),
        // title: const Text('Search Bar Example'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter search term',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _clearSearch,
                      )
                    : null,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of items per row
                    crossAxisSpacing: 8.0, // Spacing between columns
                    mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () =>
                          _onItemTapped(_filteredItems[index]['name']!),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 172, 110),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              _filteredItems[index]['image']!,
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _filteredItems[index]['name']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Search(),
  ));
}
