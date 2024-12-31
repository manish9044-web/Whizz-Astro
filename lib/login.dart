import 'package:astrology/otp.dart';
import 'package:astrology/termspage.dart';
import 'package:astrology/utils/utils.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:astrology/utils/utils.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final phoneNumberController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  final _auth = FirebaseAuth.instance;
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');
  // get verificationId => null;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double logoHeight = screenSize.height * 0.3;
    final double buttonWidth = screenSize.width * 0.8;
    final double buttonHeight = screenSize.height * 0.07;

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 207, 77, 57),
        // color: const Color.fromARGB(255, 238, 229, 229),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: 200,
            //   height: 250,
            //   padding: EdgeInsets.all(20),
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: const Color.fromARGB(255, 183, 171, 171)
            //   ),
            //   child: Image.asset("assets/images/logo.png",
            //   ),
            //   ),
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset(
                  'assets/images/whizzastro.png',
                  fit: BoxFit.contain,
                  height: logoHeight,
                  // width: 250,
                ),
              ),
            ),
            // const Text('Astro',
            // style: TextStyle(
            //   color: Colors.black,
            //   fontSize: 40,
            //   fontWeight: FontWeight.bold,
            // ),
            // ),

            const SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Add your phone number, We'll send you a verification code",
                style: TextStyle(
                    fontSize: 16,
                    // color: Color.fromARGB(255, 7, 51, 85),
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.purple,
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      labelText: "Phone Number",
                      // prefixText: "+${selectedCountry.phoneCode}",
                      // prefixStyle: TextStyle(
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w400,
                      //   color: Colors.white,
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.white38,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.white38,
                          width: 2,
                        ),
                      ),
                      labelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          // color: Color.fromARGB(255, 7, 51, 85),
                          color: Colors.white
                          ),
                      hintStyle: const TextStyle(color: Colors.white),
                      suffixIcon: const Icon(
                        Icons.call,
                        // color: Color.fromARGB(255, 7, 51, 85),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "*Please use prefix +91",
                      style: TextStyle(
                          fontSize: 12,
                          // color: Color.fromARGB(255, 7, 51, 85),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // String fullPhoneNumber = "+${selectedCountry.phoneCode}${phoneNumberController.text.trim()}";
                        // phoneNumber: phoneNumberController.text;
                        _auth.verifyPhoneNumber(
                            phoneNumber: phoneNumberController.text,
                            verificationCompleted: (PhoneAuthCredential
                                phoneAuthCredential) async {
                              await _auth
                                  .signInWithCredential(phoneAuthCredential);
                            },
                            verificationFailed: (e) {
                              Utils().toastMessage(e.toString());
                            },
                            codeSent: (String verificationId, int? token) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpPage(
                                          verificationId: verificationId,
                                        )),
                              );
                            },
                            codeAutoRetrievalTimeout: (e) {
                              Utils().toastMessage(e.toString());
                            });
                      },
                      label: const Text(
                        'Get Code',
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 51, 85),
                          // color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      icon: const Icon(
                        Icons.arrow_right_alt,
                        // color: Colors.blue,
                        color: Color.fromARGB(255, 7, 51, 85),
                      ),
                      // style: ElevatedButton.styleFrom(
                      //   primary: Colors.blue,
                      //   onPrimary: Colors.white,),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                        text: 'By Signing up, you agree to our  ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 51, 85),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                          text: 'Terms and Conditions',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TermsPage()));
                            }),
                      const TextSpan(
                        text: ' and  ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 7, 51, 85),
                        ),
                      ),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TermsPage()));
                            }),
                    ]),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    try {
      // Your existing authentication logic...

      // After successful login, fetch user profile from Firestore
      DocumentSnapshot userProfile =
          await _usersCollection.doc(phoneNumberController.text).get();

      // Example: Retrieve and print user's name
      if (userProfile.exists) {
        // Check if userProfile exists
        var userData = userProfile.data();
        if (userData != null && userData is Map<String, dynamic>) {
          // Check if userData is not null and is a Map<String, dynamic>
          var userName = userData['name'];
          print('User Name: $userName');
        } else {
          Utils().toastMessage('User data is invalid');
        }
      } else {
        Utils().toastMessage('User profile does not exist');
      }
    } catch (e) {
      // Handle errors
      Utils().toastMessage('Error fetching user profile: $e');
    }
  }
}
