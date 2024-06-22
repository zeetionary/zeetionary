import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydark extends StatefulWidget {
  const EnglishEntrydark({super.key});

  @override
  State<EnglishEntrydark> createState() => _EnglishEntrydarkState();
}

class _EnglishEntrydarkState extends State<EnglishEntrydark> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "dark");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dark");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /dɑːk/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdark(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dark");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdark("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /dɑːrk/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdark(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dark");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdark("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdarks1(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What time does it get dark in summer?");
  }

  Future<void> speakdarks2(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was dark outside and I couldn't see much.");
  }

  Future<void> speakdarks3(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sky was still dark.");
  }

  Future<void> speakdarks4(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sky was still dark.");
  }

  Future<void> speakdarks5(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Use lights to illuminate dark corners.");
  }

  Future<void> speakdarks6(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As it grew dark, they gathered round the fire.");
  }

  Future<void> speakdarks7(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has dark hair.");
  }

  Future<void> speakdarks8(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was tall, dark and handsome.");
  }

  Future<void> speakdarks9(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He wore a dark suit and a plain tie.");
  }

  Future<void> speakdarks10(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The dark clouds in the sky meant that a storm was coming.");
  }

  Future<void> speakdarks11(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was handsome with dark eyes.");
  }

  Future<void> speakdarks12(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sue has long dark hair.");
  }

  Future<void> speakdarks13(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Even if you have dark skin, you still need protection from the sun.");
  }

  Future<void> speakdarks14(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was a dark handsome stranger.");
  }

  Future<void> speakdarks15(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There are no dark secrets in our family.");
  }

  Future<void> speakdarks16(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was a darker side to his nature.");
  }

  Future<void> speakdarks17(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My mind was full of dark thoughts.");
  }

  Future<void> speakdarks18(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The film is a dark vision of the future.");
  }

  Future<void> speakdarks19(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are the children afraid of the dark?");
  }

  Future<void> speakdarks20(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All the lights went out and we were left in the dark.");
  }

  Future<void> speakdarks21(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I hate getting up in the dark.");
  }

  Future<void> speakdarks22(String languageCode) async {
    // DOPSUM: CHANGE speakdark
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We could just make out some figures in the gathering dark.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: تاریک، ئەنگوستەچاو، زەنگ، بێ‌شەوق، تار، ناڕۆشن،	(ڕەنگ) تۆخ، توند، تێر، پڕڕەنگ،	(پێست، قژ و ھتد) سەوزە، ڕەشتاڵە، مەیلەوڕەش، ڕەشباو.	ڕەش،	نھێنی، پەنامەکی،	تێگەیشتن‌سەخت، شاراوە، تەماوی، نادیار، لێڵ، ڕوون نییە، نامەعلووم،	خەماوی، مایەی خەمباری، دڵتەنگ‌کەر، خەفەتاوی، جێی‌خەم،	خراپ، ترسناک، شەیتانی، پیس،	نەناسراو،	تاریکی، تاری، ناڕۆشنی،	ئاوابوون، خۆراوابوون، شەوداھاتن،	ڕەشی،	(وێنەکێشی) سێبەر،	ڕەنگی تۆخ یان توند،	نەزانی، نائاگاداری، بێ‌خەبەری،	شاراوەیی، نادیاری، نھێنی‌بوون، پشت‌پەردە 
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) تاریک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What time does it get dark in summer?"),
                    ExampleSentenceKurdish(
                        text: "کاتژمێر چەند لە ھاویندا تاریک دادێت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dark", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks1("en-US"),
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
                        text: "It was dark outside and I couldn't see much."),
                    ExampleSentenceKurdish(
                        text: "دەرەوە تاریک بوو و نەمدەتوانی زۆر ببینم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks2("en-US"),
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
                                text: "The sky was still dark."),
                            ExampleSentenceKurdish(
                                text: "ئاسمان ھێشتا تاریک بوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdarks3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdarks3("en-US"),
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
                                text: "The sky was still dark."),
                            ExampleSentenceKurdish(
                                text: "ئاسمان ھێشتا تاریک بوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdarks4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdarks4("en-US"),
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
                                text: "Use lights to illuminate dark corners."),
                            ExampleSentenceKurdish(
                                text:
                                    "ڕۆشنایی بەکاربھێنە بۆ ڕۆشنکردنەوەی سووچە تاریکەکان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdarks5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdarks5("en-US"),
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
                                    "As it grew dark, they gathered round the fire."),
                            ExampleSentenceKurdish(
                                text:
                                    "کە تاریکی کرد، لە دەوری ئاگرەکە کۆبوونەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdarks6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdarks6("en-US"),
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
              text: "٢. (ھاوەڵناو) ڕەنگی تۆخ؛ ڕەنگی نزیک لە ڕەش وەک لە سپی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She has dark hair."),
                    ExampleSentenceKurdish(text: "قژێکی تاریکی ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks7("en-US"),
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
                            "He was tall, dark (= with black/brown hair) and handsome."),
                    ExampleSentenceKurdish(text: "درێژ و ئەسمەر و قۆز بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) ھەبوونی ڕەنگی تاریک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He wore a dark suit and a plain tie."),
                    ExampleSentenceKurdish(
                        text: "قاتێکی تۆخ و بۆینباخێکی سادەی لەبەرکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks9("en-US"),
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
                            "The dark clouds in the sky meant that a storm was coming."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەورە تاریکەکان لە ئاسماندا واتای ئەوە بوون کە زریانێک بەڕێوەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) ڕەنگی قاوەیی یان ڕەش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was handsome with dark eyes."),
                    ExampleSentenceKurdish(text: "قۆز و چاو ڕەش بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks11("en-US"),
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
                    ExampleSentenceEnglish(text: "Sue has long dark hair."),
                    ExampleSentenceKurdish(text: "قژی درێژی ڕەشی ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks12("en-US"),
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
                            "Even if you have dark skin, you still need protection from the sun."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەرچی پێستی تاریکت ھەیە، ھێشتا پێویستیت بە پارێزەر لە خۆر ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) کەسێک کە قژ، چاو، ھتد ـی ڕەشی ھەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was a dark handsome stranger."),
                    ExampleSentenceKurdish(text: "نەناسێکی قۆزی ڕەشتاڵ بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) شاراوە و نەزانراو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "There are no dark secrets in our family."),
                    ExampleSentenceKurdish(
                        text: "ھیچ نھێنییەکی شاراوە لە ماڵماندا نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵناو) ترسناک و خراپ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "There was a darker side to his nature."),
                    ExampleSentenceKurdish(
                        text: "لایەنێکی شەیتانی ھەبوو لە سرووشتیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks16("en-US"),
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
                        text: "My mind was full of dark thoughts."),
                    ExampleSentenceKurdish(
                        text: "مێشکم پڕ لە بیرکردنەوەی شەیتانی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ھاوەڵناو) ناخۆش و بێ‌ھیوا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The film is a dark vision of the future."),
                    ExampleSentenceKurdish(
                        text: "فیلمەکە وێنایەکی تاریکی داھاتووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) تاریکی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Are the children afraid of the dark?"),
                    ExampleSentenceKurdish(text: "منداڵەکان لە تاریکی دەترسن؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks19("en-US"),
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
                            "All the lights went out and we were left in the dark."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو لایتەکان کوژانەوە و لە تاریکییەکە ماینەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks20("en-US"),
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
                        text: "I hate getting up in the dark."),
                    ExampleSentenceKurdish(text: "ڕقم لێیە لە تاریکتدا ھەستم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks21("en-US"),
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
                            "We could just make out some figures in the gathering dark."),
                    ExampleSentenceKurdish(
                        text:
                            "دەمانتوانی تەنھا شێوەی چەند کەسێک بناسینەوە لە تاریکییەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdarks22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdarks22("en-US"),
                  ),
                ],
              ),
            ],
          ),
        ],
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
- Adjective: dark (derived forms: darker, darkest)
1. Brunet (used of hair, skin or eyes)
"dark eyes"
 
