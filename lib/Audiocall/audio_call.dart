import 'package:astrology/Audiocall/util.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

class AudioCallingScreen extends StatefulWidget {
  const AudioCallingScreen({Key? key});

  @override
  State<AudioCallingScreen> createState() => _AudioCallingScreenState();
}

final userId = math.Random().nextInt(10000).toString();

class _AudioCallingScreenState extends State<AudioCallingScreen> {
  final callIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio call'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: callIdController,
              decoration: const InputDecoration(
                hintText: 'Enter calling ID',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AudioCallingPage(
                      callingId: callIdController.text.toString(),
                    ),
                  ),
                );
              },
              child: const Text('Call'),
            ),
          ],
        ),
      ),
    );
  }
}

class AudioCallingPage extends StatelessWidget {
  final String callingId;

  const AudioCallingPage({super.key, required this.callingId});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: Util.appId,
        appSign: Util.appSignin,
        userID: userId,
        callID: callingId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),
        userName: 'username_' + userId.toString(),
      ),
    );
  }
}