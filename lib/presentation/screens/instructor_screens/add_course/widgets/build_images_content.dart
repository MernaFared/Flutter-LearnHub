import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/logic/instructor/instructor%20cubit.dart';
import 'package:graduation_project/logic/instructor/states.dart';

class BuildImagesContent extends StatelessWidget {
  const BuildImagesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = InstructorCubit.get(context);
    return BlocConsumer<InstructorCubit,InstructorStates>(
         builder: (context,state){
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context,index){
                  return Container(
                    height: 200.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: FileImage(
                              cubit.images[index],

                            ),
                            fit: BoxFit.fill
                        )
                    ),
                  );
                },
                separatorBuilder: (context,index){
                  return const SizedBox(height: 10,);
                },
                itemCount: cubit.images.length
            ),
          );
        },
        listener: (context,state){}
    );
  }
}
