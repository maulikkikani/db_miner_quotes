import 'package:db_miner_quotes/views/screen/home_screen.dart';
import 'package:db_miner_quotes/views/screen/read_screen.dart';
import 'package:db_miner_quotes/views/screen/splesh_screen.dart';
import 'package:db_miner_quotes/views/screen/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(
    builder: (context, orientation, deviceType) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: 'SpleshScreen',
      routes: {
        '/': (p0) => SpleshScreen(),
        '/home': (p0) => Home_Screen(),
        '/tab': (p0) => TabScreen(),
        '/read': (p0) => ReadScreen(),
      },
    ),
  ));
}
