import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychannel extends StatelessWidget {
  // blank divider
  EnglishEntrychannel({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchannel(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("channel"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels1(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What's on Channel 4 tonight?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels2(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I changed channels when the news came on."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels3(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Lily surfed the channels on the television."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels4(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This channel broadcasts 24 hours a day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels5(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They broadcast on high-frequency channels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels6(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Complaints must be made through the proper channels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels7(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Steps are being taken to implement a ceasefire through diplomatic channels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels8(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Journalists always have indirect channels for getting information."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels9(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The campaign provided a channel for protest against the war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels10(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Music is a great channel for releasing your emotions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels11(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A channel is being dug to divert the river."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels12(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ditches were constructed to channel water away from the buildings."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels13(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A lot of money has been channelled into research in that particular field."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels14(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Money for the project will be channelled through local government."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels15(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A sensor channels the light signal along an fibre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels16(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The band were dressed in 1960s outfits and seemed to be channelling the Beatles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels17(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels18(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels19(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels20(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels21(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels22(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels23(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels24(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels25(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels26(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels27(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels28(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels29(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels30(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels31(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels32(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchannels33(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchannels3300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "channel"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃænl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchannel("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃænl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchannel("en-US"),
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
                          const DefinitionKurdish(text: """
کوردی: گەروو، تەنگەڵان، تەنگە، دەریاڕێ، باریکەڕێ (دەریا)، بنکاو، تەختاو، بنک (ڕووبار و هتد)، قووڵگە، جێی قووڵ، شوێنی پڕئاو، نێرینە، قووڵایی، دەریای قووڵ، جۆگە، ئاوەڕێ، ئاوەڕۆ، ئاودڕ، نۆکەند، جۆم، ڕەهەنداو، شوێن، کووز، خەت، کەند، دەربەند، ڕێگا، (تەلەفزیۆن) ڕایەڵە، کاناڵ، کاناڵی ئینگلتەرە، (ڕادیۆ و تەلەفزیۆن) درێژی شەپۆل، (خوازە) ڕێگا، شوێن، ڕێڕەو، ڕێ، کاناڵ
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) وێستگەیەکی تەلەفیزیۆنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "What's on Channel 4 tonight?"),
                                    ExampleSentenceKurdish(
                                        text: "ئەمشەو چی لەسەر کەناڵ 4 دەبێت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "channel", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels1("en-US"),
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
                                            "I changed channels when the news came on."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەناڵەکانم گۆڕی کە هەواڵەکە گەشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels2("en-US"),
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
                                                    "Lily surfed the channels on the television."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لیلی بە کەناڵەکانی تەلەفیزیۆنەکەدا دەگەڕا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchannels3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchannels3("en-US"),
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
                                                    "This channel broadcasts 24 hours a day."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم کەناڵە ٢٤ کاتژمێر لە ڕۆژێکدا پەخش دەکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchannels4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchannels4("en-US"),
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
                                  "٢. (ناو) ڕێژەیەک لە لەرە کە بەکاردێت بۆ پەخشی شەپۆل یان پڕۆگرامی ڕادیۆ و تەلەفیزیۆن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They broadcast on high-frequency channels."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەسەر کەناڵی شەپۆل بەرز پەخش دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) سیستەمێک یان ڕێگایەک کە خەڵکی بەکاریدێنن بۆ وەرگرتنی زانیاری، پەیوەندی کردن، یان ناردنی شتێک بۆ شوێنێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Complaints must be made through the proper channels."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناڕەزایی دەبێت لە ڕێگەی گونجاوەوە بگەیەندرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels6("en-US"),
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
                                            "Steps are being taken to implement a ceasefire through diplomatic channels."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەنگاو دەگیردرێتە بەر بۆ هێنانە کارای ئاگربەست لە ڕێگەی کەناڵی دیبلۆماسییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels7("en-US"),
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
                                                    "Journalists always have indirect channels for getting information."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕۆژنامەنووسان هەمیشە ڕێگای ناڕاستەوخۆیان هەیە بۆ وەرگرتنی زانیاری."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchannels8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchannels8("en-US"),
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
                              text: "٥. (ناو) ڕێگای دەربڕینی هەست و بیرۆکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The campaign provided a channel for protest against the war."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەمپینەکە ڕێگایەکی خستەبەردەست بۆ دەربڕینی ناڕەزایی دژ بە جەنگەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels9("en-US"),
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
                                            "Music is a great channel for releasing your emotions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "میوزیک ڕێگایەکی زۆر باشە بۆ دەربڕینی هەستەکانت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) جۆگەی ئاو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A channel is being dug to divert the river."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جۆگەیەک درووست دەکرێت بۆ گۆڕینی ئاراستەی ڕووبارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels11("en-US"),
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
                                            "The drainage channels had survived since the Roman occupation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جۆگە ئاوەڕۆکان لە سەردەمی نیشتەجێ‌بوونی ڕۆمەکانەوە ماونەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ئاراستەکردن یان تەرخانکردنی پارە، هەست، بیرۆکە، هتد بەرەو شتێک یان مەبەستێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Ditches were constructed to channel water away from the buildings."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەندەڵان درووستکران بۆ ئاراستەکردنی ئاوەکە دوور لە بیناکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels12("en-US"),
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
                                            "A lot of money has been channelled into research in that particular field."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێژەیەکی زۆر پارە تەرخانکراوە بۆ لێکۆڵینەوە لەو بوارە دیاریکراوەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels13("en-US"),
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
                                                    "Money for the project will be channelled through local government."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پارە بۆ پڕۆژەکە لە ڕێگەی حکومەتی خۆجێییەوە تەرخان دەکرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchannels14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchannels14("en-US"),
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
                                                    "A sensor channels the light signal along an fibre."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هەستەوەرێک شەپۆلە ڕووناکییەکە بە فایبەرێکدا دەنێرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchannels15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchannels15("en-US"),
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
                                  "٧. (کردار) لاسایی‌کردنەوەی کەسێک یان شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The band were dressed in 1960s outfits and seemed to be channelling the Beatles."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باندەکە جلی ١٩٦٠ ەکانیان لەبەربوو و وادیاربوو کە لاسایی باندی بیتڵز دەکەنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchannels16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchannels16("en-US"),
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
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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
- Noun: channel (Derived forms: channels)
1. A path over which electrical signals can pass (= transmission channel)
"a channel is typically what you rent from a telephone company";
 
2. A passage for water (or other fluids) to flow through
"the fields were crossed with irrigation channels"; "gutters carried off the rainwater into a series of channels under the street"
 
3. A long narrow furrow cut either by a natural process (such as erosion) or by a tool (as e.g. a groove in a phonograph record) (= groove)
 
4. A deep and relatively narrow body of water (as in a river or a harbour or a strait linking two larger bodies) that allows the best passage for vessels
"the ship went aground in the channel"
 
5. (often plural) a means of communication or access (= communication channel, line)
"it must go through official channels";

6. A bodily passage or tube lined with epithelial cells and conveying a secretion or other substance (= duct, epithelial duct, canal)
"poison is released through a channel in the snake's fangs";

7. A television station and its programs (= television channel, TV channel)
"a satellite TV channel"; "surfing through the channels"; "they offer more than one hundred channels"; "a satellite TV television channel";
 
8. A way of selling a company's product either directly or via distributors (= distribution channel)
"possible distribution channels are wholesalers or small retailers or retail chains or direct mailers or your own stores";

- Verb: channel (Derived forms: channeled, channels, channelling, channelled, channeling)
1. Serve as the medium for transmission, allow movement of (= impart, conduct, transmit, convey, carry)
"Many metals channel heat";

2. Direct the flow of
"channel information towards a broad audience"
 
3. Send from one person or place to another (= transmit, transfer, transport, channelize, channelise [Brit])
"channel a message";

4. Emulate the personality or attributes of another person, adopt the sprit of someone
"he looks like he's channelling Elvis as he swings his microphone around and practically dances in his evangelical fervour"
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
    videoId: 'https://youtu.be/WoYaQBltn1A?t=',
    startSeconds: 428,
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
    videoId: 'https://youtu.be/VwPGtn9qJZ4?t=',
    startSeconds: 194,
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
    videoId: 'https://youtu.be/8T7lEvtwETA?t=',
    startSeconds: 172,
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
    videoId: 'https://youtu.be/Bltc4o615qI?t=',
    startSeconds: 319,
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
    videoId: 'https://youtu.be/mY3SEMTROas?t=',
    startSeconds: 73,
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
    videoId: 'https://youtu.be/SrDEtSlqJC4?t=',
    startSeconds: 967,
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
    videoId: 'https://youtu.be/BsjQqm60ZEI?t=',
    startSeconds: 164,
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/t02bJ94vlKA?t=',
    startSeconds: 28,
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
