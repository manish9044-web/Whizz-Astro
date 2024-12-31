import 'package:flutter/material.dart';

class Cancer extends StatelessWidget {
  const Cancer({super.key});

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
          "Cancer HoroScope",
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
                'Cancer 2024 Horoscope',
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
                'Cancer, as an emotional, moody water sign with a heart of gold, it’s time to come out of your shell a little bit this year. You’ll always be something of an introvert, but 2024 will have more adventures and learning experiences than last year. \n\n Wisdom-seeking Saturn is matched with kindred water sign Pisces and your expansion zone, prompting you to get out and explore more. World travel, or at least a ton of little day trips and local excursions, should be on your to-do list if at all possible. Having a healthy curiosity about the world around you provides new and exciting experiences that can expand your knowledge base, beliefs, opinions, and perspectives in all areas of your life and help you grow extensively this year. \n\n Because it’s your cosmic leader, the sensitive moon’s various phases affect you more than a lot of other signs, and this year’s special lunations include two full moons and lunar eclipses (in Libra in late March and Pisces in mid-September) and two new moons and solar eclipses (in Aries in early April and Libra in early October). These will offer excellent opportunities for you to take advantage of the universal shifts that are taking place. These magical lunations are said to promote higher levels of consciousness, so use your heightened emotions during these exceptional lunar events to follow up on your innate intuitive feelings and psychic visions.',
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
                'Cancer Couples Horoscope',
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
                'Having someone special in your life is important to most emotional water signs like you, Cancer, and while being single has its moments, you probably won’t miss it in 2024. As long as you make an effort to keep the spark alive this year, your partnership will thrive. \n\n Saturn impacts your house of exploration and knowledge this year, so you will be coming out of your shell and having more adventures than usual, which is great for your relationship! If you’re with a fire or air sign, your partner is sure to embrace this new version of you! Earth and water sign partners might have a harder time embracing your change in attitude, but once they do, it will be the two of you against the world. There’s no limit to what you can do, learn, or achieve together when you work as a cohesive team. \n\n The moon’s position strongly affects your relationship this year, and when it’s full in serious Capricorn and your seventh house of partnerships in late June, commitment and security are on your mind. Making sure your partner knows how committed you are is a priority now, which could mean getting engaged, having a commitment ceremony, or going all out for your anniversary. Finding big and small ways to let each other know how much you mean to each other can make a big difference during this lunation. \n\n Negotiation and compromise take top priority when the sun spends time in partnership-focused Libra and your house of home and family from late September to late October, emphasizing how important it is for you to be open-minded and view things from each other’s perspective whenever possible. If your relationship includes children, make sure your home is a safe place for everyone to express their feelings in a loving and nonjudgmental environment',
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
                'Cancer Singles Horoscope',
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
                'Can a caring, nurturing Cancer be happy and fulfilled as a single Crab this year? Of course! But while being single has its fabulous moments, deep down you’re probably ready to partner up, tbh. \n\n That doesn’t mean you won’t have your share of magic, starting with Saturn’s travels through creative Pisces. The more imaginative you are about your dating life, the better it will be, and incorporating things like art, spirituality, and astrology will put you on a path toward like-minded people you have a lot in common with. Being open to the possibilities that love offers can totally change your life this year, Cancer. \n\n Passionate Mars is in seriously ambitious Capricorn and your partnership zone for a good part of January and into February, giving you the confidence and drive to go after what and who you want with strength and determination. Make a plan and go for it. There could be someone out there who is rooting for you to fail, which is all the more reason to succeed. You have a lot going for you during this transit, and this is a good time to attract someone who wants the same kinds of things in the future (family, similar career, etc.) as you do. \n\n The full moon and lunar eclipse land in sensitive Pisces and your house of expansion in the fall, creating some interesting romantic opportunities. This is a great time to get closure on a past relationship, because even if it doesn’t feel like it, holding on to feelings for an ex can prevent you from finding someone new in the future. This full lunation is perfect for dropping that baggage so you can move on feeling light, refreshed, and ready for something (and someone) new.',
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
                'Cancer Money & Career Horoscope',
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
                'This year, hardworking Saturn’s partnership with creative Pisces and your expansion zone means branching out with regard to both your career and finances. Paying attention to your core values will be a big key to your happiness in these areas this year, Cancer, because going against your morals and beliefs in order to get ahead won’t sit right with you at all. A major key to success in all definitions of the word in 2024 is finding people to work with and companies to work for or invest in that line up with your beliefs. \n\n The sun partners with money-focused Taurus and your networking zone between late April and late May, so your greatest moneymaking opportunities come from combining your artistic abilities with people who can connect you with the outlets to get them seen by the world. This isn’t the time to be shy about your talents, Cancer. By using this transit’s considerable connections and resources, you should definitely be able to start some pretty amazing things. \n\n Unpredictable Uranus is in the background and paired with money-savvy Taurus all year, urging you to diversify some of your investments. Experimenting a little more than usual with your money can work out great, but it can also lead to falling for scams. Remember that if something sounds too good to be true, it probably is. Only trust sources of info that you know, and when in doubt, do some research before plunking down your hard-earned cash. Think log-term growth instead of get-rich-quick!',
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
                'Cancer Finance Horoscope',
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
                "According to Cancer Horoscope 2024, the year is showcasing trouble in balancing finances. You will have to pay attention to your financial balance again and again because on the one hand finance will repeatedly come your way, on the other hand, you might feel trouble between income and expenditure. As per Cancer Horoscope 2024, you’ll also need a financial advisor who can help you become financially strong by providing the right advice from time to time because this year when money will arrive in equal amounts, there could be a rise in expenses too. Now, how you maintain a balance between them will reflect your financial condition.",
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
                'Cancer Health Horoscope',
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
                "According to Cancer Horoscope 2024, the beginning of the year is not going to be favorable from a health perspective, so you should be extra careful. The Sun and Mars will be placed in the sixth house due to which the body temperature may increase and due to this you may have to face problems like fever & headache. You should also avoid eating very hot chili spices. Saturn will remain in the eighth house throughout the year so that there are no major diseases arising this year. People need to be prepared for it in advance and take even small problems seriously. Between March 15 and April 23, you’ll have to take special care of your health because Mars will be in the eighth house with Saturn. Drive the vehicle carefully during the period and if possible get someone else to drive the vehicle. \n\nAs per Cancer Horoscope 2024, if you’re suffering from any kind of old problem, then the chances of undergoing surgery during the period are high. After this, from 23rd April to 1st June, the transit of Mars will take place in the ninth house, where Rahu is already present. This results in the formation of Mangal-Rahu Angarak Yog, in which your father might face health troubles and you could also encounter health problems. After this time, the chances of improvement in your health will be gradual, and after July 12, it will move towards favorable conditions. As per Cancer Prediction 2024, the month of November and December will bring health benefits, but small problems can come up in between.\n\nAccording to Cancer Horoscope 2024, you might face more problems of bile nature in your body. Apart from it, as per weather, problems like cold, fever, headache, and back pain can also occur. You should not ignore even small problems and do some exercise & Yoga to keep your body fit. With this, it becomes easy to solve health concerns timely and stay healthy.",
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
                  BulletPoint(text: "You should recite Shri Hanuman Chalisa and Shri Bajrang Baan daily."),
                  BulletPoint(text: "Complete Rudraabhishek on your birthday and special occasions or events."),
                  BulletPoint(text: "To get Saturn’s favor, a little mustard oil should be massaged on the smallest finger of Shani Dev’s right foot on Saturday."),
                  BulletPoint(text: "Serving flour and sugar to the ants will also be beneficial for you."),
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