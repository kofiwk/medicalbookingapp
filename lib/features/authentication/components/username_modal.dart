import 'package:doctor/features/authentication/components/username_tab.dart';
import 'package:doctor/utils/library/imports.dart';

class UserNameModal extends StatefulWidget {
  final String username;
  const UserNameModal({super.key, required this.username});

  @override
  State<UserNameModal> createState() => _UserNameModalState();
}

class _UserNameModalState extends State<UserNameModal> {
  String selectedName = '';

  @override
  Widget build(BuildContext context) {
    List<String> userNames = ["${widget.username}ghana, ${widget.username}gh"];
    return Container(
      height: 350,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24), topRight: Radius.circular(24)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Available usernames",),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context, widget.username);
                  },
                  child: Icon(Icons.radio_button_off_rounded))
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                itemCount: userNames.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      selectedName = userNames[index];
                    }),
                    child: UserNameTextWidget(
                      text: userNames[index],
                      isSelected: selectedName == userNames[index],
                    ),
                  );
                },
                shrinkWrap: true,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          PrimaryButton(
            text: "Continue",
            isEnabled: selectedName != widget.username,
            onPressed: () {
              Navigator.pop(context, selectedName);
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
