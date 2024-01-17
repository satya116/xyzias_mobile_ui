import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';
import 'package:saffron_ias_flutter_mobile/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  // late Future<bool> isLightTheme;

  @override
  void initState() {
    super.initState();

    // Simulate some initialization process or async task
    // prefs.then(
    //     (value) => {isLightTheme = value.getBool("appTheme") as Future<bool>});

    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the main screen or home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

    // if (kDebugMode) {
    //   print("Application theme at startup $isLightTheme");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.primaryColor,
      body: Center(
        child: Animate(
          effects: const [
            FadeEffect(),
            SlideEffect(),
          ],
          child: const Text(
            "XYZ IAS",
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
