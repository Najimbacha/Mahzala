// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahzalaaa/widgets/poet_avatar.dart';
import 'package:mahzalaaa/widgets/tappy_widgets.dart';
import 'package:mahzalaaa/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  CarouselSlider(
                    items: [
                      // CardOfTheDay(Image: AssetImage('assets/boy.png')),
                      // 1st Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/a.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/b.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/c.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/d.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeindex = index;
                        });
                      },
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 400),
                      viewportFraction: 1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Center(child: buildIndicator()),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.only(top: 53, left: 8),
              child: Text(
                "Trending Sher",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white60),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/backf.png',
                          ),
                          fit: BoxFit.cover)),
                  child: TappyCard(),
                ),
              ),
            ],
          ),
          const Divider(
            height: 30,
            color: Colors.white,
          ),
          SizedBox(
            height: 33,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 130),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    size: 18,
                  ),
                ),
                Text('|'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    size: 18,
                  ),
                ),
                Text('|'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                const Text(
                  'Swipe',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: const Text(
                  'Most-Read Poets',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 15),
              PoetAvatar(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: const [
              //     CircleAvatar(
              //       radius: 35,
              //       backgroundImage: NetworkImage(
              //         'https://th.bing.com/th/id/OIP.Shq6MxCLFq_TO1x1KxVD7wHaFj?pid=ImgDet&rs=1',
              //       ),
              //     ),
              //     CircleAvatar(
              //         backgroundImage: NetworkImage(
              //           'https://th.bing.com/th/id/R.cdf2a1a39054d97f5c0579e8d6efa514?rik=nziMkwadtq%2bJKQ&pid=ImgRaw&r=0',
              //         ),
              //         radius: 35),
              //     CircleAvatar(
              //         backgroundImage: NetworkImage(
              //           'https://th.bing.com/th/id/R.d68771f08d100200dab2f6c4a0241689?rik=Py%2bSt6TESOpPdA&pid=ImgRaw&r=0&sres=1&sresct=1',
              //         ),
              //         radius: 35),
              //     CircleAvatar(
              //         backgroundImage: NetworkImage(
              //           'https://th.bing.com/th/id/R.7c7b8e11b7fc28982b73bda95572f471?rik=7Q5mXkRjriSm4w&pid=ImgRaw&r=0',
              //         ),
              //         radius: 35),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: 4,
        effect: const WormEffect(
          dotColor: primaryColor,
          dotWidth: 6,
          dotHeight: 6,
        ),
      );
}
