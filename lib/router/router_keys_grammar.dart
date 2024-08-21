import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/grammar/conversationspages/conversations_good_morning.dart';
// import 'package:zeetionary/home/screens/conversations/conversationspages/conversations_good_afternoon.dart';
// import 'package:zeetionary/home/screens/conversations/conversationspages/good_brunch.dart';
// import 'package:zeetionary/router/exports_english_first.dart';
//
//
//
//

MaterialPage _blP(Widget child) => MaterialPage(child: child);

Map<String, PageBuilder> getRoutesConversations() {
  return {
  "/grammar-good-morning": (_) => _blP(const ConversationsGoodMorning()),
  // "/conversations-screen/conversation-good-afternoon": (_) => _blP(ConversationsGoodAfternoon()),
  // "/conversations-screen/conversation-good-brunch": (_) => _blP(ConversationsGoodBrunch()),
  // "/conversations-screen/conversation-good-evening": (_) => _blP(ConversationsGoodEvening()),
  };
}