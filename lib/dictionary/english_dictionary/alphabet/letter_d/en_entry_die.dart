import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
    await flutterTts.speak("die");
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
    await flutterTts.speak("die");
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
    await flutterTts.speak("My father died suddenly at the age of 48.");
  }

  Future<void> speakdies2(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At least six people have died in the accident.");
  }

  Future<void> speakdies3(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That plant's going to die if you don't water it!");
  }

  Future<void> speakdies4(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He later died in hospital.");
  }

  Future<void> speakdies5(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They died fighting for their country.");
  }

  Future<void> speakdies6(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She died peacefully after a long illness.");
  }

  Future<void> speakdies7(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A further 156 people have died with Covid-19.");
  }

  Future<void> speakdies8(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was ready to die for his cause.");
  }

  Future<void> speakdies9(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll never forget it to my dying day.");
  }

  Future<void> speakdies10(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I nearly died when I saw him there.");
  }

  Future<void> speakdies11(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She died young.");
  }

  Future<void> speakdies12(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At least they died happy.");
  }

  Future<void> speakdies13(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He died a hero.");
  }

  Future<void> speakdies14(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He died a poor man.");
  }

  Future<void> speakdies15(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her husband died suddenly last week.");
  }

  Future<void> speakdies16(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her father died tragically in a car crash.");
  }

  Future<void> speakdies17(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That plant's died.");
  }

  Future<void> speakdies18(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He died for his beliefs.");
  }

  Future<void> speakdies19(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The old customs are dying.");
  }

  Future<void> speakdies20(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His secret died with him.");
  }

  Future<void> speakdies21(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The words died on my lips.");
  }

  Future<void> speakdies22(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My phone died and I had no way to contact you.");
  }

  Future<void> speakdies23(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The engine spluttered and died.");
  }

  Future<void> speakdies24(String languageCode) async {
    // DOPSUM: CHANGE speakdie
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The worker placed the metal under the die.");
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
                                text: "ھیچ نەبێت بە خۆشی مردن."),
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
                                text: "وەک پیاوێکی ھەژار مرد."),
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
                                text: "ھاوسەرەکەی ھەفتەی پێشوو لەناکاو مرد."),
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
                  // dies2500"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies25("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies25("en-US"),
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
                  // dies2600"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies26("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies26("en-US"),
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
                  // dies2700"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies27("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies27("en-US"),
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
                  // dies2800"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies28("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies28("en-US"),
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
                  // dies2900"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies29("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies29("en-US"),
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
                  // dies_3000"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies30("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies30("en-US"),
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
                  // dies3100"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies31("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies31("en-US"),
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
                  // dies3200"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies32("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies32("en-US"),
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
                  // dies3300"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies33("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies33("en-US"),
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
                  // dies3400"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies34("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies34("en-US"),
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
                  // dies3500"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies35("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies35("en-US"),
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
                  // dies3600"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies36("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies36("en-US"),
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
                  // dies3700"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies37("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies37("en-US"),
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
                  // dies3800"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies38("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies38("en-US"),
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
                  // dies3900"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies39("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies39("en-US"),
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
                  // dies_4000"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies40("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies40("en-US"),
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
                  // dies4100"),
                  //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  //         ],
                  //       ),
                  //     ),
                  //     const CustomSizedBoxForTTS(),
                  //     Column(
                  //       children: [
                  //         CustomIconButtonBritish(
                  // dies41("en-GB"),
                  //         ),
                  //         CustomIconButtonAmerican(
                  // dies41("en-US"),
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
                        text: "نھێنییەکەی لەگەڵ خۆی بردە گۆڕ."),
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
                            "موبایلەکەم کوژایەوە و ھیچ ڕێگایەکم نەبوو پەیوەندیت پێوە بکەم."),
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'VZrw3cLD59M';
  final double _startSeconds = 6;

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
  final String _videoId = 'drFkWpbTlcQ';
  final double _startSeconds = 25;

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
  final String _videoId = 'A4FvI1r3rIg';
  final double _startSeconds = 26;

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
  final String _videoId = 'XeWNo_edf6Q';
  final double _startSeconds = 26;

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
  final String _videoId = 'FBmlde9ymIA';
  final double _startSeconds = 23;

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
  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 0;

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
  final String _videoId = 'kXShLPXfWZA';
  final double _startSeconds = 314;

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