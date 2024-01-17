// import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';
// import 'package:http/http.dart' as http;

class LoginOTPVerifyScreen extends StatefulWidget {
  const LoginOTPVerifyScreen({super.key});

  @override
  State<LoginOTPVerifyScreen> createState() => _LoginOTPVerifyScreenState();
}

class _LoginOTPVerifyScreenState extends State<LoginOTPVerifyScreen> {
  // final TextEditingController _textFieldController = TextEditingController();
  // final TextEditingController _textFieldOTPController = TextEditingController();

  String phoneNumber = '';
  bool buttonEnabled = true;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> phoneLoginScreenObject =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    // Access data with type safety
    String phoneNumber = phoneLoginScreenObject['phoneNumber'];

    if (kDebugMode) {
      print("loginotp screen context ");
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome to XYZ",
                style: TextStyle(
                  color: ColorTheme.primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 40.0),
            const Text(
                "Over 10 crore learners trust us for online and offline coaching",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 30.0),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 193, 192, 192),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    phoneNumber,
                    style: const TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 24,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Icon(
                      Icons.edit,
                      size: 22,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Pinput(
              length: 5,
              showCursor: true,
              defaultPinTheme: PinTheme(
                  textStyle: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w500),
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber),
                      color: const Color.fromARGB(255, 239, 238, 237),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 76.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                // double screenWidth = ;
                fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                backgroundColor: buttonEnabled
                    ? ColorTheme.primaryColor
                    : ColorTheme
                        .primaryColorwithLessOpacity, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0), // Border radius
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.1,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
