import 'package:flutter/material.dart';

class VideoPlayerScreen2 extends StatefulWidget {
  const VideoPlayerScreen2({super.key});

  @override
  State<VideoPlayerScreen2> createState() => _VideoPlayerScreen2State();
}

class _VideoPlayerScreen2State extends State<VideoPlayerScreen2> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Text("data"),
      ),
    );
  }
}
