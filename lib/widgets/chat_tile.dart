import 'package:flutter/material.dart';

import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String chatImage;
  final String chatName;
  final String chatText;
  final String chatime;
  final bool unread;
  const ChatTile(
      {Key? key,
      required this.chatImage,
      required this.chatName,
      required this.chatText,
      required this.chatime,
      required this.unread})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            chatImage,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatName,
                style: titleTextStyle,
              ),
              Text(
                chatText,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            chatime,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
