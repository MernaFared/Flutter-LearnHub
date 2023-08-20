import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/logic/instructor/instructor%20cubit.dart';
import 'package:graduation_project/logic/instructor/states.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_add_button.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_ar_content.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_images_content.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_pdfs_content.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/add_course/widgets/build_videos_content.dart';
import 'package:graduation_project/presentation/widgets/colors.dart';

import '../../../../core/assets_path/images_path.dart';
import '../../../widgets/components.dart';
import '../../../widgets/custom_textfield.dart';

class AddSectionContentScreen extends StatefulWidget {
  final int sectionId;
  const AddSectionContentScreen({Key? key, required this.sectionId}) : super(key: key);

  @override
  State<AddSectionContentScreen> createState() => _AddSectionContentScreenState();
}

class _AddSectionContentScreenState extends State<AddSectionContentScreen> {


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
                  /// tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// images
                      InkWell(
                        onTap: (){
                          cubit.selectedIndex = 0;
                          cubit.changeState();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                              color: cubit.selectedIndex == 0 ? AppColors.primaryButtonColor : Colors.grey.shade200
                          ),
                          child: Text(
                            "Images",
                            style: TextStyle(
                              color: cubit.selectedIndex == 0 ? Colors.white : Colors.black
                            ),
                          ),
                        ),
                      ),
                      /// Videos
                      InkWell(
                        onTap: (){
                          cubit.selectedIndex = 1;
                          cubit.changeState();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cubit.selectedIndex == 1 ? AppColors.primaryButtonColor : Colors.grey.shade200
                          ),
                          child: Text(
                            "Videos",
                            style: TextStyle(
                                color: cubit.selectedIndex == 1 ? Colors.white : Colors.black
                            ),
                          ),
                        ),
                      ),
                      /// Pdfs
                      InkWell(
                        onTap: (){
                          cubit.selectedIndex = 2;
                          cubit.changeState();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cubit.selectedIndex == 2 ? AppColors.primaryButtonColor : Colors.grey.shade200
                          ),
                          child: Text(
                            "Pdf",
                            style: TextStyle(
                                color: cubit.selectedIndex == 2 ? Colors.white : Colors.black
                            ),
                          ),
                        ),
                      ),
                      /// AR
                      InkWell(
                        onTap: (){
                          cubit.selectedIndex = 3;
                          cubit.changeState();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cubit.selectedIndex == 3 ? AppColors.primaryButtonColor : Colors.grey.shade200
                          ),
                          child: Text(
                            "AR",
                            style: TextStyle(
                                color: cubit.selectedIndex == 3 ? Colors.white : Colors.black
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  if(cubit.selectedIndex == 0)
                   // const SizedBox(height: 10,),
                    const BuildImagesContent(),
                  if(cubit.selectedIndex == 1)
                   // const SizedBox(height: 10,),
                    const BuildVideosContent(),
                  if(cubit.selectedIndex == 2)
                    //const SizedBox(height: 10,),
                    const BuildPdfContent(),
                  if(cubit.selectedIndex == 3)
                    //const SizedBox(height: 10,),
                    const BuildARContent(),


                  const SizedBox(height: 20,),







                  /// Save Button
                  Center(
                    child: customElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){




                        }
                      },
                      text: 'Save',
                      fontSize: 18.sp,
                      borderRadius: 20.00.r,
                    ),
                  ),
                  const SizedBox(height: 20,),

                  // const Expanded(child: SizedBox()),
                  //
                  /// buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BuildAddButton(
                        text: "Video",
                        onTap: (){

                        },
                      ),
                      BuildAddButton(
                        text: "AR",
                        onTap: (){

                        },
                      ),
                      BuildAddButton(
                        text: "Image",
                        onTap: (){
                          cubit.pickImage();
                        },
                      ),
                      BuildAddButton(
                        text: "PDF",
                        onTap: (){

                        },
                      ),

                    ],
                  ),


                  const SizedBox(height: 20,),
                ],
              ),
            );
          },
        )

    );
  }



}
