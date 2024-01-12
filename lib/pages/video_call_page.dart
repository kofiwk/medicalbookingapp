import 'package:flutter/material.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'lib/images/sergey.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
              ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: 49,
            height: 225,
            clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
              color:  const Color(0xFF0F1920),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              )
            ),
          ),
        ],
      )
    );
  }
}