2. Devoid of or deficient in light or brightness; shadowed or black
"sitting in a dark corner"; "a dark day"; "dark shadows"; "dark as the inside of a black cat"
 
3. (used of colour) having a dark hue
"dark green"; "dark glasses"; "dark colours like wine red or navy blue"
 
4. Stemming from evil characteristics or forces; wicked or dishonourable (= black, sinister)
"Darth Vader of the dark side"; "a dark purpose"; "dark undercurrents of ethnic hostility";
 
5. Secret
"keep it dark"
 
6. Showing a brooding ill humour (= dour, glowering, glum, moody, morose, saturnine, sour, sullen)
"a dark scowl";
 
7. Lacking enlightenment, knowledge or culture (= benighted)
"the dark ages"; "a dark age in the history of education";
 
8. Marked by difficulty of style or expression (= obscure)
"much that was dark is now quite clear to me";
 
9. Causing dejection (= blue [informal], dingy, disconsolate, dismal, gloomy, grim, sorry, drab, drear, dreary)
"the dark days of the war"; "a dark gloomy day";
 
10. Not giving performances; closed
"the theatre is dark on Mondays"

- Noun: dark (derived forms: darks)
1. Absence of light or illumination (= darkness)
 
2. Absence of moral or spiritual values (= wickedness, darkness)
"the powers of dark";
 
3. An unilluminated area (= darkness, shadow)
"he moved off into the dark";
 
4. The time after sunset and before sunrise while it is dark outside (= night, nighttime)
 
5. An unenlightened state (= darkness)
"he was in the dark concerning their intentions";
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'mvY7VtKvf7o';
  final double _startSeconds = 353;

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

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 2704;

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
  final String _videoId = 'zmEv7vTOQGE';
  final double _startSeconds = 3503;

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
  final String _videoId = 'r5cqa9V0mUo';
  final double _startSeconds = 210;

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
  final String _videoId = 'U1KGRnWjllg';
  final double _startSeconds = 332;

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
  final String _videoId = 'UYce-bq89eI';
  final double _startSeconds = 189;

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
  final String _videoId = 'N3IV7ZJkmj0';
  final double _startSeconds = 38;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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
    );
  }
}

// end WORD_WEB