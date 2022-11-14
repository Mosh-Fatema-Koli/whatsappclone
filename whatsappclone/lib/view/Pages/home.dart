import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:whatsappclone/view/Pages/calls.dart';
import 'package:whatsappclone/view/Pages/chat/chats.dart';
import 'package:whatsappclone/view/Pages/group.dart';
import 'package:whatsappclone/view/Pages/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> topTabs = [
    Tab(
      icon: Icon(Icons.group),
    ),
    Tab(
      text: "CHATS",
    ),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "CALLS",
    ),
  ];
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Whatapp"),
        actions: [
          IconButton(
              onPressed: () {
                print("Clicked camera");
              },
              icon: Icon(Icons.camera_alt_outlined)),
          Gap(10),
          IconButton(
            onPressed: () {
              print("Clicked Search");
            },
            icon: Icon(Icons.search),
          ),
          Gap(10),
          IconButton(
            onPressed: () {
              print("Clicked more");
            },
            icon: Icon(Icons.more_vert),
          ),
          Gap(10),
        ],
        bottom: TabBar(
          tabs: topTabs,
          controller: tabController,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          GroupPage(),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }
}
