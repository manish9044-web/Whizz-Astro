import 'dart:io';
import 'dart:math';

import 'package:astrology/AstroService/model/chat_user.dart';
import 'package:astrology/AstroService/model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class APIs {
  static FirebaseAuth auth = FirebaseAuth.instance;

  //for accessing cloud firestore database

  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  //for accessing firebase storage database

  static FirebaseStorage storage = FirebaseStorage.instance;

  //for storing self information
  static late ChatUser me;

  //for returning current user
  static User get user => auth.currentUser!;

  //for checking if user exists or not ?

  static Future<bool> userExists() async {
    return (await firestore.collection('user').doc(user.uid).get()).exists;
  }

  //for getting current user info
  static Future<void> getSelfInfo() async {
    await firestore.collection('user').doc(user.uid).get().then((user) async {
      if (user.exists) {
        me = ChatUser.fromJson(user.data()!);
        //   log('My Data:${user.data()}');
        print('My data:${user.data()}');
      } else {
        await createUser().then((value) => getSelfInfo());
      }
    });
  }

  // For creating a new user
  static Future<void> createUser() async {
    final time = DateTime.now().microsecondsSinceEpoch.toString();

    final chatUser = ChatUser(
        id: user.uid,
        name: user.displayName.toString(),
        email: user.email.toString(),
        about: "Hey i,m using chat!",
        image: user.photoURL.toString(),
        createdAt: time,
        isOnline: false,
        lastActive: time,
        pushToken: '');
    return await firestore
        .collection('user')
        .doc(user.uid)
        .set(chatUser.toJson());
  }

  //For getting all users from firestore database

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllUsers() {
    return firestore
        .collection('user')
        .where('id', isNotEqualTo: user.uid)
        .snapshots();
  }

  //for updating user information
  static Future<void> updateUserInfo() async {
    await firestore
        .collection('user')
        .doc(user.uid)
        .update({'name': me.name, 'about': me.about});
  }

  //update profile picture of user
  static Future<void> updateProfilePicture(File file) async {
    final ext = file.path.split('_').last;
    print('Extension: $ext');

    final ref = storage.ref().child('profile_picture/${user.uid}');
    await ref
        .putFile(file, SettableMetadata(contentType: 'image/$ext'))
        .then((pi) {
      print('Data transfeered: ${pi.bytesTransferred / 1000} kb');
    });
    me.image = await ref.getDownloadURL();
    await firestore
        .collection('user')
        .doc(user.uid)
        .update({'image': me.image});
  }

  ///*************** chat Screen Realated APIs ******************

  //useful for getting conversation id
  static String getConversationID(String id) => user.uid.hashCode <= id.hashCode
      ? '${user.uid}_$id'
      : '${id}_${user.uid}';

  //For getting all users from firestore database
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllMessages(
      ChatUser user) {
    return firestore
        .collection('chats/${getConversationID(user.id)}/messages/')
        .snapshots();
  }

  //for sending message
  static Future<void> sendMessage(ChatUser chatUser, String msg) async {
    // message sedning time (also useed as id )
    final time = DateTime.now().microsecondsSinceEpoch.toString();

    //message to send
    final Message message = Message(
        sent: time,
        read: '',
        type: Type.text,
        msg: msg,
        toId: chatUser.id,
        fromId: user.uid);

    final ref = firestore
        .collection('chats/${getConversationID(chatUser.id)}/messages/');
    await ref.doc(time).set(message.toJson());
  }

//update read status of message
  static Future<void> updateMessageReadStatus(Message message) async {
    //fromId because we want to double blue tick for another person who is sending
    firestore
        .collection('chats/${getConversationID(message.fromId)}/messages/')
        .doc(message.sent)
        .update({'read': DateTime.now().microsecondsSinceEpoch.toString()});
  }

  //get only last message of a specific chat
  static Stream<QuerySnapshot<Map<String, dynamic>>> getLastMessage(
      ChatUser user) {
    return firestore
        .collection('chats/${getConversationID(user.id)}/messages/').orderBy('sent',descending: true)
        .limit(1)
        .snapshots();
  }
}
