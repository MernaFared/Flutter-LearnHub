import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);
  static const String id = "AboutUsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: Drawer(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                EdgeInsetsDirectional.only(top: 35.0, start: 12, end: 12),
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
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
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
                        children: [
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
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
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
                    SizedBox(
                      height: 20.0,
                    ),


                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
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
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
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
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
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
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(ImagePath.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Center(
          child: Text(
            'About Us',
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: FontPath.poppinsMedium,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.00.h,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImagePath.person,
                        ),
                        Expanded(
                          child: Text(
                            'LearnHub E-Learning App',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: FontPath.poppinsBold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.00.h,
                    ),
                    Text(
                      'is a set of techniques oriented to offer online students a personal and unique experience, with the final goal of maximizing their performance.',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: FontPath.poppinsLight,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.00.h,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImagePath.person,
                        ),
                        Expanded(
                          child: Text(
                            'LearnHub E-Learning App',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: FontPath.poppinsBold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.00.h,
                    ),
                    Text(
                      'is a set of techniques oriented to offer online students a personal and unique experience, with the final goal of maximizing their performance.',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: FontPath.poppinsLight,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.00.h,
                ),
                Center(
                  child: Text(
                    'Meet The Team',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontFamily: FontPath.poppinsBold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.00.h,
                ),
                teamMemberSide(
                  textDecoration: TextDirection.ltr,
                  image: ImagePath.avatarNot,
                  title: 'Marco Sardido',
                  jobTitle: 'CEO/Owner',
                ),
                SizedBox(
                  height: 15.00.h,
                ),
                teamMemberSide(
                  textDecoration: TextDirection.rtl,
                  image: ImagePath.avatarNot,
                  title: 'Keith Basilio',
                  jobTitle: 'Senior Software Engineer',
                ),
                SizedBox(
                  height: 15.00.h,
                ),
                teamMemberSide(
                  textDecoration: TextDirection.ltr,
                  image: ImagePath.avatarNot,
                  title: 'Mohamed Emran',
                  jobTitle: 'System Analyst',
                ),
                SizedBox(
                  height: 15.00.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
