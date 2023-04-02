import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';

import 'package:graduation_project/presentation/screens/screen1.dart';
import 'package:graduation_project/presentation/screens/show.dart';

import '../../widgets/components.dart';

class CourseDetails2 extends StatefulWidget {
  CourseDetails2({Key? key}) : super(key: key);
  static const String id = "CourseDetails2";
  @override
  State<CourseDetails2> createState() => _CourseDetails2State();
}

class _CourseDetails2State extends State<CourseDetails2> {
  bool flagTap = true;
  double rating=0;
  bool usa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 15.0.h,
            right: 10.00.w,
            left: 10.00.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const Image(image: AssetImage(ImagePath.shape)),
                  Row(
                    children: [
                      Text(
                        'Product Design v1.0',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsBold,
                          fontSize: 20.sp,
                        ),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Image(image: AssetImage(ImagePath.person)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                'Product Design v1.0',
                style: TextStyle(
                  fontFamily: FontPath.poppinsRegular,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'Instructor | Daniel Walter',
                style: TextStyle(
                  fontFamily: FontPath.poppinsLight,
                  fontSize: 12.sp,
                  color: AppColors.primaryButtonColor,
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        flagTap = true;
                      });
                    },
                    child: Text(
                      'Lectures',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsMedium,
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.00.w,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        flagTap = false;
                      });
                    },
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsMedium,
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  flagTap
                      ? Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 8.0.w,
                          ),
                          child: Container(
                            width: 70.w,
                            height: 3.h,
                            color: AppColors.primaryButtonColor,
                          ),
                        )
                      : Row(
                          children: [
                            SizedBox(
                              width: 75.00.w,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 8.0.w,
                              ),
                              child: Container(
                                width: 50.w,
                                height: 3.h,
                                color: AppColors.primaryButtonColor,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                if(flagTap == true)
                  ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Text(
                            'Section 1 - Introduction',
                            style: TextStyle(
                              fontFamily: FontPath.poppinsLight,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Row(
                              children: [
                                Text(
                                  '01',
                                  style: TextStyle(
                                    fontFamily: FontPath.poppinsMedium,
                                    fontSize: 24.sp,
                                    color: const Color(0xffA9D8F6),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.00.h,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Welcome to the Course',
                                        style: TextStyle(
                                          fontFamily:
                                          FontPath.poppinsRegular,
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'video - 6:10 mins',
                                        style: TextStyle(
                                          fontFamily:
                                          FontPath.poppinsRegular,
                                          fontSize: 14.sp,
                                          color:
                                          AppColors.primaryButtonColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.h, horizontal: 10.w),
                                    side: BorderSide(
                                      width: 3.w,
                                      color: AppColors.primaryButtonColor,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      navigateTo(context, Screen1());
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_downward_rounded,
                                    color: AppColors.primaryButtonColor,
                                  ),
                                ),
                              ],
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                              height: 30.h,
                            ),
                            itemCount: 15,
                          ),
                          Text('Students also bought',style: TextStyle
                            (
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(
                                          0.w,
                                          7.h,
                                        ),
                                        blurRadius: 4.r,
                                        color: Colors.black.withOpacity(0.25),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(22.00.r),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(34.0),
                                        child: Image(image: AssetImage('assets/images/graphic.jpg',
                                        ),width: 97.0,
                                          height: 95.0,

                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 18.h,
                                          bottom: 8.0.h,
                                          left: 6.0.w,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cyber Royale Flutter',
                                              style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 16.sp,
                                              ),
                                              maxLines: 2,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 7.h,
                                                bottom: 15.h,
                                                left: 6.w,
                                              ),
                                              child: Text(
                                                '7hrs 77 min',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff1F1F39),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                RatingBar.builder(
                                                  itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
                                                  onRatingUpdate:(rating)=>    setState(() {
                                                    this.rating=rating;
                                                  }),
                                                  minRating: 1,
                                                  updateOnDrag: true,
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text('$rating',style: TextStyle(fontSize: 19.0,
                                                  fontWeight: FontWeight.bold,
                                                ),),

                                              ],
                                            ),
                                            SizedBox(height: 0.10,),
                                            Text('\$ 74.00 ',
                                              style: TextStyle(fontSize: 18.0,
                                                  color: Colors.blue),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(
                                          0.w,
                                          7.h,
                                        ),
                                        blurRadius: 4.r,
                                        color: Colors.black.withOpacity(0.25),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(22.00.r),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(34.0),
                                        child: Image(image: AssetImage('assets/images/graphic.jpg',
                                        ),width: 97.0,
                                          height: 95.0,

                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 18.h,
                                          bottom: 8.0.h,
                                          left: 6.0.w,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cyber Royale Flutter',
                                              style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 16.sp,
                                              ),
                                              maxLines: 2,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 7.h,
                                                bottom: 15.h,
                                                left: 6.w,
                                              ),
                                              child: Text(
                                                '7hrs 77 min',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff1F1F39),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                RatingBar.builder(
                                                  itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
                                                  onRatingUpdate:(rating)=>    setState(() {
                                                    this.rating=rating;
                                                  }),
                                                  minRating: 1,
                                                  updateOnDrag: true,
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text('$rating',style: TextStyle(fontSize: 19.0,
                                                  fontWeight: FontWeight.bold,
                                                ),),

                                              ],
                                            ),
                                            SizedBox(height: 0.10,),
                                            Text('\$ 74.00 ',
                                              style: TextStyle(fontSize: 18.0,
                                                  color: Colors.blue),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(
                                          0.w,
                                          7.h,
                                        ),
                                        blurRadius: 4.r,
                                        color: Colors.black.withOpacity(0.25),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(22.00.r),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(34.0),
                                        child: Image(image: AssetImage('assets/images/graphic.jpg',
                                        ),width: 97.0,
                                          height: 95.0,

                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 18.h,
                                          bottom: 8.0.h,
                                          left: 6.0.w,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cyber Royale Flutter',
                                              style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 16.sp,
                                              ),
                                              maxLines: 2,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 7.h,
                                                bottom: 15.h,
                                                left: 6.w,
                                              ),
                                              child: Text(
                                                '7hrs 77 min',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff1F1F39),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                RatingBar.builder(
                                                  itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
                                                  onRatingUpdate:(rating)=>    setState(() {
                                                    this.rating=rating;
                                                  }),
                                                  minRating: 1,
                                                  updateOnDrag: true,
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text('$rating',style: TextStyle(fontSize: 19.0,
                                                  fontWeight: FontWeight.bold,
                                                ),),

                                              ],
                                            ),
                                            SizedBox(height: 0.10,),
                                            Text('\$ 74.00 ',
                                              style: TextStyle(fontSize: 18.0,
                                                  color: Colors.blue),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('your service rating:$rating',style: TextStyle(fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 0.7,),
                                RatingBar.builder(
                                  itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
                                  onRatingUpdate:(rating)=>    setState(() {
                                    this.rating=rating;
                                  }),
                                  minRating: 1,
                                  updateOnDrag: true,
                                ),
                                SizedBox(
                                  height: 17.0,
                                ),
                                Text('Additional feedback',style: TextStyle(fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87
                                ),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.grey[100],
                                      child: TextFormField(),

                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: usa,
                                        onChanged: (value) {
                                          setState(() {
                                            usa = value!;
                                          });
                                        }),
                                    const Text(
                                      'i have read and accipted privacy policy',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Center(
                                  child: Container(
                                    // color:borderColor ,
                                    width: 206.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: MaterialButton(onPressed: (){},child: Text('Submit Feedback',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0
                                    ),),),
                                  ),
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      if(flagTap == false)
                      //   ListView.separated(
                      //   shrinkWrap: true,
                      //   physics: NeverScrollableScrollPhysics(),
                      //   itemBuilder: (context, index) => Row(
                      //     children: [
                      //       Icon(
                      //         Icons.share_rounded,
                      //         size: 30.w,
                      //         color: AppColors.primaryButtonColor,
                      //       ),
                      //       SizedBox(
                      //         width: 20.00.h,
                      //       ),
                      //       Text(
                      //         'Welcome to the Course',
                      //         style: TextStyle(
                      //           fontFamily: FontPath.poppinsLight,
                      //           fontSize: 16.sp,
                      //           color: Colors.black,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   separatorBuilder: (context, index) => SizedBox(
                      //     height: 30.h,
                      //   ),
                      //   itemCount: 15,
                      // ),
                        Column(
                          children: [
                            InkWell(
                              onTap: (){
                                navigateTo(context,Show());
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(20.0),
                                  color: Colors.grey[100],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 0.40),
                                  child: Row(
                                      children: [

    Icon(
               Icons.chat_bubble,
               size: 30.w,
              color: AppColors.primaryButtonColor,
             ),
                                     SizedBox(
                                       width: 20.0,
                                     ),
                                        Text('Communication Room',style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ],
                                    ),
                                ),

                              ),
                            ),
                          ],
                        ),

                    ],
                  ),
                ),
              ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     physics: const BouncingScrollPhysics(),
              //
              //     child: flagTap == true
              //         ? Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Section 1 - Introduction',
              //               style: TextStyle(
              //                 fontFamily: FontPath.poppinsLight,
              //                 fontSize: 16.sp,
              //               ),
              //             ),
              //             SizedBox(
              //               height: 16.h,
              //             ),
              //             ListView.separated(
              //               shrinkWrap: true,
              //               physics: const NeverScrollableScrollPhysics(),
              //               itemBuilder: (context, index) => Row(
              //                 children: [
              //                   Text(
              //                     '01',
              //                     style: TextStyle(
              //                       fontFamily: FontPath.poppinsMedium,
              //                       fontSize: 24.sp,
              //                       color: const Color(0xffA9D8F6),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     width: 20.00.h,
              //                   ),
              //                   Expanded(
              //                     child: Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       children: [
              //                         Text(
              //                           'Welcome to the Course',
              //                           style: TextStyle(
              //                             fontFamily:
              //                                 FontPath.poppinsRegular,
              //                             fontSize: 14.sp,
              //                             color: Colors.black,
              //                           ),
              //                         ),
              //                         Text(
              //                           'video - 6:10 mins',
              //                           style: TextStyle(
              //                             fontFamily:
              //                                 FontPath.poppinsRegular,
              //                             fontSize: 14.sp,
              //                             color:
              //                                 AppColors.primaryButtonColor,
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   OutlinedButton(
              //                     style: OutlinedButton.styleFrom(
              //                       shape: const CircleBorder(),
              //                       padding: EdgeInsets.symmetric(
              //                           vertical: 10.h, horizontal: 10.w),
              //                       side: BorderSide(
              //                         width: 3.w,
              //                         color: AppColors.primaryButtonColor,
              //                       ),
              //                     ),
              //                     onPressed: () {
              //                       setState(() {
              //                         navigateTo(context, Screen1());
              //                       });
              //                     },
              //                     child: const Icon(
              //                       Icons.arrow_downward_rounded,
              //                       color: AppColors.primaryButtonColor,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               separatorBuilder: (context, index) => SizedBox(
              //                 height: 30.h,
              //               ),
              //               itemCount: 15,
              //             ),
              //           ],
              //         )
              //         : Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             ListView.separated(
              //               shrinkWrap: true,
              //               physics: const NeverScrollableScrollPhysics(),
              //               itemBuilder: (context, index) => Row(
              //                 children: [
              //                   Icon(
              //                     Icons.share_rounded,
              //                     size: 30.w,
              //                     color: AppColors.primaryButtonColor,
              //                   ),
              //                   SizedBox(
              //                     width: 20.00.h,
              //                   ),
              //                   Text(
              //                     'Welcome to the Course',
              //                     style: TextStyle(
              //                       fontFamily: FontPath.poppinsLight,
              //                       fontSize: 16.sp,
              //                       color: Colors.black,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               separatorBuilder: (context, index) => SizedBox(
              //                 height: 30.h,
              //               ),
              //               itemCount: 15,
              //             ),
              //
              //           ],
              //         ),
              //
              //   ),
              //
              // ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text('Students also bought',style: TextStyle
              //           (
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.bold,
              //         ),),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 5.0),
              //           child: Column(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   boxShadow: [
              //                     BoxShadow(
              //                       offset: Offset(
              //                         0.w,
              //                         7.h,
              //                       ),
              //                       blurRadius: 4.r,
              //                       color: Colors.black.withOpacity(0.25),
              //                     ),
              //                   ],
              //                   borderRadius: BorderRadius.circular(22.00.r),
              //                 ),
              //                 child: Row(
              //                   children: [
              //                     SizedBox(
              //                       width: 15.0,
              //                     ),
              //                     ClipRRect(
              //                       borderRadius: BorderRadius.circular(34.0),
              //                       child: Image(image: AssetImage('assets/images/graphic.jpg',
              //                       ),width: 97.0,
              //                         height: 95.0,
              //
              //                       ),
              //                     ),
              //                     Padding(
              //                       padding: EdgeInsets.only(
              //                         top: 18.h,
              //                         bottom: 8.0.h,
              //                         left: 6.0.w,
              //                       ),
              //                       child: Column(
              //                         crossAxisAlignment: CrossAxisAlignment.start,
              //                         children: [
              //                           Text(
              //                             'Cyber Royale Flutter',
              //                             style: TextStyle(
              //                               fontWeight:
              //                               FontWeight.bold,
              //                               fontSize: 16.sp,
              //                             ),
              //                             maxLines: 2,
              //                           ),
              //                           Padding(
              //                             padding: EdgeInsets.only(
              //                               top: 7.h,
              //                               bottom: 15.h,
              //                               left: 6.w,
              //                             ),
              //                             child: Text(
              //                               '7hrs 77 min',
              //                               style: TextStyle(
              //                                 fontSize: 12.sp,
              //                                 fontWeight: FontWeight.w400,
              //                                 color: const Color(0xff1F1F39),
              //                               ),
              //                             ),
              //                           ),
              //                           Row(
              //                             children: [
              //                               RatingBar.builder(
              //                                 itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
              //                                 onRatingUpdate:(rating)=>    setState(() {
              //                                   this.rating=rating;
              //                                 }),
              //                                 minRating: 1,
              //                                 updateOnDrag: true,
              //                               ),
              //                               SizedBox(
              //                                 width: 10.0,
              //                               ),
              //                               Text('$rating',style: TextStyle(fontSize: 19.0,
              //                                 fontWeight: FontWeight.bold,
              //                               ),),
              //
              //                             ],
              //                           ),
              //                           SizedBox(height: 0.10,),
              //                           Text('\$ 74.00 ',
              //                           style: TextStyle(fontSize: 18.0,
              //                           color: Colors.blue),),
              //                         ],
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 15.0),
              //           child: Column(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   boxShadow: [
              //                     BoxShadow(
              //                       offset: Offset(
              //                         0.w,
              //                         7.h,
              //                       ),
              //                       blurRadius: 4.r,
              //                       color: Colors.black.withOpacity(0.25),
              //                     ),
              //                   ],
              //                   borderRadius: BorderRadius.circular(22.00.r),
              //                 ),
              //                 child: Row(
              //                   children: [
              //                     SizedBox(
              //                       width: 15.0,
              //                     ),
              //                     ClipRRect(
              //                       borderRadius: BorderRadius.circular(34.0),
              //                       child: Image(image: AssetImage('assets/images/graphic.jpg',
              //                       ),width: 97.0,
              //                         height: 95.0,
              //
              //                       ),
              //                     ),
              //                     Padding(
              //                       padding: EdgeInsets.only(
              //                         top: 18.h,
              //                         bottom: 8.0.h,
              //                         left: 6.0.w,
              //                       ),
              //                       child: Column(
              //                         crossAxisAlignment: CrossAxisAlignment.start,
              //                         children: [
              //                           Text(
              //                             'Cyber Royale Flutter',
              //                             style: TextStyle(
              //                               fontWeight:
              //                               FontWeight.bold,
              //                               fontSize: 16.sp,
              //                             ),
              //                             maxLines: 2,
              //                           ),
              //                           Padding(
              //                             padding: EdgeInsets.only(
              //                               top: 7.h,
              //                               bottom: 15.h,
              //                               left: 6.w,
              //                             ),
              //                             child: Text(
              //                               '7hrs 77 min',
              //                               style: TextStyle(
              //                                 fontSize: 12.sp,
              //                                 fontWeight: FontWeight.w400,
              //                                 color: const Color(0xff1F1F39),
              //                               ),
              //                             ),
              //                           ),
              //                           Row(
              //                             children: [
              //                               RatingBar.builder(
              //                                 itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
              //                                 onRatingUpdate:(rating)=>    setState(() {
              //                                   this.rating=rating;
              //                                 }),
              //                                 minRating: 1,
              //                                 updateOnDrag: true,
              //                               ),
              //                               SizedBox(
              //                                 width: 10.0,
              //                               ),
              //                               Text('$rating',style: TextStyle(fontSize: 19.0,
              //                                 fontWeight: FontWeight.bold,
              //                               ),),
              //
              //                             ],
              //                           ),
              //                           SizedBox(height: 0.10,),
              //                           Text('\$ 74.00 ',
              //                             style: TextStyle(fontSize: 18.0,
              //                                 color: Colors.blue),),
              //                         ],
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 15.0),
              //           child: Column(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   boxShadow: [
              //                     BoxShadow(
              //                       offset: Offset(
              //                         0.w,
              //                         7.h,
              //                       ),
              //                       blurRadius: 4.r,
              //                       color: Colors.black.withOpacity(0.25),
              //                     ),
              //                   ],
              //                   borderRadius: BorderRadius.circular(22.00.r),
              //                 ),
              //                 child: Row(
              //                   children: [
              //                     SizedBox(
              //                       width: 15.0,
              //                     ),
              //                     ClipRRect(
              //                       borderRadius: BorderRadius.circular(34.0),
              //                       child: Image(image: AssetImage('assets/images/graphic.jpg',
              //                       ),width: 97.0,
              //                         height: 95.0,
              //
              //                       ),
              //                     ),
              //                     Padding(
              //                       padding: EdgeInsets.only(
              //                         top: 18.h,
              //                         bottom: 8.0.h,
              //                         left: 6.0.w,
              //                       ),
              //                       child: Column(
              //                         crossAxisAlignment: CrossAxisAlignment.start,
              //                         children: [
              //                           Text(
              //                             'Cyber Royale Flutter',
              //                             style: TextStyle(
              //                               fontWeight:
              //                               FontWeight.bold,
              //                               fontSize: 16.sp,
              //                             ),
              //                             maxLines: 2,
              //                           ),
              //                           Padding(
              //                             padding: EdgeInsets.only(
              //                               top: 7.h,
              //                               bottom: 15.h,
              //                               left: 6.w,
              //                             ),
              //                             child: Text(
              //                               '7hrs 77 min',
              //                               style: TextStyle(
              //                                 fontSize: 12.sp,
              //                                 fontWeight: FontWeight.w400,
              //                                 color: const Color(0xff1F1F39),
              //                               ),
              //                             ),
              //                           ),
              //                           Row(
              //                             children: [
              //                               RatingBar.builder(
              //                                 itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
              //                                 onRatingUpdate:(rating)=>    setState(() {
              //                                   this.rating=rating;
              //                                 }),
              //                                 minRating: 1,
              //                                 updateOnDrag: true,
              //                               ),
              //                               SizedBox(
              //                                 width: 10.0,
              //                               ),
              //                               Text('$rating',style: TextStyle(fontSize: 19.0,
              //                                 fontWeight: FontWeight.bold,
              //                               ),),
              //
              //                             ],
              //                           ),
              //                           SizedBox(height: 0.10,),
              //                           Text('\$ 74.00 ',
              //                             style: TextStyle(fontSize: 18.0,
              //                                 color: Colors.blue),),
              //                         ],
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 0.7),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text('your service rating:$rating',style: TextStyle(fontSize: 19.0,
              //                 fontWeight: FontWeight.bold,
              //               ),),
              //               SizedBox(height: 0.7,),
              //               RatingBar.builder(
              //                 itemBuilder:(context,i)=>Icon(Icons.star,color: Colors.amber,),
              //                 onRatingUpdate:(rating)=>    setState(() {
              //                   this.rating=rating;
              //                 }),
              //                 minRating: 1,
              //                 updateOnDrag: true,
              //               ),
              //               SizedBox(
              //                 height: 17.0,
              //               ),
              //               Text('Additional feedback',style: TextStyle(fontSize: 20.0,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black87
              //               ),),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(15.0),
              //                   child: Container(
              //                     width: double.infinity,
              //                     height: 40,
              //                     color: Colors.grey[100],
              //                     child: TextFormField(),
              //
              //                   ),
              //                 ),
              //               ),
              //               Row(
              //                 children: [
              //                   Checkbox(
              //                       value: usa,
              //                       onChanged: (value) {
              //                         setState(() {
              //                           usa = value!;
              //                         });
              //                       }),
              //                   const Text(
              //                     'i have read and accipted privacy policy',
              //                     style: TextStyle(
              //                       fontSize: 17.0,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               SizedBox(
              //                 height: 30.0,
              //               ),
              //               Center(
              //                 child: Container(
              //                   // color:borderColor ,
              //                   width: 206.0,
              //                   height: 60.0,
              //                   decoration: BoxDecoration(
              //                     color: Colors.blue,
              //                     borderRadius: BorderRadius.circular(30.0),
              //                   ),
              //                   child: MaterialButton(onPressed: (){},child: Text('Submit Feedback',style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 18.0
              //                   ),),),
              //                 ),
              //               )
              //
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),





            ],
          ),
        ),
      ),
    );
  }
}
