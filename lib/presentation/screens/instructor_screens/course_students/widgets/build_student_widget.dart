import 'package:flutter/material.dart';

class BuildStudentItem extends StatelessWidget {
  const BuildStudentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
      ),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                'https://icon-library.com/images/person-png-icon/person-png-icon-29.jpg'
            ),
          ),
          SizedBox(width: 10,),
          Text(
            'Student Name',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    );
  }
}
