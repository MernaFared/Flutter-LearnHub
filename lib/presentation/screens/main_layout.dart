import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/logic/app%20cubit.dart';
import 'package:graduation_project/logic/states.dart';

import '../../core/assets_path/images_path.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({Key? key}) : super(key: key);
  static const String id = "MainLayoutScreen";

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,SocialStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=AppCubit.get(context);
        return Scaffold(
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
                Icons.calendar_today_outlined,
              ),
                label: 'My Courses',
              ),
              BottomNavigationBarItem(icon:
              Icon(
                Icons.search,
              ),
                label: 'Search',
              ),
              BottomNavigationBarItem(icon:
              Icon(
                Icons.account_circle,
              ),
                label: 'Account',
              ),
            ],
        ),
        );
      },

    );
  }
}
