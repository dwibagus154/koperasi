import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle light12(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.w300,
          fontSize: 12,
          color: Colors.black54,
        );
  }
}
