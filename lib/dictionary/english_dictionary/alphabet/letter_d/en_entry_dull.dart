import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydull extends StatefulWidget {
  const EnglishEntrydull({super.key});

  @override
  State<EnglishEntrydull> createState() => _EnglishEntrydullState();
}

class _EnglishEntrydullState extends State<EnglishEntrydull> {
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
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
  final String keyword = "dull";
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
                                      context,
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
                                        context,
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
    return const EntryTitle(word: "dull");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dull");
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
    return const IPAofEnglish(text: "IpaUK: /dʌl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdull(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dull");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdull("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /dʌl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdull(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dull");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdull("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdulls1(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Life in a small town could be deadly dull.");
  }

  Future<void> speakdulls2(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The first half of the game was pretty dull.");
  }

  Future<void> speakdulls3(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's never a dull moment when John's around.");
  }

  Future<void> speakdulls4(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is the author of several dull novels.");
  }

  Future<void> speakdulls5(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her eyes were dull.");
  }

  Future<void> speakdulls6(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fire died down to a dull glow.");
  }

  Future<void> speakdulls7(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was a dull, grey day.");
  }

  Future<void> speakdulls8(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I heard a dull thud from the kitchen and realized she must have fainted.");
  }

  Future<void> speakdulls9(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She felt a dull ache at the back of her head.");
  }

  Future<void> speakdulls10(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The teacher patiently explained to the dull pupil.");
  }

  Future<void> speakdulls11(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't sell into a dull market.");
  }

  Future<void> speakdulls12(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The tablets they gave him dulled the pain for a while.");
  }

  Future<void> speakdulls13(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The pain of loss never dulls.");
  }

  Future<void> speakdulls14(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The heat dulled my enjoyment of the journey.");
  }

  Future<void> speakdulls15(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He felt dulled and stupid with sleep.");
  }

  Future<void> speakdulls16(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His eyes dulled and he slumped to the ground.");
  }

  Future<void> speakdulls17(String languageCode) async {
    // DOPSUM: CHANGE speakdull
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The endless rain seemed to dull all sound.");
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
کوردی: مات، لێڵ، کەم‌ڕەنگ، تەڵخ، قورس، نابریقەدار،	(دەنگ) گیراو، نووساو، بۆڕ،	(ھەوا) ھەوری، ھەوروھەڵا،	(ژان) کەم، سووک،	(چەقۆ و ھتد) کول، نەبڕ، تەڤلار، نەتیژ، بێساو (بەتایبەت بۆ داس)،	گێژ، گێل، کول، گەمژە، زەین‌کوێر، دەبەنگ، درەنگ‌تێگەیشتوو، بێ‌دەم‌وپل، گەوجانە،	وەڕەزکەر، دیق‌پێ‌کەر، ماندووکەر، ناخۆش،	بێ‌بازاڕی، سست، بازاڕکەساس، نەشلوق، خاو،	بنە، بنژیل، بن‌بار، ئایەخ، بەشی نەفرۆشراو
"""),
          const DefinitionKurdish(
              text: """١. (ھاوەڵناو) شتێک کە ناخۆشە و چێژی لێ نابینێت"""),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """Life in a small town could be deadly dull."""),
                    ExampleSentenceKurdish(
                        text:
                            """ژیان لە شارۆچکەیەکی بچووکدا دەکرێت تەواو بێزارکەر بێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dull", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls1("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls1("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The first half of the game was pretty dull."""),
                    ExampleSentenceKurdish(
                        text: """یەکەم گێمی یارییەکە تەواو ناخۆش بوو."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls2("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls2("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """There's never a dull moment when John's around."""),
                    ExampleSentenceKurdish(
                        text: """ھەرگیز ساتێکی خەماوی نییە کە جۆن لێرەیە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls3("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls3("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """He is the author of several dull novels."""),
                    ExampleSentenceKurdish(
                        text: """نووسەری ژمارەیەک ڕۆمانی خەمبارێنە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls4("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls4("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ھاوەڵناو) کە ڕۆشن و درەوشاوە نییە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: """Her eyes were dull."""),
                    ExampleSentenceKurdish(text: """چاوەکانی تەڵخ بوون."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls5("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls5("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """The fire died down to a dull glow."""),
                    ExampleSentenceKurdish(
                        text: """ئاگرەکە کزبوویەوە بۆ ڕۆشنایەکی کز."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls6("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls6("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ھاوەڵناو) بە ھەورێکی زۆرەوە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """It was a dull, grey day."""),
                    ExampleSentenceKurdish(
                        text: """ڕۆژێکی لێڵی ھەوراوی بوو."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls7("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls7("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ھاوەڵناو) دەنگێک کە ڕوون یان بەرز نییە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """I heard a dull thud from the kitchen and realized she must have fainted."""),
                    ExampleSentenceKurdish(
                        text:
                            """گوێم لە تەپەیەکی نزم بوو لە چێشتخانەکە و زانیم کە دەبێت لەھۆش خۆی چووبێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls8("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls8("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ھاوەڵناو) ئازارێک کە توند نییە بەڵام بەردەوامە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """She felt a dull ache at the back of her head."""),
                    ExampleSentenceKurdish(
                        text:
                            """ھەستی بە ژانێکی سووک لە پشتەوەی سەری دەکرد."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls9("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls9("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ھاوەڵناو) کەسێک کە درەنگ لە شت تێدەگات"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The teacher patiently explained to the dull pupil."""),
                    ExampleSentenceKurdish(
                        text:
                            """مامۆستاکە پشوودرێژانە بۆ خوێندکارە گەمژەکەی ڕوونکردەوە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls10("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls10("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٧. (ھاوەڵناو) بازاڕێکی ھێواش"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """Don't sell into a dull market."""),
                    ExampleSentenceKurdish(
                        text: """بە بازاڕێکی مردوو مەفرۆشە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls11("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls11("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (کردار) لاوازکردنی ھەستێک یان ئازارێک"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The tablets they gave him dulled the pain for a while."""),
                    ExampleSentenceKurdish(
                        text:
                            """ئەو حەبانەی پێیاندا بۆ کەمێک ئازارەکەیان سووککرد."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls12("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls12("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """The pain of loss never dulls."""),
                    ExampleSentenceKurdish(
                        text: """ئازاری لەدەستدان ھەرگیز سووک نابێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls13("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls13("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The heat dulled my enjoyment of the journey."""),
                    ExampleSentenceKurdish(
                        text: """گەرماکە چێژبینینمی لە گەشتەکە کەمکرد."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls14("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls14("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (کردار) خاوکردنەوە یان بێزارکردنی کەسێک"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """He felt dulled and stupid with sleep."""),
                    ExampleSentenceKurdish(
                        text: """ھەستی بە سستی و گێژی دەکرد لە خەودا."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls15("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls15("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٠. (کردار) وابکەیت کە شتێک کەمتر ڕۆشن، پاک، یان تیژ بێت"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """His eyes dulled and he slumped to the ground."""),
                    ExampleSentenceKurdish(
                        text: """چاوەکانی تەڵخ بوون و کێشای بە زەوییەکەدا."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls16("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls16("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """The endless rain seemed to dull all sound."""),
                    ExampleSentenceKurdish(
                        text:
                            """بارانە بێ کۆتاکە وادیاربوو کە ھەموو دەنگێک کپ بکاتەوە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdulls17("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdulls17("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // dulls1800
          // speakdulls18
          // dulls18("en-US"""),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // dulls1900
          // speakdulls19
          // dulls19("en-US"""),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // dulls_2000
          // speakdulls20
          // dulls20("en-US"""),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // dulls2100
          // speakdulls21
          // dulls21("en-US"""),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // dulls2200
          // speakdulls22
          // dulls22("en-US"""),
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
- Adjective: dull (derived forms: dullest, duller)
1. Lacking in liveliness or animation (= hebetudinous [rare])
"he was so dull at parties"; "a dull political campaign"; "a large dull impassive man"; "dull days with nothing to do"; "how dull and dreary the world is"; "fell back into one of her dull moods";
 
2. Emitting or reflecting very little light
"a dull glow"; "dull silver badly in need of a polish"; "a dull sky"
 
3. Not keenly felt
"a dull throbbing"; "dull pain"
 
4. Not having a sharp edge or point
"the knife was too dull to be of any use"
 
5. Being or made softer or less loud or clear (= muffled, muted, softened)
"the dull boom of distant breaking waves";
 
6. So lacking in interest as to cause mental weariness (= boring, deadening, ho-hum [informal], irksome, slow, tedious, tiresome, wearisome, unamusing, deadly [informal], draggy [informal], mind-numbing)
"a dull play"; "his competent but dull performance";
 
7. (of colour) very low in saturation; highly diluted
"dull greens and blues"
 
8. Taking more than usual time to learn or understand; lacking intellectual acuity (= dense, dim [informal], dumb, obtuse, slow)
"although dull at classical learning, at mathematics he was uncommonly quick";
 
9. (of business) not active or brisk (= slow, sluggish)
"business is dull";
 
10. Blunted in responsiveness or sensibility
"a dull gaze"; "so exhausted she was dull to what went on about her"
 
11. Not clear and resonant; sounding as if striking with or against something relatively soft (= thudding)
"the dull thud";
 
12. Darkened with overcast (= leaden)
"a dull sky";

- Verb: dull (derived forms: dulling, dulls, dulled)
1. Make dull in appearance
"Age had dulled the surface"
 
2. Become dull or lusterless in appearance; lose shine or brightness
"the varnished table top dulled with time"
 
3. Deaden (a sound or noise), especially by wrapping (= muffle, mute, damp, dampen, tone down)
 
4. Make numb or insensitive (= numb, benumb, blunt)
"The shock dulled her senses";
 
5. Make dull or blunt (= blunt)
"Too much cutting dulls the knife's edge";
 
6. Become less interesting or attractive (= pall)
 
7. Make less lively or vigorous
"Middle age dulled her appetite for travel"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'q9RMyg80KfU';
  final double _startSeconds = 396;

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

  final String _videoId = 'HxRUuGqqMG4';
  final double _startSeconds = 1133;

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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'TRGHIN2PGIA';
  final double _startSeconds = 446;

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

  final String _videoId = 'MzSktgpfD84';
  final double _startSeconds = 200;

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

  final String _videoId = '0ssySdK98zk';
  final double _startSeconds = 113;

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

  final String _videoId = 'Rk9rfi4wYE4';
  final double _startSeconds = 0;

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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'EbFjP0Ajti8';
  final double _startSeconds = 35;

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