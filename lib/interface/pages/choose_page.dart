// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackaton/interface/pages/main_page.dart';
import 'package:hackaton/interface/pages/schedule_page.dart';

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
      body: Center(
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
                child: Text('Поиск по ФИО'),
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
                child: Text('Поиск по умолчанию'),
              ),
              // ElevatedButton(onPressed: () {}, child: Text('test')),
            ],
          ),
        ),
      ),
    );
  }
}
