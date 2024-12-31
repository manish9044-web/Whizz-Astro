import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveStream extends StatefulWidget {
  const LiveStream({super.key});

  @override
  State<LiveStream> createState() => _LiveStreamState();
}

class _LiveStreamState extends State<LiveStream> {
  final _formKey =  GlobalKey<FormState>();
  final _idController = TextEditingController(text: 'LiveStreamID');
  bool isHostButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Live Stream'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(controller: _idController,),
              Row(
                children: [
                  const Text('Host Button :'),
                  Switch(value: isHostButton, onChanged: (val){
                    setState(() {
                      isHostButton = !isHostButton;
                    });
                  })
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Join'),
        onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => LivePage(liveID: _idController.text.toString(),
          isHost: isHostButton,))
        );
      }),
    );
  }
}

class LivePage extends StatelessWidget {
  final String liveID;
  final bool isHost;

  const LivePage({Key? key, required this.liveID, this.isHost = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 637525362,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: 'f75d4684d73ad40d37b7d57d1f934e3289c46442409ba33f2b3e90849cceeb40',// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: 'user_id' + Random().nextInt(100).toString(),
        userName: 'user_name' + Random().nextInt(100).toString(),
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
