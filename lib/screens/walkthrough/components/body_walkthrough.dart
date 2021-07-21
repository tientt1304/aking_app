import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/sign_in/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'walkthrough_content.dart';
import 'package:aking_app/routes.dart';

class BodyWalkThrough extends StatefulWidget {
  @override
  _BodyWalkThroughState createState() => _BodyWalkThroughState();
}

class _BodyWalkThroughState extends State<BodyWalkThrough> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);
  List<Map<String, String>> WalkthroughData = [
    {
      'image1': 'assets/images/events.svg',
      'text1': 'Welcome to aking',
      'text2': 'Whats going to happen tomorrow?'
    },
    {
      'image1': 'assets/images/hero.svg',
      'text1': 'Work happens',
      'text2': 'Get notified when work happens.'
    },
    {
      'image1': 'assets/images/analysis.svg',
      'text1': 'Tasks and assign',
      'text2': 'Task and assign them to colleagues.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Expanded(
              flex: 8,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: WalkthroughData.length,
                itemBuilder: (context, index) => WalkthroughContent(
                  image: WalkthroughData[index]['image1'],
                  text1: WalkthroughData[index]['text1'],
                  text2: WalkthroughData[index]['text2'],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  WalkthroughData.length,
                  (index) => buildDot(index: index),
                ),
              ),
            ), //buildDot
            Expanded(
              flex: 7,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    (currentPage == 0)
                        ? 'assets/images/Footer1.svg'
                        : ((currentPage == 1)
                            ? 'assets/images/Footer2.svg'
                            : 'assets/images/Footer3.svg'),
                    width: getProportionateScreenWidth(375),
                    height: getProportionateScreenHeight(812),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(97),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (currentPage < 3) {
                            currentPage = currentPage + 1;
                            _pageController.animateToPage(currentPage,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          }
                          if (currentPage > 2) {
                            currentPage = 2;
                            Navigator.pushNamed(context, 'tologin');
                          }
                        });
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: kprimaryColor,
                      padding: EdgeInsets.fromLTRB(
                          getProportionateScreenWidth(99),
                          getProportionateScreenHeight(13),
                          getProportionateScreenWidth(99),
                          getProportionateScreenHeight(13)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(177),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'tologin');
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(18),
                        ),
                      ),
                      color: (currentPage == 0)
                          ? primaryColor
                          : ((currentPage == 1) ? footerColor2 : footerColor3),
                      textColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ), //buildFooter
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: getProportionateScreenHeight(8),
      width: getProportionateScreenWidth(8),
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFF000000) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
