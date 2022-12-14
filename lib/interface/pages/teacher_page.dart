// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hackaton/interface/pages/schedule_page.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({super.key});

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Профиль преподавателя'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1200px-Circle-icons-profile.svg.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Блюменштейн',
                        style: fioStyle,
                      ),
                      Text(
                        'Алексей',
                        style: fioStyle,
                      ),
                      Text(
                        'Александрович',
                        style: fioStyle,
                      ),
                      Divider(),
                      Text('Заведующий лабораторией'),
                      Text('Директор'),
                      Text('Старший преподаватель'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Кафедра математического моделирования технических систем',
                  style: additionalStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '1/403',
                  style: additionalStyle,
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SchedulePage();
                    },
                  ),
                );
              },
              child: Text('Смотреть расписание'),
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle fioStyle = TextStyle(
  fontSize: 20,
);

TextStyle additionalStyle = TextStyle(
  fontSize: 20,
  fontStyle: FontStyle.italic,
);
