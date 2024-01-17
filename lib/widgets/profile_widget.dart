import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 247, 241, 224),
      child: ListView(
        children: [
          Container(
            height: 200,
            color: const Color.fromARGB(51, 28, 27, 15),
            child: const Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 33,
                  ),
                  CircleAvatar(
                    radius: 55,
                    child: Icon(Icons.face_6, size: 66),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Satya R Das",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const Text("data"),
        ],
      ),
    );
  }
}
