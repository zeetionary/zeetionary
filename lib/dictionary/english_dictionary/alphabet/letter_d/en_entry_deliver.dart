import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydeliver extends StatefulWidget {
  const EnglishEntrydeliver({super.key});

  @override
  State<EnglishEntrydeliver> createState() => _EnglishEntrydeliverState();
}

class _EnglishEntrydeliverState extends State<EnglishEntrydeliver> {
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
    return const EntryTitle(word: "deliver");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deliver");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈlɪvə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliver(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deliver"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeliver("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈlɪvər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliver(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deliver"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeliver("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelivers1(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I get my food delivered from the supermarket to save time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers2(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Leaflets have been delivered to every household."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers3(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We promise to deliver within 48 hours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers4(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We deliver to our stores seven days a week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers5(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company will deliver free of charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers6(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let me deliver the good news first."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers7(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The video delivers a clear message about road safety."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers8(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our courses are delivered via the internet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers9(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She will deliver a major speech on foreign policy tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers10(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is due to deliver a lecture on genetic engineering."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers11(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Court delivered its judgement earlier this month."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers12(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has promised to finish the job by June and I am sure he will deliver."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers13(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She always delivers on her promises."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers14(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team delivered a stunning victory last night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers15(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She delivered the kids on time at their father's house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers16(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The taxi delivered us to our hotel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers17(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They delivered their prisoner over to the invading army."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers18(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The baby was delivered by Caesarean section."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers19(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The baby was delivered safely on Tuesday night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers20(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The number of women delivering their babies in hospital increased."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers21(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was delivered of a healthy boy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdelivers22(String languageCode) async {
    // DOPSUM: CHANGE speakdeliver
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He delivered the blow with all his force."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی: ئازاد کردن، پێدان، وتاردان، ڕزگار کردن، نەجات‌دان
// """),
          const DefinitionKurdish(
              text: "١. (کردار) گەیاندن لە جێگایەکەوە بۆ یەکێکی دیکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I get my food delivered from the supermarket to save time."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ گەڕاندنەوەی کات خواردنەکەم لە سوپەرمارکێتەکەوە بۆ دەنێردرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "deliver", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Leaflets have been delivered to every household."),
                    ExampleSentenceKurdish(
                        text: "نامیلکە نێردراوە بۆ هەموو ماڵێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We promise to deliver within 48 hours."),
                    ExampleSentenceKurdish(
                        text:
                            "بەڵێن دەدەین لە ماوەی ٤٨ کاتژمێردا گەیاندن بکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We deliver to our stores seven days a week."),
                    ExampleSentenceKurdish(
                        text: "حەوت ڕۆژی هەفتە گەیاندن دەکەین بۆ کۆگاکانمان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers4("en-US"),
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
                        text: "The company will deliver free of charge."),
                    ExampleSentenceKurdish(
                        text: "کۆمپانیاکە بە بێ‌بەرامبەر گەیاندن دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) پێدان یان ناردنی زانیاری بە کەسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Let me deliver the good news first."),
                    ExampleSentenceKurdish(
                        text: "بهێڵە سەرەتا هەواڵە خۆشەکە بڵێم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers6("en-US"),
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
                            "The video delivers a clear message about road safety."),
                    ExampleSentenceKurdish(
                        text:
                            "ڤیدیۆکە پەیامێکی ڕوون سەبارەت بە سەلامەتی سەر شەقام دەگەیەنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers7("en-US"),
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
                        text: "Our courses are delivered via the internet."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆرسەکەمان لە ڕێگەی ئینتەرنێتەوە پێشکەش دەکرێن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) پێشکەشکردنی وتارێک، نمایشێک، ڕاگەیاندنێک، هتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She will deliver a major speech on foreign policy tomorrow."),
                    ExampleSentenceKurdish(
                        text:
                            "سبەی ڕاگەیاندنێکی گرنگی لەسەر سیاسەتی دەرەوە دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers9("en-US"),
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
                            "She is due to deliver a lecture on genetic engineering."),
                    ExampleSentenceKurdish(
                        text: "وانەیەک لەسەر ئەندازیاری جینات پێشکەش دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers10("en-US"),
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
                            "The Court delivered its judgement earlier this month."),
                    ExampleSentenceKurdish(
                        text: "دادگا سەرەتای ئەم مانگە بڕیاری دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) کردنی ئەوەی کە بەڵێنت داوە یان چاوەڕوان دەکرێت بیکەیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He has promised to finish the job by June and I am sure he will deliver."),
                    ExampleSentenceKurdish(
                        text:
                            "بەڵێنی داوە تاوەکو حوزەیران کارەکە تەواو بکات و دڵنیام پابەند دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers12("en-US"),
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
                        text: "She always delivers on her promises."),
                    ExampleSentenceKurdish(
                        text: "هەمیشە پابەندی بەڵێنەکانی دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers13("en-US"),
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
                            "The team delivered a stunning victory last night."),
                    ExampleSentenceKurdish(
                        text:
                            "تیمەکە شەوی ڕابردوو سەرکەوتنێکی ناوازەی پێشکەش کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) بردنی کەسێک بۆ شوێنێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She delivered the kids on time at their father's house."),
                    ExampleSentenceKurdish(
                        text: "لە کاتی خۆیدا منداڵەکانی بردە ماڵی باوکیان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers15("en-US"),
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
                        text: "The taxi delivered us to our hotel."),
                    ExampleSentenceKurdish(
                        text: "تەکسییەکە گەیاندمانییە هوتێلەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers16("en-US"),
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
                            "They delivered their prisoner over to the invading army."),
                    ExampleSentenceKurdish(
                        text: "زیندانییەکەیان دا بەدەست سوپای داگیرکەرەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) یارمەتیدانی ژنێک لە منداڵبووندا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The baby was delivered by Caesarean section."),
                    ExampleSentenceKurdish(
                        text: "منداڵەکە بە نەشتەرگەری لەدایکبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers18("en-US"),
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
                            "The baby was delivered safely on Tuesday night."),
                    ExampleSentenceKurdish(
                        text:
                            "منداڵەکە بە سەلامەتی لە ڕۆژی سێشەممە لەدایکبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) منداڵبوون"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The number of women delivering their babies in hospital increased."),
                    ExampleSentenceKurdish(
                        text:
                            "ژمارەی ئەو ژنانەی لە نەخۆشخانە منداڵیان  بوو زیادی کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers20("en-US"),
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
                        text: "She was delivered of a healthy boy."),
                    ExampleSentenceKurdish(text: "کوڕێکی تەندرووستی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) فڕێدان یان ئامانجگرتنەوە لە شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He delivered the blow (= hit somebody hard) with all his force."),
                    ExampleSentenceKurdish(
                        text: "بە هەموو توانای مشتێکی وەشاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdelivers22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdelivers22("en-US"),
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
- Verb: deliver (Derived forms: delivers, delivered, delivering)
1. Bring to a destination, make a delivery
"our local super market delivers"
 
2. Express clearly or formally in words (a speech, oration, or idea) (= present)
 
3. To surrender someone or something to another (= hand over, turn in, render)
"the guard delivered the criminal to the police";
 
4. Free from harm or evil (= rescue)
 
5. Hand over to the authorities of another country (= extradite, deport)
"They delivered the fugitive to his native country so he could be tried there";
 
6. Pass down (= render, return)
"deliver a judgment";
 
7. Utter (an exclamation, noise, etc.)
"The students delivered a cry of joy"
 
8. (religion) Prevent committing sins (= redeem, save)
 
9. Carry out or perform (= drive home)
"deliver an attack";
 
10. Relinquish possession or control over (= surrender, cede, give up)
"The squatters had to deliver the building after the police moved in";
 
11. Throw or hurl from the mound to the batter, as in baseball (= pitch)
"The pitcher delivered the ball";
 
12. Cause to be born (= give birth, bear, birth, have)
"My wife delivered twins yesterday!";
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
    videoId: 'https://youtu.be/a_TSR_v07m0?t=',
    startSeconds: 753,
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
    videoId: 'https://youtu.be/kXShLPXfWZA?t=',
    startSeconds: 123,
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
    videoId: 'https://youtu.be/NFtQOxjWfaA?t=',
    startSeconds: 342,
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
    videoId: 'https://youtu.be/Cqbleas1mmo?t=',
    startSeconds: 814,
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
    videoId: 'https://youtu.be/bHIhgxav9LY?t=',
    startSeconds: 799,
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
    videoId: 'https://youtu.be/sV6uuMAnJUE?t=',
    startSeconds: 72,
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
    videoId: 'https://youtu.be/Gv4Af83KFrE?t=',
    startSeconds: 299,
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