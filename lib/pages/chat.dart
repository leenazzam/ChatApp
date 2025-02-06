// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat/widgets/chat_list.dart';
import 'package:chat/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3f51b5),
      appBar: AppBar(
        backgroundColor: Color(0xFF3f51b5),
        title: Text(
          "Chats",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FavoriteContacts(),
          ChatList(),
        ],
      ),
    );
  }
}
