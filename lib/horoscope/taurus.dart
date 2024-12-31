import 'package:flutter/material.dart';

class Taurus extends StatelessWidget {
  const Taurus({super.key});

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
  const HomePage({super.key});

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
          "Taurus HoroScope",
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
                'Taurus 2024 Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'As a loyal, responsible, and headstrong Taurus, you usually have a clear plan to make your life more comfortable and secure, so will this year fall neatly in that same predictable pattern? \n\n Actually, no. In 2024, Saturn transits your social zone, which helps you focus less on what you have to do and more on what you want to do. Opportunities to explore your hopes and aspirations are abundant this year, especially those personal projects that have you relying on others or working as part of a team. Your friendships are put under Saturn’s serious magnifying glass, and if they don’t hold up under this transit’s intense observation, it might be time to redefine them or let them go altogether. \n\n Your stable sign hosts unpredictable Uranus again all year, producing uneven energy but also promoting positive, healthy change. This year is an exciting time to examine your usual routines and procedures and tweak the parts that aren’t working. And while your slow, deliberate movements aren’t ideal during this rebellious transit, some progress is better than none. \n\n Lucky Jupiter will also be spending time in your first house from the start of the year to late May, bringing a lot of positive new beginnings and chances for a fresh start. If you’ve fallen into stale, boring routines in any areas of your life, this upbeat transit can help you get out of them early enough in the year to have a positive impact on the second half.',
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
                'Taurus Couples Horoscope',
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
                'You definitely have an indulgent side, Taurus, and you spare no expense when spoiling your significant other. Indulging your passions and desires is encouraged this year, so go ahead and go HAM when it comes to love and romance. \n\n Saturn’s placement in your friendship zone gives you plenty of opportunities to strengthen the platonic side of your romantic relationship this year, and spending time with other couples is extremely beneficial as well. Watching people interact with each other truly gives you a good idea of what you do and don’t want to do in your own partnership. \n\n Love goddess Venus is your cosmic leader, so you tend to be a fantastic lover and a believer in true romance. You pay attention to details, and even though life will offer its share of difficulties in 2024, you’re a stable, reliable sign who doesn’t give up easily. With no Venus retrograde cycle tripping you up this year, you’re free to focus on the future instead of obsessing over the past. Who did what to whom isn’t as important as agreeing to let things go as you move into the future together. \n\n Passionate Mars is a sexual power player, and things could reach the boiling point during its partnership with sizzling fire sign Aries and your zone of intuition in the early summer months. Although you’re very in tune with your partner’s needs and wants in the bedroom now, you also know exactly which buttons to push to get them all fired up (and not in a good way). Makeup sex might be fun, but it’s probably not worth the epic brawl that leads up to it during this aggressive transit.',
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
                'Taurus Singles Horoscope',
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
                'When it comes to your love life, you could benefit from getting out of your usual routine this year. Opening your mind and mixing it up with more social experimentation and exposure will greatly help improve your love life in 2024. \n\n Saturn’s partnership with Pisces and your friend zone suggests that someone you already know has the potential to become something more, so look for that special chemistry to develop into romance at some point this year. It can be scary trying to jump from one set of feelings to another, Taurus, but already having that solid foundation of friendship to build on helps tremendously. \n\n Your planetary guide Venus is linked up with fiery Sagittarius to start the year, urging you to be more spontaneous and adventurous. You love to plan elaborate dates, but during this time it would be better to make loose plans and see what happens. A world traveler, scholar, or professor is an excellent match for you now, and all fire signs (Aries, Leo, Sagittarius) will seem alluring and attractive in an almost dangerous way. It’s up to you if you want to take a walk on the wild side or not. \n\n Also remember that there’s no Venus retrograde this year, so that should cut down on a lot of the urges to stalk your ex on social media just to see what they’re up to. You know that never turns out well, right?! Whether you reach out first to contact someone from your past or they make the first move, it just never really lives up to the hype. This year, leave former lovers and partners where they belong: in the rearview mirror.',
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
                'Taurus Money & Career Horoscope',
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
                '“Networking” is one of the biggest buzzwords related to your career and finances this year, Taurus. Saturn’s placement in your socialization sector encourages you to take advantage of working as part of a team and linking up with professionals who can give you a boost in both of these areas. And be sure to always RSVP yes to important invitations. Attending work-related social events and financial seminars can give you the knowledge and connections you need to succeed this year. \n\n Lucky Jupiter is in your first house of new beginnings for the first part of the year, so you have endless opportunities in both areas. You’ll still insist on taking a prudent, steady approach to change, but long-term career decisions and financial investments can definitely pay off. Remember to use your contact list to send texts and make calls that can keep you in the loop and on the cutting edge of what you need to know. \n\n Revolutionary Uranus is in your financially gifted first house this entire year, helping you make necessary changes that will positively impact your future. Again, there are few sudden movements that will benefit you this year, so continue to work at that steady pace while keeping an open mind. Exciting things are happening on a global scale in the financial world, which is where the networking we talked about earlier comes in. Pay attention to info you get from people who live in other parts of the world who might know something you don’t. \n\n ',
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
                'Taurus Finance Horoscope',
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
                "Taurus Horoscope 2024 predicts that financial results will be mixed. On the one hand, Rahu's presence in your eleventh house will provide you with good financial benefits, and the financial benefits you receive will be useful in achieving your wishes, allowing you to pursue your new goals and generate money and you can also think about investing. \n\nOn the other hand, due to the presence of Jupiter in your twelfth house at the start of the year, as well as the aspect of Saturn in the ninth and tenth houses, you can expect a large increase in your spending. Some costs are also likely to remain stable. However, because Mars is in the eighth house at the start of the year, there is a potential of getting some hidden money. \nTaurus Horoscope 2024 predicts that as Jupiter transits your zodiac sign on May 1, your expenses will decrease to some amount, allowing you to retain financial equilibrium. Although you will have to spend money on family and other obligations in the meantime, you will be able to go on with greater harmony. \n\nMoney will undoubtedly come your way in this manner, but if you spend it wisely, this year could be better than typical. Financially, the months of March to April, July to August, and December will be more fortunate. The Taurus Horoscope 2024 anticipates that money will come and go, but having money on hand can help you feel more financially secure and enable you to carry out your plans.",
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
                'Taurus Health Horoscope',
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
                "Looking at this year from the perspective of your health, Taurus Horoscope 2024 indicates that the beginning of the year is likely to be weak for health. The presence of Ketu in the fifth house, Jupiter in the twelfth house, and Mars and Sun in the eighth house cannot be considered beneficial to one's health. Following that, the movement of the lord of your zodiac, Venus, in the ninth house from January 18 to February 12, might worsen health issues, so you should insist on taking extra precautions. \n\nIn the middle of the year, there will be a unique improvement in health, and you can design a new strategy to improve your health and include something special in your daily routine. In the month of October, there may be another health issue. \n\nAs per Taurus Horoscope 2024, biliary problems will be more troublesome this year, so consume healthy and digestible foods while keeping the effects of cold and heat in mind. This is advantageous to health. The final months of the year will be beneficial to health.",
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
                'Taurus Advice',
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
                  BulletPoint(text: "Every day, you should touch the feet of little girls and receive their blessings."),
                  BulletPoint(text: "Feed green fodder and wheat flour should be given to the cow."),
                  BulletPoint(text: "On Saturdays, feed the less fortunate and feed flours to the ants."),
                  BulletPoint(text: "You might also benefit from chanting the Shri Mahalakshmi Mantra."),
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
                            text: "    Blue, Pink",
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
                            text: "    2,6",
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
                            text: "  Monday,Wednesday,Friday",
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
            const SizedBox(height: 30,),
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
