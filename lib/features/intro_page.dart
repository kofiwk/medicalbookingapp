import 'package:doctor/navbar.dart';
import 'package:doctor/utils/library/imports.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // image
          Image.asset(
            'assets/images/nurse.jpg',
            height: 450,
            width: screenSize.width,
            fit: BoxFit.cover,
          ),

          const SizedBox(
            height: 20,
          ),

          // slider
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 113,
                      height: 6,
                      decoration: ShapeDecoration(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 113,
                      height: 6,
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 113,
                      height: 6,
                      decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          // title
          const Text(
            'Skip the Waiting Room. Consult With a Doctor Now',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,
              fontFamily: 'Urbanist',
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 20,
          ),

          // subtitle
          Text(
            'Connect with Medical Professionals Anywhere, Anytime.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontFamily: 'Urbanist',
              color: Colors.grey[700]
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 40),

          // start now button
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  const HomePage(),
              ),
            ),
            child: Container(
              width: 384,
              height: 60,
              decoration: ShapeDecoration(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: 'Urbanist',
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
