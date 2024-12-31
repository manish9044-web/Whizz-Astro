import 'package:flutter/material.dart';

class Capricorn extends StatelessWidget {
  const Capricorn({super.key});

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
          "Capricorn HoroScope",
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
                'Capricorn 2024 Horoscope',
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
                'You’re a capable, determined earth sign who takes life seriously, Capricorn. This year, as your ambitious planetary leader Saturn spends its time in perceptive Pisces and your communication zone, your attention shifts to the way you interact with people. You still meet your work responsibilities with your usual amount of grit and determination, but your personal interests are evolving and allowing you to feel less inhibited and more sociable. \n\n Regenerative Pluto takes on your serious Capricorn energy for most of January, which can help you gain some valuable insight into your personal life. You have an amazing awareness of others during this mighty transit, and other people might be starting to figure you out too. This is something of a double-edged sword, but learning to be a little more open can do you some good this year. Significant changes start with baby steps. \n\n Saturn’s retrograde cycle occurs from the end of June to the middle of November, giving you the chance to relax somewhat and go with the flow in the second half of the year. Letting go of your innate disciplined, rigid (type A!) nature in exchange for a more sensitive, compassionate one can open your eyes to important new experiences. This backward spin also gives you the chance to revisit issues from earlier in the year and beyond and heal old wounds, especially with family.',
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
                'Cparicorn Couples Horoscope',
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
                'Communication issues are important this year, Capricorn. Having serious, sometimes difficult conversations about stressful topics in a relationship is never easy, but this year you can handle those “we need to talk” conversations with a dedicated, determined attitude. When one of you has something important you want to discuss with the other, make some time in your day to shut out distractions and address it fully. Being more sympathetic and compassionate to what your partner is going through—and vice versa—really helps improve the way you communicate with each other. \n\n Communication issues will inevitably be tested by this year’s Mercury retrograde periods (April 1–25 in Aries, August 4–28 in Leo and Virgo, and November 25–December 15 in Sagittarius). While fiery drama and misunderstandings are direct results of impromptu decisions and threaten to stand in the way of healthy communication this year, you don’t have to let them. Rely on your naturally earthy personality to remain calm so that you can use your relationship as a source of strength, not stress, during these tough Mercury retrograde cycles. \n\n Trust issues can become a problem when the sun moves through penetrating Scorpio from late October to late November, and suspicions start to develop when your partner strays even the smallest bit from their regular routine. You’re keenly observant now, so it won’t be that difficult to gather information to support your skepticism. It would be nice to trust bae 100 percent, but there’s nothing wrong with taking steps to verify their words and actions. If you’re wrong, apologize. But if you’re right, you’re vindicated.',
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
                'Capricorn Singles Horoscope',
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
                'Capricorn, despite your calm, cool, and collected exterior, you have a fiery passionate side that few people see. Because you’ll be looking to improve communication this year, letting your emotions show more will be a goal. We’re not saying to bust out telling someone you love them within five minutes of meeting(!), but try not to hold back quite so much. In most romantic situations this year, you’ll feel much better once you give your heart permission to express itself. \n\n Transformational Pluto is in your ambitious sign at very beginning of the year, which gives you the chance to set some life-changing love goals right away. What are your New Year’s resolutions for 2024, and how will they affect your love life? Finally making love a priority shows that you’re serious about overcoming past romantic struggles and that you’re looking toward the future. This transit reminds you to stay patient and grounded as you work toward romantic happiness. \n\n Intense, sexual Mars spends most of November and all of December in outgoing, dramatic Leo, bringing fun and games to your love life. Sex can be extremely hot during this daring transit, because it gives you a chance to take control of your physicality and connect with a lover on an emotionally expressive level as well. And while your ego is closely linked with your sexual performance now, being able to laugh at yourself when things go wrong is an endearing quality that will help alleviate a lot of awkward moments.',
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
                'Capricorn Money & Career Horoscope',
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
                'Your power planet Saturn is in Pisces and your zone of logic and reason all year, Capricorn, so you get numerous opportunities to step up and prove yourself at work. Coming up with solutions to problems is relatively easy for you now, especially when you shut out all distractions and simply focus on the task at hand. And because communication is also emphasized, finding new ways and outlets to get your ideas heard will strengthen you as a current or potential employee and put you on the path to success. \n\n Rebellious Uranus is the planet that promotes change and innovation, and as it travels through financial genius Taurus again this year, it can be a big income booster. In sync with your improving communication skills, this money-confident transit can help you ask for what you deserve regarding financial compensation, including your salary or hourly rate, raises or bonuses, commissions, and benefits. There’s no need to be in a hurry for these increases, but steady bumps in pay across all areas adds up, and by year’s end you should notice a significant pay bump if you worked the system to your full advantage! \n\n When ambitious Mars spends time in fiery Leo between early November and the end of the year, your financial opportunities heat up right along with your love life! Just like with dating, Capricorn, it’s time to get out there and explore your options! The higher your financial goals, the more risks you’ll need to take during this determined, daring time period. Don’t leave anything on the table now. Going all in is the only way to hit the jackpot.',
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
                'Capricorn Finance Horoscope',
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
                "According to Capricorn Horoscope 2024, the start of the year will be fortunate. Mercury and Venus will increase your eleventh house, and being present there will improve your income day by day. Your financial position will be robust, and Saturn in the second house will highlight your tendency to amass riches owing to its own sign Aquarius, as a result of which your fortune will be accumulated. Although Mars and the Sun will be in your twelfth house at the start of the year, which will generate expenses, they will begin to decrease in February.\n\nThis year will bring you a lot of money. On May 1, Jupiter will leave the fourth home and enter the fifth, from where it will aspect your ninth, eleventh, and first houses, i.e. your zodiac sign, which will aid you in balancing your financial status and finances.",
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
                'Capricorn Health Horoscope',
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
                "According to the Capricorn Horoscope 2024, this year appears to be fortunate in terms of health. Throughout the year, your zodiac lord will be in your second house. It will remain in its zodiac sign and will protect you from physical hurdles. Rahu in the third house will also assist you and play a vital role in resolving your health issues, but between June 29 and November 15, you must be careful with your food and drink. One must pay attention to one's lifestyle because health can suffer throughout this time.\n\nAccording to Capricorn Horoscope 2024, at the start of the year, your zodiac lord will be in a debilitated state from February 11 to March 18, resulting in a decline in their strength, which will also influence your health. Negative ideas might arise within you, causing your mental health to suffer. You should never be alone and should always talk with your family and friends. Mental stress will not be able to control you.",
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
                'Capricorn Advice',
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
                  BulletPoint(text: "On a Friday of Shukla Paksha, you should wear a high-quality Opal stone on your ring finger."),
                  BulletPoint(text: "You should read Shri Sukta everyday to help you overcome your financial difficulties."),
                  BulletPoint(text: "Offer Durvankur to Shri Ganesh ji and request that he remove the obstacles in your path."),
                  BulletPoint(text: "You can also fast on Ganesh Chaturthi if you wish to get rid of many difficulties."),
                  BulletPoint(text: "You can also wear sapphire on special occasions. Wear it in a Panchadhatu or Ashtadhatu ring on your middle finger."),
                  BulletPoint(text: "Every Saturday, recite the Shani Stotra by Shri Maharaj Dasaratha."),
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