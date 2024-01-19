import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/config/color.dart';
import '../core/config/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final VoidCallback? onLeading;
  final double? preferredHeight;
  final List<Widget>? actions;
  final bool isShadow;
  final bool centerTitle;

  final bool hasActionBtn;
  final void Function()? actionBtnOnTap;
  final String actionBtnText;

  const CustomAppBar(
      {super.key,
      this.isShadow = false,
      this.centerTitle = true,
      this.title,
      this.onLeading,
      this.preferredHeight,
      this.actions,
      this.hasActionBtn = false,
      this.actionBtnOnTap,
      this.actionBtnText = 'Text'});
// Specify the desired height of the AppBar
  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? 66.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kPrimaryColor, // Adjust the background color of the AppBar
            boxShadow: isShadow ? [kAppbarShadow] : []),
        child: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          elevation: 0,
          centerTitle: centerTitle,
          leadingWidth: 60,
          backgroundColor: kPrimaryColor,
          foregroundColor: kTextColor,
          titleTextStyle: kTitleLarge.copyWith(color: kWhite),
          // appbar leading
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: kWhite,
              )),
          // appbar title
          title: title,
        ));
  }
}
