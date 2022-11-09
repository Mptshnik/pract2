import 'package:flutter/material.dart';

import 'core/db/data_base_helper.dart';

void main() async {
  DataBaseHepler.instance.init();
  runApp(Container());
}

