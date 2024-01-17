import 'package:flutter/material.dart';

class TestResultScreen extends StatefulWidget {
  const TestResultScreen({super.key});

  @override
  State<TestResultScreen> createState() => _TestResultScreenState();
}

class _TestResultScreenState extends State<TestResultScreen> {
  int? ansSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Radio<int>(
            value: 1,
            groupValue: ansSelected,
            onChanged: (int? value) {
              setState(() {
                ansSelected = value;
              });
            },
          ),
          Radio<int>(
            value: 2,
            groupValue: ansSelected,
            onChanged: (int? value) {
              setState(() {
                ansSelected = value;
              });
            },
          ),
        ],
      ),
    ));
  }
}
