import 'package:doctor/utils/library/imports.dart';

class AuthPageTwo extends StatefulWidget {
  final VoidCallback onBackPressed;
  final VoidCallback onForwardPressed;
  const AuthPageTwo({super.key, required this.onBackPressed, required this.onForwardPressed});
  
  @override
  State<AuthPageTwo> createState() => _AuthPageTwoState();
}

class _AuthPageTwoState extends State<AuthPageTwo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}