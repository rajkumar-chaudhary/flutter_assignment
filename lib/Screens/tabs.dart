import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/Earnings/earnings.dart';
import 'package:flutter_assignment/Screens/Home/home_screen.dart';
import 'package:flutter_assignment/Screens/Home/survey_screen.dart';
import 'package:flutter_assignment/Screens/Surveys/surveys.dart';
import 'package:flutter_svg/svg.dart';

class Tabs extends StatefulWidget {
  static const routeName = '/tabs-screen';
  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late AnimationController _hideBottomBarAnimationController;

  @override
  void initState() {
    _hideBottomBarAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _hideBottomBarAnimationController.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _pages = [
    const HomeScreen(),
    const Surveys(),
    EarningsScreen()
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.laptop,
    Icons.shopping_cart_outlined,
    Icons.person,
  ];
  final textList = <String>[
    'Home',
    'Surveys',
    'Earnings',
    // 'Account',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[0],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        height: 70,
        // color: Colors.red.withOpacity(0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarButtonWidget(_selectedIndex == 0, 1),
              NavBarButtonWidget(_selectedIndex == 1, 2),
              NavBarButtonWidget(_selectedIndex == 2, 3)
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarButtonWidget extends StatelessWidget {
  NavBarButtonWidget(this.isActive, this.num);
  int num;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/${num == 1 ? 'home' : num == 2 ? 'surveys' : 'earnings'}.svg',
          ),
          Text(
            num == 1
                ? 'Home'
                : num == 2
                    ? 'Surveys'
                    : 'Earnings',
            // textAlign: TextAlign.left,
            style: TextStyle(
              color: isActive
                  ? Color.fromRGBO(5, 50, 46, 1)
                  : Color.fromRGBO(37, 38, 45, 0.6),
              fontSize: 13,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
