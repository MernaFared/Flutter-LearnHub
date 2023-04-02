import 'package:flutter/material.dart';

import '../../../../widgets/colors.dart';

class BuildAddButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const BuildAddButton({Key? key, required this.text,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Row(
          children: [
            const Icon(Icons.add,color: Colors.white,),
            const SizedBox(width: 5,),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white
              ),
            ),
            const SizedBox(width: 5,),
          ],
        ),
      ),
    );
  }
}
