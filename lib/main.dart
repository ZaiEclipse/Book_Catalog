import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tecnova2_4/model/binding/book_binding.dart';
import 'package:tecnova2_4/view/screens/book_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [GetPage(name: "/book", page: () => BookScreen())],
      initialBinding: BookBinding(),
      home: BookScreen( ),
    );
  }
}
