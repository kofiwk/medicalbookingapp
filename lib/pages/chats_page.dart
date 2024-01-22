import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Chats',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.30,
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                        'assets/images/menu.png',
                        ),
                      )
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),
              // Circle Avatars
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 409,
                  height: 69,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Avatar 1
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 40,
                            backgroundImage: const AssetImage('assets/images/kelvin.png'),
                            child: Container(
                              width: 69,
                              height: 69,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2, 
                                    color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 2),
                      // Avatar 2
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: const AssetImage('assets/images/avatar1.png'),
                            child: Container(
                              width: 69,
                              height: 69,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2, 
                                    color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 2),
                      // Avatar 3
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: const AssetImage('assets/images/josephine.png'),
                            child: Container(
                              width: 69,
                              height: 69,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2, 
                                    color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 2),
                      // Avatar 4
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 40,
                            backgroundImage: const AssetImage('assets/images/tima.png'),
                            child: Container(
                              width: 69,
                              height: 69,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2, 
                                    color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 2),
                      // Avatar 5
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: const AssetImage('assets/images/miro.png'),
                            child: Container(
                              width: 69,
                              height: 69,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2, 
                                    color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
