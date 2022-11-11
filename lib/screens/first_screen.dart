import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      //1st Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/boy.png'),
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
                            image: AssetImage('assets/Mahzala.png'),
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
                            image: AssetImage('assets/ceo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/poerty.png'),
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
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.grey[800],
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 2),
              child: Text(
                "Trending Sher",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white60),
              ),
            ),
          ),
          const Divider(),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Card(
              color: Colors.blueGrey,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/mahzalaa.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1494500764479-0c8f2919a3d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1495312040802-a929cd14a6ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: false,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 120),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.linked_camera),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_circle_left_outlined),
                ),
                const Text(
                  'Next',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_circle_right),
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
              const Text(
                'Most-Read Poets',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.Shq6MxCLFq_TO1x1KxVD7wHaFj?pid=ImgDet&rs=1',
                    ),
                  ),
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.cdf2a1a39054d97f5c0579e8d6efa514?rik=nziMkwadtq%2bJKQ&pid=ImgRaw&r=0',
                      ),
                      radius: 35),
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.d68771f08d100200dab2f6c4a0241689?rik=Py%2bSt6TESOpPdA&pid=ImgRaw&r=0&sres=1&sresct=1',
                      ),
                      radius: 35),
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.7c7b8e11b7fc28982b73bda95572f471?rik=7Q5mXkRjriSm4w&pid=ImgRaw&r=0',
                      ),
                      radius: 35),
                ],
              ),
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
