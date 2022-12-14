// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackaton/interface/pages/choose_page.dart';
import 'package:hackaton/interface/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 106, 179, 100),
        centerTitle: true,
        title: Text('Вход'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextField(labelText: 'Введите логин'),
                MyTextField(labelText: 'Введите пароль'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ChooseSearch();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 106, 179, 100),
                  ),
                  child: FractionallySizedBox(
                    widthFactor: 0.3,
                    child: Row(
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Войти',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
