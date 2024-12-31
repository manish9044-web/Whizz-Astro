import 'package:flutter/material.dart';

class Pisces extends StatelessWidget {
  const Pisces({super.key});

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
          "Pisces HoroScope",
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
                'Pisces 2024 Horoscope',
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
                'Dear introvert Pisces, are you ready to be in the spotlight in 2024?! Because as ambitious Saturn spends time in your first house of self this year, you’re going to have all eyes on you as your confidence increases and you work to find out who you truly are. Scary? Yes! But the discomfort and awkwardness that you feel can pay off big time in the form of personal growth and transformation. \n\n Additionally, your dreamy ruler Neptune continues to travel through your first house again this entire year, increasing your intuitive gifts and psychic abilities. Tapping into your subconscious via dreams, visions, and premonitions not only gives you an edge over your competition for the next twelve months but also gives you the chance to grow in interesting, alternative ways. Opening yourself to the Universe’s karmic, spiritual, and ethereal enlightenment can make this a truly magical year. \n\n Neptune is retrograde between early July and early December, however, which is when certain realities will hit you like a ton of bricks. Your intuition will still be spot-on, but it might not be able to shield you from the unpleasantness that this harsh transit often reveals. Luckily, with this year being your year of “me,” you should have more tools to deal with the kinds of disappointments that bummer planetary transits can bring. We’re confident that you’ll find a way to make your dreams prevail even when what you’re going through feels like a nightmare!',
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
                'Pisces Couples Horoscope',
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
                'Saturn’s placement in your sensitive, compassionate sign can have both positive and negative impacts on your relationship this year, Pisces. First, on the plus side, being able to see things from your boo’s perspective makes you a more understanding and empathetic partner. However, on the flip side, this transit can make you extremely sensitive, leaving you with resentment and hurt feelings that don’t go away with a simple apology. As an introvert, it’s natural for you to give bae the silent treatment or become passive-aggressive after certain incidents, but this kind of behavior will only hinder the healing process. \n\n Luckily, during the full moon and partial lunar eclipse in your own sign in mid-September you get a chance to be especially intuitive when it comes to your relationship. It’s easy for you to pick up on certain important details now that might seem hidden at other times, which gives you a romantic advantage. Use your special insight to make your partner feel good. Anticipating their needs and then fulfilling them before they even say anything is a huge turn-on! \n\n Dominant Mars feels slightly out of place while linked with like-minded water sign Cancer and your pleasure and romance zone for most of September and October, but your creativity can pay off during this uneven time. A willingness to take the initiative and do some things that normally make you uncomfortable can make a substantial difference during this take-charge transit. Just don’t force anything. It’s extremely important that you both feel comfortable and trust each other 100 percent before you move ahead with anything. Otherwise, there’s about a zero percent chance that your bold moves will be successful.',
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
                'Pisces Singles Horoscope',
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
                'If you aren’t part of a happy couple this year, Pisces, you’re okay with that. Most of the focus will be on you and your growth as a person, which means you won’t be so intent on finding your soul mate in 2024. If you have someone special in your life already but haven’t quite made it to commitment status, you could see some resentment and jealousy there, as well as with your friends. But again, your purpose now isn’t to fixate on other people and cater to their feelings. You do you and the rest will fall into place. You’ll find that healthy relationship when you’re ready for it, not before. \n\n If you’re looking for romance, a full moon in picky, hardworking Virgo hits your relationship zone at the end of February and has you looking for potential loves/lovers who are either close to your version of perfection or willing to put in the extra effort to please you. This might be a time when you start dating multiple people at once to see how they measure up against each other, with only the best of the best making it to the next round, reality TV style! There’s nothing wrong with this approach to dating, but be sure to keep close track of the details so you don’t actually text the wrong person or show up to the wrong place at the wrong time! \n\n The sun and love goddess Venus are also in organized earth sign Virgo in late August, and the moon is new in Virgo early in September, so late summer can be a magical time for your love life. Your odds of finding a romantic traditionalist increase now, so be on the lookout for someone you could see yourself spending forever with. When you put out the message that you’re ready for love, it will find you.',
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
                'Pisces Money & Career Horoscope',
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
                'Quick-thinking Mercury pairs up with daring Sagittarius and your career zone for the first couple weeks of the year, Pisces, stirring up your creativity and encouraging you to turn your ideas into plans that can give you a step up on the job. You stand out from the rest of the crowd during this interesting transit, and while you aren’t always comfortable with that, there are more opportunities available to you now. You might never be a big-time power player, but you can use the charm of this planetary partnership to rule at work now. \n\n With Saturn in your first house, your personal accountability is very high this year, which means you need to make an effort to capitalize on every opportunity that comes your way, especially when it relates to finances. This is a long-term growth year, though, so don’t expect to hit any huge jackpots or get any big checks from unexpected sources. Not counting on big money moments should motivate you to make small, wise moves that will benefit you in the long term and give you the financial security you want and deserve \n\n The notable new moon and solar eclipse in fiery Aries and your money zone show up in early April, so be sure to watch out for erratic spending during this lunation. This aggressive energy in your possessions sector can give off some pretty irresponsible vibes, sending you on silly spending sprees and putting a dent in your bank account. Find a way to stop your crazy impulse buying now or you’ll (literally) pay the consequences later.',
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
                'Pisces Finance Horoscope',
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
                "According to the Pisces Horoscope 2024, this year will be full of financial ups and downs. Whereas Saturn will remain in your twelfth house throughout the year, increasing your spending, and one or more fixed expenditures will persist for the entire year, you must concentrate on improving your financial situation. Proper financial management at the appropriate time and in the correct method will assist you in overcoming these issues.\n\nJupiter in the second house will assist you to some extent, but you may face some obstacles in the middle of the year and may be a victim of severe financial insecurity. However, because of the good state of your finances, you will pay attention to it from August onwards, and you can be successful in becoming financially strong by implementing some new initiatives.",
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
                'Pisces Health Horoscope',
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
                "According to the Pisces Horoscope 2024, the beginning of the year will be full of ups and downs in terms of health. The presence of Rahu in your zodiac sign throughout the year and Ketu in the seventh house will not be beneficial to your health, therefore you will need to pay attention to various sorts of remedies to avoid any kind of physical ailment.\n\nSaturn will also stay in the twelfth house, which might cause eye issues, leg pain, heel pain, injury, and sprain. You may also experience eye ache and watery eyes. Take care of your health, especially between the months of April and May. You may confront additional difficulties when your health deteriorates.\n\nAccording to Pisces Horoscope 2024, this year you will have to pursue your daily routine in a right and balanced manner because Rahu's presence in your zodiac sign will force you to be careless about your health to some level, which may impair your health. If you want to be safe and healthy, make excellent habits a part of your everyday routine. Consume nutritious foods and continue to practice meditation, Yoga, and physical activities. This will enhance your health.",
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
                'Pisces Advice',
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
                  BulletPoint(text: "On Wednesday evening, you should donate black sesame seeds to a temple."),
                  BulletPoint(text: "On a Thursday, wearing the top quality Pukhraj stone in a gold ring on the index finger is very lucky."),
                  BulletPoint(text: "You should recite Dev Guru Brihaspati's Beej Mantra."),
                  BulletPoint(text: "Every Saturday evening, light a mustard oil lamp under the Peepal tree."),
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