import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefence extends StatefulWidget {
  const EnglishEntrydefence({super.key});

  @override
  State<EnglishEntrydefence> createState() => _EnglishEntrydefenceState();
}

class _EnglishEntrydefenceState extends State<EnglishEntrydefence> {
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
    return const EntryTitle(word: "defence");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defence");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfens/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefence(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defence");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefence("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfens/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefence(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defence");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefence("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefences1(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What points can be raised in defence of this argument?");
  }

  Future<void> speakdefences2(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have to say in her defence that she knew nothing about it beforehand.");
  }

  Future<void> speakdefences3(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When her brother was criticized she leapt to his defence.");
  }

  Future<void> speakdefences4(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He paid tribute to all those who had died in defence of their country.");
  }

  Future<void> speakdefences5(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She spoke in his defence.");
  }

  Future<void> speakdefences6(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("At this point the country had no effective air defences.");
  }

  Future<void> speakdefences7(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The town walls were built as a defence against enemy attacks.");
  }

  Future<void> speakdefences8(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The body has natural defence mechanisms to protect it from disease.");
  }

  Future<void> speakdefences9(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are building up defences along the river.");
  }

  Future<void> speakdefences10(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Issues of national defence are a matter for the government.");
  }

  Future<void> speakdefences11(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Further cuts in defence spending are being considered.");
  }

  Future<void> speakdefences12(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was the youngest person ever to serve as U.S. Defense Secretary.");
  }

  Future<void> speakdefences13(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Robert McNamara was Secretary of Defense under Presidents Kennedy and Johnson.");
  }

  Future<void> speakdefences14(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book is a closely argued defence of the economic theory of Keynes.");
  }

  Future<void> speakdefences15(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her defence was that she was somewhere completely different at the time of the crime.");
  }

  Future<void> speakdefences16(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He wanted to conduct his own defence.");
  }

  Future<void> speakdefences17(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The defence requested more time to prepare their case.");
  }

  Future<void> speakdefences18(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Welford cut through the defence to score the winning goal.");
  }

  Future<void> speakdefences19(String languageCode) async {
    // DOPSUM: CHANGE speakdefence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She plays in defence.");
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
کوردی: بەرگری، بەربەستی، بەرەڤانی، بەرگەگری، خۆڕاگری، لەسەرخۆکردنەوە، پشتیوانی،	کەرەسەی بەرگری،	پارێزەر، ئەولەکار، بەرەڤان‌کار،	بیانوو، پەڵپ، بەھانە،	(وەرزش) بەرگری، ھێڵی بەرگری، یاریزانی ھێڵی بەرگری 
"""),
          const DefinitionKurdish(
              text: "١. (ناو) کاری پاراستنی کەسێک/شتێک لە ھێرش، ڕەخنە، ھتد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "What points can be raised in defence of this argument?"),
                    ExampleSentenceKurdish(
                        text:
                            "چی خاڵێک دەکرێت باس بکرێت بۆ بەرگری لە بۆچوونەکەی؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "defence", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences1("en-US"),
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
                            "I have to say in her defence that she knew nothing about it beforehand."),
                    ExampleSentenceKurdish(
                        text:
                            "وەک برگرییەک لێی دەبێت بڵێم پێشوەختە ھیچی نەزانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences2("en-US"),
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
                            "When her brother was criticized she leapt to his defence."),
                    ExampleSentenceKurdish(
                        text: "کە براکەی سەرزەنشت کرا گەشتە بەرگری لێی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences3("en-US"),
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
                            "He paid tribute to all those who had died in defence of their country."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێزی نا لە ھەموو ئەوانەی کە لە بەرگری وڵاتەکەیاندا گیانیان بەخت کردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences4("en-US"),
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
                    ExampleSentenceEnglish(text: "She spoke in his defence."),
                    ExampleSentenceKurdish(text: "بۆ بەرگری لێی قسەی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) شتێک کە ئەرکی پارێزەر دەبینێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "At this point the country had no effective air defences."),
                    ExampleSentenceKurdish(
                        text:
                            "لەم قۆناغەدا وڵاتەکە ھیچ بەرگرییەکی ئاسمانی کاریگەری نەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences6("en-US"),
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
                            "The town walls were built as a defence against enemy attacks."),
                    ExampleSentenceKurdish(
                        text:
                            "شووراکانی بیناکە وەک بەرگرییەک دژ بە ھێرشەکانی دوژمن بنیات نران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences7("en-US"),
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
                            "The body has natural defence mechanisms to protect it from disease."),
                    ExampleSentenceKurdish(
                        text:
                            "لەش میکانیزمی سرووشتی بەرگری ھەیە دژ بە نەخۆشی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences8("en-US"),
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
                        text: "They are building up defences along the river."),
                    ExampleSentenceKurdish(
                        text: "بە درێژایی ڕووبارەکە بەرگری درووست دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) وەزارەتی بەرگری وڵاتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Issues of national defence are a matter for the government."),
                    ExampleSentenceKurdish(
                        text: "بابەتەکانی بەرگری نیشتیمانی مژارێکن بۆ حکومەت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences10("en-US"),
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
                            "Further cuts in defence spending are being considered."),
                    ExampleSentenceKurdish(
                        text:
                            "کەمکردنەوەی زیاتر لە خەرجی بەرگری لەبەرچاو دەگیردرێن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences11("en-US"),
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
                            "He was the youngest person ever to serve as U.S. Defense Secretary."),
                    ExampleSentenceKurdish(
                        text:
                            "گەنجترین کەس بوو کە وەک وەزیری بەرگری ئەمریکا دەست بەکاربێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences12("en-US"),
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
                            "Robert McNamara was Secretary of Defense under Presidents Kennedy and Johnson."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕۆبێرت مکنامارا وەزیری بەرگری بۆ سەرۆک کەنەدی و جۆنسن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شتێک کە دەنووسرێت بۆ پشتیوانی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The book is a closely argued defence of the economic theory of Keynes."),
                    ExampleSentenceKurdish(
                        text:
                            "کتێبەکە بە ئاستێکی زۆر دادەنرێت وەک پشتیوانییەک لە بیردۆزی ئابووری کینز."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) ئەوەی لە دادگا دەگوترێت بۆ سەلماندنی ئەوەی کەسێک بێ‌تاوانە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Her defence was that she was somewhere completely different at the time of the crime."),
                    ExampleSentenceKurdish(
                        text:
                            "بەرگرییەکەی ئەوە بوو کە لە شوێنێکی زۆر جیاواز بوو لە کارت تاوانەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences15("en-US"),
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
                        text: "He wanted to conduct his own defence."),
                    ExampleSentenceKurdish(
                        text: "دەیویست خۆی بەرگرییەکەی ئەنجام بدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) پارێزەر یان دەستەی پارێزەری کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The defence requested more time to prepare their case."),
                    ExampleSentenceKurdish(
                        text:
                            "دەستەی پارێزەری داوای کاتی زیاتریان کرد بۆ ئامادەکردنی کەیسەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) یاریزانانی بەرگری تیمێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Welford cut through the defence to score the winning goal."),
                    ExampleSentenceKurdish(
                        text:
                            "ویڵفۆرد بە ناو بەرگریکاراندا تێپەڕی بۆ تۆمارکردنی گۆڵی بردنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences18("en-US"),
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
                      text: "She plays in defence.",
                      note: "She plays on defence.",
                    ),
                    ExampleSentenceKurdish(text: "لە بەرگریدا یاری دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefences19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefences19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // "I have to say in her defence that she knew nothing about it beforehand.0"),
          // speakdefences20
          // defences20("en-US"),
          // defences2100"),
          // speakdefences21
          // defences21("en-US"),
          // defences2200"),
          // speakdefences22
          // defences22("en-US"),
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
- Noun: defence (derived forms: defences)
Usage: Brit, Cdn (US: defense)
1. (military) military action or resources protecting a country against potential enemies (= defense [US], defensive measure)
"they died in the defence of Stalingrad"; "they were developed for the defence program"; "they died in the defence of Stalingrad";
 
2. Protection from harm (= defense [US])
"sanitation is the best defence against disease";
 
3. (sport) the team that is trying to prevent the other team from scoring (= defense [US], defending team)
"his teams are always good on defence";
 
4. The justification for some act or belief (= defense [US], vindication, account)
"he offered a persuasive defence of the theory";
 
5. (psychiatry) an unconscious process that tries to reduce the anxiety associated with instinctive desires (= defense mechanism [US], defense reaction [US], defence mechanism [Brit, Cdn], defence reaction [Brit, Cdn], defense [US])
 
6. The defendant and his legal advisors collectively (= defense [US], defense team [US], defense lawyers [US], defence team [Brit, Cdn], defence lawyers [Brit, Cdn])
"the defence called for a mistrial";
 
7. The speech act of answering an attack on your assertions (= refutation, defense [US])
"in defence he said the other man started it"; "his defence of the charges was short and persuasive";
 
8. An organization of defenders that provides resistance against attack (= defense [US], defense force [US], defence force [Brit, Cdn])
"he joined the defence against invasion";
 
9. A structure used to defend against attack (= defensive structure, defense [US])
"the artillery battered down the defences";
 
10. (law) a defendant's answer or plea denying the truth of the charges against him (= defense [US], denial, demurrer)
"he gave evidence for the defence";
 
11. The act of defending someone or something against attack or injury (= defense [US])
"a good boxer needs a good defence"; "defence against hurricanes is an urgent problem";
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
  final String _videoId = 'k7YVxLLIuGM';
  final double _startSeconds = 108;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'sQ0WsP7osAU';
  final double _startSeconds = 589;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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
  final String _videoId = 'rbrL40XHlPQ';
  final double _startSeconds = 541;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'eJhkMZUiU2U';
  final double _startSeconds = 372;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'Xmbw_F5p9Fs';
  final double _startSeconds = 990;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'rLFns5Tz-Iw';
  final double _startSeconds = 84;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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
  final String _videoId = '9goS1nHM_-E';
  final double _startSeconds = 1065;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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