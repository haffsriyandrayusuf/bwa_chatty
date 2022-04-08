import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerChat() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/group_pic1.png',
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
                  'Jakarta Fair',
                  style: titleTextStyle,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '14,209 members',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/call_pic.png',
            ),
          ],
        ),
      );
    }

    Widget receiverChat({
      required String bodyImageUrl,
      required String bodyChatText,
      required String bodyChatTime,
    }) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              bodyImageUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bodyChatText,
                    style: titleTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    bodyChatTime,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderChat({
      required String bodyImageUrl,
      required String bodyChatText,
      required String bodyChatTime,
    }) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    bodyChatText,
                    style: titleTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    bodyChatTime,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              bodyImageUrl,
              height: 40,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget bodyChat() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            receiverChat(
              bodyImageUrl: 'assets/images/friend_pic1.png',
              bodyChatText: 'How are ya guys?',
              bodyChatTime: '2:30',
            ),
            receiverChat(
              bodyImageUrl: 'assets/images/friend_pic3.png',
              bodyChatText: 'Find here :P',
              bodyChatTime: '3:11',
            ),
            senderChat(
              bodyImageUrl: 'assets/images/friend_pic4.png',
              bodyChatText:
                  'Thinking about how to deal\nwith this client from hell...',
              bodyChatTime: '22:08',
            ),
            receiverChat(
              bodyImageUrl: 'assets/images/friend_pic2.png',
              bodyChatText: 'Love them',
              bodyChatTime: '23:11',
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - 2 * 30,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message ...',
              style: subtitleTextStyle.copyWith(fontSize: 16),
            ),
            Image.asset(
              'assets/images/send_btn.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: chatInput(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              headerChat(),
              bodyChat(),
            ],
          ),
        ),
      ),
    );
  }
}
