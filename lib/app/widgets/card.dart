import 'package:doto_app_test/app/core/config/color.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? hoverColor;
  final Color? color;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Function()? onTap;
  const AppCard(
    
      {super.key,
      required this.child,
      this.highlightColor,
      this.padding,
      this.borderRadius,
      this.splashColor,
      this.onTap,
      this.hoverColor,
      this.color,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 0,
      color: color ?? kWhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8), // Adjust the radius as needed
        ),
      ),
      child: InkWell(
        hoverColor: hoverColor ?? kWhite,
        highlightColor: highlightColor ?? kWhite,
        splashColor: splashColor,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        onTap: onTap,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(13),
          child: child,
        ),
      ),
    );
  }
}
