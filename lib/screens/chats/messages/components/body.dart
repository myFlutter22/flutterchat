import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/models/chat_message.dart';
import 'package:flutterchat/screens/chats/messages/components/chat_input_field.dart';
import 'package:flutterchat/screens/chats/messages/components/message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessage.length,
              itemBuilder: (context, index) => Message(
                message: demeChatMessage[index],
              ),
            ),
          ),
        ),
        // Spacer(),
        ChatInputField(),
      ],
    );
  }
}
