// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat/data/chat_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Favorite contacts",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(chats[index].image),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      chats[index].name,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 5,
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
