import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../utils/colors.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key,
      required this.textData,
      required this.user,
      required this.chatID,
      this.color = AppConstants.mainWhiteColor});

  final String textData;
  final String chatID;
  final String user;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: MediaQuery.sizeOf(context).width / 5),
      child: Neumorphic(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        style: NeumorphicStyle(
          depth: 3,
          color: color,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(10),
          ),
        ),
        child: Text(
          textData,
          style: const TextStyle(color: AppConstants.textColor2, fontSize: 13),
        ),
      ),
    );
  }
}
