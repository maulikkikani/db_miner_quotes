import 'dart:async';

import 'package:db_miner_quotes/controller/quo_controller.dart';
import 'package:db_miner_quotes/model/caregory_model.dart';
import 'package:db_miner_quotes/utils/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  QuoController controller = Get.put(QuoController());

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await controller.getData();

    if (controller.catList.isEmpty) {
      for (var x in controller.defaultCategoryList) {
        DbHelper.dbHelper.insertCatDb(CetegoryModel(cat: x));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Get.offAllNamed('/home'),
    );

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.greenAccent,
            color: Color(0xff14b6b9),
          ),
        ],
      ),
    );
  }
}
