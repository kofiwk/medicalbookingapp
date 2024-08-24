import 'package:doctor/utils/library/imports.dart';

class ProgressBar extends StatelessWidget {
  final int page;
  const ProgressBar({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
            3,
            (index) => Bars(
                  isActive: (index + 1 == page || index + 1 < page) ? true : false,
                )),
      ),
    );
  }
}

class Bars extends StatelessWidget {
  final bool isActive;
  const Bars({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width / 3.3,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: isActive ? Colors.blue :  Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
