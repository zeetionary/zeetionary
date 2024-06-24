import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycan extends StatelessWidget {
// blank divider
  EnglishEntrycan({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcan(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("can");
  }

  Future<void> speakcans1(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can run fast.");
  }

  Future<void> speakcans2(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you call back tomorrow?");
  }

  Future<void> speakcans3(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He couldn't answer the question.");
  }

  Future<void> speakcans4(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The stadium can be emptied in four minutes.");
  }

  Future<void> speakcans5(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't promise anything, but I'll do what I can.");
  }

  Future<void> speakcans6(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Please let us know if you cannot attend the meeting.");
  }

  Future<void> speakcans7(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She can speak Spanish.");
  }

  Future<void> speakcans8(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can he cook?");
  }

  Future<void> speakcans9(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She could feel a lump in her breast.");
  }

  Future<void> speakcans10(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can hear music.");
  }

  Future<void> speakcans11(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can I read your newspaper?");
  }

  Future<void> speakcans12(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can I take you home?");
  }

  Future<void> speakcans13(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you help me with this box?");
  }

  Future<void> speakcans14(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you feed the cat, please?");
  }

  Future<void> speakcans15(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We can eat in a restaurant, if you like.");
  }

  Future<void> speakcans16(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can take the car if necessary.");
  }

  Future<void> speakcans17(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That can't be Mary—she's in New York.");
  }

  Future<void> speakcans18(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He can't have slept through all that noise.");
  }

  Future<void> speakcans19(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What can they be doing?");
  }

  Future<void> speakcans20(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can he be serious?");
  }

  Future<void> speakcans21(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Where can she have put it?");
  }

  Future<void> speakcans22(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He can be very tactless sometimes.");
  }

  Future<void> speakcans23(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It can be quite cold here in winter.");
  }

  Future<void> speakcans24(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can shut up or get out!");
  }

  Future<void> speakcans25(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He opened the can and took a large swig.");
  }

  Future<void> speakcans26(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She sipped from a can of Coke.");
  }

  Future<void> speakcans27(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you eaten the whole can?");
  }

  Future<void> speakcans28(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We drank a can of Coke each.");
  }

  Future<void> speakcans29(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He filled a can with water.");
  }

  Future<void> speakcans30(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I bought a can of red paint and painted the entire living room.");
  }

  Future<void> speakcans31(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He works in a factory where they can fruit.");
  }

  Future<void> speakcans32(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Upon learning he was sick, the company canned him without explanation.");
  }

  Future<void> speakcans33(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3333");
  }

  Future<void> speakcans34(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3434");
  }

  Future<void> speakcans35(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3535");
  }

  Future<void> speakcans36(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3636");
  }

  Future<void> speakcans37(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3737");
  }

  Future<void> speakcans38(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3838");
  }

  Future<void> speakcans39(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans3939");
  }

  Future<void> speakcans40(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4040");
  }

  Future<void> speakcans41(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4141");
  }

  Future<void> speakcans42(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4242");
  }

  Future<void> speakcans43(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4343");
  }

  Future<void> speakcans44(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4444");
  }

  Future<void> speakcans45(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4545");
  }

  Future<void> speakcans46(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4646");
  }

  Future<void> speakcans47(String languageCode) async {
    // DOPSUM: CHANGE speakcan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcans4747");
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
          // EdgeInsets.zero,
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
                            EntryTitle(word: "can"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /kən/, strong form  /kæn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcan("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /kən/, strong form  /kæn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcan("en-US"),
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
                  VideoIconForTab(), // 01
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: قوتو، تەنەکە، پووتی، چەلەنگ، پیپ، زیندان، بەندیخانە، دەس‌بەئاو
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کاری مۆداڵ) بۆ دەربڕینی توانای کرنی شتێک لە لایەن کەسێک/شتێک"),
                          SentencesRow(
                            englishText: "I can run fast.",
                            kurdishText: "دەتوانم خێرا ڕابکەم.", // can
                            onPressedBritish: () => speakcans1("en-GB"),
                            onPressedAmerican: () => speakcans1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Can you call back tomorrow?",
                            kurdishText: "دەتوانیت سبەی پەیوەندی بکەیتەوە؟",
                            onPressedBritish: () => speakcans2("en-GB"),
                            onPressedAmerican: () => speakcans2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He couldn't answer the question.",
                                    kurdishText:
                                        "نەیتوانی وەڵامی پرسیارەکە بداتەوە.",
                                    onPressedBritish: () => speakcans3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The stadium can be emptied in four minutes.",
                                    kurdishText:
                                        "یاریگاکە دەکرێت لە چوار خولەکدا بەتاڵ بکرێت.",
                                    onPressedBritish: () => speakcans4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I can't promise anything, but I'll do what I can.",
                                    kurdishText:
                                        "ناتوانم بەڵێن بدەم، بەڵام ھەرچی بتوانم دەیکەم.",
                                    onPressedBritish: () => speakcans5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Please let us know if you cannot attend the meeting.",
                                    kurdishText:
                                        "تکایە ئاگادارمان بکەوە ئەگەر ناتوانی بەژداری کۆبوونەوەکە بکەیت.",
                                    onPressedBritish: () => speakcans6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans6("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢. (کاری مۆداڵ) بەکاردێت بۆ وتنی ئەوەی کەسێک دەزانێت چۆن شتێک بکات"),
                                  SentencesRow(
                                    englishText: "She can speak Spanish.",
                                    kurdishText:
                                        "دەتوانێت بە ئیسپانی قسە بکات.",
                                    onPressedBritish: () => speakcans7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Can he cook?",
                                    kurdishText: "دەزانێت خواردن درووست بکات؟",
                                    onPressedBritish: () => speakcans8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans8("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٣. (کاری مۆداڵ) بەکاردێت لەگەڵ کارەکانی ‘feel’, ‘hear’, ‘see’, ‘smell’, ‘taste’"),
                                  SentencesRow(
                                    englishText:
                                        "She could feel a lump in her breast.",
                                    kurdishText:
                                        "ھەستی بە لوویەک لە سنگیدا دەکرد.",
                                    onPressedBritish: () => speakcans9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "I can hear music.",
                                    kurdishText: "گوێم لە میوزیکە.",
                                    onPressedBritish: () =>
                                        speakcans10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans10("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٤. (کاری مۆداڵ) بەکاردێت بۆ وتنی ئەوەی کەسێک ڕێگەپێدراوە شتێک بکات"),
                                  SentencesRow(
                                    englishText: "Can I read your newspaper?",
                                    kurdishText:
                                        "دەتوانم ڕۆژنامەکەت بخوێنمەوە؟",
                                    onPressedBritish: () =>
                                        speakcans11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans11("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Can I take you home?",
                                    kurdishText: "بتبەمە ماڵەوە؟",
                                    onPressedBritish: () =>
                                        speakcans12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans12("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٥. (کاری مۆداڵ) بۆ داواکردنی یارمەتی"),
                                  SentencesRow(
                                    englishText:
                                        "Can you help me with this box?",
                                    kurdishText:
                                        "دەتوانیت لە ھەڵگرتنی ئەم سنووقە یارمەتیم بدەیت؟",
                                    onPressedBritish: () =>
                                        speakcans13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Can you feed the cat, please?",
                                    kurdishText:
                                        "تکایە دەتوانیت خواردن بدەیت بە پشیلەکە؟",
                                    onPressedBritish: () =>
                                        speakcans14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans14("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٧. (کاری مۆداڵ) بۆ پێشنیازکردن"),
                                  SentencesRow(
                                    englishText:
                                        "We can eat in a restaurant, if you like.",
                                    kurdishText:
                                        "ئەگەر حەز دەکەیت لە چێشتخانەیەک نان دەخۆین.",
                                    onPressedBritish: () =>
                                        speakcans15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I can take the car if necessary.",
                                    kurdishText:
                                        "سەیارەکە دەبەم ئەگەر پێویست بکات.",
                                    onPressedBritish: () =>
                                        speakcans16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans16("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٨. (کاری مۆداڵ) بەشێوەی نەرێ بەکاردێت بۆ وتنی ئەوەی دڵنیایت شتێک ڕاست نییە"),
                                  SentencesRow(
                                    englishText:
                                        "That can't be Mary—she's in New York.",
                                    kurdishText:
                                        "ناکرێت ماری بێت، ئەو لە نیویۆرکە.",
                                    onPressedBritish: () =>
                                        speakcans17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans17("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He can't have slept through all that noise.",
                                    kurdishText:
                                        "ئەستەمە خەوی لێ کەوتبێت لەو ھەموو ژاوەژاوەدا.",
                                    onPressedBritish: () =>
                                        speakcans18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans18("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٩. (کاری مۆداڵ) بۆ پیشاندانی گومان یان سەرسامی"),
                                  SentencesRow(
                                    englishText: "What can they be doing?",
                                    kurdishText: "دەبێت چی بکەن؟",
                                    onPressedBritish: () =>
                                        speakcans19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans19("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Can he be serious?",
                                    kurdishText: "دەبێت بە جدی بێت؟",
                                    onPressedBritish: () =>
                                        speakcans20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans20("en-US"),
                                  ),
                                  Column(
                                    children: [
                                      MyExpansionTile(
                                        children: [
                                          SentencesRow(
                                            englishText:
                                                "Where can she have put it?",
                                            kurdishText:
                                                "دەبێت لە کوێی دانابێت؟",
                                            onPressedBritish: () =>
                                                speakcans21("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcans21("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٠. (کاری مۆداڵ) بۆ وتنی ئەوەی کەسێک/شتێک دەکرێت چۆن بێت"),
                                  SentencesRow(
                                    englishText:
                                        "He can be very tactless sometimes.",
                                    kurdishText:
                                        "ھەندێک جار زۆر بێ‌ھەست دەبێت.",
                                    onPressedBritish: () =>
                                        speakcans22("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans22("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It can be quite cold here in winter.",
                                    kurdishText:
                                        "لە زستاندا ئێرە دەکرێت تەواو سارد بێت.",
                                    onPressedBritish: () =>
                                        speakcans23("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans23("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١١. (کاری مۆداڵ) بۆ وتنی ئەوەی کەسێک دەبێت شتێک بکات"),
                                  SentencesRow(
                                    englishText: "You can shut up or get out!",
                                    kurdishText: "بێ‌دەنگە بە یان بچۆ دەرەوە!",
                                    onPressedBritish: () =>
                                        speakcans24("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans24("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "١٢. (ناو) قوتوو"),
                                  SentencesRow(
                                    englishText:
                                        "He opened the can and took a large swig.",
                                    kurdishText:
                                        "قوتووەکەی کردەوە و قومێکی گەورەی لێخواردەوە.",
                                    onPressedBritish: () =>
                                        speakcans25("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans25("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She sipped from a can of Coke.",
                                    kurdishText:
                                        "قومێکی لە قوتوویەکی کۆکا کۆلا خواردەوە.",
                                    onPressedBritish: () =>
                                        speakcans26("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans26("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٣. (ناو) ئەو ڕێژەیەی لە قوتوویەکدا جێگای دەبێتەوە"),
                                  SentencesRow(
                                    englishText:
                                        "Have you eaten the whole can?",
                                    kurdishText: "تەواوی قوتووەکەت خوارد؟",
                                    onPressedBritish: () =>
                                        speakcans27("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans27("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "We drank a can of Coke each.",
                                    kurdishText:
                                        "ھەریەکەمان قوتوویەک کۆکا کۆلامان خواردەوە.",
                                    onPressedBritish: () =>
                                        speakcans28("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans28("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٤. (ناو) کاسەیەک ئاسنی یان پلاستیکی ھەڵگرتنی شلە تێیدا"),
                                  SentencesRow(
                                    englishText: "He filled a can with water.",
                                    kurdishText: "کاسەیەکی پڕ لە ئاو کرد.",
                                    onPressedBritish: () =>
                                        speakcans29("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans29("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٥. (ناو) قوتوویەک کە شلەی تێدا ھەڵدەگیرێت لەژێر فشاری زۆردا و بە فیشقە دێتە دەرەوە"),
                                  SentencesRow(
                                    englishText:
                                        "I bought a can of red paint and painted the front door.",
                                    kurdishText:
                                        "قوتوویەکە بۆیەی سوورم کڕی و دەرگای پێشەوەم بۆیەکرد.",
                                    onPressedBritish: () =>
                                        speakcans30("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans30("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٦. (کردار) پاراستن بە خستنە قوتوو"),
                                  SentencesRow(
                                    englishText:
                                        "He works in a factory where they can fruit.",
                                    kurdishText:
                                        "لە کارگەیەک کار دەکات کە خواردن دەخەنە قوتووەوە.",
                                    onPressedBritish: () =>
                                        speakcans31("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans31("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٧. (کردار) دەرکردنی کەسێک لە کارەکەی"),
                                  SentencesRow(
                                    englishText:
                                        "Upon learning he was sick, the company canned him without explanation.",
                                    kurdishText:
                                        "کە زانییان نەخۆشە، کۆمپانیاکە دەریکرد بەبێ ڕوونکردنەوە.",
                                    onPressedBritish: () =>
                                        speakcans32("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcans32("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
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
- Noun: can (derived forms: cans)
1. Airtight sealed metal container for food, drink or paint etc. (= tin, tin can)
 
2. The quantity contained in a can (= canful)
 
3. A buoy with a round bottom and conical top (= can buoy)
 
4. [N. Amer, informal] The fleshy part of the human body that you sit on (= buttocks, nates [technical], butt [N. Amer, informal], backside, bum [Brit, informal], buns [N. Amer, informal], fundament, hindquarters, hind end, posterior, rear [informal], rear end [informal], rump, stern [informal], seat, tail [N. Amer, informal], tail end, tooshie [informal], tush [N. Amer, informal], bottom, behind, derriere, bahookie [UK, dialect, informal], botty [informal], heinie [US, informal], duff [N. Amer, informal], booty [N. Amer, informal], patootie [US, informal], tushy [N. Amer, informal], derrière)
"he deserves a good kick in the can";

5. [N. Amer, informal] A plumbing fixture for defecation and urination (= toilet, commode [N. Amer], pot [informal], potty [informal], stool [archaic], throne [informal], loo [Brit, informal])
 
6. [N. Amer, informal] A room or building equipped with one or more toilets (= toilet, lavatory, lav [informal], john [informal], bathroom, water closet [Brit, archaic], closet [archaic], W.C. [Brit], loo [Brit, informal], bog [Brit, informal], jacks [Ireland, informal])

- Verb: can (derived forms: canning, cans, canned) 
1. (cooking) preserve in a can or tin (= tin, put up)
"canned foods are not very tasty";

2. [N. Amer, informal] Terminate the employment of; discharge from an office or position (= displace, fire, give notice, dismiss, give the axe [informal], send away, sack, force out, give the sack, terminate)
"The boss canned his secretary today";

- Modal verb: can
1. Able to
"fish can swim", "I can drive if you like", "Can I help you?"
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 217;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 47;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = '47ODQI0OSOA';
  final double _startSeconds = 78;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'r6tLeYJQS58';
  final double _startSeconds = 42;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'm2hIiqbZmoM';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'sSH1jS9FMcQ';
  final double _startSeconds = 58;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 32;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'XZVHmRvfDHM';
  final double _startSeconds = 23;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'wizgxRBfVTY';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'cjLooycOwVc';
  final double _startSeconds = 248;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'seDTrhh_0ik';
  final double _startSeconds = 749;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

// end WORD_WEB
