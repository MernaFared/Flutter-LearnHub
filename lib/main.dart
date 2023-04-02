import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/logic/app%20cubit.dart';
import 'package:graduation_project/presentation/screens/about_us_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details1.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details2.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details3.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details4.dart';
import 'package:graduation_project/presentation/screens/home_screens/home_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/home_screen_instructor.dart';
import 'package:graduation_project/presentation/screens/home_screens/instructor_course_details.dart';
import 'package:graduation_project/presentation/screens/home_screens/my_account_instructor_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/my_account_user_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/my_courses.dart';
import 'package:graduation_project/presentation/screens/home_screens/notification_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/search1_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/search_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/start_successful_screen.dart';
import 'package:graduation_project/presentation/screens/interests_screen.dart';
import 'package:graduation_project/presentation/screens/login_screen.dart';
import 'package:graduation_project/presentation/screens/main_layout.dart';
import 'package:graduation_project/presentation/screens/on_boarding_screen.dart';
import 'package:graduation_project/presentation/screens/register_screen.dart';
import 'package:graduation_project/presentation/screens/screen1.dart';

import 'logic/instructor/instructor cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [
       BlocProvider(
         create: (BuildContext context) => AppCubit(),
       ),
       BlocProvider(
         create: (BuildContext context) => InstructorCubit(),
       )
     ],
      child: ScreenUtilInit(
        designSize: const Size(338, 822),
        builder: (context, ll) {
          return MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: Colors.blue,
              appBarTheme: const AppBarTheme(
                color: Colors.white,
                elevation: 0.00,
              ),
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.blue,
                selectedLabelStyle: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: Screen1.id,
            routes: {
              Screen1.id: (context) => const Screen1(),
              OnBoardingScreen.id: (context) => const OnBoardingScreen(),
              RegisterScreen.id: (context) => const RegisterScreen(),
              LoginScreen.id: (context) => const LoginScreen(userType: 'student',),
              InterestsScreen.id: (context) => const InterestsScreen(),
              MainLayoutScreen.id: (context) => const MainLayoutScreen(),
              HomeScreen.id: (context) => HomeScreen(),
              MyCoursesScreen.id: (context) => MyCoursesScreen(),
              SearchScreen.id: (context) => SearchScreen(),
              Search1Screen.id: (context) => Search1Screen(),
              CourseDetails1.id: (context) => CourseDetails1(),
              CourseDetails2.id: (context) => CourseDetails2(),
              CourseDetails3.id: (context) => const CourseDetails3(),
              CourseDetails4.id: (context) => CourseDetails4(),
              StartSuccessScreen.id: (context) => const StartSuccessScreen(),
              NotificationScreen.id: (context) => NotificationScreen(),
              MyAccountScreenInstructor.id: (context) =>
                  MyAccountScreenInstructor(),
              MyAccountScreenUser.id: (context) => MyAccountScreenUser(),
              AboutUsScreen.id: (context) => const AboutUsScreen(),
              HomeScreenInstructor.id: (context) => HomeScreenInstructor(),
              InstructorCourseDetails.id: (context) =>
              const InstructorCourseDetails(),
            },
          );
        },
      ),
    );
  }
}
