import 'package:doto_app_test/app/core/config/color.dart';
import 'package:doto_app_test/app/core/config/style.dart';
import 'package:doto_app_test/app/core/utils/int_extensions.dart';
import 'package:doto_app_test/app/modules/entryPoint/widgets/note_card.dart';
import 'package:doto_app_test/app/widgets/card.dart';
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
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.height,
              // title
              Text(
                "Notes",
                style: kHeadlineMedium,
              ),
              // search bar
               Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:List.generate(10, (index) =>  const NoteCard(
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
        onPressed: () {},
        foregroundColor: kWhite,
        backgroundColor: kPrimaryColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
