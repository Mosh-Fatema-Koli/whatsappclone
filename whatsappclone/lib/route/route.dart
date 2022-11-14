import 'package:whatsappclone/view/Pages/calls.dart';
import 'package:whatsappclone/view/Pages/chat/chats.dart';
import 'package:whatsappclone/view/Pages/home.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/view/Pages/status.dart';

const String homeScreen = "/home-screen";
const String chatScreen = "/chat-screen";
const String statusScreen = "/status_screen";
const String callScreen = "/call-screen";
const String groupScreen = "/group_screen";

List<GetPage> getPages = [
  GetPage(name: homeScreen, page: () => HomePage()),
  GetPage(name: chatScreen, page: (() => ChatPage())),
  GetPage(name: callScreen, page: () => CallPage()),
  GetPage(name: statusScreen, page: (() => StatusPage())),
];
