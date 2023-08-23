import 'package:db_miner_quotes/views/screen/add_category.dart';
import 'package:db_miner_quotes/views/screen/add_quotes.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.greenAccent, Color(0xff14b6b9)], // Replace with your desired colors
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(
                child: Text('Add category'),
              ),
              Tab(
                child: Text('Add Quotes'),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          AddCatScreen(),
          AddQuoScreen(),
        ]),
      ),
    ));
  }
}
