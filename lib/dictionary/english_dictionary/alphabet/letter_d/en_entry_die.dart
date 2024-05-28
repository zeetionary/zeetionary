import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydie extends StatefulWidget {
  const EnglishEntrydie({super.key});

  @override
  State<EnglishEntrydie> createState() => _EnglishEntrydieState();
}

class _EnglishEntrydieState extends State<EnglishEntrydie> {
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
    return const EntryTitle(word: "die");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: die");
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
    return const IPAofEnglish(text: "IpaUK: /daɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdie(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("die"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdie("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /daɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdie(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("die"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdie("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdies1(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My father died suddenly at the age of 48."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies2(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At least six people have died in the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies3(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "That plant's going to die if you don't water it!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies4(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He later died in hospital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies5(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They died fighting for their country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies6(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She died peacefully after a long illness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies7(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A further 156 people have died with Covid-19."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies8(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was ready to die for his cause."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies9(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll never forget it to my dying day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies10(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I nearly died when I saw him there."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies11(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She died young."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies12(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At least they died happy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies13(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He died a hero."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies14(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He died a poor man."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies15(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her husband died suddenly last week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies16(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her father died tragically in a car crash."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies17(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That plant's died."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies18(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He died for his beliefs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies19(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The old customs are dying."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies20(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His secret died with him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies21(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The words died on my lips."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies22(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My phone died and I had no way to contact you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies23(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The engine spluttered and died."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies24(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The worker placed the metal under the die."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies25(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies26(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies27(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies28(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies29(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies30(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies_3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies31(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies32(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies33(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies34(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies35(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies36(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies37(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies38(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies39(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies40(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies_4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies41(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies42(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies43(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies44(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies45(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdies46(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdies4600"); // DOPSUM: CHANGE TEXT
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
کوردی: مردن، قاڵب، داڕێژگە، مۆر، نەرد، مۆرە، زار، دار،	قومار، بەخت، شانس،	قاڵاوێز
"""),
          const DefinitionKurdish(text: "١. (کردار) وەستان لە ژیان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My father died suddenly at the age of 48."),
                    ExampleSentenceKurdish(
                        text: "باوکم کەناکاو لە تەمەنی ٤٨ ساڵیدا گیانی سپارد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "die", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdies1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdies1("en-US"),
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
                        text: "At least six people have died in the accident."),
                    ExampleSentenceKurdish(
                        text:
                            "بە لایەنی کەمەوە شەش کەس لە ڕووداوەکە گیانیان لەدەستداوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdies2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdies2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
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
                                    "That plant's going to die if you don't water it!"),
                            ExampleSentenceKurdish(
                                text: "ڕووەکەکان دەمرن ئەگەر ئاویان نەدەیت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies3("en-US"),
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
                                text: "He later died in hospital."),
                            ExampleSentenceKurdish(
                                text: "دواتر لە نەخۆشخانە گیانی لەدەستدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies4("en-US"),
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
                                text: "They died fighting for their country."),
                            ExampleSentenceKurdish(
                                text: "مردن لەکاتی شەڕدا بۆ وڵاتەکەیان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies5("en-US"),
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
                                    "She died peacefully after a long illness."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە دوای نەخۆشییەکی درێژخایەن بە ئاسوودەیی مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies6("en-US"),
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
                                    "A further 156 people have died with Covid-19 (= they had the disease when they died)."),
                            ExampleSentenceKurdish(
                                text:
                                    "١٥٦ کەسی دیکە بە کۆرۆنا گیانیان لەدەستداوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies7("en-US"),
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
                                text: "He was ready to die for his cause."),
                            ExampleSentenceKurdish(
                                text: "ئامادەبوو گیان بەخت بکات بۆ ئەم دۆزە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies8("en-US"),
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
                                    "I'll never forget it to my dying day (= until I die)."),
                            ExampleSentenceKurdish(
                                text: "تاوەکو کۆتا ڕۆژەکانم لەبیری ناکەم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies9("en-US"),
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
                                    "I nearly died when I saw him there (= it was very embarrassing)."),
                            ExampleSentenceKurdish(
                                text: "خەریک بوو بمرم کە لەوێ بینیم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies10("en-US"),
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
                            ExampleSentenceEnglish(text: "She died young."),
                            ExampleSentenceKurdish(text: "بە گەنجی مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies11("en-US"),
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
                                text: "At least they died happy."),
                            ExampleSentenceKurdish(
                                text: "هیچ نەبێت بە خۆشی مردن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies12("en-US"),
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
                            ExampleSentenceEnglish(text: "He died a hero."),
                            ExampleSentenceKurdish(text: "وەک پاڵەوانێک مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies13("en-US"),
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
                            ExampleSentenceEnglish(text: "He died a poor man."),
                            ExampleSentenceKurdish(
                                text: "وەک پیاوێکی هەژار مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies14("en-US"),
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
                                text: "Her husband died suddenly last week."),
                            ExampleSentenceKurdish(
                                text: "هاوسەرەکەی هەفتەی پێشوو لەناکاو مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies15("en-US"),
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
                                    "Her father died tragically in a car crash."),
                            ExampleSentenceKurdish(
                                text:
                                    "باوکی بە تراژیدیایەک لە پێکدادانێکدا مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies16("en-US"),
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
                            ExampleSentenceEnglish(text: "That plant's died."),
                            ExampleSentenceKurdish(text: "ڕووەکەکە مردووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies17("en-US"),
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
                                text: "He died for his beliefs."),
                            ExampleSentenceKurdish(text: "بۆ ئامانجەکانی مرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies18("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies18("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ), // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: "The engine spluttered and died."),
                            ExampleSentenceKurdish(
                                text: "بزوێنەرەکە بڵتەیەکی کرد و کوژایەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies23("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies23("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: "٤. (ناو) پارچە کانزایەک کە وەک قاڵب بەکاردێت"),
                  // const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The worker placed the metal under the die."),
                            ExampleSentenceKurdish(
                                text: "کرێکارەکە کانزاکەی خستە ژێر قاڵبەکەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdies24("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdies24("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies2500"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies25("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies25("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies2600"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies26("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies26("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies2700"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies27("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies27("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies2800"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies28("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies28("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies2900"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies29("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies29("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies_3000"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies30("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies30("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3100"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies31("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies31("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3200"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies32("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies32("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3300"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies33("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies33("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3400"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies34("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies34("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3500"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies35("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies35("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3600"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies36("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies36("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3700"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies37("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies37("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3800"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies38("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies38("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies3900"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies39("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies39("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies_4000"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies40("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies40("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
                  // const DividerSentences(),
                  // Row(
                  //   children: [
                  //     const Expanded(
                  //       child: Column(
                  //         children: [
                  //           ExampleSentenceEnglish(text: "speakdies4100"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  //           onPressed: () => speakdies41("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  //           onPressed: () => speakdies41("en-US"),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) وەستان لە بوون"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The old customs are dying."),
                    ExampleSentenceKurdish(text: "نەریتە کۆنەکان دەپووکێنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdies19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdies19("en-US"),
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
                            "His secret died with him (= he never told anyone)."),
                    ExampleSentenceKurdish(
                        text: "نهێنییەکەی لەگەڵ خۆی بردە گۆڕ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdies20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdies20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٣. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The words died on my lips (= I stopped speaking)."),
                    ExampleSentenceKurdish(text: "وشەکان لە قوڕگم گیران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdies21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdies21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) وەستان لە کارکردن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My phone died and I had no way to contact you."),
                    ExampleSentenceKurdish(
                        text:
                            "موبایلەکەم کوژایەوە و هیچ ڕێگایەکم نەبوو پەیوەندیت پێوە بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdies22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdies22("en-US"),
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
- Verb: die (derived forms: died, dying, dies)
1. Cease to live; lose all bodily attributes and functions necessary to sustain life (= decease [archaic], perish, go, exit, pass away, expire, pass, kick the bucket [informal], cash in one's chips [informal], buy the farm [N. Amer, informal], conk [informal], give-up the ghost [informal], drop dead, pop off [informal], choke, croak [informal], snuff it [informal], flatline [informal], cop it [Brit, informal], cash in [informal], pop one's clogs [informal])
"She died from cancer";
 
2. Suffer or face the pain of death
"Martyrs may die every day for their faith"
 
3. Be brought to or as if to the point of death by an intense emotion such as embarrassment, amusement, or shame
"I was dying with embarrassment when my little lie was discovered"; "We almost died laughing during the show"
 
4. Stop operating or functioning (= fail, go bad, give way, give out, conk out [informal], go, break, break down, pack up [Brit, informal])
"The car died on the road";
 
5. Feel indifferent towards
"She died to worldly things and eventually entered a monastery"
 
6. Languish as with love or desire
"She dying for a cigarette"; "I was dying to leave"
 
7. Cut or shape with a die (= die out)
"Die out leather for belts";
 
8. (baseball) to be on base at the end of an inning, of a player
 
9. Lose sparkle or bouquet (= pall, become flat)
 
10. Disappear or come to an end
"Their anger died"; "My secret will die with me!"
 
11. (religion) suffer spiritual death; be damned (in the religious sense)
"Whosoever..believes in me shall never die"

- Noun: die
1. A small cube with 1 to 6 spots on the six faces; used in gambling to generate random numbers (= dice)
 
2. A device used for shaping metal
 
3. A cutting tool that is fitted into a diestock and used for cutting male (external) screw threads on screws, bolts, pipes or rods
 
4. An embossed block of metal or wood used for stamping a design on coins, medals, etc.
 
5. (architecture) a cube-shaped part of a pedestal
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
    videoId: 'VZrw3cLD59M',
    startSeconds: 6,
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
    videoId: 'drFkWpbTlcQ',
    startSeconds: 25,
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
    videoId: 'A4FvI1r3rIg',
    startSeconds: 26,
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
    videoId: 'XeWNo_edf6Q',
    startSeconds: 26,
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
    videoId: 'FBmlde9ymIA',
    startSeconds: 23,
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
    videoId: 'R_fZjGm2OrM',
    // startSeconds: 222222222222222,
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
    videoId: 'kXShLPXfWZA',
    startSeconds: 314,
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