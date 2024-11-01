import 'package:flutter/material.dart';
import 'package:mvc_app/myHomepageScreen/controllers/deincrement_controller.dart';
import 'package:mvc_app/myHomepageScreen/controllers/increment_controller.dart';
import 'package:mvc_app/myHomepageScreen/my_home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final root = Creador().creacion();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: root,
      // home: BlocProvider(
      //   create: (context) => CounterCubit(),
      //   child: const MyHomePageCubit(),
      // ),
    );
  }
}
