import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/models/chat.dart';
import 'package:flutterchat/screens/chats/messages/message_screen.dart';

class ChatCard extends StatelessWidget {
  final Chat? chat;
  final VoidCallback? press;
  const ChatCard({
    Key? key,
    @required this.chat,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => press,
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MessagesScreen(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat!.image),
                ),
                if (chat!.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3,
                        ),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat!.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat!.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(
                chat!.time,
              ),
            ),
          ],
        ),
      ),
    );
  }
}