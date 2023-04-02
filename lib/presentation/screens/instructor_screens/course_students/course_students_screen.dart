import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/screens/instructor_screens/course_students/widgets/build_student_widget.dart';

import '../../../../core/app_theme/app_colors.dart';

class CourseStudentsScreen extends StatefulWidget {
  const CourseStudentsScreen({Key? key}) : super(key: key);

  @override
  State<CourseStudentsScreen> createState() => _CourseStudentsScreenState();
}

class _CourseStudentsScreenState extends State<CourseStudentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: const Text(
            "Students",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return const BuildStudentItem();
                  },
                separatorBuilder: (context,index){
                    return const SizedBox(height: 10,);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
