import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/home/screens/conversations/conversationspages/conversations_good_morning.dart';
import 'package:zeetionary/home/screens/conversations/conversationspages/conversations_good_afternoon.dart';
// import 'package:zeetionary/router/exports_english_first.dart';
//
//
//
//

MaterialPage _blP(Widget child) => MaterialPage(child: child);

Map<String, PageBuilder> getRoutesConversations() {
  return {
  "/conversations-screen/conversation-good-morning": (_) => _blP(ConversationsGoodMorning()),
  "/conversations-screen/conversation-good-afternoon": (_) => _blP(ConversationsGoodAfternoon()),
  };
}