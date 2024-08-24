import 'package:doctor/utils/library/imports.dart';

class AppointmentDetailsPage extends StatefulWidget {
  const AppointmentDetailsPage({super.key});

  @override
  State<AppointmentDetailsPage> createState() => _AppointmentDetailsPageState();
}

class _AppointmentDetailsPageState extends State<AppointmentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          // App Bar
          child: SizedBox(
            width: 384,
            height: 28,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const AppointmentsPage()
                        )
                      ),
                      child: const SizedBox(
                        width: 28,
                        height: 28,
                        child: Image(
                          image: AssetImage(
                            'assets/images/arrow-back.png'
                          )
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 125),
                const Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
                const SizedBox(width: 125),
                const SizedBox(
                  width: 28,
                  height: 28,
                  child: Image(
                    image: AssetImage(
                      'assets/images/more.png'
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}