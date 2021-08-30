import 'package:flutter/material.dart';
import 'package:flutterchat/components/filled_outline_button.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/models/chat.dart';
import 'package:flutterchat/screens/chats/components/chat_card.dart';
import 'package:flutterchat/screens/chats/messages/message_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Message",
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagesScreen(),
                  ),
                ),
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
