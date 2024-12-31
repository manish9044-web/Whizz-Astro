import 'package:flutter/material.dart';

class Gemini extends StatelessWidget {
  const Gemini({super.key});

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
          "Gemini HoroScope",
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
                'Gemini 2024 Horoscope',
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
                'Your clever mind helps you come up with some interesting ideas and concepts this year, Gemini, but your tendency to get distracted could overshadow your success. Luckily, serious, ambitious Saturn is spending the year in inspirational Pisces and your career zone, highlighting your dreams and aspirations but also giving you the focus that you need to turn them into reality. Saturn is a tough but fair teacher, and you can use its determined and consistent energy to zero in on what matters and tackle your top priorities. \n\n This year’s Mercury retrograde cycles hit you harder than they do most other signs (except Virgo, also ruled by Mercury), so mark these dates on your calendar as potential hot spots for disruption in communication, technology, and travel: April 1–25 in Aries, August 4–28 in Leo and Virgo, and November 25–December 15 in Sagittarius. While you won’t be able to avoid making plans for all of these dates, having alternate options in place would be helpful. \n\n Fateful Jupiter shifts into your versatile sign at the end of May, where it will stay until the end of the year. With your first house filled with this lucky energy, your confidence grows as your good fortune increases. This isn’t the time to get lazy, though! Even though it might seem like you have it made, it’s still important to stay on your grind during this fateful transit!',
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
                'Gemini Couples Horoscope',
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
                'Your curiosity and restlessness give you a bad rep when it comes to being faithful, Gemini, but the truth is that you can definitely be monogamous as long as you keep things exciting. \n\n With Saturn hitting up your ambition zone this year, your career is definitely a top priority. However, with your dreams and aspirations coming in hot, this gives your partner the chance to step up and show their support in a way they haven’t done before, which is reassuring and, tbh, a turn-on. You actually have a lot to teach each other in 2024, which helps you grow as a couple. \n\n The movements of hot Mars are a major component of your sex life, and one of this steamy planet’s more powerful placements comes when it spends time in hardworking Capricorn and your intense eighth house from early January to mid-February. You’ve never been so focused on getting things right in the bedroom in your whole life, and your boo will be incredibly appreciative of your efforts (if you know what we mean)! Even if you already have amazing physical chemistry, mind-blowing sex doesn’t always just happen when you’ve been together for a while. But with your extra attention to detail and stamina during this ambitious transit, fireworks happen regularly! And if you learn any new tricks, keep ’em in the rotation all year long. \n\n The end of the year can also be electric with Venus moving through Capricorn and your transformational eighth house in December, giving you the chance to end 2024 feeling intensely intimate as a couple. Don’t take anything for granted about each other now. Deep healing can take place before a new year begins if you both commit to making it happen.',
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
                'Gemini Singles Horoscope',
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
                'Your life is hectic this year, Gemini, but is there still time for love? Definitely! Although Saturn has you preoccupied with work and other responsibilities, you can also use its energy to meet new people through your job or while taking care of other necessary everyday tasks. Whether your online meetings include employees from other offices who you might like to get to know better, your job training class has other hot singles who catch your eye, or you’re running errands for a neighbor and meet a cute stranger, there’s always a little time to mix business with pleasure. \n\n Early in the year, Venus is influenced by rebellious, experimental Aquarius, so you’ll be loving your single life. You’re not down on your friends who are happily coupled up, but you just can’t really imagine it for yourself, at least not right now. So, between mid-February and mid-March, look for chances to expand your mind and romantic experiences without getting emotionally involved. Other air signs, especially intelligent, debate-loving Aquarius, are excellent matches for you during this time frame. \n\n The new moon in elegant Libra in early October brings the quest for beauty to your love life, and if it’s superficial to want someone who’s gorgeous, you’re okay with that. You’re basically in search of an IG model who is beautiful mainly on the outside now, and if they’re also a nice person, then that’s a bonus. There are deeper connections to find out there, but a shallow one you can show up to holiday parties with is fine for now!',
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
                'Gemini Money & Career Horoscope',
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
                'You like to make money as much as anyone, Gemini, but you’re more about learning how to do something better and more efficiently than just collecting a check this year. As you know, Saturn, the serious planet of knowledge and ambition, is in your career house this year, so you’ll be working hard for everything you get. Learning more leads to growth and opportunities for sure, but the main hope is to end the year believing in yourself and your brilliant potential. Forget about all of your past career mistakes and start looking ahead. \n\n Financially, lucky Jupiter will be spending the last several months of the year in your versatile, restless sign, which helps you believe in yourself and your moneymaking potential as you branch out in new directions. If you come across investment opportunities, do your own research and find out if they’re worth putting your hard-earned money into. With expansive Jupiter in your first house of the powerful self from late May through December, there’s no end to what you can do with this energetic force surrounding you. Just make sure you choose the options that are right for you rather than the ones that are trendy or just look good on paper. \n\n Money goddess Venus will be in family-centered Cancer and your money house in late June and early July (joining the powerful sun for a portion of that time), which is a strong indication that parting with some cash for a family activity or a big-ticket item(s) will be well spent. You can’t go wrong with something that makes everyone comfy (new sofa or mattresses) or happy (tropical getaway, anyone?). What good is money if you can’t spend it on the people you love most, right?!',
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
                'Gemini Finance Horoscope',
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
                "According to Gemini Horoscope 2024, you will become financially strong due to the presence of Jupiter in the eleventh house with the aspect of Saturn on the ninth house on it. You don’t need to be worried about money as there will be a steady flow of money but you will need to manage and secure your finances as there will be a sudden increase in expenses in between. These expenses will be unnecessary. \n\nGemini Horoscope 2024 says that regular expenses will start and you will also spend on religious and auspicious things as soon as Jupiter will enter the 12th house of your birth chart on 1st May 2024. As the year progresses, your expenses will also increase. However, Saturn will provide you with stable money but still, you have to be careful. Don’t take any financial risk between February and March but the period between April to June will be most favorable to earn and invest. You will achieve financial stability and soundness.",
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
                'Gemini Health Horoscope',
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
                "Gemini Horoscope 2024 says that the beginning of the year 2024 will be somewhat weak. An increase in health problems will be seen due to the presence of Venus and Saturn in the sixth house and Mars in the seventh house. You may become ill due to your lifestyle. Rahu and Ketu will also affect the fourth and tenth house respectively due to which you could suffer from a chest infection or lung ailments. You should also avoid eating hot and cold food at the same time to avoid stomach aches. The lord of Gemini will be retrograde from 2nd April to 25th April and it will be in a setting position from 8th February and 15th March due to which the health will be in a weak state. You have to pay special attention to your health during this period. Include good habits in your routine and remove bad habits. Stay away from any addiction this year as it will negatively affect your health. \n\nAccording to the Gemini Horoscope 2024, your health will improve significantly between May to August. Your routine lifestyle will also improve. After that, you may suffer from pain in your legs and eye-related problems in the months of October and November, but these ailments will vanish in December. The year 2024 will be full of ups and downs in the health forefront. So, it will be better that you should prioritize your health and eat right along with abstinence. This will improve your health.",
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
                'Gemini Advice',
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
                  BulletPoint(text: "You should recite Shri Vishnu Sahastranaam daily."),
                  BulletPoint(text: "To stay protected from the ill effects of Rahu and Ketu you should perform Shree Chandi Paath in your home."),
                  BulletPoint(text: "Plant a Pomegranate plant on Tuesday to stay away from economic challenges."),
                  BulletPoint(text: "Recite Gajendra Moksha Stotram to remove any kind of suffering and ailment."),
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