// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackaton/interface/pages/main_page.dart';
import 'package:hackaton/interface/pages/schedule_page.dart';
import 'package:hackaton/interface/pages/teacher_page.dart';

import 'search_page.dart';

class ChooseSearch extends StatefulWidget {
  const ChooseSearch({super.key});

  @override
  State<ChooseSearch> createState() => _ChooseSearchState();
}

class _ChooseSearchState extends State<ChooseSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 106, 179, 100),
        centerTitle: true,
        title: Text('Выберите способ'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 106, 179, 100),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SearchPage();
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded),
                      Text('Поиск по ФИО')
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 106, 179, 100),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return MainPage();
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded),
                      Text('Поиск по умолчанию')
                    ],
                  ),
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.of(context).push(
                //         MaterialPageRoute(
                //           builder: (context) {
                //             return TeacherPage();
                //           },
                //         ),
                //       );
                //     },
                //     child: Text('test')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
