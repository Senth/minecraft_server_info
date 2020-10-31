import 'dart:html';

import 'package:flutter/widgets.dart';
import '../screens/screen.dart';
import 'dart:html';
import 'dart:ui' as ui;

class MapScreen extends Screen {
  MapScreen() : super(margin: null);

  @override
  Widget get child {
    // TODO Iframe
    return Text("Iframe");
  }
}
