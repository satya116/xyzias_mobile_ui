import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonTitle;
  final Color buttonTitleColor;
  final Color buttonBackgroundColor;

  const ButtonWidget(
      {super.key,
      required this.buttonTitle,
      required this.buttonTitleColor,
      required this.buttonBackgroundColor});

  // final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(context.getElementForInheritedWidgetOfExactType());
    }

    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
        backgroundColor: buttonBackgroundColor, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0), // Border radius
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(4)),
          // gradient: LinearGradient(
          //   colors: [Colors.green, Colors.red],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1.1,
            fontSize: 22,
            color: buttonTitleColor,
          ),
        ),
      ),
    );
  }
}
