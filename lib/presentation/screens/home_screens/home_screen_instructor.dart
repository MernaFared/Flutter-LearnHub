import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/logic/instructor/instructor%20cubit.dart';
import 'package:graduation_project/logic/instructor/states.dart';
import 'package:graduation_project/models/instructor_course_model.dart';
import 'package:graduation_project/presentation/screens/slide_bar_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class HomeScreenInstructor extends StatelessWidget {
  HomeScreenInstructor({Key? key}) : super(key: key);
  static const String id = "HomeScreenConstructor";

  @override
  Widget build(BuildContext context) {
    var cubit = InstructorCubit.get(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<InstructorCubit,InstructorStates>(
        builder: (context,state){
      return Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsetsDirectional.only(top: 35.0, start: 12, end: 12),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: 180.00,
                          height: 170.00,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD9D9D9),
                          ),
                          child: Center(
                            child: Image.asset(
                              width: 136.09,
                              height: 150.93,
                              ImagePath.slider,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Center(
                        child: Text(
                          'Bella Almeida',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontPath.poppinsBold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.text_fields_sharp,
                            ),
                            SizedBox(width: 10.0,),
                            Text('Title',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.person_outline_sharp,
                            ),
                            SizedBox(width: 10.0,),
                            Text('My Courses',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),


                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.settings_outlined,
                            ),
                            SizedBox(width: 10.0,),
                            Text('Settings',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color:  Colors.black,

                            ),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.warning_amber_rounded,

                            ),
                            SizedBox(width: 10.0,),
                            Text('Report Problem',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.help_outline,

                            ),
                            SizedBox(width: 10.0,),
                            Text('Help',style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,


                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),



        ),
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(ImagePath.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        body: cubit.BottomScreens[cubit.currentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index)
          {
            cubit.changebottom(index);
          },
          currentIndex: cubit.currentindex,
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon:
            Icon(
              Icons.add,
            ),
              label: 'Add Course',
            ),
            BottomNavigationBarItem(icon:
            Icon(
              Icons.person_outline,
            ),
              label: 'My Account',
            ),

          ],
        ),
      );
    },
        listener: (context,state){});
  }
}
