import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydream extends StatefulWidget {
  const EnglishEntrydream({super.key});

  @override
  State<EnglishEntrydream> createState() => _EnglishEntrydreamState();
}

class _EnglishEntrydreamState extends State<EnglishEntrydream> {
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
  final String keyword = "dream";
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
    return const EntryTitle(word: "dream");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dream");
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
    return const IPAofEnglish(text: "IpaUK: /driːm/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdream(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dream"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdream("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /driːm/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdream(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dream"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdream("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdreams1(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I had a really weird dream last night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams2(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I thought someone came into the bedroom, but it was just a dream."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams3(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't think about it. You'll only give yourself bad dreams."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams4(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had a dream that we were getting married at the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams5(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His dead mother appeared to him in a dream."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams6(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her lifelong dream was to be a famous writer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams7(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He wanted to be rich but it was an impossible dream."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams8(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If I win, it will be a dream come true."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams9(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was the end of all my hopes and dreams."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams10(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The chance to study in Australia had always been a dream for her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams11(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He left his job to pursue his dream of opening a restaurant."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams12(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She walked around in a dream all day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams13(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As if slowly emerging from a dream, she raised her head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams14(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("That meal was an absolute dream."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams15(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Did I talk in my sleep? I must have been dreaming."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams16(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I dreamed about you last night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams17(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I keep dreaming of my old school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams18(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Did it really happen or did I just dream it?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams19(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was the kind of trip most of us only dream about."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams20(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She dreams of running her own business."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams21(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I wouldn't dream of going without you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdreams22(String languageCode) async {
    // DOPSUM: CHANGE speakdream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I never dreamt (that) I’d actually get the job."); // DOPSUM: CHANGE TEXT
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
کوردی: خەون، خەو،	ئاوات، هیوا، خەیاڵ، خەون‌وخەیاڵ
"""),
          const DefinitionKurdish(text: "١. (ناو) خەوبینین لەکاتی خەودا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I had a really weird dream last night."),
                    ExampleSentenceKurdish(
                        text: "شەوی ڕابردوو خەونێکی نامۆم بینی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dream", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams1("en-US"),
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
                            "I thought someone came into the bedroom, but it was just a dream."),
                    ExampleSentenceKurdish(
                        text:
                            "وام بیرکردەوە کەسێک هاتە ژووری خەوەکەم، بەڵام تەنها خەونێک بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams2("en-US"),
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
                            "Don't think about it. You'll only give yourself bad dreams."),
                    ExampleSentenceKurdish(
                        text:
                            "بیری لێ مەکەرەوە، تەنها خەونی خراپ بە خۆت دەدەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams3("en-US"),
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
                            "I had a dream that we were getting married at the airport."),
                    ExampleSentenceKurdish(
                        text:
                            "خەونی ئەوەم دی کە لە فڕۆکەخانەکە هاوسەرگیریمان دەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams4("en-US"),
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
                        text: "His dead mother appeared to him in a dream."),
                    ExampleSentenceKurdish(
                        text: "دایکە کۆچکردووەکەی هاتە لای لە خەونێکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) هیوا و ئاواتێک کە هەتە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her lifelong dream was to be a famous writer."),
                    ExampleSentenceKurdish(
                        text: "خەونی لەمێژینەی ئەوە بوو ببێت بە نووسەر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams6("en-US"),
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
                            "He wanted to be rich but it was an impossible dream."),
                    ExampleSentenceKurdish(
                        text: "دەیویست دەوڵەمەند بێت بەڵام ئەستەم بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams7("en-US"),
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
                                    "If I win, it will be a dream come true."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەگەر ببەمەوە، بەدیهاتنی ئاواتێک دەبێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdreams8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdreams8("en-US"),
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
                                    "It was the end of all my hopes and dreams."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەوە کۆتایی هەموو هیوا و خەونەکانم بوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdreams9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdreams9("en-US"),
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
                                    "The chance to study in Australia had always been a dream for her."),
                            ExampleSentenceKurdish(
                                text:
                                    "شانسی خوێندن لە ئوسترالیا هەمیشە خەونێکی بووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdreams10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdreams10("en-US"),
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
                                    "He left his job to pursue his dream of opening a restaurant."),
                            ExampleSentenceKurdish(
                                text:
                                    "کارەکەی جێهێشت بۆ بەدیهێنانی خەونی کردنەوەی چێشتخانەیەک."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdreams11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdreams11("en-US"),
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
              text:
                  "٣. (ناو) دۆخێک کە تێیدا شتەکان ڕاستی نین یان بەشێک نین لە ژیانی ئاسایی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She walked around in a dream all day."),
                    ExampleSentenceKurdish(
                        text: "تەواوی ڕۆژەکە بە خەیاڵەوە بە ڕێگادا دەچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams12("en-US"),
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
                            "As if slowly emerging from a dream, she raised her head."),
                    ExampleSentenceKurdish(
                        text:
                            "وەک ئەوەی بەهێواشی لە خەیاڵ دەربچێت، سەری بەرزکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) کەسێک یان شتێکی جوان"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "That meal was an absolute dream."),
                    ExampleSentenceKurdish(text: "چێشتەکە تەواو ناوازە بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) خەوبینین"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Did I talk in my sleep? I must have been dreaming."),
                    ExampleSentenceKurdish(
                        text: "لە خەوەکەمدا قسەم کرد؟ دەبێت خەونم بینیبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams15("en-US"),
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
                        text: "I dreamed about you last night."),
                    ExampleSentenceKurdish(
                        text: "دوێنێ شەو خەونم پێتەوە بینی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams16("en-US"),
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
                        text: "I keep dreaming of my old school."),
                    ExampleSentenceKurdish(
                        text: "بەردەوا، خەون بە قوتابخانە کۆنەکەمەوە دەبینم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams17("en-US"),
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
                        text: "Did it really happen or did I just dream it?"),
                    ExampleSentenceKurdish(
                        text: "بەڕاستی ڕوویدا یان تەنها خەونم پێوە بینی؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) خەیاڵکردن بەو شتانەی کە دەتەوێت ڕووبدەن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It was the kind of trip most of us only dream about."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەو جۆرە گەشتانە بوو کە زۆرینەمان تەنها خەونی پێوە دەبینین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams19("en-US"),
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
                        text: "She dreams of running her own business."),
                    ExampleSentenceKurdish(
                        text: "خەون بە بەڕێوەبردنی بازرگانیی خۆیەوە دەبینێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams20("en-US"),
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
                            "I wouldn't dream of going without you (= I would never go without you)."),
                    ExampleSentenceKurdish(
                        text: "خەیاڵی ئەوە ناکەم بەبێ تۆ بچم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams21("en-US"),
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
                            "I never dreamt (that) I’d actually get the job."),
                    ExampleSentenceKurdish(
                        text:
                            "هەرگیز خەونم بەوەوە نەبینی کە بەڕاستی ئەو کارە وەردەگرم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdreams22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdreams22("en-US"),
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
- Noun: dream (Derived forms: dreams)
1. A series of mental images and emotions occurring during sleep (= dreaming)
"I had a dream about you last night";
 
2. Imaginative thoughts indulged in while awake (= dreaming)
"he lives in a dream that has nothing to do with reality";
 
3. A cherished desire (= ambition, aspiration)
"his dream is to own his own business";
 
4. A fantastic but vain hope (from fantasies induced by the opium pipe) (= pipe dream)
"I have this pipe dream about being emperor of the universe";
 
5. A state of mind characterized by abstraction and release from reality
"he went about his work as if in a dream"
 
6. Someone or something wonderful
"this dessert is a dream"

- Verb: dream (Derived forms: dreamt, dreams, dreaming)
1. Have a daydream; indulge in a fantasy (= daydream, woolgather, stargaze)
 
2. Experience while sleeping
"She claims to never dream"; "He dreamt a strange scene"
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
    videoId: 'https://youtu.be/CZJvBfoHDk0?t=',
    startSeconds: 21,
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
    videoId: 'https://youtu.be/e09xig209cQ?t=',
    startSeconds: 756,
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
    videoId: 'https://youtu.be/qWAagS_MANg?t=',
    startSeconds: 647,
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
    videoId: 'https://youtu.be/hTqtGJwsJVE?t=',
    startSeconds: 1512,
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
    videoId: 'https://youtu.be/dfuPBC-v5NE?t=',
    startSeconds: 1020,
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
    videoId: 'https://youtu.be/GNf1MAMK6ak?t=',
    startSeconds: 99,
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
    videoId: 'https://youtu.be/hYE5Lipyh_Q?t=',
    startSeconds: 227,
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