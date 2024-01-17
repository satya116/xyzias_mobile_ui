import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';
import 'package:saffron_ias_flutter_mobile/widgets/button_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeroDrawerWidget extends StatefulWidget {
  const HeroDrawerWidget({super.key});

  @override
  State<HeroDrawerWidget> createState() => _HeroDrawerWidgetState();
}

class _HeroDrawerWidgetState extends State<HeroDrawerWidget> {
  bool isLightModeOn = true;

  // this will mmake our app slower, we shold bring it from main screen or keep it in global context.
  // final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          title: Text(
            "Offline Downloads",
          ),
          leading: Icon(Icons.download),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/playground');
          },
          child: const ListTile(
            title: Text(
              "Playground",
            ),
            leading: Icon(Icons.play_arrow),
          ),
        ),
        const ListTile(
          title: Text(
            "Theme",
          ),
          leading: Icon(Icons.apartment_rounded),
        ),
        const ListTile(
          title: Text(
            "Donate",
          ),
          leading: Icon(Icons.monitor_heart_sharp),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/feedback');
          },
          child: const ListTile(
            title: Text(
              "Feedback",
            ),
            leading: Icon(Icons.feedback_outlined),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/faqs');
          },
          child: const ListTile(
            title: Text(
              "FAQs",
            ),
            leading: Icon(Icons.question_mark_outlined),
          ),
        ),
        const ListTile(
          title: Text(
            "Settings",
          ),
          leading: Icon(Icons.settings),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/privacy_policy');
          },
          child: const ListTile(
            title: Text(
              "Privacy Policy",
            ),
            leading: Icon(Icons.policy_outlined),
          ),
        ),
        ListTile(
          leading: const Text("Dark Mode"),
          title: Switch(
              value: isLightModeOn,
              activeColor: Colors.black,
              activeTrackColor: Colors.amber,
              focusColor: Colors.black26,
              onChanged: (value) {
                setState(() {
                  isLightModeOn = value;

                  // set shared preferences
                  // prefs.then(
                  //     (value) => value.setBool('appTheme', value as bool));
                  // if (kDebugMode) {
                  //   print("apptheme is $value ");
                  // }
                });
              }),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ButtonWidget(
            buttonTitle: 'Login',
            buttonTitleColor: Colors.white,
            buttonBackgroundColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
