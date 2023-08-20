import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/logic/instructor/instructor%20cubit.dart';
import 'package:graduation_project/logic/instructor/states.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_add_button.dart';
import 'package:graduation_project/presentation/widgets/colors.dart';

import '../../../../core/assets_path/images_path.dart';
import '../../../widgets/components.dart';
import '../../../widgets/custom_textfield.dart';
import 'add_content_screen.dart';

class AddSectionScreen extends StatefulWidget {
  const AddSectionScreen({Key? key}) : super(key: key);

  @override
  State<AddSectionScreen> createState() => _AddSectionScreenState();
}

class _AddSectionScreenState extends State<AddSectionScreen> {


  var formKey = GlobalKey<FormState>();
   var numOfReadingController = TextEditingController();
   var numOfAssignmentController = TextEditingController();
   var numOfVideoController = TextEditingController();
   var numOfArContentController = TextEditingController();
  var sectionNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = InstructorCubit.get(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(ImagePath.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        body: BlocConsumer<InstructorCubit,InstructorStates>(
          listener: (context,state){},
          builder: (context,state){
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  Text(
                    "${cubit.courseName}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sections",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                        onPressed: (){
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              scrollable: true,
                              content: buildAddSection(),
                            );
                          });
                        },
                        icon: const Icon(Icons.add),iconSize: 30,color: AppColors.primaryButtonColor,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  /// View Sections List here
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context,index){
                          return Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "${cubit.mySectionList[index]['sectionName']}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Number of reading",

                                    ),
                                    Text(
                                      "${cubit.mySectionList[index]['numOfReading']}",

                                    ),


                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Number of video",

                                    ),
                                    Text(
                                      "${cubit.mySectionList[index]['numOfVideo']}",

                                    ),


                                  ],

                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Number of AR",

                                    ),
                                    Text(
                                      "${cubit.mySectionList[index]['numOfAR']}",

                                    ),


                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Number of assignment",

                                    ),
                                    Text(
                                      "${cubit.mySectionList[index]['numOfAssignment']}",

                                    ),


                                  ],
                                ),
                                const SizedBox(height: 10,),
                               TextButton(

                                   onPressed: (){
                                     navigateTo(context, AddSectionContentScreen(
                                       sectionId: cubit.mySectionList[index]['sectionId'],
                                     ));
                                   }, child: const Text(
                                 "Add Content",
                                 style: TextStyle(
                                   color: AppColors.primaryButtonColor,
                                   fontSize: 18
                                 ),
                               ))
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context,index){
                          return const SizedBox(height: 10,);
                        },
                        itemCount: cubit.mySectionList.length
                    ),
                  ),

                  /// Add Section




                  const SizedBox(height: 20,),
                  /// Next Button
                Center(
                    child: customElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){




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
            );
          },
        )

    );
  }

  Widget buildAddSection(){
    var cubit = InstructorCubit.get(context);
    return BlocConsumer<InstructorCubit,InstructorStates>(
        builder: (context,state){
      return Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              controller: sectionNameController,
              hintText: 'Enter Section Name....',
              borderRadius: 10,
              borderColor: Colors.grey,
              backgroundColor: Colors.white,
              textInputType: TextInputType.name,
              validatorFun: (value) {
                if (value!.isEmpty) {
                  return 'Section name is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10,),
            /// Number of reading

            CustomTextFormField(
              controller: numOfReadingController,
              hintText: 'Enter Number of reading...',
              borderRadius: 10,
              maxLines: 1,
              borderColor: Colors.grey,
              backgroundColor: Colors.white,
              textInputType: TextInputType.number,
              validatorFun: (value) {
                if (value!.isEmpty) {
                  return 'Number Of reading is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10,),
            /// num of Video
            CustomTextFormField(
              controller: numOfVideoController,
              hintText: 'Enter Number of Video....',
              borderRadius: 10,
              borderColor: Colors.grey,
              backgroundColor: Colors.white,
              textInputType: TextInputType.number,
              validatorFun: (value) {
                if (value!.isEmpty) {
                  return 'Number of Video is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10,),
            /// num of AR Content

            CustomTextFormField(
              controller: numOfArContentController,
              hintText: 'Enter Number of AR Content....',
              borderRadius: 10,
              borderColor: Colors.grey,
              backgroundColor: Colors.white,
              textInputType: TextInputType.number,
              validatorFun: (value) {
                if (value!.isEmpty) {
                  return 'Number of AR Content is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10,),
            /// num of Assignment
            CustomTextFormField(
              controller: numOfAssignmentController,
              hintText: 'Enter Number of Assignment....',
              borderRadius: 10,
              borderColor: Colors.grey,
              backgroundColor: Colors.white,
              textInputType: TextInputType.number,
              validatorFun: (value) {
                if (value!.isEmpty) {
                  return 'Number of Assignment is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 20,),

            /// Save Button
            state is AddSectionLoadingState ? const Center(child: CircularProgressIndicator()) : Center(
              child: customElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    cubit.addSection(
                        sectionName: sectionNameController.text,
                        noOfReading: int.parse(numOfReadingController.text),
                        noOfAssignment: int.parse(numOfAssignmentController.text),
                        noOfARContent: int.parse(numOfArContentController.text),
                        noOfVideo: int.parse(numOfVideoController.text)
                    );



                  }
                },
                text: 'Save',
                fontSize: 18.sp,
                borderRadius: 20.00.r,
              ),
            ),

          ],
        ),
      );
    },
        listener: (context,state){
          if(state is AddSectionSuccessState){
            cubit.mySectionList.add({
              "sectionId": cubit.sectionID,
              "sectionName": sectionNameController.text,
              "numOfReading": numOfReadingController.text,
              "numOfVideo": numOfVideoController.text,
              "numOfAR": numOfArContentController.text,
              "numOfAssignment": numOfAssignmentController.text
            });
            sectionNameController.clear();
            numOfAssignmentController.clear();
            numOfArContentController.clear();
            numOfReadingController.clear();
            numOfVideoController.clear();

            Navigator.pop(context);

            showToast(text: "Section added successfully", state: ToastStates.SUCCESS);



          }
        });
  }

}
