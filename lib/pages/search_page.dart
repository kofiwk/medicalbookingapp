import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  late String _greeting;

  void setGreeting() {
    int hour = DateTime.now().hour;
    String greeting;
    if (hour >= 6 && hour < 12) {
      greeting = "Good Morning";
    } else if (hour >= 12 && hour < 18) {
      greeting = "Good Afternoon";
    } else {
      greeting = "Good Evening";
    }
    setState(() {
      _greeting = greeting;
    });
  }

   @override
  void initState() {
    super.initState();
    setGreeting();
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Greeting
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Ellipse 3.png',
                        width: 61, height: 61),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _greeting,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                height: 0,
                                letterSpacing: -0.30),
                          ),
                          const Text(
                            'William Kukah',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/notification.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                        width: 14,
                        height: 14,
                        decoration: const ShapeDecoration(
                          color: Colors.blue,
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 1.50, color: Colors.blue
                              )
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                width: 384,
                height: 52,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1, 
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


