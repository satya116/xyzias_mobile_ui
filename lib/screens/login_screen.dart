import 'package:country_picker/country_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final TextEditingController _textFieldController = TextEditingController();
  // final TextEditingController _textFieldOTPController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  String phoneNumber = '';
  bool buttonEnabled = true;

  Country country = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("$phoneNumberController lol ");
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome to XYZ",
                        style: TextStyle(
                          color: ColorTheme.primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const SizedBox(height: 30.0),
                const Text(
                    "Over 10000+ learners trust us for online and offline coaching",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 40.0),
                TextFormField(
                  controller: phoneNumberController,
                  maxLength: 10,
                  cursorColor: Colors.purple,
                  onChanged: (value) {
                    setState(() {
                      phoneNumberController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    suffixIcon: phoneNumberController.text.length == 10
                        ? Container(
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                            ))
                        : null,
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                            countryListTheme: const CountryListThemeData(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                bottomSheetHeight: 411.0),
                            context: context,
                            onSelect: (value) {
                              setState(() {
                                country = value;
                              });
                            },
                          );
                        },
                        child: Text(
                          "${country.flagEmoji} + ${country.phoneCode}",
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.black12)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.black12)),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 76.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      phoneNumber = phoneNumberController.text.toString();
                    });
                    // Now _textFieldValue contains the value of the TextField
                    if (kDebugMode) {
                      print('Phone Number: $phoneNumber');
                    }

                    void getOTP() async {
                      var url =
                          Uri.parse('http://192.168.29.149:5000/api/send-otp');

                      var response = await http.post(url,
                          body: {"phone": phoneNumber, "deviceID": "888888"});
                      if (response.statusCode == 200) {
                        if (kDebugMode) {
                          print('response : $response');
                        }
                      } else {
                        if (kDebugMode) {
                          print(
                              'Request failed with status: ${response.statusCode}.');
                        }
                      }
                    }

                    if (phoneNumber.length == 10) {
                      if (buttonEnabled) {
                        getOTP();
                        // Disable the button after the first tap
                        setState(() {
                          buttonEnabled = false;
                        });

                        // navigate to verify screen
                        Navigator.pushNamed(context, '/login_otp_verify',
                            arguments: {
                              "phoneNumber": phoneNumber,
                            });
                      }
                    }

                    //  sent the phone number to sentOTP server api.
                    // number device allowed 1
                    //
                    // disable the button
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize:
                        Size.fromWidth(MediaQuery.of(context).size.width),
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
                    'Send OTP',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.1,
                      fontSize: 24,
                      color: Colors.white,
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
