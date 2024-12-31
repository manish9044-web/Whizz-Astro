import 'package:flutter/material.dart';

class Scorpio extends StatelessWidget {
  const Scorpio({super.key});

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
          "Scorpio HoroScope",
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
                'Scorpio 2024 Horoscope',
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
                'You’re a mysterious, intense water sign who likes to play up your secretive allure, Scorpio, but as serious Saturn transits your fifth house of drama and the quest for attention in 2024, you’ll be in the spotlight more than ever. There is also more ambitious emphasis on the things you do for fun, like sports and hobbies, so get that competitive vibe of yours ready to start flowing. Because if you’re going to commit your time to something, you might as well try to be the best at it you can be, right?! \n\n Your passionate, aggressive co-leader Mars has an intense effect on you again this year, starting with a fiery partnership with sassy Sagittarius in the very first week. Even though you’re an introvert at heart, this spontaneous energy can expose you to new possibilities and help you welcome more adventure into your life right away. When you begin the year saying yes to invites and opportunities, it tells the Universe that you’re open to happiness and success, and more good things will start to come your way! \n\n Pluto, your other co-leader, has incredible transformational energy, and as it joins experimental, innovative air sign Aquarius from late January to early September, change is on the horizon. You’re typically a fixed sign who likes to hold on to everything, but this transit teaches you that giving yourself permission to let go of the things that aren’t working in your life can be extremely freeing. In 2024, it’s time to figure out which areas of your life could use a refresh and then get out there and hit that reset button!',
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
                'Scorpio Couples Horoscope',
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
                'This year, Neptune joins Saturn in caring Pisces, another intensely emotional water sign, depleting you of selfishness and promoting forgiveness and understanding in your relationship. Egotistical behavior is truly deactivated during this gentle planetary partnership, Scorpio, and combined with your skilled abilities as a lover and intense loyalty, your sensitive, receptive nature makes you one of the best partners anyone could ask for. Spending quality time with bae this year creates dreamy memories to last a lifetime. \n\n Love goddess Venus also partners with compassionate Pisces from mid-March to early April, which increases empathy and understanding. You’re always willing to go the extra mile for your boo, but now you have a better perspective on what they’re going through that encourages you to be there for them no matter what. However, your feelings can also get hurt quite easily now, because you tend to be naïve and too trusting when it comes to dishing out your unconditional love during this sensitive transit. When one loves as hard as you do, sometimes heartache is unavoidable. \n\n Mars moves on to a partnership with debate-prone Gemini between late July and early September, which causes conflict between you and bae. The uncomfortable tension created now could easily last through the end of the year, and it could change the course of your relationship. Taking a joke too far or arguing “just because” is a bad idea and could result in one or both of you holding a grudge that turns into serious resentment. Things could get out of control fast if you don’t agree to disagree, forgive each other, and move on quickly.',
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
                'Scorpio Singles Horoscope',
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
                'Saturn is traveling through introverted, understanding Pisces and your house of romance this year, Scorpio, emphasizing the need to dig deep for the answers you’ve been looking for in your love life. If your share of romantic disappointment has you feeling unloved early this year, that should change over the course of the next twelve months. This transit can teach you important lessons about self-worth and being receptive to love, leading you to be proud of who you are as you embrace your past failures and move forward in self-love. Forgiving yourself for what you view as your faults might be the most important thing you do in the name of love this year. \n\n Sexy Mars visits variety-loving Gemini and your sex zone between late July and early September, shifting your intense romantic attention from just one person (you know you have that one person you’re obsessed with who makes your heart melt every time you see them!) onto more trivial pursuits. Doesn’t sound like you, right?! But this is one of the few times you might be more interested in having a few casual hookups than finding your soul mate. And that’s totally okay! \n\n You’ll be feeling a lot more like your sexy self when the sun spends time in your confident sign from late October to late November, and when all your best qualities are featured, you’re pretty much irresistible. It’s nearly impossible to hide your sexy magnetism from the world this month, and why would you want to? And how great would it be to find your soul mate in time to celebrate your special day together?',
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
                'Scorpio Money & Career Horoscope',
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
                'In 2024, your career growth benefits from the creative, inspirational, stable, and responsible vibe it gets from the combo of Saturn in Pisces. There are two very distinct sides to career success this year, Scorpio, and it pays to know the difference. First, you have the opportunity to form exciting new relationships with coworkers, employees, bosses, and customers or clients, which can help you perform your current job at a higher level or get a job that you’ve wanted for a while or one that suits you better. And second, knowing when to have fun and relax and not get overly stressed about work is an important skill too. Strive for a balance between the two for ultimate career satisfaction. \n\n Another lesson from hardworking Saturn as it travels in intuitive Pisces this year relates to your dream job or job opportunities that seem too good to be true. This transit helps you clear your mind so you can be more receptive to signals that you’re heading in the right direction (or not). When Saturn retrogrades between the end of June and mid-November, you’ll have valuable time to do some serious soul-searching about your career. What’s working and what isn’t? Paying attention to signs from the Universe will point you toward the success you deserve. \n\n Abundant Jupiter, the planet linked to luck and wealth, spends the first five months of the year with money guru Taurus, reminding you to be patient with regard to your money. This long-term transit advises caution, Scorpio, so you will probably want to disregard opportunities to make a lot of money quickly that seem too good to be true. As a smart, savvy, and resourceful researcher, it doesn’t take more than a couple of keystrokes for you to find out who’s for real and who’s trying to scam you. In true Scorpion style, keep those suspicions in the back of your mind when it comes to your hard-earned cash this year!',
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
                'Scorpio Finance Horoscope',
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
                "According to Scorpio Horoscope 2024, the year will be financially good. The presence of Ketu in the eleventh house will be there from the beginning of the year, which will be helpful in ensuring financial stability. However, in the first half of the year, Jupiter might present some challenges by staying in the sixth house. The focus needs to be on financial management. At the beginning of the year, there could be some financial challenges due to Mars and Sun being in the second house. You’ll be able to strengthen your financial position by bypassing the challenges. As per Scorpio Horoscope 2024, Jupiter coming in the seventh house will aspect your eleventh, first, and third house from the month of May, which will increase your efforts and give you a chance to get financial stability.",
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
                'Scorpio Health Horoscope',
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
                "According to Scorpio Horoscope 2024, you need to pay full attention to health at the start of the year as Jupiter will be placed in your sixth house and Saturn will be aspecting it. Due to it, problems related to your digestive system and stomach could become the real troublemaker. Pisces in the fifth house can also result in infection related to water which might affect the stomach and also cause abdominal diseases. \n\nAccording to Scorpio Horoscope 2024, Mars will aspect your third to sixth house between February 5 and March 15. Then, it might result in disease reduction, but between June 1 and June 12, Mars will be present in the sixth house. Mars is transiting in your eighth house between August 26 to October 20. They’ll get you out of challenging times but could cause health troubles. You might also face troubles related to blood impurities & blood pressure and thus take good care of your health.",
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
                'Scorpio Advice',
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
                  BulletPoint(text: "You need to serve brown cows on Thursday."),
                  BulletPoint(text: "Distribute study items to a Brahmin or a student on Thursday."),
                  BulletPoint(text: "Visit the Shani temple on Thursdays and offer your prayers."),
                  BulletPoint(text: "Worshiping Durga Maa throughout the year and offering Kheer on Friday will prove to be beneficial for you."),
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