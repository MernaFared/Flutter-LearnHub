import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/on_boarding_model.dart';
import 'package:graduation_project/presentation/screens/login_screen.dart';
import 'package:graduation_project/presentation/screens/register_screen.dart';
import 'package:graduation_project/presentation/screens/welcome_screen/welcome_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const String id = "OnBoardingScreen";
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var pageController = PageController();
  bool lastScreen = false;
  List<OnBoardingModelScreens> onBoardingModelScreensList = [
    OnBoardingModelScreens(
      image: ImagePath.boardingOne,
      title: 'Welcome to Learnhub',
      paragraph: 'This is an online academy that allows you\'re discover',
    ),
    OnBoardingModelScreens(
      image: ImagePath.boardingTwo,
      title: 'Anytime,Anywhere',
      paragraph: 'Enjoy the captivating process of online learning',
    ),
    OnBoardingModelScreens(
      image: ImagePath.boardingThree,
      title: 'Ready to Find Course ? ',
      paragraph: 'Join our online academy that will help you learn',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.00.w,
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  if (index == onBoardingModelScreensList.length - 1) {
                    setState(() {
                      lastScreen = true;
                    });
                  } else {
                    setState(() {
                      lastScreen = false;
                    });
                  }
                },
                controller: pageController,
                itemBuilder: (context, index) => customOnBoardingItem(
                  onBoardingModelScreensList[index],
                ),
                itemCount: onBoardingModelScreensList.length,
              ),
            ),
            Row(
              children: [
                customSkipOrNextTextButton(
                    onPressed: () {
                      // navigate To welcome screen
                      navigateTo(context,  const WelcomeScreen());
                      //navigateTo(context,  RegisterScreen());
                    }, text: lastScreen ? '' : 'skip'),
                Expanded(
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: pageController,
                      effect: const SwapEffect(
                        activeDotColor: AppColors.smoothPageColor,
                      ),
                      count: onBoardingModelScreensList.length,
                    ),
                  ),
                ),

                customSkipOrNextTextButton(
                    onPressed: () {

                      if (lastScreen) {
                        // navigate To welcome screen
                        navigateTo(context,  const WelcomeScreen());
                        //navigateTo(context,  RegisterScreen());
                      } else {
                        pageController.nextPage(
                          duration: const Duration(
                            milliseconds: 800,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    text: lastScreen ? 'done' : 'next'),
              ],
            ),
            SizedBox(height: 124.h,)
          ],
        ),
      ),
    );
  }
}
