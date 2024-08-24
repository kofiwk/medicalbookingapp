import 'package:doctor/utils/library/imports.dart';

class UserNameTextWidget extends StatefulWidget {
  final String text;
  final bool isSelected;

  const UserNameTextWidget({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  State<UserNameTextWidget> createState() => _DomainTextWidgetState();
}

class _DomainTextWidgetState extends State<UserNameTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.text,),
            widget.isSelected
                ? Icon(Icons.radio_button_on_rounded)
                : Icon(Icons.radio_button_off_rounded)
          ],
        ),
      ),
    );
  }
}
