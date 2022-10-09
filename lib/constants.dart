import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

const options = LiveOptions(
  delay: Duration(seconds: 1),
  showItemInterval: Duration(milliseconds: 100),
  showItemDuration: Duration(seconds: 1),
  visibleFraction: 0.05,
  reAnimateOnVisibility: false,
);
