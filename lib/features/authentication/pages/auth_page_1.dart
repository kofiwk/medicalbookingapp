import 'package:doctor/utils/library/imports.dart';
import 'package:flutter/gestures.dart';

class AuthPageOne extends StatefulWidget {
  final VoidCallback onForwardPressed;

  const AuthPageOne({super.key, required this.onForwardPressed});

  @override
  State<AuthPageOne> createState() => _AuthPageOneState();
}

class _AuthPageOneState extends State<AuthPageOne> {
  String userName = '';
  bool started = false;
  final TextEditingController userNameController = TextEditingController();
    finalizeName() async {
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameFinalController =
        TextEditingController(text: userName.toLowerCase());

    return Scaffold(
        bottomSheet: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: PrimaryButton(
            text: 'Next',
            isEnabled: userNameFinalController.value.text == userName &&
                userName.isNotEmpty &&
                !started,
            onPressed: () {
              finalizeName();
              widget.onForwardPressed.call();
            },
          ),
        ),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32),
          Text(
            "Let's setup your account",
            maxLines: 2,
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 26),
          Text(
            'What is your name?',
            style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          AuthTextField(
            hintText: "eg: John Doe",
            autoFocus: true,
            centerAligned: false,
            controller: userNameFinalController,
            onChanged: (p0) {
              setState(() {
                userName = p0;
                started = true;
                print(started);
              });
            },
          ),
          SizedBox(height: 24),
          Text(
            "Your username will be",
            style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          TextFormField(
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            onTapOutside: (focusNode) {
              FocusScope.of(context).unfocus();
            },
            onChanged: (p0) {
              setState(() {
                userName = p0;
              });
            },
            autovalidateMode: AutovalidateMode.always,
            textCapitalization: TextCapitalization.none,
            controller: userNameFinalController,
            validator: (p0) {
            if (started && userNameFinalController.value.text == userName) {
              return "";
            }
            return null;
          },
          autofocus: false,
            decoration: InputDecoration(
              hintText: 'eg: johndoe',
              hintStyle: TextStyle(
                color: Colors.grey[30],
                fontFamily: 'Urbanist',
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),
              fillColor: started && userNameFinalController.value.text == userName
                ? Colors.red[50]
                : Colors.grey[10],
              filled: true,
              enabled: true,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.5,
                )
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide(
                  color: Colors.red.shade200,
                  width: 1
                )
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.5
                )
              ),
              disabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide(
                  color: Colors.blue.shade300,
                  width: 1.5
                )
              )
            ),
          ),
          SizedBox(height: 8),
          started && userNameFinalController.value.text == userName
            ? RichText(
              text: TextSpan(
                text: 'This username is not available. ',
                children: [
                  TextSpan(
                    text: "See available options",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final result = await showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return UserNameModal(username: userName);
                                });
                            if (result != null) {
                              setState(() {
                                userName = result;
                                started = false;
                              });
                            }
                          },
                      ),
                      TextSpan(
                        text: " or provide another one",
                        
                      ),
                    ]))
              : const SizedBox.shrink(),
        ],
      )
    );
  }
}
