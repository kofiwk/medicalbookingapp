import 'package:doctor/features/appointments/appointment_details_page.dart';
import 'package:doctor/features/chat/chats_page.dart';
import 'package:flutter/material.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
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
                    'My Appointments',
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/calendar_month.png'),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 455,
                    height: 27,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upcoming',
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
                        SizedBox(width: 13),
                        Text(
                          'Pending',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.30,
                          ),
                        ),
                        SizedBox(width: 13),
                        Text(
                          'Past',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.30,
                          ),
                        ),
                        SizedBox(width: 13),
                        Text(
                          'Cancelled',
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
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 110,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      Container(
                        width: 281,
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
              const SizedBox(height: 30),
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
                            image: AssetImage('assets/images/search.png'),
                          )),
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
                        image: DecorationImage(
                          image: AssetImage('assets/images/filter.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // 1st Appointment
              const SizedBox(height: 40),
              SizedBox(
                width: 384,
                height: 158,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 81,
                      height: 80,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/tima.png'),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: 'Appointment with',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.30,
                                        )),
                                    TextSpan(
                                        text: ' Dr. Cynthia Chisom',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.30,
                                        ))
                                  ]),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/calendar.png'))),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Wed, 18th May',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/clock.png'))),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          '4:00 PM - 4:45 PM',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Details',
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
                                const SizedBox(width: 8),
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/info.png',
                                    ),
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 162,
                          height: 42,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Send a message',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Urbanist',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              // 2nd Appointment
              const SizedBox(height: 28),
              SizedBox(
                width: 384,
                height: 158,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 81,
                      height: 80,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/josephine.png'),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: 'Appointment with',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.30,
                                        )),
                                    TextSpan(
                                        text: ' Dr. Josephine Jane',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.30,
                                        ))
                                  ]),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/calendar.png'))),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Fri, 12th May',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/clock.png'))),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          '4:00 PM - 4:45 PM',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Details',
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
                                const SizedBox(width: 8),
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/info.png',
                                    ),
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 162,
                          height: 42,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChatsPage()),
                              );
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Send a message',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Urbanist',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: -0.30,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              // 3rd Appointment
              const SizedBox(height: 28),
              SizedBox(
                width: 384,
                height: 158,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 81,
                      height: 80,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/kelvin.png'),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: 'Appointment with',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.30,
                                        )),
                                    TextSpan(
                                        text: ' Dr. Kelvin Anthony',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.30,
                                        ))
                                  ]),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/calendar.png'))),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Fri, 19th May',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/clock.png'))),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          '4:00 PM - 4:45 PM',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => const AppointmentDetailsPage(),
                                    ),
                                  ),
                                  child: const Text(
                                    'Details',
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
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/info.png',
                                    ),
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 162,
                          height: 42,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Send a message',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Urbanist',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
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
