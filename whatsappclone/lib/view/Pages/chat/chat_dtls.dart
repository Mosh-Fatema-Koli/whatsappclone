import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/view/Pages/chat/message.dart';

class ChatDtlsPage extends StatelessWidget {
  const ChatDtlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Colors.green,
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text("Koli"),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MassagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            child: TextField(
              maxLines: 4,
              minLines: 1,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  hintText: "Text message",
                  prefixIcon: IconButton(
                    icon: Icon(Icons.emoji_people_rounded),
                    onPressed: () {},
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // added line
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.link),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.camera_alt_outlined),
                        onPressed: () {},
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
