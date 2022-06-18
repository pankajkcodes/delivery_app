import 'package:delivery_app/views/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void changeSlider() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                padEnds: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                    if (value == sliderList.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const SplashScreen()),
                      );
                    }
                  });
                },
                itemCount: sliderList.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return MySlider(
                    index: index,
                  );
                }),
          ),
          Padding(
            padding:  EdgeInsets.all(18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                sliderList.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  // container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 11 : 11,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange, width: 1),
        color: currentIndex == index ? Colors.orange : Colors.white,
      ),
    );
  }
}

class MySlider extends StatelessWidget {
  final int index;

  const MySlider({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Our happy partners",
                style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: height * 0.45,
              child: Image.asset('assets/images/slider${index + 1}.png'),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Text(sliderList[index])
          ],
        ),
      ),
    );
  }
}

// slider declared
class Slider extends StatelessWidget {
  String image;

  Slider({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // contains container
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image given in slider
            Image(image: AssetImage(image)),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

List sliderList = [
  "Thanks to Delivery App",
  "Thanks to Delivery App",
  "Thanks to Delivery App",
];
