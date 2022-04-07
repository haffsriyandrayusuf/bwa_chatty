import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/friend_pic1.png',
                        chatName: 'Joshuer',
                        chatText: "Sorry you're not my ty...",
                        chatime: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/friend_pic2.png',
                        chatName: 'Gabriella',
                        chatText: "I saw it clearly and mig...",
                        chatime: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/group_pic1.png',
                        chatName: 'Jakarta Fair',
                        chatText: "Why does everyone ca...",
                        chatime: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/group_pic2.png',
                        chatName: 'Angga',
                        chatText: "Here here we can go...",
                        chatime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/group_pic3.png',
                        chatName: 'Bentley',
                        chatText: "The car which does not...",
                        chatime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/group_pic1.png',
                        chatName: 'Bentley',
                        chatText: "The car which does not...",
                        chatime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/group_pic2.png',
                        chatName: 'Angga',
                        chatText: "Here here we can go...",
                        chatime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        chatImage: 'assets/images/group_pic3.png',
                        chatName: 'Bentley',
                        chatText: "The car which does not...",
                        chatime: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
