import 'package:flutter/material.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                'My Appointments',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -0.30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
