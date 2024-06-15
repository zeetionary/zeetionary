import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryeasy extends StatefulWidget {
  const EnglishEntryeasy({super.key});

  @override
  State<EnglishEntryeasy> createState() => _EnglishEntryeasyState();
}

class _EnglishEntryeasyState extends State<EnglishEntryeasy> {
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
  final String keyword = "easy";
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
    return const EntryTitle(word: "easy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: easy");
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
    return const IPAofEnglish(text: "IpaUK: /ˈiːzi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasy(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("easy"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeasy("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ˈiːzi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasy(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("easy"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeasy("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasys1(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Reaching the summit is no easy task."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys2(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's much easier if you speak the language."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys3(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's easy to forget how we lived before the internet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys4(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The tool is quick and easy to use."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys5(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their house isn't the easiest place to get to."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys6(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are no easy answers in cases like this."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys7(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doing all that while injured isn't exactly easy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys8(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plant is relatively easy to identify."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys9(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has not had an easy life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys10(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Things are getting easier for us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys11(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't feel easy about letting the kids go out alone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys12(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I've had a very easy day at work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys13(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll agree to anything for an easy life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys14(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I felt a bit easier after that."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys15(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's an easy target for their criticisms."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys16(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The baby fish are easy prey for birds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys17(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had an easy manner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys18(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Easy with that chair—one of its legs is loose."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys19(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Easy, girl—you'll knock me over!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys20(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakeasys_2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys21(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakeasys2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakeasys22(String languageCode) async {
    // DOPSUM: CHANGE speakeasy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakeasys2200"); // DOPSUM: CHANGE TEXT
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
کوردی: ئاسان، سانا، ساکار، بێ‌زەحمەت، خۆش، بێ‌ئەرک،	ئاسوودە، تەناهـ، بێ‌دەردی‌سەر، بێ‌گێرەوکێشە، نانیگەران، خەیاڵ‌تەخت، بێ‌خەیاڵ، بێ‌خەم، لە ئاسایش‌دا،	مفتە،	(هەڵس‌وکەوت و هتد) خۆمانە، سادە،	نەرم، نەرم‌ونیان (خوو و خدە)
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) ئاسان"""),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """Reaching the summit is no easy task."""),
                    ExampleSentenceKurdish(
                        text: """گەشتن بە لوتکەکە ئەرکێکی ئاسان نییە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "easy", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys1("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys1("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
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
                                    """It's much easier if you speak the language."""),
                            ExampleSentenceKurdish(
                                text:
                                    """زۆر ئاسانتر دەبێت کە قسە بە زمانەکە بکەیت."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys2("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys2("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """It's easy to forget how we lived before the internet."""),
                            ExampleSentenceKurdish(
                                text:
                                    """ئاسانە بیرمان بچێت چۆن پێش ئینتەرنێت دەژیاین."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys3("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys3("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: """The tool is quick and easy to use."""),
                            ExampleSentenceKurdish(
                                text:
                                    """ئامرازەکە خێرا و ئاسانە بۆ بەکارهێنان."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys4("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys4("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """Their house isn't the easiest place to get to."""),
                            ExampleSentenceKurdish(
                                text:
                                    """خانووەکەیان ئاسانترین جێگا نییە کە پێی بگەیت."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys5("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys5("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """There are no easy answers in cases like this."""),
                            ExampleSentenceKurdish(
                                text:
                                    """هیچ وەڵامێکی ئاسان نییە لە دۆخێکی وەهادا."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys6("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys6("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """Doing all that while injured isn't exactly easy."""),
                            ExampleSentenceKurdish(
                                text:
                                    """کردنی هەموو ئەوە لە کاتی برینداریدا تەواو ئاسان نییە."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys7("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys7("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """The plant is relatively easy to identify."""),
                            ExampleSentenceKurdish(
                                text:
                                    """ڕووەکەکە ئاڕادەیەک ئاسانە بناسرێتەوە."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys8("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys8("en-US" ""),
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
              text: """٢. (ھاوەڵناو) ئاسوودە، حەساوە، و بێ‌خەم"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """He has not had an easy life."""),
                    ExampleSentenceKurdish(text: """ژیانێکی ئاسانی نەبووە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys9("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys9("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
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
                                text: """Things are getting easier for us."""),
                            ExampleSentenceKurdish(
                                text: """شتەکان بۆمان ئاسانتر دەبن."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys10("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys10("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """I don't feel easy about letting the kids go out alone."""),
                            ExampleSentenceKurdish(
                                text:
                                    """هەست بە ئاسوودەیی ناکەم ڕێگا بدەم منداڵەکان بە تەنها بچنە دەرەوە."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys11("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys11("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: """I've had a very easy day at work."""),
                            ExampleSentenceKurdish(
                                text: """ڕۆژێکی ئاسانم هەبوو لە کار."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys12("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys12("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    """I'll agree to anything for an easy life."""),
                            ExampleSentenceKurdish(
                                text:
                                    """ڕازیم بە هەر شتێک بۆ ژیانێکی ئاسان."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys13("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys13("en-US" ""),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: """I felt a bit easier after that."""),
                            ExampleSentenceKurdish(
                                text:
                                    """کەمێک هەستم بە ئاسوودەیی کرد لە دوای ئەوە."""),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakeasys14("en-GB" ""),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakeasys14("en-US" ""),
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
              text: """٣. (ھاوەڵناو) کە ناتوانیت بەرگری لە خۆت بکەیت"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """She's an easy target for their criticisms."""),
                    ExampleSentenceKurdish(
                        text: """ئامانجێکی ئاسانە بۆ ڕەخنەکانیان."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys15("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys15("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """The baby fish are easy prey for birds."""),
                    ExampleSentenceKurdish(
                        text: """ماسییە گچکەکان نێچیری ئاسانن بۆ باڵندەکان."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys16("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys16("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (ھاوەڵناو) خۆش و هاوڕێیانە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: """He had an easy manner."""),
                    ExampleSentenceKurdish(
                        text: """هەڵسوکەوتی هاوڕێیانەی هەبووە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys17("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys17("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ھاوەڵکار) بۆ گوتن بە کەسێک کە وریا بێت لەکاتی کردنی شتێک"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """Easy with that chair—one of its legs is loose."""),
                    ExampleSentenceKurdish(
                        text:
                            """ئاگاداری ئەو کورسییە بە ـ یەکێک لە لاقەکانی شلە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys18("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys18("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """Easy, girl—you'll knock me over!"""),
                    ExampleSentenceKurdish(
                        text: """بەئاگا بە، کچێ ـ دەمکەوێنیت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakeasys19("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakeasys19("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakeasys_2000"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakeasys20("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakeasys20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakeasys2100"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakeasys21("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakeasys21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakeasys2200"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakeasys22("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakeasys22("en-US"""),
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
- Adjective: easy (Derived forms: easiest, easier)
1. Posing no difficulty; requiring little effort
"an easy job"; "an easy problem"; "an easy victory"; "the house is easy to heat"; "satisfied with easy answers"; "took the easy way out of his dilemma"
 
2. Free from worry or anxiety
"knowing that I had done my best, my mind was easy"; "an easy good-natured manner"
 
3. Not hurried or forced (= easygoing, leisurely, easy-going)
"an easy walk around the block";
 
4. Affording pleasure
"easy good looks"
 
5. Having little impact (= gentle, soft)
"an easy pat on the shoulder";
 
6. Readily exploited or tricked
"an easy victim"; "an easy mark"
 
7. In fortunate circumstances financially; moderately rich (= comfortable, prosperous, well-fixed, well-heeled, well-off, well-situated, well-to-do)
"easy living";
 
8. Marked by moderate steepness (= gentle)
"an easy climb";
 
9. Affording comfort
"soft light that was easy on the eyes"
 
10. Casual and unrestrained in sexual behaviour (= loose, promiscuous, sluttish [informal], wanton, tarty [informal], slutty [informal])
"her easy virtue";
 
11. (economics) less in demand and therefore readily obtainable
"commodities are easy this quarter"
 
12. (economics) obtained with little effort or sacrifice, often obtained illegally
"easy money"
 
13. Not strict (= lenient)
"an easy teacher"; "easy standards"; "an easy penalty";

- Adverb: easy 
1. With ease ('easy' is sometimes used informally for 'easily') (= easily)
"success came too easy";
 
2. With low speed (= slowly, slow, tardily)
"go easy here--the road is slippery";
 
3. In a relaxed manner; or without hardship (= soft)
"the judge went easy on the young defendant"; "just wanted to take it easy";
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
    videoId: 'https://youtu.be/DPZzrlFCD_I?t=',
    startSeconds: 46,
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
    videoId: 'https://youtu.be/lYu1ysDULwA?t=',
    startSeconds: 964,
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
    videoId: 'https://youtu.be/4itx6mXEJ6c?t=',
    startSeconds: 796,
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
    videoId: 'https://youtu.be/zmEv7vTOQGE?t=',
    startSeconds: 1198,
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
    videoId: 'https://youtu.be/G4BxOhJOmUw?t=',
    startSeconds: 428,
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
    videoId: 'https://youtu.be/1aHVa2jT3n4?t=',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/tsE1rMH18Tk?t=',
    startSeconds: 228,
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