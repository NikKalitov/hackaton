// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Search'),
      ),
    );
  }
}
