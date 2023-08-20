import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/logic/instructor/instructor%20cubit.dart';
import 'package:graduation_project/logic/instructor/states.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_add_button.dart';
import 'package:graduation_project/presentation/widgets/colors.dart';

import '../../../widgets/components.dart';
import '../../../widgets/custom_textfield.dart';
import 'add_section_screen.dart';

class AddCourseScreen extends StatefulWidget {
  const AddCourseScreen({Key? key}) : super(key: key);

  @override
  State<AddCourseScreen> createState() => _AddCourseScreenState();
}

class _AddCourseScreenState extends State<AddCourseScreen> {
  var courseNameController = TextEditingController();
  var courseDescriptionController = TextEditingController();
  var noOfSectionsController = TextEditingController();
  var courseCostController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  // var numOfReadingController = TextEditingController();
  // var numOfAssignmentController = TextEditingController();
  // var numOfVideoController = TextEditingController();
  // var numOfArContentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var cubit = InstructorCubit.get(context);
    cubit.mySectionList = [];
    cubit.courseID = null;
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = InstructorCubit.get(context);
    return Scaffold(
      body: BlocConsumer<InstructorCubit,InstructorStates>(
        listener: (context,state){
          if(state is AddCourseSuccessState){
            navigateTo(context, const AddSectionScreen());
          }
        },
        builder: (context,state){
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text(
                    //   'Course Image',
                    //   style: TextStyle(
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w700
                    //   ),
                    // ),
                    // const SizedBox(height: 10,),
                    // /// image
                    // InkWell(
                    //   onTap: (){
                    //     cubit.pickCourseImage();
                    //   },
                    //   child: Container(
                    //     height: height * .2,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(8),
                    //         border: Border.all(
                    //             color: Colors.grey
                    //         )
                    //     ),
                    //     child: cubit.courseImage == null ? Icon(Icons.photo,color: mainColor,size: 35,) : ClipRRect(
                    //       borderRadius: BorderRadius.circular(8),
                    //       child: Image.file(
                    //         cubit.courseImage!,
                    //         height: height * .2,
                    //         width: double.infinity,
                    //         fit: BoxFit.fill,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 10,),
                    const Text(
                      'Course Name',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CustomTextFormField(
                      controller: courseNameController,
                      hintText: 'Enter Course Name....',
                      borderRadius: 10,
                      borderColor: Colors.grey,
                      backgroundColor: Colors.white,
                      textInputType: TextInputType.name,
                      validatorFun: (value) {
                        if (value!.isEmpty) {
                          return 'Course name is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                    /// Description
                    const Text(
                      'Course Description',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CustomTextFormField(
                      controller: courseDescriptionController,
                      hintText: 'Enter Course Description....',
                      borderRadius: 10,
                      maxLines: 5,
                      borderColor: Colors.grey,
                      backgroundColor: Colors.white,
                      textInputType: TextInputType.text,
                      validatorFun: (value) {
                        if (value!.isEmpty) {
                          return 'Course Description is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                    /// num of Sections
                    const Text(
                      'Number Of Sections',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CustomTextFormField(
                      controller: noOfSectionsController,
                      hintText: 'Enter Number of Sections....',
                      borderRadius: 10,
                      borderColor: Colors.grey,
                      backgroundColor: Colors.white,
                      textInputType: TextInputType.number,
                      validatorFun: (value) {
                        if (value!.isEmpty) {
                          return 'Number of Sections is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                    /// cost
                    CustomTextFormField(
                      controller: courseCostController,
                      hintText: 'Enter Course Cost....',
                      borderRadius: 10,
                      borderColor: Colors.grey,
                      backgroundColor: Colors.white,
                      textInputType: TextInputType.number,
                      validatorFun: (value) {
                        if (value!.isEmpty) {
                          return 'Course Cost is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                                        // /// num of or content
                    // const Text(
                    //   'Number Of AR Content',
                    //   style: TextStyle(
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w700
                    //   ),
                    // ),
                    // const SizedBox(height: 10,),
                    // CustomTextFormField(
                    //   controller: numOfArContentController,
                    //   hintText: 'Enter Number of AR Content....',
                    //   borderRadius: 10,
                    //   borderColor: Colors.grey,
                    //   backgroundColor: Colors.white,
                    //   textInputType: TextInputType.number,
                    //   validatorFun: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'Number of AR Content is required';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 10,),


                    const SizedBox(height: 20,),
                    /// Next Button
                    state is AddCourseLoadingState ? const Center(child: CircularProgressIndicator()) : Center(
                      child: customElevatedButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){

                            cubit.addCourse(
                                courseName: courseNameController.text,
                                description: courseDescriptionController.text,
                                noOfSections: int.parse(noOfSectionsController.text),
                                cost: double.parse(courseCostController.text),
                                instructorID: Instructor_id!
                            );
                            cubit.courseName = courseNameController.text;

                          }
                        },
                        text: 'Next',
                        fontSize: 18.sp,
                        borderRadius: 20.00.r,
                      ),
                    ),


                    // const Expanded(child: SizedBox()),
                    //
                    // /// buttons
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     BuildAddButton(
                    //       text: "Video",
                    //       onTap: (){
                    //
                    //       },
                    //     ),
                    //     BuildAddButton(
                    //       text: "AR",
                    //       onTap: (){
                    //
                    //       },
                    //     ),
                    //     BuildAddButton(
                    //       text: "Image",
                    //       onTap: (){
                    //
                    //       },
                    //     ),
                    //     BuildAddButton(
                    //       text: "PDF",
                    //       onTap: (){
                    //
                    //       },
                    //     ),
                    //
                    //   ],
                    // ),


                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          );
        },
      )

    );
  }
}
