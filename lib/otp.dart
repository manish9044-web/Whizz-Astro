import 'package:astrology/firstpage.dart';
import 'package:astrology/personalinfo1.dart';
import 'package:astrology/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  final String verificationId;
  const OtpPage({super.key, required this.verificationId});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final verificationCodeController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 238, 229, 229),
        backgroundColor: const Color.fromARGB(255, 207, 77, 57),
        title: const Text('Enter a OTP to login'),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 207, 77, 57),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Verification',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Enter the OTP send to \n your phone number',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 7, 51, 85),
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 40,
            ),
            PinCodeTextField(
              controller: verificationCodeController,
              appContext: context,
              length: 6,
              onChanged: (value) {},
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 40,
                fieldWidth: 30,
                activeFillColor: Colors.white, // White for active field
                inactiveFillColor: Colors.white, // White for inactive field
                selectedFillColor: Colors.white, // White for selected field
                activeColor: Colors.white, // Adjust border color if desired
                inactiveColor: Colors.white, // Adjust border color if desired
                selectedColor: Colors.white,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not Received OTP ?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 7, 51, 85),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () async {
                  final credential = PhoneAuthProvider.credential(
                      verificationId: widget.verificationId,
                      smsCode: verificationCodeController.text.toString());
                  try {
                    await _auth.signInWithCredential(credential);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersonalInfoScreen1()),
                    );
                  } catch (e) {
                    Utils().toastMessage(e.toString());
                  }
                },
                child: const SizedBox(
                  width: 200,
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 51, 85),
                        // color: Colors.blue,
                        letterSpacing: 2),
                    textAlign: TextAlign.center,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
