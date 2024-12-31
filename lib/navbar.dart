import 'dart:io';
import 'package:astrology/PersonalInfo.dart';
import 'package:astrology/homepage.dart';
import 'package:astrology/login.dart';
import 'package:astrology/commingsoon.dart';
import 'package:astrology/setting.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  File? pickedImage;
  String? imagePath;
  String? _userName;

  @override
  void initState(){
    super.initState();
    _loadImage();
  }

  // Load image path from shared preferences
  Future<void> _loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    final savedPath = prefs.getString('imagePath');
    if (savedPath != null && File(savedPath).existsSync()) {
      setState(() {
        pickedImage = File(savedPath);
      });
    }
  }

  // Save image path to shared preferences
  Future<void> _saveImage(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('imagePath', path);
  }

  // Pick image from camera or gallery
  Future<void> pickImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          pickedImage = File(pickedFile.path);
        });
        await _saveImage(pickedFile.path);
      }
    } catch (e) {
      print("Image picker error: $e");
    }
  }
  
  // Future<void> pickImage(ImageSource source) async {
  //   try {
  //     final pickedFile = await ImagePicker().pickImage(source: source);
  //     if (pickedFile != null) {
  //       setState(() {
  //         pickedImage = File(pickedFile.path);
  //       });
  //     }
  //   } catch (e) {
  //     print("Image picker error: $e");
  //   }
  // }

  void showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 220,
          child: Column(
            children: [
              const Text(
                'Pic Image From',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Camera"),
                onTap: () {
                  Navigator.of(context).pop();
                  pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text("Gallery"),
                onTap: () {
                  Navigator.of(context).pop();
                  pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.close),
                title: const Text("Cancel"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87, width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: ClipOval(
                    child: GestureDetector(
                      onTap: showImagePickerOptions,
                      child: pickedImage != null
                          ? Image.file(
                              pickedImage!,
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            )
                          : IconButton(
                              onPressed: showImagePickerOptions,
                              icon: const Icon(
                                Icons.add_a_photo_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'User Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(' Home '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' Profile '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.support_agent),
            title: const Text(' Customer Support '),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ComingSoon()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.wallet_outlined),
            title: const Text(' Wallet '),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ComingSoon()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.file_copy_outlined),
            title: const Text(' Terms & Conditions '),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ComingSoon()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(' About Us '),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ComingSoon()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(' Settings '),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TextButton(
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
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
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
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              // ignore: sort_child_properties_last
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Logout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(width: 10),
                  Icon(Icons.logout_outlined),
                ],
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue.shade900,
                padding: const EdgeInsets.all(16),
                side: BorderSide(
                  color: Colors.blue.shade900,
                  width: 2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Column(
            children: [
              Text(
                'Available On',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/images/facebook.png',
                  width: 20,
                  height: 20,
                ),
                onPressed: () {
                  print('Facebook icon pressed!');
                },
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/twitter.png',
                  width: 20,
                  height: 20,
                ),
                onPressed: () {
                  print('Twitter icon pressed!');
                },
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/instagram.png',
                  width: 20,
                  height: 20,
                ),
                onPressed: () {
                  print('Instagram icon pressed!');
                },
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/youtube.png',
                  width: 20,
                  height: 20,
                ),
                onPressed: () {
                  print('Youtube icon pressed!');
                },
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/linkedin.png',
                  width: 20,
                  height: 20,
                ),
                onPressed: () {
                  print('Linkedin icon pressed!');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
