import 'package:flutter/material.dart';

import '../constants.dart';
import 'icon_button_widget.dart';

class ListTileWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String tileTitle;
  final IconData tileIcon;
  ListTileWidget(
      {required this.onPressed,
      required this.tileTitle,
      required this.tileIcon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tileTitle),
      leading: Icon(tileIcon, color: kSafeBodaOrange),
      trailing: IconButtonWidget(
        onWidgetPressed: onPressed,
      ),
    );
  }
}
