import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydouble extends StatefulWidget {
  const EnglishEntrydouble({super.key});

  @override
  State<EnglishEntrydouble> createState() => _EnglishEntrydoubleState();
}

class _EnglishEntrydoubleState extends State<EnglishEntrydouble> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                    SentencesIconForTab(), // New tab for SentencesFromDatabase
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
              const SentencesFromDatabase(), // New SentencesFromDatabase tab
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "double";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
    return const EntryTitle(word: "double");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: double");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdʌbl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdouble(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("double"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdouble("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdʌbl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdouble(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("double"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdouble("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoubles1(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I ordered a double espresso."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles2(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This painkiller is double strength."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles3(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Go through the double doors and turn left."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles4(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("‘Otter’ is spelt with a double t."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles5(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My number is two four double 0 six seven one."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles6(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The double bed provided plenty of space for them to sleep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles7(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It has the double advantage of being both easy and cheap."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles8(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His income is double hers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles9(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He earns double what she does."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles10(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need double the amount we already have."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles11(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He gets paid double for doing the same job I do."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles12(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The airline announced it would start charging double for people who couldn't fit in a single seat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles13(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Membership almost doubled in two years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles14(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The town has approximately doubled in size since 1960."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles15(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She doubled the blanket and put it under his head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles16(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fold the blanket double."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles17(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I thought I was seeing double."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles18(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You have to be careful, and this counts double for people with children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles19(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's the double of her mother."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles20(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Is that a single or a double you want?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles21(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Two Scotches, please—and make those doubles, will you?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdoubles22(String languageCode) async {
    // DOPSUM: CHANGE speakdouble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdoubles2200"); // DOPSUM: CHANGE TEXT
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
کوردی: دووئەوندە، دووبەرامبەر، دووقات، دووچەندان، یەکاویەک،	دووانە، جووت، دووانی،	دووکەسە، دووانە،	دوومانادار، دووواتا، لێڵ،	دووڕوو،	جووت، تا، لف، هاوشێوە، دەقاودەق، لێک‌چوو، وەک‌یەک (دوو کەسی لێک‌چوو)،	(یاری) دوبل، دابڵ،	(ڕووەک) پڕگەڵا، گەڵازۆر،	دووتەرکە،	دووسەر، جووت‌سەر
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) دوو هێندە "),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I ordered a double espresso (= two standard amounts in one cup)."),
                    ExampleSentenceKurdish(
                        text: "داوای ئێسپرێسۆیەکی دەبڵم کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "double", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles1("en-US"),
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
                            "This painkiller is double strength (= has twice the normal amount of medicine)."),
                    ExampleSentenceKurdish(
                        text: "ئازارکوژەکان هێزی دوو هێندەیان هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) کە دوو بەشی هەیە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Go through the double doors and turn left."),
                    ExampleSentenceKurdish(
                        text: "بە جووت دەرگاکان بچۆ و بە چەپدا پێچ بکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٣. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "‘Otter’ is spelt with a double t."),
                    ExampleSentenceKurdish(
                        text: "وشەی 'otter' بە دوو t ڕێنووس دەکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles4("en-US"),
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
                            "My number is two four double 0 six seven one (2400671)."),
                    ExampleSentenceKurdish(
                        text:
                            "ژمارەکەم بریتییە لە دوو چوار دەبڵ سفر شەش حەوت یەک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) کە بۆ دوو کەس یان شت درووستکراوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The double bed provided plenty of space for them to sleep."),
                    ExampleSentenceKurdish(
                        text:
                            "جێخەوە دوو کەسییەکە جێگایەکی زۆری پێدان کە تێیدا بخەون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ھاوەڵناو) کە دوو شت یان خاسیەتی تێدایە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It has the double advantage of being both easy and cheap."),
                    ExampleSentenceKurdish(
                        text:
                            "سوودی دوولایەنەی ئەوەی هەیە کە ئاسان و هەرزانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (دیارخەر) دوو هێندە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "His income is double hers."),
                    ExampleSentenceKurdish(
                        text: "داهاتەکەی دوو هێندەی هی ئەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles8("en-US"),
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
                        text: "He earns double what she does."),
                    ExampleSentenceKurdish(
                        text: "دوو هێندەی ئەو بەدەست دەهێنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles9("en-US"),
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
                        text: "We need double the amount we already have."),
                    ExampleSentenceKurdish(
                        text: "دوو هێندەی ئەوەمان پێویستە کە ئێستا هەمانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (جێناو) ژمارەیەک یان بڕێک کە دوو هێندەی یەکێکی دیکەیە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He gets paid double for doing the same job I do."),
                    ExampleSentenceKurdish(
                        text: "دوو هێندەی پێدەدرێت بۆ کردنی هەمان کار."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles11("en-US"),
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
                            "The airline announced it would start charging double for people who couldn't fit in a single seat."),
                    ExampleSentenceKurdish(
                        text:
                            "هێڵە ئاسمانییەکە ڕایگەیاند کە دەست دەکات بە سەندنی پارەی دوو هێندە لەو کەسانەی کە لە یەک کوسیدا جێگایان نابێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) کردن یان بوون بە دوو هێندە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Membership almost doubled in two years."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەندامییەتی بەنزیکەیی دوو هێندە بوو لە دوو ساڵدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles13("en-US"),
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
                            "The town has approximately doubled in size since 1960."),
                    ExampleSentenceKurdish(
                        text:
                            "شارۆچکە بە نزیکەیی دوو هێندە بووە لە قەبارەدا لەوەتەی ساڵی ١٩٦٠ ـەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) چەماندنەوە بۆ ئەوەی ببێت بە دووان"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She doubled the blanket and put it under his head."),
                    ExampleSentenceKurdish(
                        text: "بەتانییەکەی دووتوێ کرد و خستییە ژێر سەری."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (هاوەڵکار) بە دوو بەش"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Fold the blanket double."),
                    ExampleSentenceKurdish(
                        text: "بە تانییەکە بۆ دوو توێ بچەمێنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles16("en-US"),
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
                            "I thought I was seeing double (= seeing two of something)."),
                    ExampleSentenceKurdish(text: "پێم وابوو بە جووت دەبینم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (هاوەڵکار) بە بڕی دوو هێندە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You have to be careful, and this counts double for people with children."),
                    ExampleSentenceKurdish(
                        text:
                            "دەبێت وریا بیت، و ئەمە بە دوو هێندە بۆ ئەو کەسانە حسابە کە منداڵیان هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (ناو) کەسێک یان شتێک کە ڕێک لە یەکێکی دیکە دەکات؛ ئەکتەرێک کە شوێنی یەکێکی دیکە دەگرێتەوە لە فیلمێکدا بۆ ئەنجامدانی دیمەنی ترسناک یان تایبەت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She's the double of her mother."),
                    ExampleSentenceKurdish(text: "لێکچووی دایکیەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (ناو) ژووری خەوی دوو کەسی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Is that a single or a double you want?"),
                    ExampleSentenceKurdish(
                        text: "تاکەکەسی یان دوو کەسیت دەوێت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (ناو) گڵاسێک خواردنەوەی کحولی بەهێز کە دوو هێندەی ڕێژەی ئاسایی تێدایە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Two Scotches, please—and make those doubles, will you?"),
                    ExampleSentenceKurdish(
                        text:
                            "دوو ویسکی سکۆچ تکایە، و تکایە بیان کە دەبڵ، ئەتوانیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdoubles21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdoubles21("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdoubles2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdoubles22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdoubles22("en-US"),
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
- Verb: double (Derived forms: doubling, doubled, doubles)
1. Increase twofold (= duplicate)
"The population doubled within 50 years";
 
2. (baseball) hit a two-base hit
 
3. Bend over or curl up, usually with laughter or pain (= double over, double up)
"He doubled and vomited violently";
 
4. Do double duty; serve two purposes or have two functions
"She doubles as his wife and secretary"
 
5. (bridge) make a demand for (a card or suit)
 
6. Make, do or perform again (= duplicate, reduplicate, repeat, replicate)
"He could never double his brilliant performance of the magic trick";

- Noun: double (Derived forms: doubles)
1. A base hit on which the batter stops safely at second base (= two-base hit, two-bagger, two-baser)
"he hit a double to deep centerfield";
 
2. A stand-in for movie stars to perform dangerous stunts (= stunt man, stunt woman)
"his first job in Hollywood was as a double for Clark Gable";
 
3. Someone who closely resembles a famous person (especially an actor) (= image, look-alike)
"he could be Gingrich's double";
 
4. A quantity that is twice as great as another
"36 is the double of 18"
 
5. Raising the stakes in a card game by a factor of 2 (= doubling)
"I decided his double was a bluff";
 
6. A room (e.g. in a hotel) with a double bed (= double room)
"Do you have a double for tonight?";

- Adjective: double 
1. Having more than one decidedly dissimilar aspects or qualities (= dual, twofold, two-fold, treble, threefold, three-fold, trifold)
"a double role for an actor"; "every episode has its double and treble meaning";
 
2. Consisting of or involving two parts or components usually in pairs (= dual, duple)
"an egg with a double yolk"; "a double (binary) star"; "double doors"; "duple (or double) time consists of two (or a multiple of two) beats to a measure";
 
3. Twice as great or many (= doubled, twofold, two-fold, bifold)
"ate a double portion";
 
4. Large enough for two
"a double bed"; "a double room"
 
5. Having two meanings with intent to deceive (= forked)
"a sly double meaning";
 
6. (botany) used of flowers having more than the usual number of petals in crowded or overlapping arrangements
"double chrysanthemums have many rows of petals and are usually spherical or hemispherical"
 
7. (genetics) used of homologous chromosomes associated in pairs in synapsis (= bivalent)

- Adverb: double 
1. Downward and forward
"he was bent double with pain"
 
2. Two together
"some people sleep better double"
 
3. To double the degree (= doubly, twice)
"his eyes were double bright";
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
    videoId: 'https://youtu.be/8HEfIJlcFbs?t=',
    startSeconds: 216,
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
    videoId: 'https://youtu.be/544DTGHIBM0?t=',
    startSeconds: 711,
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
    videoId: 'https://youtu.be/yjhibJ-OqxE?t=',
    startSeconds: 233,
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
    videoId: 'https://youtu.be/NFtQOxjWfaA?t=',
    startSeconds: 140,
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
    videoId: 'https://youtu.be/XnbCSboujF4?t=',
    startSeconds: 216,
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
    videoId: 'https://youtu.be/AwhBTrzzqeg?t=',
    startSeconds: 465,
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
    videoId: 'https://youtu.be/dqcSk-EDrRo?t=',
    startSeconds: 510,
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