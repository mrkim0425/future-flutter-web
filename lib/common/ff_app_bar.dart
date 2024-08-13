import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/drawer_button.dart';

AppBar ffAppBar({required String title}) => AppBar(
  title: Text(title),
  leading: const ScaffoldDrawerButton(),
  centerTitle: true,
);