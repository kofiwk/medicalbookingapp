import 'package:doctor/utils/library/imports.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  PageController? _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  nextFunction() {
    _pageController!.nextPage(duration: const Duration(milliseconds: 350), curve: Curves.ease);
  }

  backFunction() {
    _pageController!.previousPage(duration: const Duration(milliseconds: 350), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 16,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProgressBar(page: currentIndex + 1),
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  AuthPageOne(
                    onForwardPressed: () {
                      nextFunction();
                    },
                  ),
                  AuthPageTwo(
                    onBackPressed: () {
                      backFunction();
                    },
                    onForwardPressed: () {
                      nextFunction();
                    },
                  ),
                  AuthPageThree(
                    onBackPressed: () {
                      backFunction();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
