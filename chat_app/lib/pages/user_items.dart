// ignore_for_file: prefer_const_constructors

import 'package:chat_app/models/users.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class UserItem extends StatefulWidget {
  const UserItem({super.key, required this.user});

  final UserModels user;

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Stack(alignment: Alignment.bottomRight, children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(widget.user.image),
          ),
          CircleAvatar(
            radius: 5,
            backgroundColor: widget.user.isOnlne ? Colors.green : Colors.grey,
          ),
        ]),
        title: Text(
          widget.user.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Last Online : ${timeago.format(widget.user.lastActive)}',
          style: const TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      );
}
