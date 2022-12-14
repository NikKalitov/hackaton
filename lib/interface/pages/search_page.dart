// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hackaton/interface/widgets/text_field.dart';

import 'schedule_page.dart';
import 'teacher_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Поиск по ФИО'),
        backgroundColor: Color.fromRGBO(0, 106, 179, 100),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(labelText: 'Введите фамилию'),
              MyTextField(labelText: 'Введите имя'),
              MyTextField(labelText: 'Введите отчество'),
              FractionallySizedBox(
                widthFactor: 0.55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 106, 179, 100),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return TeacherPage();
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.search_outlined),
                      RichText(text: TextSpan(text: "Найти преподователя")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
