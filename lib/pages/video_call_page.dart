import 'package:flutter/material.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Call Page'),
      ),
      body: Center(
        child: Image.asset('lib/images.Medical App 3.png'),
      ),
    );
  }
}