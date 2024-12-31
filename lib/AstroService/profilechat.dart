import 'dart:io';
import 'dart:math';

import 'package:astrology/AstroService/api.dart';
import 'package:astrology/AstroService/helper/dialog.dart';
import 'package:astrology/AstroService/model/chat_user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';

import '../login.dart';

class Profilechat extends StatefulWidget {
  final ChatUser user;

  const Profilechat({super.key, required this.user});

  @override
  State<Profilechat> createState() => _ProfilechatState();
}

class _ProfilechatState extends State<Profilechat> {
  final _formKey = GlobalKey<FormState>();
  String? _image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //next line is to hide keyboard from screen whenever we click anywhere
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Profile screen")),
          ),

          //floating action button
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.redAccent,
              onPressed: () async {
                Dialogs.showProgessBar(context);

                //Signout from app
                await APIs.auth.signOut().then((value) {
                  // for hiding progress dialog
                  Navigator.pop(context);

                  // navigating to the login screen and removing all previous routes
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => loginpage()),
                    (Route<dynamic> route) => false,
                  );
                });
              },
              icon: const Icon(Icons.logout_outlined),
              label: const Text('Logout'),
            ),
          ),
          body: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //for adding some space
                    SizedBox(
                      height: 30,
                      width: 400,
                    ),
                    Stack(
                      children: [
                        //Profile picture
                        _image != null
                            ?

                            //local image
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.file(File(_image!),
                                    height: 320, width: 230, fit: BoxFit.cover))
                            :

                            //image from server
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CachedNetworkImage(
                                  height: 320,
                                  width: 230,
                                  fit: BoxFit.cover,
                                  imageUrl: widget.user.image,
                                  errorWidget: (context, url, error) =>
                                      const CircleAvatar(
                                    child: Icon(
                                      CupertinoIcons.person,
                                      size: 75,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                        Positioned(
                            bottom: 50,
                            right: 25,
                            child: MaterialButton(
                              elevation: 1,
                              shape: const CircleBorder(),
                              onPressed: () {
                                _showBottomSheet();
                              },
                              color: Colors.white,
                              child: Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                            )),
                      ],
                    ),

                    //for adding some more space
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      widget.user.name,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      initialValue: widget.user.name,
                      onSaved: (val) => APIs.me.name = val ?? '',
                      validator: (val) => val != null && val.isNotEmpty
                          ? null
                          : 'Require filed',
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'eg.Name here',
                        label: Text('Name'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      initialValue: widget.user.about,
                      onSaved: (val) => APIs.me.about = val ?? '',
                      validator: (val) => val != null && val.isNotEmpty
                          ? null
                          : 'Required filed',
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.info,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'eg.Feeling happy',
                        label: Text('About'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    //updating profile button
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            minimumSize: Size(20, 30)),
                        onPressed: () {
                          //Saving Updated name to database
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            APIs.updateUserInfo().then((value) {
                              Dialogs.showSnackbar(
                                  context, 'Profile Updated Successfully');
                            });
                            // print('Data Upadated');
                          }
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.blue,
                          size: 28,
                        ),
                        label: const Text(
                          'Update',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (_) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 15, bottom: 25),
            children: [
              Text(
                'Pick Profle Picture',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(150, 150)),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();

                        // Check if running on web
                        {
                          // Pick an image from the gallery on mobile platforms
                          final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery,imageQuality: 80);
                          if (image != null) {
                            print(
                                'image Path: ${image.path} -- MimeType: ${image.mimeType}');
                            setState(() {
                              _image = image.path;
                            });

                            APIs.updateProfilePicture(File(_image!));
                            // For hiding bottom sheet
                            Navigator.pop(context);
                          }
                        }
                      },
                      child: Image.asset('assets/images/image.png')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(150, 150)),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        //Pick an image
                        final XFile? image =
                            await picker.pickImage(source: ImageSource.camera,imageQuality: 80);
                        if (image != null) {
                          print('image Path: ${image.path}');
                          setState(() {
                            _image = image.path;
                          });
                          APIs.updateProfilePicture(File(_image!));
                          //for hiding bottom sheet
                          Navigator.pop(context);
                        }
                      },
                      child: Image.asset('assets/images/camera.png'))
                ],
              )
            ],
          );
        });
  }
}
