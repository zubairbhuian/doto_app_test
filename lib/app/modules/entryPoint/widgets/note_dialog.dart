import 'package:doto_app_test/app/core/config/color.dart';
import 'package:doto_app_test/app/core/config/style.dart';
import 'package:doto_app_test/app/core/utils/int_extensions.dart';
import 'package:doto_app_test/app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteDialog {
  static showAddNoteDialog() {
    return showDialog<void>(
      // Context
      context: Get.context!,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Column(
          // for horizontal minHeight
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // for ertical minWidth
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Material(
                  elevation: 2,
                  // dialog color
                  shadowColor: Colors.black12,
                  // backgraund color
                  color: kWhite,
                  // border radius
                  borderRadius: BorderRadius.circular(8),
                  // main body
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Add Note",
                            style: kTitleLarge,
                          ),
                        ),
                        12.height,
                        const CustomTextField(
                            // maxLength: 40,
                            ),
                        12.height,
                        const CustomTextField(
                          maxLines: 2,
                        ),
                        20.height,
                        Center(
                          child: SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                  onPressed: () {}, child: const Text("Add"))),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
