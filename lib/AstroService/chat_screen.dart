import 'dart:convert';

import 'package:astrology/AstroService/Widget/message_card.dart';
import 'package:astrology/AstroService/model/chat_user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'api.dart';
import 'model/message.dart';

class ChatScreen extends StatefulWidget {
  final ChatUser user;

  const ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //for storing all messages
  List<Message> _list = [];

  //for handling message text changes
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: _appBar(),
        ),
backgroundColor: Colors.blue.shade50,
        //body start
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                stream: APIs.getAllMessages(widget.user),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    //if data is loading
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return const Center(
                        child: const SizedBox(),
                      );
                    case ConnectionState.active:
                    // TODO: Handle this case.
                    case ConnectionState.done:
                      // TODO: Handle this case.

                      final data = snapshot.data?.docs;
                       _list =
                           data?.map((e) => Message.fromJson(e.data())).toList() ??
                              [];
                      if (_list.isNotEmpty) {
                        return ListView.builder(
                          padding: const EdgeInsets.only(top: 10),
                          itemCount: _list.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return MessageCard(
                              message: _list[index],
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: Text(
                            'Say Hi.👋!',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        );
                      }
                  }
                },
              ),
            ),
            _chatInput()
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              height: 30,
              width: 20,
              imageUrl: widget.user.image,
              errorWidget: (context, url, error) => const CircleAvatar(
                child: Icon(CupertinoIcons.person),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user.name,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
              ),
              // for adding some space
              const SizedBox(
                height: 2,
              ),
              //for seeing last scene of user
              const Text(
                'last scene not available',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //bottom chat input field
  Widget _chatInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Card(
              child: Row(
                children: [
                  //emohie button
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions,
                        color: Colors.blueAccent,
                        size: 25,
                      )),

                   Expanded(
                      child: TextField(
                        controller: _textController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                        hintText: 'Type Something',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.blueAccent,
                        )),
                  )),
                  //pick image for galary button
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.image,
                        color: Colors.blueAccent,
                        size: 26,
                      )),
                  //take image from camera button
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera,
                        color: Colors.blueAccent,
                        size: 26,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),

          //Send button
          MaterialButton(
            onPressed: () {
              if(_textController.text.isNotEmpty){
                APIs.sendMessage(widget.user, _textController.text);
                _textController.text = '';
              }
            },
            minWidth: 0,
            padding: EdgeInsets.only(top: 10, right: 5, bottom: 10, left: 10),
            shape: CircleBorder(),
            color: Colors.green,
            child: Icon(
              Icons.send,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
