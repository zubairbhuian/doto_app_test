import 'package:doto_app_test/app/core/config/color.dart';
import 'package:doto_app_test/app/core/config/style.dart';
import 'package:doto_app_test/app/core/utils/int_extensions.dart';
import 'package:doto_app_test/app/modules/entryPoint/views/note_details.dart';
import 'package:doto_app_test/app/modules/entryPoint/widgets/note_card.dart';
import 'package:doto_app_test/app/modules/entryPoint/widgets/note_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/entry_point_controller.dart';

class EntryPointView extends GetView<EntryPointController> {
  const EntryPointView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 22,right: 20,bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.height,
              // title
              Text(
                "Notes",
                style: kHeadlineMedium,
              ),
              4.height,
              // search bar
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        10,
                        (index) => NoteCard(
                              onTap: () {
                                Get.to(() => const NoteDetails());
                              },
                              title: "This demo title",
                              note: "This demo note",
                              date: "This demo date",
                            )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // add note btn
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NoteDialog.showAddNoteDialog();
        },
        foregroundColor: kWhite,
        backgroundColor: kPrimaryColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
