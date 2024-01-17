import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AvataglowWidget extends StatefulWidget {
  const AvataglowWidget({super.key});

  @override
  State<AvataglowWidget> createState() => _AvataglowWidgetState();
}

class _AvataglowWidgetState extends State<AvataglowWidget> {
  final bool _animate = true;

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Colors.pinkAccent,
      duration: const Duration(seconds: 4),
      curve: Curves.easeInOut,
      animate: _animate,
      child: Material(
        elevation: 8.0,
        shape: const CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Colors.grey[100],
          radius: 90,
          child: const Text("Coming Soon", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
