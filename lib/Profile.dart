import 'package:astrology/PersonalInfo.dart';
import 'package:astrology/homepage.dart';
import 'package:astrology/login.dart';
import 'package:astrology/termspage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container(
            //   padding: const EdgeInsets.all(20.0),
            //   child: const Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       CircleAvatar(
            //         radius: 70,
            //         backgroundImage: AssetImage('assets/images/Profile.jpeg'),
            //       ),
            //       SizedBox(height: 30),
            //       Text(
            //         'Saurabh Tiwari',
            //         style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  // MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal:18),
              ),
              child: const ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
                  // MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal:18),
              ),
              child: const ListTile(
                leading: Icon(Icons.info),
                title: Text('Personal Info'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,

                //   MaterialPageRoute(builder: (context) => ProfileScreen()),
                // );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal:18),
              ),
              child: const ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Wallet'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AstrologersList()),
                // );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal:18),
              ),
              child: const ListTile(
                leading: Icon(Icons.support_agent_outlined),
                title: Text('Customer Support'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle tapping Feedback
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal:18),
              ),
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Handle tapping Feedback
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TermsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal:18),
              ),
              child: const ListTile(
                leading: Icon(Icons.description),
                title: Text('Terms and Conditions'),
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Logout"),
                      content: const Text("Are you sure you want to logout?"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // Close the dialog
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.black, // Text color
                              fontSize: 16.0, // Font size
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle logout action
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const loginpage()),
                            ); // Close the dialog
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white, // Text color
                              fontSize: 16.0, // Font size
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
              shadowColor: Colors.black45,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              // padding: const EdgeInsets.symmetric(vertical: 20.0),
            ).copyWith(
              elevation: ButtonStyleButton.allOrNull(0.0),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  return Colors.transparent;
                },
              ),
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.5,
                  minHeight: 50,
                ),
              child: const Text(
                'Logout',
                style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold // Font size
                    ),
              ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
