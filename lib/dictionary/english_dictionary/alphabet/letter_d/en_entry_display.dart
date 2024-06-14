import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydisplay extends StatefulWidget {
  const EnglishEntrydisplay({super.key});

  @override
  State<EnglishEntrydisplay> createState() => _EnglishEntrydisplayState();
}

class _EnglishEntrydisplayState extends State<EnglishEntrydisplay> {
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
    return const EntryTitle(word: "display");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: display");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈspleɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisplay(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("display"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisplay("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈspleɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisplay(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("display"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisplay("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisplays1(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exhibition gives local artists an opportunity to display their work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays2(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His football trophies were prominently displayed in the kitchen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays3(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She displayed her bruises for all to see."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays4(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She proudly displayed her certificate to her parents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays5(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have rarely seen her display any sign of emotion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays6(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These statistics display a definite trend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays7(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many animals in stressful conditions display this behaviour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays8(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "From 1811 until his death in 1820, George III displayed symptoms of insanity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays9(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He displayed remarkable courage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays10(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A group of artists will be displaying their skills to the students."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays11(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Giant screens displayed images of cheering crowds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays12(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The medals can be seen in a display cabinet on the first floor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays13(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The display includes examples of her work in progress."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays14(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The museum has a display of old medical instruments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays15(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a prominent display of her photographs in the living room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays16(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They put on a spectacular firework display."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays17(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team produced an impressive display."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays18(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most of the local people attended the firework display."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays19(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There may be specific events which trigger aggressive displays in your dog."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays20(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Despite his outward display of friendliness, I sensed he was concealing something."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays21(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I witnessed a rare display of affection between them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdisplays22(String languageCode) async {
    // DOPSUM: CHANGE speakdisplay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The display shows the time in hours and minutes."); // DOPSUM: CHANGE TEXT
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
کوردی: پیشان‌دان، نیشان‌دان، ڕانان، نواندن، نانەبەر، خستنەڕوو، خستنەبەرچاو،	ئاشکراکردن، دەربڕین، خستنەڕوو، دەرخستن،	سەرجەم ئەو شتانەی خراونەتەڕوو
"""),
          const DefinitionKurdish(text: "١. (کردار) نمایشکردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The exhibition gives local artists an opportunity to display their work."),
                    ExampleSentenceKurdish(
                        text:
                            "پێشانگاکە ھەلێک بە ھونەرمەندە خۆجێییەکان دەدات کە کارەکانیان نمایش بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "display", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "His football trophies were prominently displayed in the kitchen."),
                    ExampleSentenceKurdish(
                        text:
                            "مەدالیاکانی تۆپی‌پێی بە شێوەیەکی دیار لە چێشتخانەکە نمایش کرابوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She displayed her bruises for all to see."),
                    ExampleSentenceKurdish(
                        text: "شین‌بوونەوەکانیی پیشانی ھەموان دا کە بیبینن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She proudly displayed her certificate to her parents."),
                    ExampleSentenceKurdish(
                        text:
                            "بە شانازییەوە بڕوانامەکەی پیشانی دایک و باوکی دا کە بیبینن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) پیشاندانی خاسیەتێک، ھەستێک، شارەزاییەک، یان ڕەفتارێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I have rarely seen her display any sign of emotion."),
                    ExampleSentenceKurdish(
                        text: "بە دەگمەن دیومە ھیچ ھەستێک پیشان بدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "These statistics display a definite trend."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم ئامارانە ترێندێکی گومان‌لێ‌نەکراو پیشان دەدەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Many animals in stressful conditions display this behaviour."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر ئاژەڵ کە لە دۆخی پڕگوشاریدا ئەم ھەڵسوکەوتە پیشان دەدەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "From 1811 until his death in 1820, George III displayed symptoms of insanity."),
                    ExampleSentenceKurdish(
                        text:
                            "لە ساڵی ١٨١١ تاوەکو مەرگی لە ١٨٢٩ جۆرجی سێیەم نیشانەکانی شێتیی ھەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He displayed remarkable courage."),
                    ExampleSentenceKurdish(text: "بوێری بێ وێنەی پیشان دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A group of artists will be displaying their skills to the students."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆمەڵێک ھونەرمەند تواناکانیان پیشانی خوێندکاران دەدەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) پیشاندانی زانیاری"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Giant screens displayed images of cheering crowds."),
                    ExampleSentenceKurdish(
                        text:
                            "شاشەی زەبەلاح وێنەی جەماوەرە ھیوابەخشەکەیان پیشان دەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) نمایشکی کۆمەڵە شتێک لە شوێنێکی گشتیدا بۆ زانیاری، خۆشی، یان ڕیکلام کردن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The medals can be seen in a display cabinet on the first floor."),
                    ExampleSentenceKurdish(
                        text:
                            "مەدالیاکان لە کابینەیەکی پیشان‌داندا دەبینرێن لە نھۆمی یەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The display includes examples of her work in progress."),
                    ExampleSentenceKurdish(
                        text:
                            "پێشانگاکە نموونەی کارەکانی پیشان دەدات کە لە ژێر کارکرداندان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The museum has a display of old medical instruments."),
                    ExampleSentenceKurdish(
                        text:
                            "مۆزەخانەکە پێشانگایەکی کەرەستە کۆنە پزیشکییەکانی ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There was a prominent display of her photographs in the living room."),
                    ExampleSentenceKurdish(
                        text:
                            "خستنەڕوویەکی لەبەرچاوی وێنەکانی لە ژووری میوانییەکە بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) پیشاندانی شتێک یان ئەنجامدانی شارەزاییەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They put on a spectacular firework display."),
                    ExampleSentenceKurdish(
                        text: "نمایشێکی یاری ئاگرینی ناوازە دەخەنەڕوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The team produced an impressive display."),
                    ExampleSentenceKurdish(
                        text: "تیمەکە نمایشێکی بەشکۆی پیشاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Most of the local people attended the firework display."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆرێک لە خەڵکە ناوخۆییەکە بەژداری نمایشی یارییە ئاگرینەکە بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) دۆخێک کە تێیدا خاسیەتێک، ھەستێک، توانایەک، ھتد پیشان دەدەیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There may be specific events which trigger aggressive displays in your dog."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕەنگە بۆنەی دیاریکراو ھەبێت ببێتە ھۆی پیشاندانی توندوتیژی لە سەگەکەتدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Despite his outward display of friendliness, I sensed he was concealing something."),
                    ExampleSentenceKurdish(
                        text:
                            "سەرەڕای نمایشی دۆستانەی ڕووکەشی، ھەستم کرد کە شتێکی دەشاردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I witnessed a rare display of affection between them."),
                    ExampleSentenceKurdish(
                        text:
                            "چاوم بە پیشاندانێکی دەگمەنی ھەست و سۆز کەوت لە نێوانیاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) ئەوەی لەسەر شاشەی کۆمپیوتەرێک دەردەکەوێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The display shows the time in hours and minutes."),
                    ExampleSentenceKurdish(
                        text: "شاشەکە کات بە کاتژمێر و خولەک پیشان دەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdisplays22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdisplays22("en-US"),
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
- Verb: display (Derived forms: displaying, displayed, displays)
1. To show, make visible or apparent (= expose, exhibit)
"National leaders will have to display the highest skills of statesmanship";
 
2. Attract attention by displaying some body part or posing; of animals

- Noun: display (Derived forms: displays)
1. Something intended to communicate a particular impression (= show)
"made a display of strength";
 
2. Something shown to the public (= exhibit, showing)
"the museum had many displays of oriental art";
 
3. A visual representation of something (= presentation)
 
4. Behaviour that makes your feelings public
"a display of emotion"
 
5. Exhibiting openly in public view
"a display of courage"
 
6. An electronic device that represents information in visual form (= video display)
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
    videoId: 'BxWw8AO4ZmI',
    startSeconds: 16,
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
    videoId: 'AF8d72mA41M',
    startSeconds: 1656,
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
    videoId: 's3B-qp3U5G0',
    startSeconds: 163,
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
    videoId: 's3B-qp3U5G0',
    startSeconds: 161,
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
    videoId: 'P8m-KThvtxA',
    startSeconds: 613,
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
    videoId: 'dtp6b76pMak',
    startSeconds: 93,
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
    videoId: 'oD9BaNAH-eE',
    startSeconds: 1592,
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