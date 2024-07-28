import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycome extends StatelessWidget {
  // blank divider
  EnglishEntrycome({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcome(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("come");
  }

  Future<void> speakcomes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He came into the room and shut the door.");
  }

  Future<void> speakcomes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She comes to work by bus.");
  }

  Future<void> speakcomes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My son is coming home soon.");
  }

  Future<void> speakcomes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come here!");
  }

  Future<void> speakcomes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come and see us soon!");
  }

  Future<void> speakcomes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Here comes Jo!");
  }

  Future<void> speakcomes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a storm coming.");
  }

  Future<void> speakcomes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're coming to stay for a week.");
  }

  Future<void> speakcomes9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He came towards me.");
  }

  Future<void> speakcomes10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I hope you can come to Australia to visit us.");
  }

  Future<void> speakcomes11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's looks as if there's a storm coming.");
  }

  Future<void> speakcomes12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("When is your son coming home?");
  }

  Future<void> speakcomes13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They came as far as the gate.");
  }

  Future<void> speakcomes14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("People came from all over the country.");
  }

  Future<void> speakcomes15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your breakfast is coming soon.");
  }

  Future<void> speakcomes16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have any letters come for me?");
  }

  Future<void> speakcomes17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Help came at last.");
  }

  Future<void> speakcomes18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He came to England by ship.");
  }

  Future<void> speakcomes19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If you come late, the doctor may not be able to see you.");
  }

  Future<void> speakcomes20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've come for my book.");
  }

  Future<void> speakcomes21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He came looking for me.");
  }

  Future<void> speakcomes22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've come for those books you promised me.");
  }

  Future<void> speakcomes23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've come to see Mrs Cooper.");
  }

  Future<void> speakcomes24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've only come for an hour.");
  }

  Future<void> speakcomes25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Thanks for coming.");
  }

  Future<void> speakcomes26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ten thousand people came to hear him speak.");
  }

  Future<void> speakcomes27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you coming later?");
  }

  Future<void> speakcomes28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you coming to the club with us tonight?");
  }

  Future<void> speakcomes29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come with me—I've got something to show you.");
  }

  Future<void> speakcomes30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please come to my party on September 10th.");
  }

  Future<void> speakcomes31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm sorry, I won't be able to come.");
  }

  Future<void> speakcomes32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've come 50 miles this morning.");
  }

  Future<void> speakcomes33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company has come a long way in the last 5 years.");
  }

  Future<void> speakcomes34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's come all the way from Tokyo.");
  }

  Future<void> speakcomes35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've come a long way and we're very tired.");
  }

  Future<void> speakcomes36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How far have you come?");
  }

  Future<void> speakcomes37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A huge wave came crashing over the sea wall.");
  }

  Future<void> speakcomes38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Questions came rushing into her head.");
  }

  Future<void> speakcomes39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't expect me to come running every time you call.");
  }

  Future<void> speakcomes40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children came running into the room.");
  }

  Future<void> speakcomes41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A crowd of men on horses carrying spears came charging down the road.");
  }

  Future<void> speakcomes42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The agreement came after several hours of negotiations.");
  }

  Future<void> speakcomes43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The rains came too late to do any good.");
  }

  Future<void> speakcomes44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Spring came late this year.");
  }

  Future<void> speakcomes45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The time has come to act.");
  }

  Future<void> speakcomes46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His first goal came in the 81st minute.");
  }

  Future<void> speakcomes47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His resignation came as no surprise.");
  }

  Future<void> speakcomes48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her death came as a terrible shock to us.");
  }

  Future<void> speakcomes49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("More details of the event are coming soon.");
  }

  Future<void> speakcomes50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come summer, people like to eat outdoors.");
  }

  Future<void> speakcomes51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Business improved as Christmas came nearer.");
  }

  Future<void> speakcomes52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At last, the time came to leave.");
  }

  Future<void> speakcomes53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How did he come to break his leg?");
  }

  Future<void> speakcomes54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How do you come to be so late?");
  }

  Future<void> speakcomes55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That comes a long way down my list of priorities.");
  }

  Future<void> speakcomes56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She came second in the exam.");
  }

  Future<void> speakcomes57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His family comes first.");
  }

  Future<void> speakcomes58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At last winter came to an end.");
  }

  Future<void> speakcomes59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He came to power in 2019.");
  }

  Future<void> speakcomes60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We need to come to an agreement on this issue.");
  }

  Future<void> speakcomes61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("When will they come to a decision?");
  }

  Future<void> speakcomes62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The trees are coming into leaf.");
  }

  Future<void> speakcomes63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This dress comes in black and red.");
  }

  Future<void> speakcomes64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The DVD comes with several bonus features.");
  }

  Future<void> speakcomes65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("New cars don't come cheap.");
  }

  Future<void> speakcomes66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This luxury villa comes complete with its own private swimming pool.");
  }

  Future<void> speakcomes67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The handle came loose.");
  }

  Future<void> speakcomes68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Everything will come right in the end.");
  }

  Future<void> speakcomes69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This design came to be known as the Oriental style.");
  }

  Future<void> speakcomes70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In time she came to love him.");
  }

  Future<void> speakcomes71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had come to see the problem in a new light.");
  }

  Future<void> speakcomes72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They both came at the same time.");
  }

  Future<void> speakcomes73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor asked for a sample of come.");
  }

  Future<void> speakcomes74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was come on the sheets.");
  }

  Future<void> speakcomes75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They would have been married forty years come this June.");
  }

  Future<void> speakcomes76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come next week she’ll have changed her mind.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "come"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kʌm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcome("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kʌm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcome("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ھاتن، گەیشتن، ڕۆیشتن، تۆواو
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) ڕۆشتن بۆ لای کەسێک یان شوێنێک"),
                          SentencesRow(
                            englishText:
                                "He came into the room and shut the door.",
                            kurdishText:
                                "ھاتە ناو ژوورەکەوە و دەرگای داخست.", // come",
                            onPressedBritish: () => speakcomes1("en-GB"),
                            onPressedAmerican: () => speakcomes1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She comes to work by bus.",
                            kurdishText: "بە پاس دێت بۆ کار.",
                            onPressedBritish: () => speakcomes2("en-GB"),
                            onPressedAmerican: () => speakcomes2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "My son is coming home soon.",
                                    kurdishText:
                                        "کوڕەکەم بەم نزیکانە دەگەڕێتەوە ماڵەوە.",
                                    onPressedBritish: () =>
                                        speakcomes3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Come here!",
                                    kurdishText: "وەرە ئێرە!",
                                    onPressedBritish: () =>
                                        speakcomes4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Come and see us soon!",
                                    kurdishText: "وەرە بۆ بینینمان بەم زوانە!",
                                    onPressedBritish: () =>
                                        speakcomes5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Here comes Jo! (= Jo is coming)",
                                    kurdishText: "جۆ خەریکە دێت!",
                                    onPressedBritish: () =>
                                        speakcomes6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "There's a storm coming.",
                                    kurdishText: "زریانێک بەڕێوەیە.",
                                    onPressedBritish: () =>
                                        speakcomes7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They're coming to stay for a week.",
                                    kurdishText: "دێن بۆ ھەفتەیەک بمێننەوە.",
                                    onPressedBritish: () =>
                                        speakcomes8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "He came towards me.",
                                    kurdishText: "بەرەو لام ھات.",
                                    onPressedBritish: () =>
                                        speakcomes9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I hope you can come to Australia to visit us.",
                                    kurdishText:
                                        "بەھیواین بێیت بۆ ئوسترالیا بۆ سەردانمان.",
                                    onPressedBritish: () =>
                                        speakcomes10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It's looks as if there's a storm coming.",
                                    kurdishText: "وادیارە زریانێک بەڕێوەیە.",
                                    onPressedBritish: () =>
                                        speakcomes11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes11("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "When is your son coming home?",
                                    kurdishText:
                                        "کەی کوڕەکەت دەگەڕێتەوە ماڵەوە؟",
                                    onPressedBritish: () =>
                                        speakcomes12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) گەشتنە شوێنێک"),
                          SentencesRow(
                            englishText: "They came as far as the gate.",
                            kurdishText: "تاوەکو دەروازەکە ھاتن.",
                            onPressedBritish: () => speakcomes13("en-GB"),
                            onPressedAmerican: () => speakcomes13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "People came from all over the country.",
                            kurdishText: "خەڵکی لە تەواوی وڵاتەکەوە دێن.",
                            onPressedBritish: () => speakcomes14("en-GB"),
                            onPressedAmerican: () => speakcomes14("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Your breakfast is coming soon.",
                                    kurdishText:
                                        "نانی بەیانیت بەم زوانە دەگات.",
                                    onPressedBritish: () =>
                                        speakcomes15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Have any letters come for me?",
                                    kurdishText: "ھیچ نامەیەکم پێگەشتووە؟",
                                    onPressedBritish: () =>
                                        speakcomes16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes16("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Help came at last.",
                                    kurdishText: "یارمەتی لە کۆتاییدا گەشت.",
                                    onPressedBritish: () =>
                                        speakcomes17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes17("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "He came to England by ship.",
                                    kurdishText: "بە کەشتی ھات بۆ ئینگلتەرە.",
                                    onPressedBritish: () =>
                                        speakcomes18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes18("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "If you come late, the doctor may not be able to see you.",
                                    kurdishText:
                                        "ئەگەر درەنگ بگەیت، پزیشکەکە ڕەنگە نەتوانێت بتبینێت.",
                                    onPressedBritish: () =>
                                        speakcomes19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) چوونە شوێنێک بۆ کردن یان بردنی شتێک"),
                          SentencesRow(
                            englishText: "I've come for my book.",
                            englishNote: """You can also say: 
                                          
                                          1. "I've come about my book.", 
                                          
                                          2. "I've come to get my book.\"""",
                            kurdishText: "بۆ کتێبەکەم ھاتووم.",
                            onPressedBritish: () => speakcomes20("en-GB"),
                            onPressedAmerican: () => speakcomes20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He came looking for me.",
                            kurdishText: "ھات بۆم گەڕا.",
                            onPressedBritish: () => speakcomes21("en-GB"),
                            onPressedAmerican: () => speakcomes21("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I've come for those books you promised me.",
                                    kurdishText:
                                        "ھاتووم بۆ ئەو کتێبانەی بەڵێنت پێمدا.",
                                    onPressedBritish: () =>
                                        speakcomes22("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes22("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "I've come to see Mrs Cooper.",
                                    kurdishText:
                                        "ھاتووم بۆ بینینی بەڕێز کووپەر.",
                                    onPressedBritish: () =>
                                        speakcomes23("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) گەشتکردن، بەتایبەتی لەگەڵ کەسێکی دیکە، بۆ شوێنێک یان بۆ بەژداری لە بۆنەیەک"),
                          SentencesRow(
                            englishText: "I've only come for an hour.",
                            kurdishText: "تەنھا بۆ یەک کاتژمێر ھاتووم.",
                            onPressedBritish: () => speakcomes24("en-GB"),
                            onPressedAmerican: () => speakcomes24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Thanks for coming (= to my house, party, etc.).",
                            kurdishText: "سوپاس بۆ ھاتنت.",
                            onPressedBritish: () => speakcomes25("en-GB"),
                            onPressedAmerican: () => speakcomes25("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Ten thousand people came to hear him speak.",
                                    kurdishText:
                                        "دە ھەزار کەس ھاتن بۆ گوێگرتن لێی.",
                                    onPressedBritish: () =>
                                        speakcomes26("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes26("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Are you coming later?",
                                    kurdishText: "دواتر دێیت.",
                                    onPressedBritish: () =>
                                        speakcomes27("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes27("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Are you coming to the club with us tonight?",
                                    kurdishText: "لەگەڵمان دێیت بۆ یانەکە؟",
                                    onPressedBritish: () =>
                                        speakcomes28("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes28("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Come with me—I've got something to show you.",
                                    kurdishText:
                                        "وەرە لەگەڵم، شتێکم ھەیە پیشانت بدەم.",
                                    onPressedBritish: () =>
                                        speakcomes29("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes29("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Please come to my party on September 10th.",
                                    kurdishText:
                                        "تکایە وەرە بۆ ئاھەنگەکەم لە ١٠ـی ئەیلوول.",
                                    onPressedBritish: () =>
                                        speakcomes30("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes30("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I'm sorry, I won't be able to come.",
                                    kurdishText: "بەداخەوەم، ناتوانم بێم.",
                                    onPressedBritish: () =>
                                        speakcomes31("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) گەشتکردن بە مەودایەکی دیاریکراودا"),
                          SentencesRow(
                            englishText: "We've come 50 miles this morning.",
                            kurdishText: "ئەم بەیانییە ٥٠ میلمان بڕیوە.",
                            onPressedBritish: () => speakcomes32("en-GB"),
                            onPressedAmerican: () => speakcomes32("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The company has come a long way (= made lot of progress) in the last 5 years.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) کۆمپانیاکە بە زۆر شتدا تێپەڕێوە لە پێنج ساڵی ڕابردوودا.",
                            onPressedBritish: () => speakcomes33("en-GB"),
                            onPressedAmerican: () => speakcomes33("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He's come all the way from Tokyo.",
                                    kurdishText:
                                        "لە تۆکیۆوە ئەو ھەموو ڕێگایەی بڕیوە.",
                                    onPressedBritish: () =>
                                        speakcomes34("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes34("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We've come a long way and we're very tired.",
                                    kurdishText:
                                        "زۆر ڕێگامان بڕیوە و زۆر ماندووین.",
                                    onPressedBritish: () =>
                                        speakcomes35("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes35("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "How far have you come?",
                                    kurdishText: "چەندت بڕیوە؟",
                                    onPressedBritish: () =>
                                        speakcomes36("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) جوڵان بەشێوەیەکی دیاریکراو یان لە کاتی ئەنجامدانی شتێکدا"),
                          SentencesRow(
                            englishText:
                                "A huge wave came crashing over the sea wall.",
                            kurdishText:
                                "شەپۆلێکی گەورە ھات و کێشای بە بەربەستی دەریاکەدا.",
                            onPressedBritish: () => speakcomes37("en-GB"),
                            onPressedAmerican: () => speakcomes37("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Questions came rushing into her head.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) پرسیار مێشکی خواردبوو.",
                            onPressedBritish: () => speakcomes38("en-GB"),
                            onPressedAmerican: () => speakcomes38("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Don't expect me to come running every time you call.",
                                    kurdishText:
                                        "چاوەڕێ مەبە بە ڕاکردن بێم ھەر کاتێک پەیوەندی دەکەیت.",
                                    onPressedBritish: () =>
                                        speakcomes39("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes39("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The children came running into the room.",
                                    kurdishText:
                                        "منداڵەکان بە ڕاکردن ھاتنە ژوورەکە.",
                                    onPressedBritish: () =>
                                        speakcomes40("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes40("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A crowd of men on horses carrying spears came charging down the road.",
                                    kurdishText:
                                        "ژمارەیەک پیاو لەسەر ئەسپ و ھەڵگرتنی ڕمەوە بە ڕێگاکەدا ھێرشیان کرد.",
                                    onPressedBritish: () =>
                                        speakcomes41("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٧. (کردار) ڕوودان"),
                          SentencesRow(
                            englishText:
                                "The agreement came after several hours of negotiations.",
                            kurdishText:
                                "ڕێککەوتنەکە ڕوویدا لە دوای چەند کاتژمێرێک لە دانوستان.",
                            onPressedBritish: () => speakcomes42("en-GB"),
                            onPressedAmerican: () => speakcomes42("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The rains came too late to do any good.",
                            kurdishText:
                                "بارانەکە زۆر درەنگ ڕوویدا کە ھیچ سوودێکی ھەبێت.",
                            onPressedBritish: () => speakcomes43("en-GB"),
                            onPressedAmerican: () => speakcomes43("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "Spring came late this year.",
                                    kurdishText: "بەھار ئەمساڵ درەنگ ھات.",
                                    onPressedBritish: () =>
                                        speakcomes44("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes44("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The time has come (= now is the moment) to act.",
                                    kurdishText: "کاتی ھەنگاونان ھاتووە.",
                                    onPressedBritish: () =>
                                        speakcomes45("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes45("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "His first goal came in the 81st minute.",
                                    kurdishText:
                                        "یەکەم گۆڵی لە خولەکی ٨١ ـدا بوو.",
                                    onPressedBritish: () =>
                                        speakcomes46("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes46("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "His resignation came as no surprise.",
                                    kurdishText:
                                        "دەستلەکارکێشانەوەی ھیچ جێگەی سەرسامی نەبوو.",
                                    onPressedBritish: () =>
                                        speakcomes47("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes47("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Her death came as a terrible shock to us.",
                                    kurdishText:
                                        "مردنی شۆکێکی گەورە بوو بۆمان.",
                                    onPressedBritish: () =>
                                        speakcomes48("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes48("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "More details of the event are coming soon.",
                                    kurdishText: "وردەکاری زیاترمان پێدەگات.",
                                    onPressedBritish: () =>
                                        speakcomes49("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes49("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Come summer, people like to eat outdoors.",
                                    kurdishText:
                                        "کە ھاوین دێت، خەڵکی حەز دەکەن لە دەرەوە نان بخۆن.",
                                    onPressedBritish: () =>
                                        speakcomes50("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes50("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Business improved as Christmas came nearer.",
                                    kurdishText:
                                        "بازرگانی بەھێز بوو کە کریسمس نزیک بوویەوە.",
                                    onPressedBritish: () =>
                                        speakcomes51("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes51("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "At last, the time came to leave.",
                                    kurdishText: "لە کۆتاییدا کاتی ڕۆشتن ھات.",
                                    onPressedBritish: () =>
                                        speakcomes52("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes52("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) لە پرسیاردا بەکاردێت بۆ ھۆکار یان شێوازی ڕوودانی شتێک"),
                          SentencesRow(
                            englishText: "How did he come to break his leg?",
                            kurdishText: "چۆن لاقی شکا؟",
                            onPressedBritish: () => speakcomes53("en-GB"),
                            onPressedAmerican: () => speakcomes53("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "How do you come to be so late?",
                            kurdishText: "چۆن ھێندە درەنگ کەوتی؟",
                            onPressedBritish: () => speakcomes54("en-GB"),
                            onPressedAmerican: () => speakcomes54("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) ھەبوونی پێگەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "That comes a long way down my list of priorities.",
                            kurdishText:
                                "زۆر لە خوارەوەی لیستی ئامانجە گرنگەکانمە.",
                            onPressedBritish: () => speakcomes55("en-GB"),
                            onPressedAmerican: () => speakcomes55("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She came second (= received the second highest score) in the exam.",
                            kurdishText: "دووەم بوو لە تاقیکردنەوەکەدا.",
                            onPressedBritish: () => speakcomes56("en-GB"),
                            onPressedAmerican: () => speakcomes56("en-US"),
                          ),
                          SentencesRow(
                            englishText:
                                "His family comes first (= is the most important thing in his life).",
                            kurdishText: "خێزانەکەی یەکەمە بۆی.",
                            onPressedBritish: () => speakcomes57("en-GB"),
                            onPressedAmerican: () => speakcomes57("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) لە زۆر دەربڕیندا بەکاردێت بۆ وتنی ئەوەی شتێک گەشتووە بە دۆخێکی دیاریکراو"),
                          SentencesRow(
                            englishText: "At last winter came to an end.",
                            kurdishText: "لە کۆتاییدا زستان بە کۆتا گەشت.",
                            onPressedBritish: () => speakcomes58("en-GB"),
                            onPressedAmerican: () => speakcomes58("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He came to power in 2019.",
                            kurdishText: "لە ٢٠١٩ گەشت بە دەسەڵات.",
                            onPressedBritish: () => speakcomes59("en-GB"),
                            onPressedAmerican: () => speakcomes59("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "We need to come to an agreement on this issue.",
                                    kurdishText:
                                        "پێویستە بگەین بە ڕێککەوتن لەسەر ئەم بابەتە.",
                                    onPressedBritish: () =>
                                        speakcomes60("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes60("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "When will they come to a decision?",
                                    kurdishText: "کەی دەگەن بە بڕیارێک؟",
                                    onPressedBritish: () =>
                                        speakcomes61("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes61("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The trees are coming into leaf.",
                                    kurdishText: "درەختەکان گەڵا دەردەکەن.",
                                    onPressedBritish: () =>
                                        speakcomes62("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes62("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) بەردەست یان ھەبوون بەشێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText: "This dress comes in black and red.",
                            kurdishText: "ئەم درێسە بە ڕەش و سوور بەردەستە.",
                            onPressedBritish: () => speakcomes63("en-GB"),
                            onPressedAmerican: () => speakcomes63("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The DVD comes with several bonus features.",
                            kurdishText:
                                "دی‌ڤی‌دییەکە بە چەند تایبەتمەندییەکی زیادەوە دێت.",
                            onPressedBritish: () => speakcomes64("en-GB"),
                            onPressedAmerican: () => speakcomes64("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "New cars don't come cheap (= they are expensive).",
                                    kurdishText: "ئۆتۆمبێکی تازە ھەرزان نین.",
                                    onPressedBritish: () =>
                                        speakcomes65("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes65("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "This luxury villa comes complete with its own private swimming pool.",
                                    kurdishText:
                                        "ئەم ڤێلا دەوڵەمەندانە مەلەوانگەی تەواوی تایبەتی خۆی لەگەڵ دایە.",
                                    onPressedBritish: () =>
                                        speakcomes66("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomes66("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) بوون بە شتێک"),
                          SentencesRow(
                            englishText: "The handle came loose.",
                            kurdishText: "دەسکەکە شل بوویەوە.",
                            onPressedBritish: () => speakcomes67("en-GB"),
                            onPressedAmerican: () => speakcomes67("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Everything will come right in the end.",
                            kurdishText: "ھەموو شتێک لە کۆتاییدا درووست دەبێت.",
                            onPressedBritish: () => speakcomes68("en-GB"),
                            onPressedAmerican: () => speakcomes68("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This design came to be known as the Oriental style.",
                            kurdishText: "دیزاینەکە ناسرا بە ستایلی Oriental.",
                            onPressedBritish: () => speakcomes69("en-GB"),
                            onPressedAmerican: () => speakcomes69("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) گەشتنە قۆناغی باوەڕبوون، تێگەشتن، یان ھەستکردن بە شتێک"),
                          SentencesRow(
                            englishText: "In time she came to love him.",
                            kurdishText:
                                "بە تێپەڕبوونی کات دەستی بە خۆشەویستی کرد بۆی.",
                            onPressedBritish: () => speakcomes70("en-GB"),
                            onPressedAmerican: () => speakcomes70("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She had come to see the problem in a new light.",
                            kurdishText:
                                "گەشتبوو بە بینینی کێشەکە لە گۆشەنیگایەکی دیکەوە.",
                            onPressedBritish: () => speakcomes71("en-GB"),
                            onPressedAmerican: () => speakcomes71("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (کردار) گەشتن بە ئۆرگازم"),
                          SentencesRow(
                            englishText: "They both came at the same time.",
                            kurdishText: "پێکەوە ئاویان ھاتەوە.",
                            onPressedBritish: () => speakcomes72("en-GB"),
                            onPressedAmerican: () => speakcomes72("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٥. (کردار) تۆواوی پیاو"),
                          SentencesRow(
                            englishText:
                                "The doctor asked for a sample of come.",
                            kurdishText:
                                "پزیشکەکە داوای نموونەیەک لە تۆواوی کرد.",
                            onPressedBritish: () => speakcomes73("en-GB"),
                            onPressedAmerican: () => speakcomes73("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "There was come on the sheets.",
                            kurdishText: "تۆواو لەسەر دۆشەکەکان بوو.",
                            onPressedBritish: () => speakcomes74("en-GB"),
                            onPressedAmerican: () => speakcomes74("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٦. (ئامراز) کە کاتی باسکراو دەگات"),
                          SentencesRow(
                            englishText:
                                "They would have been married forty years come this June.",
                            kurdishText:
                                "ئەم حوزەیرانە دەگەشتن بە ٤٠ ساڵ لە ھاوسەرگیری.",
                            onPressedBritish: () => speakcomes75("en-GB"),
                            onPressedAmerican: () => speakcomes75("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Come next week she’ll have changed her mind.",
                            kurdishText:
                                "تا ھەفتەی داھاتوو بۆچوونی خۆی دەگۆڕێت.",
                            onPressedBritish: () => speakcomes76("en-GB"),
                            onPressedAmerican: () => speakcomes76("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                        // YoutubeEmbeddeddsixteen(),
                        // YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
                        YoutubeEmbeddedend(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  // Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: come (derived forms: come, comes, coming)
1. Move toward, travel toward something or somebody or approach something or somebody (= come up)
"He came singing down the road"; "Come with me to the Casbah"; "come down here!"; "come out of the closet!"; "come into the room";

2. Reach a destination by movement or progress (= arrive, get)
"She came home at 7 o'clock";
 
3. Happen, arrive
"The first success came three days later"; "It came as a shock"; "Dawn comes early in June"
 
4. Reach or enter a state, relation, condition, use, or position
"The water came to a boil"; "We came to understand the true meaning of life"; "Their anger came to a boil"; "I came to realize the true meaning of life"; "The shoes came untied"; "come into contact with a terrorist group"; "your wish will come true"
 
5. To be the product or result (= follow)
"Melons come from a vine"; "Understanding comes from experience";
 
6. Be found or available
"These shoes come in three colours; The furniture comes unassembled"
 
7. Be emitted (= issue forth)
"A scream came from the woman's mouth"; "His breath came hard";
 
8. Be a native of (= hail)
"She comes from Kalamazoo";
 
9. Extend or reach
"The water came up to my waist"; "The sleeves come to your knuckles"
 
10. Exist or occur in a certain point in a series
"Next came the student from France"
 
11. Cover a certain distance
"She came a long way"
 
12. Come under, be classified or included (= fall)
"This comes under a new heading";
 
13. Happen as a result
"Nothing good will come of this"
 
14. Add up in number or quantity (= total, number, add up, amount)
"The bill came to £2,000";
 
15. To measure up to in kind or quality (= add up, amount)
"nothing came of his grandiose plans";
 
16. Be received (= come in)
"News came in of the massacre in Rwanda";
 
17. Come to one's mind; suggest itself (= occur)
"A great idea then came to her";
 
18. Be connected by a relationship of blood, for example (= derive, descend)
"he comes from humble origins";
 
19. Perform, succeed or manage over a period of time (= do, fare, make out, get along)
"He's come a long way";
 
20. [informal] Experience orgasm
"she could not come because she was too upset"
 
21. Have a certain priority
"My family comes first"

- Noun: come (derived forms: comes) 
Usage: informal
1. The thick white fluid containing spermatozoa that is ejaculated by the male genital tract (= semen, seed, seminal fluid, ejaculate)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'BHIruvGY-sU';
  final double _startSeconds = 188;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'b08Z9KXm3CI';
  final double _startSeconds = 508;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 15;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 67;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 712;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 363;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 556;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB