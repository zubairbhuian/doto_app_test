import 'package:doto_app_test/app/core/config/color.dart';
import 'package:doto_app_test/app/core/utils/int_extensions.dart';
import 'package:doto_app_test/app/widgets/appbar.dart';
import 'package:doto_app_test/app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: Text("Note Detail"),),
      body:SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 32),
        child: Column(
          children: [
          const CustomTextField(),
          16.height,
          const CustomTextField(
            maxLines: 6,
          ),
          24.height,
          // action btn
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: const Text("Update")),
              12.width,
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kDangerColor
                ), 
                child: const Text("Delete"),
                ),
            ],
          )
        ]),
      ),
    );
  }
}