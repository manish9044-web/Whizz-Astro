import 'package:flutter/material.dart';

void main() {
  runApp(const Aries());
}

class Aries extends StatelessWidget {
  const Aries({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Bottom NavBar Demo',
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
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (Route<dynamic> route) => false, // This clears the stack
        );
          },
        ),
        title: Text(
          "Aries HoroScope",
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
                "Heath",
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
                'Aries 2024 Horoscope',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Saturn, our cosmic professor, visits receptive Pisces and your house of compassion and sacrifice this year, Aries, which means—gasp!—you’ll have to consider other people and their feelings for a change! It’s obvious that you have some unfinished spiritual business to take care of in 2024, and your biggest challenges come when you attempt to clear up any unresolved mental or emotional issues that are holding you back. \n\n To help you do that, your energetic sign hosts one of the year’s most magical moments, a total solar eclipse during the new moon in early April, which is an excellent time to manifest your desires. You pride yourself on getting what you want via sheer force, but some things can’t be bullied into existence. Why not take advantage of a little lunar lift when it’s offered? \n\n Your active leader Mars hits a major hot spot when it joins your expressive first house from early May to mid-June, and your aggressive, competitive powers will be at their peak for the next several weeks. Your impressive ambition drives you forward now, and while some of the details might get trampled, the big picture remains intact. \n\n Wounded healer Chiron is traveling with your powerful sign again this year, helping you tackle those all-important personal issues we mentioned earlier. Things could get a bit complicated, but this healing-promoting transit is a major balm for your spiritual and mental boo-boos.',
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
                'Aries Couples Horoscope',
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
                'Aries, you move quickly in most parts of your life, including relationships. However, being too spontaneous this year could stop you from making considerable progress in your love life. \n\n Saturn’s partnership with creative Pisces helps you use your imagination and intuition when it comes to love, which really plays up your romantic side. If you aren’t usually the “holding hands and taking slow walks on the beach” type, you might surprise yourself—and your partner—with your romantic moves this year. Slowing down or stopping altogether to enjoy the view can put you in a much healthier place than you were when you were rushing around last year. \n\n Your sex life is an important part of your relationship, so when your potent leader Mars meets up with your aggressive sign at the end of April, the vibe is electric, aggressive, and competitive. Jealousy could get out of control during this intense transit, so try not to take such a primitive view of love. As much as you might like to, you can’t bop your boo over the head with a rock and carry them back to your cave! \n\n Mars in Taurus is after financial security in your money zone from early June to late July, which highlights all aspects of your shared money situation. You’re a pretty big spender, so you might have some issues to work through if you’re in a relationship with a saver. Patience is the key to success during this wealth-building transit, so you’re probably the one who should make the adjustments. Divulging spontaneous spending that drains your bank account and gives little return on your mutual money will inevitably end in a big shouting match that no one really wins.',
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
                'Aries Singles Horoscope',
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
                'You’re a risk-taker who doesn’t like it when things get repetitive or stale, Aries, but this year’s love lessons include teaching you about the value of getting closure before moving on to the next big romantic adventure. \n\n Saturn is paired with receptive Pisces and your intuitive zone, so your approach to love softens somewhat this year. Instead of fighting important teachable moments, you’re more likely to stop and actually embrace them, which can make a big difference. Slowing down during this introspective planetary partnership shows you that taking the time to emotionally heal from a breakup before trying to move on is much healthier than the alternative. \n\n There is no Venus retrograde this year, and when the goddess of love spends all her time moving forward, that tends to be a good omen for your love life. You’re not someone who clings to the past, so this continuous forward-moving energy means you won’t get stuck in a rut, longing for what used to be. Of course, this cuts down on your reflective time somewhat as well, but you should have plenty of opportunities to learn valuable love lessons without putting the past on a pedestal. \n\n Your sex life sizzles when your strong leader Mars is in your fellow fire sign Leo and your house of romance for most of November and December, which means meeting someone new late in the year has exciting potential. Spending time just having fun will be a main objective now, so look for someone who likes to do the same kinds of things you do. Deeply emotional water signs who just want to sit around and talk about their feelings are not a good match!',
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
                'Aries Money & Career Horoscope',
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
                'As the first sign of the zodiac, you want to slay your competitors, and you often don’t work well with others because of it. It’s not that you see them as a threat, necessarily, but why would you want to give away any of your secrets to the enemy?! With Saturn in psychic Pisces this year, Aries, your gut instincts are some of your most valuable weapons when it comes to your career and financial situation. Listening closely to what your inner voice is telling you is more valuable than working with a team or hiring a so-called expert. \n\n For Rams looking for new or different jobs this year, your dreams (both literal and figurative) could hold the key to success. If you’ve given up on ever getting to do the one thing you’re truly passionate about, it’s time to rethink that vision. You excel at coming up with creative solutions to everyday career problems now. Look for signs everywhere that can lead you back to the path you should be on. \n\n Fortune-related Jupiter spends time with money guru Taurus and your second house of finance for the first part of the year, which gives you some excellent opportunities to make long-term investments that will bring wealth in the future. This transit is also linked to all the finer things in life, so if you want to buy a luxury car or high-dollar jewelry, this is the time to shop. Notice we didn’t necessarily say buy. At least not quite yet. Shopping around for the best deal is what you’re good at now. You might not be able to pull the trigger emotionally or financially for quite some time.',
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
                'Aries Finance Horoscope',
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
                "The Aries Horoscope 2024 suggests that people born under this sign will need to work hard to maintain their financial stability throughout the year. Saturn's placement in the eleventh house at the start of the year and its presence throughout the year will ensure a stable income for you. \n\nThis is an important situation because, despite facing many challenges, you will have a reliable source of income that will bring you much-needed relief. However, the presence of Rahu in the twelfth house until the end of the year indicates that your expenses may increase significantly. You will need to control the pace of your spending, or your financial situation may deteriorate due to uncontrolled expenses. You will need to come up with a disciplined and difficult strategy to get out of this situation. You may also receive good returns on previous investments at the beginning of the year.",
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
                'Aries Health Horoscope',
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
                "The Aries Horoscope 2024 predicts a year of mixed outcomes in 2024. Your health will benefit from the blessings of and divine intervention Jupiter, but the positioning of Rahu in the twelfth house and Ketu in the sixth house may exacerbate physical issues. \n\nIt's advised to get a checkup two to three times if you face a problem that is difficult to diagnose to catch the issue early. You may face some form of infection this year and may also be troubled by skin allergies. Irregular blood pressure, mental stress, headaches, and fever-like issues may also be challenges you have to deal with.",
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
                'Aries Advice',
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
                  BulletPoint(text: "Organize a Shri Chandi Path at your home."),
                  BulletPoint(
                      text: "On Wednesdays, offer Durva grass to Lorad Ganesha."),
                  BulletPoint(
                      text:
                          "Additionally, reciting the Atharvashirsha of Lord Ganesha daily is advisable."),
                  BulletPoint(
                      text:
                          "You should also offer Arghya to the rising sun every day before sunrise."),
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
                            text: "    Red, White",
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
                            text: "    Garnet",
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
                            text: "    1,9",
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
                            text: "    Tuesday, Saturday, Friday",
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
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomCenter,
              child: RichText(
                  text: const TextSpan(
                      text:
                          "These are generalized predictions based on your moon sign. For more personalzed predications,",
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
                          color: Colors.red),
                    )
                  ])),
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
