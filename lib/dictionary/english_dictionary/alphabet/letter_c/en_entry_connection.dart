import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconnection extends StatelessWidget {
// blank divider
  EnglishEntryconnection({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconnection(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("connection"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections1(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists have established a connection between cholesterol levels and heart disease."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections2(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His resignation must have some connection with the recent scandal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections3(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He denied any connection to the scam."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections4(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His death had no connection with drugs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections5(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She did not make the connection between her diet and her poor health."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections6(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She wanted to sever all her connections with the company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections7(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm having problems with my internet connection."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections8(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Connection to the gas supply was delayed for three days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections9(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sorry, could you repeat that? This is a very bad connection."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections10(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A faulty connection caused the machine to stop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections11(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you break the connection, the light won't come on."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections12(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I missed the connection by five minutes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections13(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We arrived in good time for the connection to Paris."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections14(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We'll be lucky if we make our connection."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections15(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are good bus and train connections between the resort and major cities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections16(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "One of my business connections gave them my name."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections17(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He got his job through connections."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections18(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is British but also has German connections."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections19(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections20(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections21(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections22(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections23(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections24(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections25(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections26(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections27(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections28(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections29(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections30(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections31(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections32(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections33(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections34(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections35(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections36(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections37(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections38(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections39(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections40(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections41(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections42(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections43(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections44(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections45(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections46(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections47(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections48(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections49(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections50(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections51(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections52(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections53(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections54(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections55(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections56(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections57(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconnections58(String languageCode) async {
    // DOPSUM: CHANGE speakconnection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnections5800"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "connection"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈnekʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconnection("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈnekʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconnection("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: پێکەوەبەستن، پێکبەستن، بەستن، پێکەوبەستراوی، ھاوبەندی، ھەڤبەندی، پێکبەندی، گرێدان، بەستنەوە، ئارا، ھاوبەستی، پێک‌بەستنەوە، پێوەستی، پەیوەستی، تێکەڵی، پێوەندی،	درێژەپێدەر، درێژەی ڕێ یان سەفەر (فڕۆکە، شەمەندەفەر و پاس)،	ھێڵ (تەلەفون)،	ناسیاو، شناس، دۆست،	مشتەری، کڕیار
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە دوو ڕاستی، بیرۆکە، ھتد پێکەوە دەبەستێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Scientists have established a connection between cholesterol levels and heart disease."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زاناکان پەیوەندییەکیان لە نێوان ئاستی کۆلێسترۆڵ و نەخۆشی دڵ درووستکردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "connection", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnections1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnections1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His resignation must have some connection with the recent scandal."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەستلەکارکێشانەوەکەی دەبێت پەیوەندییەکی ھەبووبێت بە ئابڕووچوونەکەی ئەم دواییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnections2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnections2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "He denied any connection to the scam."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نکۆڵی لە ھەر پەیوەندییەک بە ساختەکارییەکەوە کرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnections3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnections3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "His death had no connection with drugs."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "مردنەکەی ھیچ پەیوەندی بە مادەی ھۆشبەرەوە نەبوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnections4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnections4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "She did not make the connection between her diet and her poor health."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەندرووستی خراپیی نەبەستەوە بە خواردنی ڕۆژانەیی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnections5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnections5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "She wanted to sever all her connections with the company."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ویستی ھەموو پەیوەندییەکی بە کۆمپانیاکەوە بپچڕێنێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnections6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnections6("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دۆخی پێکەوەبەستراوی یان پەیوەستبووی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'm having problems with my internet connection."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کێشەم ھەیە لە پەیوەندی ئینتەرنێتمدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnections7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnections7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Connection to the gas supply was delayed for three days."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەیوەندی بە سەرچاوەی گازەکەوە دواکەوت بۆ سێ ڕۆژ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnections8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnections8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Sorry, could you repeat that? This is a very bad connection."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ببوورە، دەتوانیت دووبارەی بکەیتەوە؟ پەیوەندییەکی زۆر خراپە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnections9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnections9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) خاڵێک کە تێیدا دوو بەش یەکدەگرن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A faulty connection caused the machine to stop."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێک‌بەستنەوەیەکی ھەڵە بووە ھۆکاری ئەوەی ئامێرەکە بوەستێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "If you break the connection, the light won't come on."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر پەوەندییەکە بپچڕێنیت، ڕۆشناییەکە پێنابێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شەمەندەفەرێک، پاسێک، یان فڕۆکەیەک کە گەشتیارێکی دەتوانێت سەری بکەوێت ڕاستەوخۆ لە دوای جێھێشتنی یەکێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I missed the connection by five minutes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە پێنج خولەک درێژەپێدەرەکەم لەدەستدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We arrived in good time for the connection to Paris."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کاتی گونجاودا گەشتین بۆ درێژەپێدەرەکەمان بۆ پاریس."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We'll be lucky if we make our connection."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە بەخت دەبین ئەگەر بگەین بە درێژەپێدەرەکەماندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) ئامرازی گواستنەوە لە شوێنێکەوە بۆ شوێنێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There are good bus and train connections between the resort and major cities."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گواستنەوەی باشی پاس و شەمەندەفەر ھەیە لە نێوان سەیرانگاکە و شارە گرنگەکاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) کەسێک یان دامەزراوەیەک کە دەیناسیت و یارمەتی و ڕاوێژ بە یەکدی دەدەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "One of my business connections gave them my name."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەکێک لە ناسیاوەکانی کارکردنم ناومی پێیان دا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He got his job through connections."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارەکەی وەرگرت لە ڕێگەی ناسیاوییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەسانێک کە خزمتن بەڵام ئەندامی خزانەکەت نین"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She is British but also has German connections."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەریتانییە بەڵام چەند خزمێکی ئەڵمانی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconnections18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconnections18("en-US"),
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Noun: connection (derived forms: connections)
1. A relation between things or events (as in the case of one causing the other or sharing features with it) (= connexion [Brit], connectedness)
"there was a connection between eating that pickle and having that nightmare";
 
2. The state of being connected (= link, connectedness)
"the connection between church and state is inescapable";
 
3. Something that connects things together (= connexion [Brit], connector, connecter, connective)
"he soldered the connection";
 
4. (usually plural) a person who is influential and to whom you are connected in some way (as by family or friendship)
"he has powerful connections"
 
5. The process of bringing ideas or events together in memory or imagination (= association, connexion [Brit])
"conditioning is a form of learning by connection";
 
6. A connecting shape (= connexion [Brit], link)
 
7. A supplier (especially of narcotics)
 
8. Shifting from one form of transportation to another (= connexion [Brit])
"the plane was late and he missed his connection in Atlanta";
 
9. The act of bringing two things into contact (especially for communication) (= joining, connexion [Brit])
"there was a connection via the internet";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = '0rZDz1hnM70';
  final double _startSeconds = 28;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'iMiE90AnvFk';
  final double _startSeconds = 1083;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'gn0905T5z94';
  final double _startSeconds = 46;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 60;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = '1XKSo2mFC6c';
  final double _startSeconds = 255;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'wTAJSuhgZxA';
  final double _startSeconds = 37;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = '4zAkoXyhrdI';
  final double _startSeconds = 376;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

// end WORD_WEB