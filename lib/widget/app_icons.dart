

import 'package:flutter/material.dart';

class IconClass extends StatelessWidget {
  final IconData? iconData;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback? onPressed;

  IconClass({
    Key? key,
    this.iconData,
    this.iconColor,
    this.iconSize,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
