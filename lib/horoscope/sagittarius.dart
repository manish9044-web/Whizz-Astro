import 'package:flutter/material.dart';

class Sagittarius extends StatelessWidget {
  const Sagittarius({super.key});

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
          "Sagittarius HoroScope",
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
                'Sagittarius 2024 Horoscope',
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
                'It’s time to get your house in order, Sagittarius, because as serious Saturn travels through soulful, reflective Pisces and your fourth house this year, the focus shifts to your home life and family issues. Because this serious energy affects your domestic duties and obligations as well as all things related to your house, you might find yourself with a pretty hefty to-do list in 2024! Things ranging from taking care of elderly or sick relatives to major DIY or renovation projects could dominate your free time, but your increased sense of empathy, compassion, and patience helps you deal with this potentially stressful workload. \n\n Your adventurous leader Jupiter spends an almost equal amount of time in both steady, practical Taurus (from the start of the year to late May) and then in open-minded, versatile Gemini (from late May through the end of December), bringing a lot of balance to your life. The first part of the year provides patience and inner strength, with the second half offering a newfound curiosity about the world that leads to new perspectives, viewpoints, and opinions. \n\n Jupiter is retrograde for all of November and December, giving you important time to reflect on what has happened throughout the year. Reevaluating your priorities will be important at this time, as will thinking seriously about what makes you happy and fulfilled. Ending the year on a soul-searching note can lead to some amazing things in 2025.',
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
                'Sagittarius Couples Horoscope',
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
                'Your life is chaotic this year, Sagittarius, but that doesn’t necessarily mean your love life can’t still be poppin’. Despite some initial loneliness or moments when you question your current status, your love life offers you more happiness than anything else this year. That’s not to say it’s going to be a piece of cake, but your efforts will definitely be rewarded. \n\n At the end of January, there’s a fun, playful Leo full moon that adds spontaneity and excitement to your relationship and can help lift the clouds from a stormy situation. This charming lunar vibe can help you lighten up the mood when things get a little too heavy and replace bad memories with better ones. Take advantage of this fun-loving lunation to bring out each other’s childlike side that you might not have seen for a while. \n\n As an adventurous, social Sagittarius, you probably have a lot of friends who are in relationships, and this year it’s important to spend time with other couples you both can learn from. The full moon and lunar eclipse in partnership-focused Libra highlight your friendship zone in late March, and this would be an ideal time to end any current friendships that aren’t working and expand your social circle in new directions. Look for other couples who can help you grow as a team in some way. You might be wondering if it’s weird to want to be like a celebrity couple or copy what an influencer couple does on social media. Not really. Sometimes the best way to learn is by example.',
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
                'Sagittarius Singles Horoscope',
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
                'As a fire sign, you typically have a sizzling love life, and this year is no different! When sexy Mars pairs up with your adventurous energy for the first few days of January, you definitely won’t be bored. You aren’t really in the mood for monogamous, long-term relationships now, but if you have a really good time with one of your hookups, you might go with the flow for a while and see where it leads. If you’re moving around the globe at all during this time, Sag, it’s pretty easy to meet fellow travelers you vibe with, but be up front about the fact that you aren’t looking for a long-distance relationship (but be sure to get contact info just in case you change your mind at some point in the future). \n\n Red-hot fellow fire sign Aries influences the sun from late March to late April, putting you in an aggressive, “me first” mood and prompting you to make some spontaneous romantic decisions that could lead to almost instant regret. Use as much caution as possible during this chaotic cosmic combo, or you could end up in some disastrous situations that will almost inevitably cause heartache for you or someone you’re starting to really care about. \n\n Making new romantic connections is possible under fresh moon energy, and the new lunar phase in charismatic Leo in early August gives you a charming allure that’s hard for most people to ignore. If you want to stand out from the crowd and get someone’s attention, this lunation is the time to do it. You love to be the life of the party, and your presence makes gatherings of all types feel special. Many people are going to want to be with you, which is great for your ego, but will the right one finally be interested? Lay it all on the line.',
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
                'Sagittarius Money & Career Horoscope',
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
                'Saturn’s position in your fourth house this year indicates that it’s also time to do some deep reflection about your past career choices, as well as think about making new and improved decisions in the future. This year isn’t so much about being rewarded with money and other types of benefits or bonuses, Sagittarius. It’s much more about finding and doing work that is satisfying and emotionally and mentally rewarding, work that you can be proud of when your head hits the pillow each night. \n\n One good thing is that this year’s Saturn placement definitely has you feeling more responsible regarding your career, which can help you move to the next level of a current job or find a new one (maybe in an entirely different field) that is a direct result of your increased efforts. This is also a good year to start or grow businesses with family members, but only the ones you trust 100 percent. Mixing business with personal relationships doesn’t always work, so make sure you always keep things legit and legal and have a “dissolution of partnership” plan in place in case things go downhill. \n\n When it comes to finances, it’s no secret that you like to spend big, sometimes on spontaneous purchases that you later regret. You aren’t known to be a big saver either, Sagittarius, but with Saturn visiting your fourth house of roots and early home life, your finances can definitely benefit from you taking a closer look at those things this year. What did you learn from your parents about money? How has the way you grew up shaped the way you handle your own finances? These are issues worth diving into and applying to your current financial state.',
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
                'Sagittarius Finance Horoscope',
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
                "The first half of the year will prove more favorable for Sagittarius natives according to Sagittarius Horoscope 2024. You will face some challenges in the second half. Jupiter will be present in the fifth house of your birth chart and will aspect on the eleventh house, first house and fortune house. This will reduce your financial problems. You will leave no stone unturned in making your financial condition strong by taking right decisions. However, there will be a spike in your expenses when Jupiter will transit to the sixth house in the starting phase of May. Saturn will aspect upon the fifth, ninth, and twelfth house that will make you pay attention to your expenses and control them. This year you have to strike a balance between your earnings and expenses and you will have to make efforts at the beginning of the year for that, otherwise problems may occur.",
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
                'Sagittarius Health Horoscope',
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
                "According to the Sagittarius Health Horoscope 2024, this year will be average with respect to the aspect of health. The presence of Rahu in the fourth house and Ketu in the tenth House of your birth chart can cause you to suffer from some kind of infection for which you have to be careful, otherwise you could fall ill due to seasonal change and seasonal infection. Stay away from smoking otherwise you may face problems this year. \n\nAccording to the Sagittarius Horoscope 2024, the lord of your zodiac, Jupiter will transit to the sixth house of your birth chart and there are chances of weak health for you. Please take care of your stomach and digestion. Please eat light and easily-digestible food. Take abundant water and fluids to prevent yourself from falling prey to any disease. The presence of Saturn in your third house for the whole year will save yourself from diseases. So regularize your daily routine and if you will live according to that, then everything will be fine.",
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
                'Sagittarius Advice',
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
                  BulletPoint(text: "You should donate Black sesame in a temple on Saturdays."),
                  BulletPoint(text: "Worshiping Lord Bhairava and offering him Imarti as sacrament or Bhog on Sundays will benefit you."),
                  BulletPoint(text: "Always put Tilak of Saffron or Turmeric on your forehead."),
                  BulletPoint(text: "Observing fast on Thursdays will benefit you."),
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