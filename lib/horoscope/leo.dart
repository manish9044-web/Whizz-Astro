import 'package:flutter/material.dart';

class Leo extends StatelessWidget {
  const Leo({super.key});

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
          "Leo HoroScope",
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
                'Leo 2024 Horoscope',
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
                'You love a good moment to shine in the spotlight, Leo, and as driven Saturn spends time in receptive Pisces and your transformation zone, you get the chance to play a lot of various, versatile roles this year. Let’s just say that you’ll be trying on a lot of different hats to see which one fits—and having a lot of fun in the process! \n\n The sun is your confident, brilliant leader, so of course the late summer months (when you will be celebrating another year of orbiting around your bright cosmic guide) are usually some of your favorite times of the year. At some point between the end of July and the end of August 2024, you’ll not only be a little bit older but also a little bit wiser thanks to the lessons serious Saturn has been teaching you. And that, dear Leo, is really something to celebrate! \n\n In August, your fiery sign is a host of one of this year’s Mercury retrograde periods, which could put a slight damper on some of your celebratory plans. However, because you will probably be taking it somewhat easy at that time due to your birthday, a planned vacation, or a break from school or work, this retrograde cycle might not hit you as hard as it would at other times. Keep your head up and be alert to potential annoyances and irritations during this time frame, but don’t worry too much. You’ve got this!',
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
                'Leo Couples Horoscope',
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
                'You’re in love with love, Leo, and you really do enjoy everything about being part of a couple this year. The drama makes you feel alive, and you can become addicted to people quite easily. \n\n Ambitious Saturn’s trip through your transformational eighth house affects your relationship as well, especially since this partnership also highlights your sexual zone. Is your relationship ready for a sexual reawakening? Even if you mesh together perfectly in a physical sense, there’s always room for improvement. People who say “if it ain’t broke, don’t fix it” don’t know what they’re talking about. There’s always room for more physical, emotional, mental, and spiritual intensity, and you’re about to find it! \n\n Aggressive Mars joins Saturn in compassionate Pisces and your renewal zone between late March and the start of May, putting more intimate matters like money in the spotlight. This can be a shadowy, secretive transit during which you might both be holding back from sharing things with each other more than usual. This creates a deceptive, suspicious environment in which things can quickly go downhill. Building trust won’t be easy now, but actively tearing it down should be avoided at all costs. If you can’t be totally transparent, at least don’t lie straight to each other’s face.',
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
                'Leo Singles Horoscope',
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
                'You know how they say you aren’t ready to love someone else until you love yourself? Yeah, that should be your personal motto this year, Leo! As wise Saturn encourages you to explore new ways to learn and expand, it affects the way you deal with your intimate relationships as well. Whether you’ve had your share of storybook romances or problematic relationships, you’re ready to move on from the past and face current or potential romantic issues in the future. Working on your own sh*t so that you can get healthier for your future partner is what this serious major transit of the year is all about. \n\n However, as a fun-loving fire sign, you can’t handle it when love is serious all the time, so lunations like the new moon in Sagittarius and your fifth house of fun and dating at the start of December help you ease up and take love a lot more lightly. Other exciting and spontaneous fire signs (especially Aries) are great matches for you now as you adventure out into the world and see what (and who) is out there for you. Long-distance relationships are appealing now, as are random hookups while you’re traveling, for obvious reasons. Having fun is at the top of your priority list, and getting serious about someone is at the very bottom. Just let potential lovers know your intentions and expectations before you start something.',
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
                'Leo Money & Career Horoscope',
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
                'Your ego, professional reputation, and finances are all wrapped up tightly in your career this year, Leo, and one of your main goals is to reach a level of financial success that you haven’t attained before. \n\n You’re definitely of that “it doesn’t matter what they’re thinking about me as long as they’re thinking about me” mindset a lot of the time, but with ambitious Saturn moving through creative Pisces and your house of renewal in 2024, you’ll be offered a lot of opportunities to make changes to your current career that will make big waves and impress the right people. Getting the attention of VIPs who really matter—from coworkers to CEOs to influencers—can make or break you this year. Stay on your grind, but be willing to be flexible and accommodating depending on who’s around. \n\n Also pay close attention to the energy shift when the sun enters innovative Aquarius and your partnership and teamwork zone at the end of January, because this will be the perfect time to impress people with your strange but amazing ideas. Although you might not be understood by everyone now (yes, you can expect a few eye rolls), the people who are on your side and appreciate your unique visions can really help you go places. \n\n The partnership between expansive Jupiter and money savant Taurus and your career house will be going on through the end of May, giving your job-related finances a boost in the form of raises, tips, bonuses, or commissions. You’re an expert at figuring out ways to get more money from your current job now, and if you’re looking for employment, you should be able to negotiate an excellent salary and benefits package before you’re hired. Don’t settle for less than you’re worth in any circumstances this year, Leo.',
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
                'Leo Finance Horoscope',
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
                "According to the Leo Horoscope 2024, it is important for you to exercise caution when evaluating your financial situation this year. The planetary alignment does not fully support you, despite the potential for income generation, as there will also be ongoing expenses. The presence of Ketu in your second house and Rahu in the eighth house throughout the year will complicate matters by leading to various types of expenditures, making it challenging to maintain financial balance. \n\nThe period from April to August holds the potential for favorable financial outcomes, presenting strong opportunities for financial gains. However, for the remaining time, it is crucial to utilize your resources wisely in order to establish financial equilibrium. Failure to do so may result in difficulties throughout the year.",
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
                'Leo Health Horoscope',
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
                "As per the Leo Horoscope 2024, the initial phase of the year might witness a decline in your health. It is important to exercise caution regarding health-related matters, given the presence of the Sun in the fifth house, Saturn in the seventh house, and Rahu in the eighth house. This year could bring forth physical ailments. The influence of Rahu could lead to the sudden emergence of temporary health problems, causing discomfort for a limited duration. \n\nThe first half of the year is expected to be relatively weaker in terms of health, and you might encounter blood-related issues during this period. Additionally, it is advised to remain vigilant about sporadic concerns like stomach ailments, fever, and headaches. \n\nYou are advised to make substantial changes in your daily routine this year. Leading a disciplined life will help you avoid succumbing to various physical ailments. The positions of Rahu and Ketu suggest that by giving special attention to your diet and nutrition, you can effectively avoid many problems.",
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
                'Cancer Advice',
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
                  BulletPoint(text: "Recite ShriAditya Hridaya Stotra on Sundays."),
                  BulletPoint(text: "Offer water to the Sun regularly."),
                  BulletPoint(text: "Perform Chaya Daan on Saturdays."),
                  BulletPoint(text: "To appease Rahu, donate black sesame seeds in a temple during the evening time on Wednesdays.."),
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