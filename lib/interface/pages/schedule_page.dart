// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  final List<Tab> listOfTabs = [
    Tab(
      child: Text('1 неделя'),
    ),
    Tab(
      child: Text('2 неделя'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _controller.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 106, 179, 100),
          title: Text('Расписание'),
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: listOfTabs,
          ),
        ),
        body: TabBarView(
          controller: _controller,
          // ignore:
          children: [
            Center(
              child: Text('1'),
            ),
            Center(
              child: Text('2'),
            ),
          ],
        ),
      ),
    );
  }
}
