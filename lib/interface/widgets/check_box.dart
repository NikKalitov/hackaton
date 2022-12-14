import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: const Color.fromRGBO(0, 106, 179, 100),
      value: isChecked,
      onChanged: (value) {
        isChecked = value!;
        setState(() {});
      },
    );
  }
}
