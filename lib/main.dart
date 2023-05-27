import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_database/model/group_model.dart';
import 'package:hive_database/screen/home_screen/home_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sizer/sizer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var dir =await getApplicationDocumentsDirectory();
  Hive
    ..init(dir.path)
    ..registerAdapter(GroupModelAdapter());

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page: () => HomeScreen()),
        ],
      ),
    ),
  );
}
