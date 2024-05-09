import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/space.dart';
import 'package:flutter_svg/svg.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, size: 30)),
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
              TrendingSurveyWidget(),
              const Space(40),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: double.infinity,
                height: 310,
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
                child: Column(children: [
                  Center(
                    child: const Text(
                      'survey Eligibility',
                      style: TextStyle(
                        color: Color.fromRGBO(195, 89, 29, 1),
                        fontSize: 14,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Space(10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(5, 50, 46, 0.05),
                    ),
                    child: Center(
                      child: Text(
                        'Participants must be at least 18 years old. Only one survey submission per person is allowed.',
                        style: TextStyle(
                          color: Color.fromRGBO(5, 50, 46, 1),
                          fontSize: 13,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Space(40),
                  Center(
                    child: const Text(
                      'Payout rules',
                      style: TextStyle(
                        color: Color.fromRGBO(195, 89, 29, 1),
                        fontSize: 14,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Space(10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        'Payouts are issued upon successful survey completion. \nPayment methods and amounts will be specified in advance.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(5, 50, 46, 1),
                          fontSize: 13,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Space(40),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(5, 50, 46, 1),
                ),
                child: Center(
                  child: const Text(
                    'Start survey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingSurveyWidget extends StatelessWidget {
  const TrendingSurveyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: double.infinity,
      height: 225,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(5, 50, 46, 0.05),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(39, 49, 30, 0.7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: const Center(
                        child: Text(
                          '₹',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      '500  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '2days left',
                style: TextStyle(
                  color: Color.fromRGBO(10, 86, 233, 1),
                  fontSize: 13,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Space(15),
          const Text(
            'Mac lipstick shade survey for red and blue',
            // textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Space(10),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'colour pallet and design of the product',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontSize: 13,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Space(10),
                    Container(
                      height: 30,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(87, 44, 1, 0.1),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Space(
                            10,
                            isHorizontal: true,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/book.svg',
                              ),
                            ),
                          ),
                          const Text(
                            '   Cosmetic',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icons/lipstick.png',
                width: 100,
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
