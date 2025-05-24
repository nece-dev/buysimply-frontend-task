import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/bottom_bar.dart';
import 'widgets/build_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 502,
            width: double.infinity,
            child: Image.asset(
              'assets/images/background video.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 405,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black, Colors.black],
                  stops: [0.0, 0.2, 1.0],
                ),
              ),
            ),
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),

                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Stroll Bonfire',
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              color: Color(0xffCCC8FF),
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(blurRadius: 4, color: Colors.black),
                              ],
                            ),
                          ),
                          Icon(Icons.expand_more, color: Color(0xffCCC8FF)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/time.svg',
                            height: 15,
                            width: 13,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '22h 00m',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'ProximaNova',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 12),
                          SvgPicture.asset(
                            'assets/svg/User.svg',
                            height: 23,
                            width: 20,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '103',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'ProximaNova',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff0D0F11),
                                    width: 8,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/Joey 2.png',
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 10,
                                right: -95,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0D0F11),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text(
                                    'Angelina, 28',
                                    style: TextStyle(
                                      fontFamily: 'ProximaNova',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30, left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: const Text(
                                      'What is your favorite time of the day?',
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '“Mine is definitely the peace in the morning.”',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffCCC8FF),
                          fontFamily: 'ProximaNova',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Options
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: buildOption(
                                  'A',
                                  'The peace in the early mornings',
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: buildOption(
                                  'B',
                                  'The magical golden hours',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: buildOption(
                                  'C',
                                  'Wind-down time after dinners',
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: buildOption(
                                  'D',
                                  'The serenity past midnight',
                                  isSelected: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      Row(
                        children: [
                          const Text(
                            'Pick your option.\nSee who has a similar mind.',
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              color: Color(0xffE5E5E5),
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff8B88EF),
                                width: 2,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic,
                                color: Color(0xff8B88EF),
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff8B88EF),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomBar(),
    );
  }
}
