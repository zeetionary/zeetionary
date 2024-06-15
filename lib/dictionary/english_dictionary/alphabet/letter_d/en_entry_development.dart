import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydevelopment extends StatefulWidget {
  const EnglishEntrydevelopment({super.key});

  @override
  State<EnglishEntrydevelopment> createState() =>
      _EnglishEntrydevelopmentState();
}

class _EnglishEntrydevelopmentState extends State<EnglishEntrydevelopment> {
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
    return const EntryTitle(word: "development");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: development");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈveləpmənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelopment(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("development"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdevelopment("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈveləpmənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelopment(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("development"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdevelopment("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelopments1(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is a perfectly normal stage of development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments2(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company can offer a number of opportunities for career development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments3(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A UN team is monitoring the development of the peace process."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments4(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cell divisions during development occur in a fixed sequence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments5(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Education stimulates the development of rational thinking."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments6(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Environmental factors can accelerate the development of certain cancers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments7(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Increased tourism will promote job creation and economic development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments8(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He described women as the backbone of rural development worldwide."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments9(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Pete is head of product development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments10(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A more powerful version of this electric bus is currently in development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments11(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A new vaccine is under development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments12(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Have there been any further developments?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments13(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We welcome the recent positive developments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments14(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There have been some interesting new developments in the case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments15(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I live in a brand-new housing development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments16(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The protesters oppose plans to build a commercial development on the site."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments17(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The city has undergone rapid development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments18(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He bought the land for development."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments19(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelopments1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments20(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelopments_2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments21(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelopments2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelopments22(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelopments2200"); // DOPSUM: CHANGE TEXT
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
کوردی: گەشە، ھەڵدان، پەرە، گەورەبوون، گووران، فراژی، پێ‌گەیشتن، گەشەسەندن، ڕسکان، پەرەسەندن،	(فیلم) ڕۆشن‌کردنەوە، شۆردنەوە، شتنەوە،	پێشکەوتن، پێشڤەچوون،	بەرھەم، دەسکەوت،	ڕووداو، بوویەر،	بەرھەمی نوێ،	داھێنان،	ناوچەی تازەدروس‌کراو یان تازەپەرەسەندوو
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) گەشەی ھێواشێ شتێک بە شێوەیەک کە بەرەوپێشتر، بەھێزتر، ھتد ببێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This is a perfectly normal stage of development."),
                    ExampleSentenceKurdish(
                        text: "ئەمە قۆناغێکی ئاسایی گەشەکردنە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "development", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The company can offer a number of opportunities for career development."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆمپانیاکە ژمارەیەک ھەلی گەشەپێدانی کار پێشکەش دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A UN team is monitoring the development of the peace process."),
                    ExampleSentenceKurdish(
                        text:
                            "تیمێکی نەتەوە یەکگرتووەکان چاودێری بەرەوپێشچوونی پڕۆسەی ئاشتی دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Cell divisions during development occur in a fixed sequence."),
                    ExampleSentenceKurdish(
                        text:
                            "دابەشبوونی خانە لەکاتی گەشەدا ڕوودەدات بە زنجیرەیەکی جێگیر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Education stimulates the development of rational thinking."),
                    ExampleSentenceKurdish(
                        text:
                            "پەروەردە و خوێندن ھانی گەشەی بیرکردنەوەی ئاقڵانە دەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Environmental factors can accelerate the development of certain cancers."),
                    ExampleSentenceKurdish(
                        text:
                            "فاکتەری ژینگەیی دەکرێت گەشەی جۆری دیاریکراوی شێرپەنجە خێرا بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) گەشەی ئابووری وڵاتێک یان ھەرێمێک بە زیادکردنی چالاکیی بازرگانی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Increased tourism will promote job creation and economic development."),
                    ExampleSentenceKurdish(
                        text:
                            "گەشتیاریی زیاتر ھەلی کار دەڕەخسێنێت و گەشەی ئابووری زیاد دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He described women as the backbone of rural development worldwide."),
                    ExampleSentenceKurdish(
                        text:
                            "ژنی وەک بڕبڕەی پشتی گەشەی دێھات لە جیھاندا ناسان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) پڕۆسەی درووستکردنی شتێکی تازە یان پێشکەوتووتر"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Pete is head of product development."),
                    ExampleSentenceKurdish(
                        text: "پیت سەرپەرشتی گەشەپێدانی بەرھەمەکانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A more powerful version of this electric bus is currently in development."),
                    ExampleSentenceKurdish(
                        text:
                            "جۆرێکی بەھێزتری ئەم پاسە کارەباییە ئێستا لە گەشەپێداندایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A new vaccine is under development."),
                    ExampleSentenceKurdish(
                        text: "ڤاکسینێکی تازە لە گەشەپێداندایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) ڕووداو یان قۆناغێکی تازە کە ئەگەری ھەیە گۆڕانکاری بکات لەوەی چی لە دۆخێکی بەردەوامدا ڕوودەدات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Have there been any further developments?"),
                    ExampleSentenceKurdish(
                        text: "ھیچ پەرەسەندنی زیاتر ھەبووە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We welcome the recent positive developments."),
                    ExampleSentenceKurdish(
                        text: "پێشوازی لە پەرەسەندنە ئەرێنییە تازەکان دەکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There have been some interesting new developments in the case."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەندێک پەرەسەندنی تازەی سەرنجڕاکێش ھەبووە لە کەیسەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) پارچە زەوییەک کە بینای تازەی لەسەرە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I live in a brand-new housing development."),
                    ExampleSentenceKurdish(
                        text: "لە پڕۆژەیەکی خانووبەرەی تازەدا دەژیم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The protesters oppose plans to build a commercial development on the site."),
                    ExampleSentenceKurdish(
                        text:
                            "خۆپیشاندەران دژی پلانی بنیادنانی پڕۆژەیەکی بازرگانین لە شوێنەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) پڕۆسەی بەکارھێنانی پارچە زەوییەک، ڤە تایبەتی بۆ قازانجکردن لێی بە بنیادنان لەسەری"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The city has undergone rapid development."),
                    ExampleSentenceKurdish(
                        text: "شارەکە بە بەرەوپێشچوونی خێرادا چووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He bought the land for development."),
                    ExampleSentenceKurdish(
                        text: "زەوییەکەی بۆ وەبەرھێنان کڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelopments18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelopments18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelopments1900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelopments19("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelopments19("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelopments_2000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelopments20("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelopments20("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelopments2100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelopments21("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelopments21("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelopments2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelopments22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelopments22("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
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
- Noun: development (derived forms: developments)
1. Act of improving by expanding, enlarging or refining
"he congratulated them on their development of a plan to meet the emergency"; "they funded research and development"
 
2. A process in which something passes by degrees to a different stage (especially a more advanced or mature stage) (= evolution)
"the development of his ideas took many years"; "the slow development of her skill as a writer";
 
3. (biology) the process of an individual organism growing organically; a purely biological unfolding of events involved in an organism changing gradually from a simple to a more complex level (= growth, growing, maturation, ontogeny, ontogenesis)
"he proposed an indicator of osseous development in children";
 
4. A recent event that has some relevance for the present situation
"recent developments in Iraq"; "what a revolting development!"
 
5. The act of making some area of land or water more profitable or productive or useful (= exploitation)
"the development of Alaskan resources";
 
6. A district that has been developed to serve some purpose
"such land is practical for small park developments"
 
7. (chess) a state in which things are improving; the result of developing (as in the early part of a game of chess)
"after he saw the latest development he changed his mind and became a supporter"; "in chess your should take care of your development before moving your queen"
 
8. Processing a photosensitive material in order to make an image visible (= developing)
"the development and printing of his pictures took only two hours";
 
9. (music) the section of a composition or movement (especially in sonata form) where the major musical themes are developed and elaborated
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
    videoId: 'AF8d72mA41M',
    startSeconds: 841,
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
    videoId: '_45zjnjrFOA',
    startSeconds: 109,
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
    videoId: 'gwZuUxeBYV8',
    startSeconds: 152,
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
    videoId: 'Bg_tJvCA8zw',
    startSeconds: 357,
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
    videoId: 'hRSGxw2AQnk',
    startSeconds: 292,
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
    videoId: 'qg2nGY1aqlg',
    startSeconds: 117,
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
    videoId: '9yjZpBq1XBE',
    startSeconds: 1233,
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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
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