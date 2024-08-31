import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:sabi/common/constant.dart';
import 'package:sabi/presentation/pages/signin_page.dart';

class OnboardingPage extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        finishButtonText: "Mulai Menulis",
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Constant.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.lerp(
              BorderRadius.circular(12),
              BorderRadius.circular(12),
              1,
            )!,
          ),
        ),
        background: [
          Image.asset('assets/images/onboarding1.png',
              width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
          Image.asset('assets/images/onboarding2.png',
              width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
          Image.asset('assets/images/onboarding3.png',
              width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
        ],
        speed: 1.8,
        controllerColor: Constant.primaryColor,
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(
            color: Constant.primaryColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        indicatorPosition: 90,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Now reading books will be easier',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  ' Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Your Bookish Soulmate Awaits',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Start Your Adventure',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let\'s go!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
        onFinish: () {
          context.goNamed(SigninPage.routeName);
        });
  }
}
