import 'package:flutter/material.dart';

class Libra extends StatelessWidget {
  const Libra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 207, 77, 57),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
    const Page6(),
    const Page7(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          "Libra HoroScope",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: Text(
                "Personal",
                style: TextStyle(
                  color: pageIndex == 0 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Text(
                "Love Couples",
                style: TextStyle(
                  color: pageIndex == 1 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Text(
                "Love Singles",
                style: TextStyle(
                  color: pageIndex == 2 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Text(
                "Career & Money",
                style: TextStyle(
                  color: pageIndex == 3 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              child: Text(
                "Finance",
                style: TextStyle(
                  color: pageIndex == 4 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 5;
                });
              },
              child: Text(
                "Health",
                style: TextStyle(
                  color: pageIndex == 5 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 6;
                });
              },
              child: Text(
                "Advice",
                style: TextStyle(
                  color: pageIndex == 6 ? Colors.blue : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra 2024 Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Libra, there’s a serious vibe to your life with Saturn partnering with adaptable Pisces and your sixth house of details and daily rituals this year, which means you’ll be spending a lot of time finding ways to be more effective and efficient. Your well-being (mind, body, and soul) is also at the top of your priority list in 2024, and taking care of yourself will lead to major improvements in your overall quality of life. Sounds good, right?! \n\n And the exciting news is that your airy sign hosts two magical eclipses (a lunar eclipse in late March and a solar eclipse in early October), which both affect your first house of self and denote new beginnings. The Universe is committed to mixing things up during these dramatic lunations, but the drama should work in your favor. Expecting the unexpected might seem overdone, but it really is what these special eclipses are all about. \n\n And speaking of special lunations, there’s a full moon in ambitious earth sign Capricorn and your personal life zone in late July that focuses a lot of attention on what you’ve got going on at home, away from work and other responsibilities. A health-related concern could arise at this time, but this steady lunar energy should help you stay grounded in any type of emergency situation. You might need to be the rock in a number of circumstances this year, so keep your head on straight and be ready to assist others when they need you.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra Couples Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'You’re going to need to move past the superficial and into deeper emotional territory if you want to learn and grow from your love journey this year, Libra, but as the sign that represents balance, you’re probably already aware that for every minute you spend putting in effort, there should be an equal amount of time de-stressing and having fun together. \n\n Your fair-minded sign is associated with balance and relationships, so be sure to take advantage of the new moon accompanied by a solar eclipse in your nonjudgmental sign early in October, mentioned above. This easygoing time allows you to understand where the other person is coming from and could lead to compromises that should have been made a long time ago. Your perfect vibe during this lunation is having everyone get along and live together peacefully! \n\n The various meetups of goddess Venus help increase the romance in your partnership this year, but you might have to work harder than usual during her journey through practical Virgo and your house of intuition for most of August. Spending time together should be fun, but the closer you pay attention to other people’s social media feeds, the more critical you are of what you and bae have going on (or don’t). You’re probably overreacting, but if not, your interpretation of your boring love life is probably closely linked to your impossibly high standards. From here on out, try loosening up a little bit and stop comparing what you have to other people. Your uniqueness is something to smile about, Libra.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra Singles Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'If you’re after some excitement in your love life this year, Libra, the full moon in attention-seeking extrovert Leo and your friendship zone at the end of January starts things out with a bang! This dramatic lunation gets people talking about your romantic life, and it could have your closest besties spilling the tea about intimate dating details that you told them in strict confidence. Like WTF?! Although you might have wanted the spotlight on you, odds are this isn’t the kind of attention you were looking for. Your first thoughts are of getting revenge, but be careful. Your attempts to fight fire with fire could get you burned pretty badly. \n\n You could have the chance to turn a platonic friendship into a romantic situationship early in the year, because when Venus travels through social Aquarius from the end of February through early March, there’s a spark where there didn’t used to be one. Hmmm. While you aren’t strictly focused on getting physically intimate during this airy transit, the electric connection you make with this certain someone can’t be ignored. Why not branch out and experiment with taking a friendship to another level? If things get weird, you can always go back to the way they used to be. Right?! \n\n In early October, a new moon in your relationship-focused sign arrives, giving you renewed hope of long-term love through the end of the year. If a steady, monogamous, harmonious relationship is what you’re after, this hopeful lunar energy provides a “you and me together” vibe that has you searching for “the one.” Going solo is okay, but if you’ve been looking for a signal that you should take control of your love life and go for what you want, this is it.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra Money & Career Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Libra, you’re usually the voice of reason at work—the one person who tries to smooth things over and everyone gets along with—but this year is a little different. While your basic gracious, nice personality stays the same, Saturn in your solar sixth house helps you prioritize other things like organization and efficiency, which might not make you quite as popular as in previous years. You’re a bit more critical now as well, and you aren’t above pointing out other people’s problems if and when it’s necessary, proving that you can’t always be everyone’s work bestie. Sorry not sorry! \n\n Getting into healthy new routines on the job is something else that Saturn in Pisces and your sixth house will facilitate for you this year, and becoming more organized can help you in diverse ways at work. If you’re looking for a job this year, just having a copy of your resume updated and ready to go when you need it can make a big difference. There’s a lot of stiff competition out there, and having your sh*t together (or at least appearing like you do) can put you at the front of the line! \n\n The hot, confident sun moves into social-media savvy Gemini in late May, which helps you find some lucrative business investment opportunities. Hopping on all the latest social media trends can net you a pretty profit now, Libra, so watch and listen closely to what’s being talked about and going viral. If you’re already an influencer but your brand could use a refresh, this is the time to do it. Use all of the tools at your disposal to impress the right people and get that bag!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra Finance Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "This year will be prosperous financially, according to the Libra Horoscope 2024. Saturn will keep a watch on the eleventh house throughout the year, which will improve your financial situation. Not only that, but Saturn's grace will continue in your second property as well, increasing the likelihood of economic success and financial strength.\n\nThe start of the year will be prosperous according to the Libra Horoscope 2024. Venus and Mercury will be in the second house, motivating you to achieve something excellent financially. With Mars's blessing, the period following March, May, and August appears to be financially advantageous. The Sun God's blessing will also be upon you, resulting in rewards from the government sector and a financial strong position in the month of August.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra Health Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "According to Libra Horoscope 2024, health will be moderate this year. The beginning of the year will be favorable, but because Rahu will be in the sixth house for the duration of the year, you will need to adjust your irresponsible attitude toward yourself. If you continue to live an unbalanced lifestyle, you may become ill this year. \nHowever, once the illness appears, it will also disappear, but only after disturbing you. You could have to deal with blood impurity. There could be an issue with the eyes. Be cautious in the first part of the year because you are likely to experience greater abdominal pain and digestive and nervous system issues. \n\nAccording to Libra Horoscope 2024, Jupiter will move to your eighth house in the second half of the year, while Ketu will remain in your twelfth house, Rahu will remain in your sixth house, and Saturn will remain in your fifth house. You should be cautious if you experience gastrointestinal troubles during this time period.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Page7 extends StatelessWidget {
  const Page7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Libra Advice',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  BulletPoint(text: "On Saturday, you should recite Maharaj Shri Dasaratha's Neel Shani Stotra."),
                  BulletPoint(text: "It is great if you wear a high-quality diamond or opal stone. Wear it on your ring finger on Fridays during Shukla Paksha."),
                  BulletPoint(text: "On Tuesday, you should hang a triangular double-faced flag in a temple."),
                  BulletPoint(text: "Worshiping Lord Shri Bhairavnath ji would also be helpful to you."),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,
                width: 1),
                // boxShadow: [BoxShadow(
                //   color: Colors.grey,
                  
                //   blurRadius: 3,
                //    // changes position of shadow
                // )]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: "Lucky Colors : ",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "    Yellow, Blue",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "Lucky Gemstones : ",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              )
                              ),
                              TextSpan(
                            text: "    Emerald",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "Lucky Numbers : ",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              )
                              ),
                              TextSpan(
                            text: "    5",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "Lucky Days : ",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              )
                              ),
                              TextSpan(
                            text: "  Wednesday,Thursday,\n                        Friday",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                      )
                      )
                  ]
                ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: const TextSpan(
                  text: "These are generalized predictions based on your moon sign. For more personalzed predications,",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: " connect live with an Astrologer on call or chat!",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red
                      ),
                    )
                  ]
                )
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "• ",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}