import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/my_app.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (BuildContext context) => const MyApp(),
      enabled: !kReleaseMode,
    ),
  );
}
