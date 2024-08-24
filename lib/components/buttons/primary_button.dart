import 'package:doctor/utils/library/imports.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton(
      {super.key,
      this.isloading = false,
      this.isEnabled = true,
      this.onPressed,
      required this.text});

  final bool isloading;
  final bool isEnabled;
  final Function()? onPressed;
  final String text;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool loading = false;

  bool get isEnabled {
    return widget.isEnabled && !loading && !widget.isloading;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isEnabled
          ? () async {
              setState(() {
                loading = true;
              });
              await widget.onPressed!.call();
              setState(() {
                loading = false;
              });
            }
          : null,
      child: Container(
        width: double.infinity,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        decoration: ShapeDecoration(
          color: !widget.isEnabled ? Colors.blue : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: loading
            ? const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              )
            : Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: !widget.isEnabled ? Colors.blue : Colors.white),
              ),
      ),
    );
  }
}
