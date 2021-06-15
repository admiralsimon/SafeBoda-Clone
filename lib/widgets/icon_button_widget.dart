import 'package:flutter/material.dart';

import '../constants.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onWidgetPressed;

  IconButtonWidget({required this.onWidgetPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onWidgetPressed,
      icon: Icon(
        Icons.keyboard_arrow_right_sharp,
        color: kSafeBodaGray,
      ),
    );
  }

  void simon() {}
}
