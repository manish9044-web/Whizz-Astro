import 'dart:async';

import 'package:astrology/AstroService/api.dart';
import 'package:astrology/homepage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> 
  with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();

    //old code
    // Timer(const Duration(seconds: 2), () {
    //   Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const HomePage()),
    //     );
    // });

    //done by shashi for chat new suer presistance state manage
    Timer(const Duration(seconds: 2), () async {
         if((await APIs.userExists())){
           Navigator.push(
             context, MaterialPageRoute(builder: (_) =>  HomePage()),
           );
      }
         else{
           await APIs.createUser().then((value){
             Navigator.push(
               context, MaterialPageRoute(builder: (_) => HomePage()),
             );
           });
         }
       });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // color: const Color.fromARGB(255, 238, 229, 229),
          color: const Color.fromARGB(255, 232, 91, 10),
          child: Center(
            child: FadeTransition(
              opacity: _animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Image.asset(
                      'assets/images/whizzastro.png',
                  fit: BoxFit.contain,
                  height: 300,
                  width: 250,
                    ),
                  ),
                  const SizedBox(height: 60,),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Congratulations you have ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 51, 85),
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                        TextSpan(
                          text: '\n Successfully ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 51, 85),
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                        TextSpan(
                          text: 'Logged In! ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic
                            ),
                        ),
                      ])
                  )
                ],
              ),),
          ),
        ),
      ),
    );
  }
}