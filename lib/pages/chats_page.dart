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
              Container(
                width: 384,
                height: 69,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 61,
                          height: 61,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 2,
                                color: Colors.blue
                              )
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/avatar1.png'),
                              fit: BoxFit.fill
                              )
                          ),
                        ),
                        Positioned(
                          right: 4,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: ShapeDecoration(
                              shape: OvalBorder(),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Ellipse13.png')
                              ),
                            ),
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
