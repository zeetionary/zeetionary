import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycure extends StatefulWidget {
  const EnglishEntrycure({super.key});

  @override
  State<EnglishEntrycure> createState() => _EnglishEntrycureState();
}

class _EnglishEntrycureState extends State<EnglishEntrycure> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "cure");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cure");
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
    return const IPAofEnglish(text: "IpaUK: /kjʊə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcure(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cure"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcure("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kjʊr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcure(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cure"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcure("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcures1(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Will you be able to cure him, Doctor?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures2(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The doctor managed to cure her of her illness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures3(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was now completely cured of his illness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures4(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She still believed that somehow she could be miraculously cured."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures5(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They will try to cure her of her alcoholism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures6(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is better to prevent rather than cure diseases."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures7(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Finding it early is the key to curing most cancers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures8(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The disease can be cured with antibiotics."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures9(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I finally managed to cure the rattling noise in my car."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures10(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Charities alone can't cure basic social injustices."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures11(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most of the team's faults could be cured with good coaching."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures12(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Researchers are working to find a cure for the disease."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures13(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is no miracle cure for this condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures14(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The only real cure is rest."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures15(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors cannot effect a cure if the disease has spread too far."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures16(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cure took six weeks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures17(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Science cannot provide a cure for all the world's problems."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures18(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures19(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures20(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures21(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures22(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures23(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures24(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures25(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures26(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures27(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures28(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures29(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures30(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures31(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures32(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures33(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures34(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures35(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures36(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures37(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures38(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures39(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcures40(String languageCode) async {
    // DOPSUM: CHANGE speakcure
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcures4000"); // DOPSUM: CHANGE TEXT
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
کوردی: چارەسەری، چارەکردن، دەرمان(کردن)، تیمار، چار، چاک‌بوونەوە،	چارە، ڕێ‌چارە،	دەرمان، دەوا
"""),
          const DefinitionKurdish(
              text: "١. (کردار) چارەسەرکردنی کەسێک لە نەخۆشی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Will you be able to cure him, Doctor?"),
                    ExampleSentenceKurdish(
                        text: "دەتوانیت چارەسەری بکەیت، پزیشک؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cure", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures1("en-US"),
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
                        text: "The doctor managed to cure her of her illness."),
                    ExampleSentenceKurdish(
                        text: "پزیشکەکە توانی نەخۆشییەکەی چارەسەر بکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures2("en-US"),
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
                                    "He was now completely cured of his illness."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئێستا بە تەواوی لە نەخۆشییەکە چارەسەر کرابوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcures3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcures3("en-US"),
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
                                    "She still believed that somehow she could be miraculously cured."),
                            ExampleSentenceKurdish(
                                text:
                                    "ھێشتا باوەڕی وابوو کە دەکرا مۆجیزەئاسا چارەسەر بکرابایە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcures4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcures4("en-US"),
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
                                    "They will try to cure her of her alcoholism."),
                            ExampleSentenceKurdish(
                                text:
                                    "ھەوڵ دەدات لە ئاڵوودەییەکەی چارەسەری بکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcures5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcures5("en-US"),
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
          const DefinitionKurdish(text: "٢. (کردار) نەھێشتنی نەخۆشییەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It is better to prevent rather than cure diseases."),
                    ExampleSentenceKurdish(
                        text: "واباشە ڕێگری بکرێت وەک لە چارەسەرکردنی نەخۆشی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures6("en-US"),
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
                            "Finding it early is the key to curing most cancers."),
                    ExampleSentenceKurdish(
                        text:
                            "دۆزینەوەی بەزوویی خاڵی سەرەکییە لە چارەسەرکردنی زۆرینەی جۆرەکانی شێرپەنجە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures7("en-US"),
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
                        text: "The disease can be cured with antibiotics."),
                    ExampleSentenceKurdish(
                        text:
                            "نەخۆشییەکە دەکرێت بە دژە بەکتریا چارەسەر بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) مامەڵەکردن لەگەڵ کێشەیەک بە سەرکەوتووانە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I finally managed to cure the rattling noise in my car."),
                    ExampleSentenceKurdish(
                        text:
                            "لە کۆتاییدا توانیم دەنگی تەقەتەقەکە لە ئۆتۆمبێلەکەمدا چارەسەر بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures9("en-US"),
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
                            "Charities alone can't cure basic social injustices."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێکخراوە خێرخوازییەکان بە تەنھا ناتوانن چارەسەری نادادییە سەرەتاییە کۆمەڵایەتییەکان بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures10("en-US"),
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
                            "Most of the team's faults could be cured with good coaching."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆرینەی ھەڵەکانی تیمەکە دەکرێت بە ڕاھێنانی باش چارەسەر بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) دەرمانێک یان چارەسەرێک بۆ نەخۆشییەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Researchers are working to find a cure for the disease."),
                    ExampleSentenceKurdish(
                        text:
                            "توێژەران کاردەکەن بۆ دۆزینەوەی چارەسەرێک بۆ نەخۆشییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures12("en-US"),
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
                        text: "There is no miracle cure for this condition."),
                    ExampleSentenceKurdish(
                        text: "ھیچ چارەسەرێکی مۆجیزەئاسا بۆ ئەم دۆخە نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures13("en-US"),
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
                    ExampleSentenceEnglish(text: "The only real cure is rest."),
                    ExampleSentenceKurdish(text: "تەنھا چارەسەر پشوودانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) کاری چارەسەرکردنی کەسێک لە نەخۆشییەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Doctors cannot effect a cure if the disease has spread too far."),
                    ExampleSentenceKurdish(
                        text:
                            "پزیشکان ناتوانن چارەسەرێک ئەنجام بدەن ئەگەر نەخۆشییەکە زۆر بڵاوبووبێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures15("en-US"),
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
                    ExampleSentenceEnglish(text: "The cure took six weeks."),
                    ExampleSentenceKurdish(text: "چارەسەرەکە شەش ھەفتەی ویست."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) شتێک کە کێشەیەک چارەسەر دەکات، دۆخێکی خراپ باش دەکات، ھتد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Science cannot provide a cure for all the world's problems."),
                    ExampleSentenceKurdish(
                        text:
                            "زانست ناتوانێت چارەسەر بۆ ھەموو کێشەکانی جیھان بدات بەدەستەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcures17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcures17("en-US"),
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
- Verb: cure (derived forms: curing, cured, cures)
1. (medicine) provide a cure for, make healthy again (= bring around, heal)
"The treatment cured the boy's acne";
 
2. Prepare by drying, salting, or chemical processing in order to preserve
"cure meats"; "cure pickles"; "cure hay"
 
3. Make (substances) hard and improve their usability
"cure resin"; "cure cement"; "cure soap"
 
4. Be or become preserved
"the apricots cure in the sun"

- Noun: cure (derived forms: cures)
1. A medicine or therapy that cures disease or relieves pain (= remedy, curative, therapeutic)
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
    videoId: 'Cqbleas1mmo',
    startSeconds: 1173,
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
    videoId: '544DTGHIBM0',
    startSeconds: 506,
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
    videoId: 'qsYUDM15T8U',
    startSeconds: 249,
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
    videoId: 'W2hRTTTpmr8',
    startSeconds: 1771,
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
    videoId: 'mcZdTvOqmvI',
    startSeconds: 882,
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
    videoId: 'b1reY72ktEc',
    startSeconds: 423,
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
    videoId: 'l2l5sBLhUCY',
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