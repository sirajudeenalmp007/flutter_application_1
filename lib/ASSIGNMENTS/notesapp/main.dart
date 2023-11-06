import 'package:flutter/material.dart';
import 'package:flutter_application_2/ASSIGNMENTS/notesapp/homepage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Notes App Box');
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreenNotesApp(),
  ));
}