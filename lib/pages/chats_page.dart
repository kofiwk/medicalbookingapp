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
              SizedBox(
                width: 384,
                height: 69,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // 1st Avatar
                    Stack(
                      children: [
                        Container(
                          width: 61,
                          height: 61,
                          decoration: const ShapeDecoration(
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
                            decoration: const ShapeDecoration(
                              shape: OvalBorder(),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Ellipse13.png')
                              ),
                            ),
                          )
                        ),
                      ],
                    ),
                    // 2nd Avatar
                    const SizedBox(width: 16),
                    Stack(
                      children: [
                        Container(
                          width: 61,
                          height: 61,
                          decoration: const ShapeDecoration(
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
                            decoration: const ShapeDecoration(
                              shape: OvalBorder(),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Ellipse13.png')
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                    // 3rd Avatar
                    const SizedBox(width: 16),
                    Stack(
                      children: [
                        Container(
                          width: 61,
                          height: 61,
                          decoration: const ShapeDecoration(
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
                            decoration: const ShapeDecoration(
                              shape: OvalBorder(),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Ellipse13.png')
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                    //4th Avatar
                    const SizedBox(width: 16),
                    Stack(
                      children: [
                        Container(
                          width: 61,
                          height: 61,
                          decoration: const ShapeDecoration(
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
                            decoration: const ShapeDecoration(
                              shape: OvalBorder(),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Ellipse14.png')
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                    //5th Avatar
                    const SizedBox(width: 16),
                    Stack(
                      children: [
                        Container(
                          width: 61,
                          height: 61,
                          decoration: const ShapeDecoration(
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
                            decoration: const ShapeDecoration(
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
              ),

              // Title
              const SizedBox(height: 30),
              const Row(
                children: [
                  Text(
                    'All Messages',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),

              // Chats
              const SizedBox(height: 30),
              //Chats 1
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chuks.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '3:25 PM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Dr. Victor Chuks',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20.51,
                                          height: 17,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/read.png')
                                            )
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const SizedBox(
                                          width: 233,
                                          child: Text(
                                            'Have you been able to go through the ...',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              // Chat 2
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/bella.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '3:25 PM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Nurse Bella Frank',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 262,
                                          child: Text(
                                            'We will be having our appointment resched...',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              // Chat 3
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chuks.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '10:13 AM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Dr. Peter Stephen',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 249,
                                          child: Text(
                                            'We really had a wonderful session today',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              // Chat 4
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/miro.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '3:25 PM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Dr. Femi Godwin',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20.51,
                                          height: 17,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/read.png')
                                            )
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const SizedBox(
                                          width: 233,
                                          child: Text(
                                            'Have you been able to go through the ...',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              // Chat 5
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chuks.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '3:25 PM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Dr. Victor Chuks',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20.51,
                                          height: 17,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/read.png')
                                            )
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const SizedBox(
                                          width: 233,
                                          child: Text(
                                            'Have you been able to go through the ...',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              // Chat 6
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chuks.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '3:25 PM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Dr. Victor Chuks',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20.51,
                                          height: 17,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/read.png')
                                            )
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const SizedBox(
                                          width: 233,
                                          child: Text(
                                            'Have you been able to go through the ...',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              // Chat 7
              Container(
                width: 384,
                height: 59,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chuks.png'),
                          fit: BoxFit.cover
                        ),
                        shape: OvalBorder()
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 310,
                      height: 44.53,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 232.80,
                            top: 0,
                            child: SizedBox(
                              width: 77.20,
                              child: Text(
                                '3:25 PM',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0.53,
                            child: Container(
                              width: 262,
                              height: 44,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 124,
                                    child: Text(
                                      'Dr. Victor Chuks',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20.51,
                                          height: 17,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/read.png')
                                            )
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const SizedBox(
                                          width: 233,
                                          child: Text(
                                            'Have you been able to go through the ...',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.28,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
