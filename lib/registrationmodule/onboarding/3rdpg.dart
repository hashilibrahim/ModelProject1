import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/welcomeandservice/welcmpg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(),
  ));
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                _buildPage(
                  'assets/images/SCNDPG.png',
                  'Welcome to Surf!',
                  'Explore essential UI elements for your designs.',
                  Color(0xFFFFDF9F),
                  true,
                ),
                _buildPage(
                  'assets/images/3rdog.png',
                  'Design Template Uploads Every Tuesday',
                  'Make sure to check my Uplabs profile every Tuesday.',
                  Color(0xFFFFDF9F),
                  false,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _controller.jumpToPage(1);
                  },
                  child: Text('Skip', style: TextStyle(color: Colors.black)),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 7,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (currentPage == 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HOME3()),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    currentPage == 1 ? 'Done' : 'Next',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath, String title, String description,
      Color bgColor, bool isRightCurve) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenHeight = constraints.maxHeight;
        double imageHeight = screenHeight * 0.70; // 65% of screen for image
        double textHeight = screenHeight * 0.30; // 35% of screen for text

        return Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: imageHeight,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                      bottomRight:
                          isRightCurve ? Radius.circular(100) : Radius.zero,
                      bottomLeft:
                          !isRightCurve ? Radius.circular(100) : Radius.zero,
                    ),
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: textHeight,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
