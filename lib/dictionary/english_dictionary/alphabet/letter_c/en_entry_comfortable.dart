import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycomfortable extends StatelessWidget {
  // blank divider
  EnglishEntrycomfortable({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomfortable(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("comfortable"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables1(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's such a comfortable bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables2(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These new shoes are not very comfortable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables3(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The hotel was comfortable enough."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables4(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you comfortable?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables5(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please make yourself comfortable while I get some coffee."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables6(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The patient is comfortable after his operation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables7(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I was not entirely comfortable about the plans they had made."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables8(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I didn't feel comfortable about accepting the money."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables9(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She seems comfortable giving a speech without notes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables10(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I never feel very comfortable in her presence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables11(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They're not millionaires, but they're certainly very comfortable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables12(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He makes a comfortable living."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables13(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They come from comfortable middle-class families."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables14(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The party won with a comfortable majority."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables15(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables16(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables17(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables18(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables19(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables20(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables21(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables22(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables23(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables24(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables25(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables26(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables27(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables28(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables29(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables30(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables31(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables32(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables33(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables34(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables35(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables36(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables37(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables38(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables39(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables40(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables41(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables42(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables43(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables44(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables45(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomfortables46(String languageCode) async {
    // DOPSUM: CHANGE speakcomfortable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomfortables4600"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "comfortable"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /ˈkʌmftəbl/,  /ˈkʌmfətəbl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomfortable("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /ˈkʌmftəbl/,  /ˈkʌmfərtəbl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomfortable("en-US"),
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
کوردی: ئاسوودە، تەناهـ، حەساوە، ڕاحەت، خۆش، خۆش‌گوزەران،	خەم‌ڕەوێن، ئاسوودەبەخش، مایەی دڵخۆشی،	زیاد، زۆر،	تەواو 
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) شتێک کە ئاسوودەبەخشە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "It's such a comfortable bed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جێخەوێکی تەواو ئاسوودەبەخش بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "comfortable", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables1("en-US"),
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
                                            "These new shoes are not very comfortable."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم پێڵاوە تازانە زۆر ئاسوودەبەخش نین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables2("en-US"),
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
                                            "The hotel was comfortable enough."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هوتێلەکە بەشی پێویست ئاسوودەبەخش بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) کەسێک کە ئاسوودەیە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Are you comfortable?"),
                                    ExampleSentenceKurdish(text: "ئاسوودەیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables4("en-US"),
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
                                            "Please make yourself comfortable while I get some coffee."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تکایە ئاسوودە بە کە من هەندێک قاوە ئامادە دەکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables5("en-US"),
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
                                            "The patient is comfortable (= not in pain) after his operation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆشەکە ئاسوودەیە لە دوای نەشتەرگەرییەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) هەبوونی متمانە و نەبوونی نیگەرانی سەبارەت بە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I was not entirely comfortable about the plans they had made."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواو ئاسوودە نەبووم سەبارەت بەو پلانانەی کە دایان نابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables7("en-US"),
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
                                            "I didn't feel comfortable about accepting the money."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەستمم بە ئاسوودەیی نەدەکرد سەبارەت بە پەسەندکردنی پارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables8("en-US"),
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
                                            "She seems comfortable giving a speech without notes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەست بە ئاسوودەیی دەکات کە وتارێک بەبێ تێبینی بدات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables9("en-US"),
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
                                            "I never feel very comfortable in her presence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەست بە ئاسوودەیی ناکەم لە پێشیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) هەبوونی هێندە پارە کە ئەوەی دەتەوێت دەیکڕیت بەبێ گرنگیدان بە نرخەکەی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They're not millionaires, but they're certainly very comfortable."),
                                    ExampleSentenceKurdish(
                                        text: "ملیۆنەر نین، بەڵام دەوڵەمەندن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables11("en-US"),
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
                                        text: "He makes a comfortable living."),
                                    ExampleSentenceKurdish(
                                        text: "ژیانێکی دەوڵەمەندانەی هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables12("en-US"),
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
                                            "They come from comfortable middle-class families."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەر بە خێزانێکی دەوڵەمەندی چینی ناوەندن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) پێنناسە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The party won with a comfortable majority."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارتەکە بە زۆرینەیەکی گەورەوە بردییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomfortables14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomfortables14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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
- Adjective: comfortable 
1. Providing or experiencing physical well-being or relief (= comfy)
"comfortable clothes"; "made himself comfortable in an armchair"; "the antihistamine made her feel more comfortable"; "are you comfortable?";
 
2. Free from stress or conducive to mental ease; having or affording peace of mind
"was settled in a comfortable job, one for which he was well prepared"; "the comfortable thought that nothing could go wrong"; "was comfortable in his religious beliefs"; "she's a comfortable person to be with"; "she felt comfortable with her fiancé's parents"
 
3. Having a wide margin
"the home team had a comfortable lead"
 
4. Sufficient to provide comfort
"a comfortable salary"
 
5. In fortunate circumstances financially; moderately rich (= easy, prosperous, well-fixed, well-heeled, well-off, well-situated, well-to-do)
"they were comfortable or even wealthy by some standards";
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'RpzgPyuy614',
    startSeconds: 8,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '8O6Ex4h4Qp4',
    startSeconds: 96,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'xkYved-ucGg',
    startSeconds: 1039,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hFZFjoX2cGg',
    startSeconds: 556,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'VAlnB-JfU7c',
    startSeconds: 155,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'NCLZi2Rn_ug',
    startSeconds: 116,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'YFvjoXaw-MI',
    startSeconds: 502,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB