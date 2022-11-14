import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/model/chat_model.dart';
import 'package:whatsappclone/view/Pages/chat/chat_dtls.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatdata.length,
        itemBuilder: (context, index) => Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              onTap: (() {
                Get.to(ChatDtlsPage());
              }),
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(chatdata[index].avater),
              ),
              title: Text(
                chatdata[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(chatdata[index].massage,
                  style: TextStyle(color: Colors.grey)),
              trailing: Text(chatdata[index].time),
            ),
          ],
        ),
      ),
    );
  }
}
