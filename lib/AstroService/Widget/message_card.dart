import 'package:astrology/AstroService/api.dart';
import 'package:astrology/AstroService/helper/my_date_util.dart';
import 'package:astrology/AstroService/model/message.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key, required this.message});

  final Message message;

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return APIs.user.uid == widget.message.fromId
        ? _greenMessage()
        : _blueMessage();
  }

  //sender pr another user message
  Widget _blueMessage() {
    
    //update last read message if sender and reciver are different 
    if(widget.message.read.isNotEmpty){
      APIs.updateMessageReadStatus(widget.message);
   //   print('message read updated');
    }
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //message content
        Flexible(
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.lightBlue),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Text(
              widget.message.msg,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            MyDateUtil.getFormattedTime(context: context, time: widget.message.sent) ,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }

//our or user message
  Widget _greenMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //message time
        Row(
          children: [
            // fro adding some space
            SizedBox(
              width: 10,
            ),
            //double tick icon for message read
            if(widget.message.read.isNotEmpty)

            const Icon(
              Icons.done_all_rounded,
              color: Colors.blue,
            ),
            //for adding some space
            SizedBox(
              width: 2,
            ),
            //read time
            Text(
              MyDateUtil.getFormattedTime(context: context, time: widget.message.sent) ,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        //message content
        Flexible(
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.lightGreen),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Text(
              widget.message.msg,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
