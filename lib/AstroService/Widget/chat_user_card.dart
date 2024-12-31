import 'package:astrology/AstroService/api.dart';
import 'package:astrology/AstroService/helper/my_date_util.dart';
import 'package:astrology/AstroService/model/chat_user.dart';
import 'package:astrology/AstroService/model/message.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chat_screen.dart';

class ChatUserCard extends StatefulWidget {
  final ChatUser user;
  const ChatUserCard({super.key, required this.user});

  @override
  State<ChatUserCard> createState() => _ChatUserCardState();
}

class _ChatUserCardState extends State<ChatUserCard> {
  //last message info if null --> no message
  Message? _message;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ChatScreen(
                          user: widget.user,
                        )));
          },
          child: StreamBuilder(
            stream: APIs.getLastMessage(widget.user),
            builder: (context, snapshot) {
              final data = snapshot.data?.docs;
              final list =
                  data?.map((e) => Message.fromJson(e.data())).toList() ?? [];
              if (list.isNotEmpty) _message = list[0];

              return ListTile(
                  //User profile picture

                  leading: ClipRRect(
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

                  //user name
                  title: Text(widget.user.name),

                  //last message
                  subtitle: Text(
                    _message != null ? _message!.msg : widget.user.about,
                    maxLines: 1,
                  ),

                  //last message time
                  // trailing: const Text(
                  //   '12:00 PM',
                  //   style: TextStyle(color: Colors.black54),
                  // ),
                  trailing: _message == null
                      ? null// show nothing when no message is sent
                      : _message!.read.isEmpty && _message!.fromId != APIs.user.uid
                          ?
                  //show for unread message
                  Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.shade400,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          : Text(
                             MyDateUtil.getLastMessageTime(context: context, time: _message!.sent),
                              style: const TextStyle(color: Colors.black54),
                            ));
            },
          )),
    );
  }
}
