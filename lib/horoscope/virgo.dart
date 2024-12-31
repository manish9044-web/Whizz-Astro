import 'package:flutter/material.dart';

class Virgo extends StatelessWidget {
  const Virgo({super.key});

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
          "Virgo HoroScope",
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
                'Virgo 2024 Horoscope',
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
                'Your precise, often critical perspective on life comes from being ruled by smart, logical Mercury, and you prefer things to be as predictable as possible. However, Virgo, with teacher Saturn moving through ethereal Pisces, your zodiac opposite and your relationship zone, this year, you won’t be able to count on those predictable interactions that you’ve come to value and rely on as part of your everyday routine. \n\n An emotional new moon arrives in empathetic Pisces early in March, lighting up the same compassionate area of your chart that Saturn is transiting, and your attitude toward your close personal relationships softens. This sensitive, forgiving energy makes keeping the peace and avoiding confrontation your top priorities, which should quiet any tendency to serve up harsh criticism. Because you’re much more fair-minded now, you make an excellent mediator for family squabbles or an excellent sounding board for friends or coworkers and their troubles. \n\n Mercury is your cosmic ruler, so its notoriously turbulent retrograde cycles can hit you a little harder than they do other signs. Because of this, health issues could arise during these periods (April 1–25, August 4–28, and November 25–December 15), because Mercury retro cycles can cause mental stress that shows up in the form of headaches, migraines, stomach issues, and more. The one in August briefly passes through your grounded sign, though, so you might be able to deal with that one slightly better than the others.',
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
                'Virgo Couples Horoscope',
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
                'Saturn is traveling through your seventh house of commitment, marriage, and other people this year, Virgo, so we can confidently declare this your “year of relationships”! Whether you’re relatively new to this whole thing called love or have been in a partnership for years, there is plenty that the Universe and its planetary pairings can teach you in the coming months. \n\n For example, the sun joins Saturn in Pisces toward the end of February, empowering you with a shot of compassionate energy that can help you really blossom as a person and grow as a couple. This universal boost of creativity and understanding in your partnership zone brings out your softer side, and romance flourishes. Planning surprise dates or vacays and working hard to figure out new ways to prioritize each other and your relationship shows a whole new side of you that bae will love. \n\n But it’s not all sunshine and roses, because your attention to detail and subsequent quest for perfection can make you difficult to live with on the daily, but it’s also that same skill set that makes you a talented lover with an often insatiable need to please your partner. Look forward to your sex life being on fire from late November through the end of the year as intense Mars moves through expressive, affectionate Leo and your intuitive house of the subconscious and helps you connect with each other on a whole other level. If you have a karmic link to your partner, you’ll discover it now. If this person isn’t your soul mate, you sure do have amazing sexual chemistry!',
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
                'Virgo Singles Horoscope',
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
                'The effects of Saturn in Pisces and your relationship zone helps you become more compassionate and understanding this year, Virgo, which helps you attract a different type of person than you usually do. Water signs who typically find you too analytical and logical will see you as a potential long-term partner now, which can be intimidating as well as quite heartwarming. A gentle Cancer could be your soul mate, and a sexy Scorpio could turn out to be the person of your dreams. Keep an open mind as you date outside your usual “type” in 2024! \n\n A hot Venus-Aries partnership is around for most of April in your transformation zone, impacting your love life in a fast, intense way. Your assertiveness really pays off at this time, Virgo, so if you know what (or who) you want, this is the time to go for it. A direct approach to dating combined with the confidence that this planetary duo provides helps make good things happen. If you’ve been waiting around for someone to notice you, it’s time to make your move. \n\n A full moon in kindred earth sign Taurus and your house of expansion in the middle of November creates an environment of platonic closeness and intimacy, which can help turn a close friendship into something more if that’s what you both desire. There aren’t very many people who can live up to your high standards during this lunation, which is why you might start thinking of an existing relationship with a bestie in more romantic terms. Could your relationship be strengthened by making the transition to romance, or would it quickly crumble? Be sure to talk about potential pros and cons before making the leap.',
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
                'Virgo Money & Career Horoscope',
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
                'Uranus likes to shake things up, but as it travels through fixed earth sign Taurus and your expansion zone this year, Virgo, you’ll have to fight to keep some of your regular routines going. You don’t like unpredictability, but your career and finances could face some uncertainty thanks to the large-scale effect of this transit in 2024. As you’re pushed to branch out from your typical way of doing things, try to keep an open mind and use the lessons you learn from this boundary-pushing transit to get out of your head and take advantage of some opportune moments. \n\n Luckily, Saturn’s placement in ethereal Pisces this year also encourages you to be a bit of a dreamer when it comes to your job, which should allow you to capitalize on some opportunities that you would probably never explore otherwise. Your creativity is through the roof during this transit, so if you want to advance or get a new job in a creative field, this is your year. Partnering with like-minded people and those who are sympathetic to your life story is also an advantageous move during this planetary partnership. Finding and getting your talents in front of people who “get” you can make a dramatic difference in your career in the coming months. \n\n Taking advantage of the lucky Jupiter-Taurus combo that’s happening through the end of May can really improve your luck, especially when you’re open to learning more about investments and listening to advice from others. This mind-expanding cosmic partnership encourages you to move in new directions, but don’t be in too big of a hurry to do so. When big opportunities come along, run them by someone you trust to make sure you’re not getting scammed. You work hard for your money, so losing it all would be an absolute nightmare.',
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
                'Virgo Finance Horoscope',
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
                "According to Virgo Horoscope 2024, the financial situation will be full of ups-and-downs. \n\nYou have to come out from the financial problems. Rahu and Ketu’s presence in the first house and seventh house respectively and Jupiter’s presence in the eighth house till 01st May indicates that it will be unfavorable for you. So, you have to be careful in your financial management. However the movement of Venus and Mercury sometimes in the middle will help you in lowering the financial risk. Please be very cautious while investing. \n\nAccording to Virgo Horoscope 2024, after 01st May, when Jupiter will transit in the ninth house of your birth chart and Saturn’s presence in the sixth house will pave new ways of success for you. Then you would take the risks according to your financial situation and make efforts to become financially strong in business and other sectors. The natives concerned with business have to invest capital and for this you need to be financially strong. The natives who are doing a job will receive good results in the second half of the year and the financial situation will also become strong.",
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
                'virgo Health Horoscope',
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
                "Virgo Horoscope 2024 states that you have to take special care of your health as the movement and transits of the planets are not favoring your health. The presence of Rahu in the seventh house and Ketu in your zodiac sign can make you face mental health problems. Saturn is present in the sixth house of your birth chart will make your immunity power stronger but it can increase health problems in between. So, you have to maintain a disciplined lifestyle and stay alert not to make any mistake that can lead to health ailments. \n\nAccording to the Virgo Horoscope 2024, the presence of Jupiter in the eighth house of your birth chart is not creating favorable conditions for your health due to Saturn’s aspect in the same house. Mars will be aspecting on the seventh house of your birth chart where Rahu is already present resulting in giving you secret problems. Additionally, pain in legs, burning sensation in eyes or ailments in eyes can trouble you. You have to stay alert towards stomach diseases. However, the health problems will decrease in the second half of the year but you have to be extra careful for your health for the whole year.",
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
                'Virgo Advice',
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
                  BulletPoint(text: "Donate Black Sesame in any temple at evening on Wednesdays."),
                  BulletPoint(text: "Light a Diya lamp of Mustard oil under an Eucalyptus (Peepal) tree on Saturday evening."),
                  BulletPoint(text: "Everyday recite Ganesh Atharvsheersha and offer ‘Durvankur’ (Bermuda Grass) to Lord Ganpathi everyday."),
                  BulletPoint(text: "Feed Chapati spread with turmeric on Thursday to a brown Cow."),
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