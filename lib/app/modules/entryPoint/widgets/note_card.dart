import 'package:doto_app_test/app/core/config/color.dart';
import 'package:doto_app_test/app/core/config/style.dart';
import 'package:doto_app_test/app/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteCard extends StatelessWidget {
  final String title, note, date;
  final Function()? onTap;
  const NoteCard(
      {super.key, required this.title, required this.note, required this.date, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppCard(
          onTap: onTap,
          color: kDisabledColor.withOpacity(.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                title,
                style: kTitleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              // Note
              Text(
                note,
                style: kBodyLarge.copyWith(color: kTextColor.withOpacity(.6)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              // date
              Text(
                date,
                style: kBodyMedium.copyWith(
                    color: kDisabledTextColor.withOpacity(.6)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )),
    ).marginOnly(bottom: 4);
  }
}
