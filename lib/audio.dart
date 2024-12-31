import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}
final userId = math.Random().nextInt(100).toString();
class _AudioState extends State<Audio> {
  final callIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Audio Calling'),
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
                hintText: "Enter calling id",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                CallPage(callID: callIdController.text.toString())));
              }, 
              child: const Text('Call'))
          ],
        ),
      ),
      );
  }
}

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1010938867, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: '2e60aed318660507da19656cb54d979e29e4c1fdcc5373af05e57849a2e77669', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: 'user_id',
      userName: 'user_name'+userId.toString(),
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),
    );
  }
}

