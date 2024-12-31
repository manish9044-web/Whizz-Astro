import 'package:flutter/material.dart';

class Aquar extends StatelessWidget {
  const Aquar({super.key});

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
        // Navigate to HomePage and clear the navigation stack
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (Route<dynamic> route) => false, // This clears the stack
        );
      },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          "Aquarius HoroScope",
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
                'Aquarius 2024 Horoscope',
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
                'Aquarius, as driven outer planet Saturn is accompanied by Pisces this year, the spotlight is on your money house, giving you the opportunity to focus on your sense of self-worth and finances. Getting more serious and organized in these areas of your life is your main goal in 2024, and while your airy, rebellious sign likes to get extreme, a “back to basics” approach pays off better than trying to be overly creative now. \n\n To back up that sentiment, we notice that your innovative home planet Uranus is being influenced by grounded Taurus again this year, which promotes changes in small increments. Your patience will be required whenever you make an attempt to take a few steps forward, because while this earthy energy is a positive influence, it doesn’t move quickly. \n\n And speaking of slowdowns, the retrograde cycle of Uranus is from the beginning of September through the end of the year, giving you some important introspective time to think about what’s happened in the year until now and rethink where you might have gone wrong or would have done things differently. You’re very good at finding offbeat, different ways of doing things, but your patience is still required. Slow and steady wins the race this year. \n\n There’s a full moon cycle in your unique sign in August to take note of, mainly because of its link to natural endings. You aren’t a clingy or overly emotional sign, so the finality of things that end during this lunation probably won’t bother you, especially not over the long term. Focusing more on what you gained than what you lost is what gets you through this potentially stressful time without regret or lingering pain.',
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
                'Aquarius Couples Horoscope',
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
                'You like to take an unusual and sometimes unexpected approach to love, Aquarius, and this year is no different. However, with determined teacher Saturn in your money zone this year, there is a lot of emphasis and attention on financial issues, which need to be handled a little more traditionally than you’d like. Saturn paired with sensitive Pisces is a compassionate placement, but that doesn’t mean you’ll be a pushover. Money matters are serious in 2024, and they deserve extra attention from you and your partner. \n\n Communication also matters, and from mid-May to early June, informative, quick-thinking Mercury partners with stubborn earth sign Taurus, at which point your usual easygoing, airy vibe might become more conservative and less open-minded than usual. Tensions rise when bae challenges your beliefs or opinions during this time period. Resist the urge to text them something that you wouldn’t say to them in person. Let your temper die down before you say something you can’t take back. \n\n Passionate Mars has a positive influence on your relationship when it’s linked with hot-blooded Leo and your house of commitment for most of November and all of December, so get ready for some fireworks. No matter how long you’ve been together, this is a great chance to rekindle the spark that you had when you first met. Be daring. Be bold. Be spontaneous. Love each other with all you have and don’t hold anything back.',
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
                'Aquarius Singles Horoscope',
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
                'As an air sign, you truly enjoy your freedom, and you make no secret of that. If you’re going to start something with someone, make sure it’s someone who has no trouble giving you your space. Clingy or attention-seeking signs like Cancer and Leo aren’t your ideal matches in this (or any) year. \n\n Your birthday month, which always falls early in the year, helps you exude a uniqueness and attractiveness that is unequaled by any other sign. So, dear Aquarius, from the end of January until the end of February, your confidence helps you find other offbeat stylish singles to celebrate your special day with—and maybe beyond. You’re at your social best now, so you have a lot of opportunities to meet people who could have long-term potential or you can just have some fun with now. Letting your personality shine leads to some amazing romantic moments! \n\n A Leo new moon in your relationship zone at the start of August puts out fiery vibes, igniting your love life with drama and excitement! Although you aren’t usually quick to get physical with someone new, this lunation can create some very steamy encounters. Even though you might need some time to adjust to your elevated sex drive, it can really intensify your love life. You can try fighting your urges, but the effects of this intense lunar event are potent, Aquarius. And the good news? You can expect this very amorous energy to boost your love life for the next several weeks!',
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
                'Aquarius Money & Career Horoscope',
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
                'Remember that ambitious Saturn is in your second house this year, Aquarius, which has you thinking seriously about your self-worth. As you demand more from yourself regarding your career, your positive attitude can net you some pretty profitable rewards. You demand more professional respect this year as well, which can and should result in more lucrative job offers, promotions, tips, bonuses, etc. With one of your main goals for 2024 being financial security, your increased earning potential is a key factor. \n\n Money goddess Venus links up with ambitious, aggressive Aries for most of April, motivating you to get promoted at your current job or find new opportunities elsewhere. You also have a very difficult time staying still in any capacity during this fiery transit, so you’ll want to be as active on the job as possible. If you’re looking for work, good job choices are in fields that keep you on the go and constantly learning new things. In other words, a sedentary desk job probably isn’t gonna do it. \n\n Both your innovative home planet Uranus and lucky Jupiter are traveling with steady Taurus during the first half of the year, which could bring significant positive changes to your financial situation. These cosmic partnerships can be very good for building wealth as long as you’re patient and willing to wait for your long-term investments to pay off. Be sure to track global financial news and adjust your personal finances accordingly, or hire someone else to do it for you. Staying on top of worldwide financial trends is one of the keys to this year’s financial success.',
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
                'Aquarius Finance Horoscope',
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
                "According to the Aquarius Horoscope 2024, this year holds the potential for positive financial outcomes. The year commences with the Sun and Mars positioning themselves in your eleventh house, thereby bolstering your financial situation. Expect to make bold financial decisions that may surprise others, but remain steadfast in your choices. The horoscope suggests that March might introduce some financial imbalances, necessitating prudent management of income and expenses to maintain strength. However, from August onwards, you will progressively experience favorable financial results, culminating in financial maturity and stability by the year's end.",
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
                'Aquarius Health Horoscope',
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
                "The Aquarius horoscope 2024 predicts a predominantly favorable year for your health. Saturn, the ruler of your sign, will stay in your sign, guaranteeing excellent health advantages. By maintaining a disciplined lifestyle and putting in diligent work, you will be able to reap the benefits of good health, as Saturn motivates you to make the necessary efforts. Regular practices like meditation, yoga, and physical exercise will be essential to sustain good health. Following these practices will ensure a favorable state of health throughout the year.\n\nIt is important to be mindful of your health due to the unfavorable presence of Rahu in the second house and Ketu in the eighth house. Health problems can arise from consuming improper and stale food. The presence of Ketu in the eighth house increases the risk of developing hemorrhoids and anal diseases. Additionally, there is a possibility of encountering blood-related infections. To avoid these issues, it is advisable to undergo regular physical check-ups at intervals, enabling you to identify any potential problems beforehand and take necessary preventive measures promptly.",
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
                'Aquarius Advice',
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
                  BulletPoint(text: "It is advisable to perform the proper rituals while chanting the Shani Beej Mantra."),
                  BulletPoint(text: "You should present Durva grass to Lord Ganesha and recite the Ganapati Atharvashirsha."),
                  BulletPoint(text: "On Tuesdays, make sure to raise a triangular, two-sided flag in a temple."),
                  BulletPoint(text: "For bathing, it is recommended to mix water with ingredients such as Lobaan, red sandalwood, cedar, and other sacred substances."),
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