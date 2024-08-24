import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
                  // Title
                  const Text(
                    'Explore',
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
                  // Icon
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/menu.png'
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Medical Practitioners & Group Sessions
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 455,
                    height: 27,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Medical Practitioners',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Group Sessions',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Container(
                        width: 182,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Container(
                        width: 202,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Search Box
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                width: 384,
                height: 52,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/search.png'
                              ),
                            )
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Search by name or role',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.30,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: 
                          AssetImage(
                            'assets/images/filter.png'
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Options
              const SizedBox(height: 25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 455,
                  height: 27,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'All',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            width: 22,
                            height: 3,
                            decoration: ShapeDecoration(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 13),
                      const Text(
                        'Recommended',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Text(
                        'Medical Doctors',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Text(
                        'Nurses',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Text(
                        'Cardiologist',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Dr. Josephine
              const SizedBox(height: 40),
              SizedBox(
                width: 384,
                height: 310,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 185,
                          height: 182,
                          color: Colors.black,
                          child: const  Image(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/josephine.png',
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 185,
                          height: 120,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 185,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Dr. Josephine Jane',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                    const SizedBox(width: 2),
                                    Container(
                                      width: 18,
                                      height: 14,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/nigeria.png'
                                          ),
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(),
                                        child: const Stack(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                'assets/images/bag.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Psychiatrist at LUTH ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.30,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 11),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/star.png'
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '4.86 ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(20 reviews)',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              )
                                            )
                                          ]
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //Dr Kelvin Anthony
                    const SizedBox(width: 14),
                    Column(
                      children: [
                        const SizedBox(
                          width: 185,
                          height: 182,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/kelvin.png',
                            )
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 185,
                          height: 85,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 185,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Dr. Kelvin Anthony ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      width: 18,
                                      height: 14,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/nigeria.png'
                                          )
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/bag.png'
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Psychologist at KATH ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 11),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/star.png'
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '4.56  ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(35 reviews)',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              )
                                            )
                                          ]
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 0),
              SizedBox(
                width: 384,
                height: 182,
                child: Row(
                  children: [
                    Container(
                      width: 185,
                      height: 182,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/kelvin.png'
                          )
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Container(
                      width: 185,
                      height: 182,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/tima.png'
                          ),
                        )
                      ),
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
