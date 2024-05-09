import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/Home/survey_screen.dart';
import 'package:flutter_assignment/Widgets/progress_bar.dart';
import 'package:flutter_assignment/utils/space.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/icons/history.svg',
                    width: 25,
                    height: 25,
                  ),
                  SvgPicture.asset(
                    'assets/icons/menu.svg',
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
              const Space(40),
              const Text(
                'Hello Mark',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Space(10),
              const Text(
                'Share Your Opinion',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Space(20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'complete your Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Space(10),
                    const Text(
                      'By completing at the details you have a higher chance of been seen by brands',
                      style: TextStyle(
                        color: Color.fromRGBO(37, 38, 45, 0.6),
                        fontSize: 13,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Space(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '0%',
                          style: TextStyle(
                            color: Color.fromRGBO(195, 89, 29, 1),
                            fontSize: 16,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                            width: 270,
                            child: AppWIdeProgreesBar(
                                color: Colors.red, part: 0.01)),
                      ],
                    ),
                    const Space(20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(5, 50, 46, 0.05)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/red_done.svg',
                            width: 25,
                            height: 25,
                          ),
                          const Text(
                            'Verify linkedin Accounts',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/next.svg',
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Space(40),
              const Text(
                'Trending survey',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Space(20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SurveyScreen(),
                      ),
                    );
                  },
                  child: TrendingSurveyWidget()),
              const Space(40),
              const Text(
                'Current Rewards',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₹ 1.9L',
                    style: TextStyle(
                      color: Color.fromRGBO(195, 89, 29, 1),
                      fontSize: 36,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Column(
                    children: [
                      Space(10),
                      Text(
                        ' available on Probz',
                        style: TextStyle(
                          color: Color.fromRGBO(195, 89, 29, 1),
                          fontSize: 24,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
