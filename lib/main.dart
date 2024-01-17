import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saffron_ias_flutter_mobile/provider/counter_provider.dart';
import 'package:saffron_ias_flutter_mobile/routes/routes.dart';
import 'package:saffron_ias_flutter_mobile/screens/splash_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => CounterProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XYZ',
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // darkTheme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
