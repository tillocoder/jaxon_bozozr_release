// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'app_local.dart';

extension Mywords on Words {
  String tr(BuildContext context) => AppLocalization.of(context).tr(name);
}

enum Words {
  //? splaash
  hello,
  //? login
  digital
}
