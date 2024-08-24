import 'package:doctor/utils/library/imports.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String Function(String?)? validator;
  final String hintText;
  final bool? obscureText;
  final bool? autoFocus;
  final bool? centerAligned;
  final Widget? suffix;
  final bool enabled;
  final String? initialValue;
  final TextEditingController? controller;

  const AuthTextField(
      {super.key,
      this.keyboardType = TextInputType.text,
      this.onChanged,
      this.validator,
      required this.hintText,
      this.obscureText = false,
      this.autoFocus = false,
      this.centerAligned = false,
      this.suffix,
      this.controller,
      this.enabled = true,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: !centerAligned! ? TextAlign.start : TextAlign.center,
      keyboardType: keyboardType,
      textAlignVertical: !centerAligned! ? TextAlignVertical.top : TextAlignVertical.center,
      style: const TextStyle(
        fontSize: 14,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w400
      ),
      onTapOutside: (focusNode) {
        FocusScope.of(context).unfocus();
      },
      initialValue: initialValue,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      textCapitalization: TextCapitalization.none,
      obscureText: obscureText!,
      autofocus: autoFocus!,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey[100]
        ),
        fillColor: Colors.grey[200],
        filled: true,
        enabled: enabled,
        suffixIcon: suffix,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: Colors.grey[30]!, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: Colors.red[200]!, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: Colors.grey[30]!, width: 1.5),
        ),
        disabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: const BorderSide(color: Colors.transparent, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: Colors.blue[300]!, width: 1.5),
        ),
      ),
    );
  }
}
