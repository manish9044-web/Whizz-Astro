import 'package:astrology/firstpage.dart';
import 'package:astrology/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonalInfoScreen1(),
    );
  }
}

class PersonalInfoScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Info'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PersonalInfoForm(),
      ),
    );
  }
}

class PersonalInfoForm extends StatefulWidget {
  @override
  _PersonalInfoFormState createState() => _PersonalInfoFormState();
}

class _PersonalInfoFormState extends State<PersonalInfoForm> {
  final _formKey = GlobalKey<FormState>();
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _gender = 'Male';
  String? _selectedRashifal;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  File? _profileImage;

  final List<String> _rashifalOptions = [
    'Aries',
    'Taurus',
    'Gemini',
    'Cancer',
    'Leo',
    'Virgo',
    'Libra',
    'Scorpio',
    'Sagittarius',
    'Capricorn',
    'Aquarius',
    'Pisces'
  ];

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }

  Future<void> _loadUserProfile() async {
    try {
      String phoneNumber = _phoneNumberController.text.trim();
      if (phoneNumber.isEmpty) {
        Utils().toastMessage('Phone number cannot be empty');
        return;
      }

      // Fetch user profile from Firestore
      DocumentSnapshot userProfile =
          await _usersCollection.doc(phoneNumber).get();

      // Populate the form fields with the fetched data
      if (userProfile.exists) {
        setState(() {
          _nameController.text = userProfile.get('name');
          _phoneNumberController.text = userProfile.get('phoneNumber');
          _emailController.text = userProfile.get('email');
          _gender = userProfile.get('gender');
          _selectedRashifal = userProfile.get('rashifal');
          // Handle other fields like date and time
          // Assuming date is stored as a timestamp in Firestore
          _selectedDate =
              (userProfile.get('dateOfBirth') as Timestamp?)?.toDate();
          _selectedTime = userProfile.get('timeOfBirth') != null
              ? TimeOfDay(
                  hour: (userProfile.get('timeOfBirth') as Timestamp)
                      .toDate()
                      .hour,
                  minute: (userProfile.get('timeOfBirth') as Timestamp)
                      .toDate()
                      .minute,
                )
              : null;
        });
      }
    } catch (e) {
      Utils().toastMessage('Failed to load profile: $e');
    }
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          // Center(
          //   child: GestureDetector(
          //     onTap: _pickImage,
          //     child: CircleAvatar(
          //       radius: 50,
          //       backgroundImage:
          //           _profileImage != null ? FileImage(_profileImage!) : null,
          //       child: _profileImage == null
          //           ? Icon(Icons.add_a_photo, size: 50)
          //           : null,
          //     ),
          //   ),
          // ),
          const SizedBox(height: 18.0),
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            controller: _phoneNumberController,
            decoration: const InputDecoration(labelText: 'Phone Number'),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email ID'),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 8.0),
          ListTile(
            title: Text(
                'Date of Birth: ${_selectedDate != null ? _selectedDate!.toLocal().toString().split(' ')[0] : ''}'),
            trailing: const Icon(Icons.calendar_today),
            onTap: () => _pickDate(context),
          ),
          const SizedBox(height: 8.0),
          ListTile(
            title: Text(
                'Time of Birth: ${_selectedTime != null ? _selectedTime!.format(context) : ''}'),
            trailing: const Icon(Icons.access_time),
            onTap: () => _pickTime(context),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Place of Birth'),
          ),
          const SizedBox(height: 12.0),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('Gender:'),
          ),
          const SizedBox(height: 8.0),
          Column(
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(5),
                title: const Text('Male'),
                leading: Radio(
                  value: 'Male',
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(5),
                title: const Text('Female'),
                leading: Radio(
                  value: 'Female',
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(5),
                title: const Text('Trans'),
                leading: Radio(
                  value: 'Transgender',
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 18.0),
          // DropdownButtonFormField<String>(
          //   decoration: const InputDecoration(labelText: 'Rashifal (Horoscope)'),
          //   value: _selectedRashifal,
          //   items: _rashifalOptions.map((String value) {
          //     return DropdownMenuItem<String>(
          //       value: value,
          //       child: Text(value),
          //     );
          //   }).toList(),
          //   onChanged: (newValue) {
          //     setState(() {
          //       _selectedRashifal = newValue;
          //     });
          //   },
          // ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                // Process data
                await saveProfileToFirestore();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              }
            },
            child: const Text('Submit'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange, // Text color
            ),
          ),
        ],
      ),
    );
  }

  Future<void> saveProfileToFirestore() async {
    try {
      String phoneNumber = _phoneNumberController.text.trim();
      if (phoneNumber.isEmpty) {
        // Show error message or handle empty phone number
        Utils().toastMessage('Phone number cannot be empty');
        return;
      }
      // Get form data
      Map<String, dynamic> profileData = {
        'name': _nameController.text,
        'phoneNumber': phoneNumber,
        'email': _emailController.text,
        'gender': _gender,
        'rashifal': _selectedRashifal,
        'dateOfBirth':
            _selectedDate != null ? Timestamp.fromDate(_selectedDate!) : null,
        'timeOfBirth': _selectedTime != null
            ? Timestamp.fromDate(DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
                _selectedTime!.hour,
                _selectedTime!.minute))
            : null,
      };

      // Save data to Firestore
      await _usersCollection.doc(phoneNumber).set(profileData);

      // Show success message
      Utils().toastMessage('Profile saved successfully!');
    } catch (e) {
      // Handle errors
      Utils().toastMessage('Failed to save profile: $e');
    }
  }
}
