import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryemploy extends StatefulWidget {
  const EnglishEntryemploy({super.key});

  @override
  State<EnglishEntryemploy> createState() => _EnglishEntryemployState();
}

class _EnglishEntryemployState extends State<EnglishEntryemploy> {
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
  final String keyword = "employ";
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
    return const EntryTitle(word: "employ");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: employ");
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
    return const IPAofEnglish(text: "IpaUK: /ɪmˈplɔɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemploy(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("employ");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakemploy("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ɪmˈplɔɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemploy(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("employ");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakemploy("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemploys1(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How many people does the company employ?");
  }

  Future<void> speakemploys2(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His company currently employs 135 workers in total.");
  }

  Future<void> speakemploys3(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For the past three years he has been employed as a firefighter.");
  }

  Future<void> speakemploys4(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Twenty eight per cent of the workforce is employed in agriculture.");
  }

  Future<void> speakemploys5(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He criticized the repressive methods employed by the country's government.");
  }

  Future<void> speakemploys6(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The police had to employ force to enter the building.");
  }

  Future<void> speakemploys7(String languageCode) async {
    // DOPSUM: CHANGE speakemploy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This phrase is routinely employed to describe the president's style of government.");
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
کوردی: دامەزران، کارکردن، کار، خزمەت، ڕاژە
"""),
          const DefinitionKurdish(
              text:
                  """١. (کردار) پێدانی کارێک بە کەسێک لە بەرامبەر مووچەیەک"""),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """How many people does the company employ?"""),
                    ExampleSentenceKurdish(
                        text: """کۆمپانیاکە چەند کەسی گرتووە؟"""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "employ", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys1("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys1("en-US" ""),
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
                            """His company currently employs 135 workers in total."""),
                    ExampleSentenceKurdish(
                        text:
                            """کۆمپانیاکەی لە ئێستادا بە گشطی ١٣٥ کرێکاری هەیە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys2("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys2("en-US" ""),
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
                            """For the past three years he has been employed as a firefighter."""),
                    ExampleSentenceKurdish(
                        text:
                            """بۆ سێ ساڵی ڕابردوو وەک ئاگرکوژێنەرەوەیەک گیردراوە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys3("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys3("en-US" ""),
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
                            """Twenty eight per cent of the workforce is employed in agriculture."""),
                    ExampleSentenceKurdish(
                        text:
                            """٢٨ لە سەدی دەستی کار لە کشتووکاڵ کاریان هەیە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys4("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys4("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (کردار) بەکارهێنانی شتێک بۆ مەبەستێکی دیاریکراو"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """He criticized the repressive methods employed by the country's government."""),
                    ExampleSentenceKurdish(
                        text:
                            """سەرکۆنەی ڕێگا سەرکوتکەرەکانی کرد کە لەلایەن حکومەتی وڵاتەکەوە بەکارهات."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys5("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys5("en-US" ""),
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
                            """The police had to employ force to enter the building."""),
                    ExampleSentenceKurdish(
                        text:
                            """پۆلیس پێویست بوو هێز بەکارببات بۆ چوونە ناو بیناکەوە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys6("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys6("en-US" ""),
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
                            """This phrase is routinely employed to describe the president's style of government."""),
                    ExampleSentenceKurdish(
                        text:
                            """ئەم دەستەواژە زۆرجار بەکاردەهێندرێت بۆ باسکردنی شێوازی بەڕێوەبردنی سەرۆک."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakemploys7("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakemploys7("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs800employs8
          // speakemploys8("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs900employs9
          // speakemploys9("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs_1000employs10
          // speakemploys10("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1100employs11
          // speakemploys11("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1200employs12
          // speakemploys12("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1300employs13
          // speakemploys13("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1400employs14
          // speakemploys14("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1500employs15
          // speakemploys15("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1600employs16
          // speakemploys16("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1700employs17
          // speakemploys17("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1800employs18
          // speakemploys18("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs1900employs19
          // speakemploys19("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs_2000employs20
          // speakemploys20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs2100employs21
          // speakemploys21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // employs2200employs22
          // speakemploys22("en-US"""),
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
- Verb: employ (Derived forms: employed, employs, employing)
1. Put into service; make work for a particular purpose or use as designed (= use, utilize, utilise [Brit], apply)
"employ your head!";
 
2. Start in a job or pay to do a particular piece of work (= hire, engage)
"How many people has she employed?";

- Noun: employ (Derived forms: employs)
1. The state of being employed or having a job (= employment)
"he was in the employ of the city";
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
  final String _videoId = 'hapSlAP2xrc';
  final double _startSeconds = 44;

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
  final String _videoId = 'YGcWcsajSDQ';
  final double _startSeconds = 43;

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
  final String _videoId = 'Y_N0AxCzVLg';
  final double _startSeconds = 217;

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
  final String _videoId = 'HAnw168huqA';
  final double _startSeconds = 3214;

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
  final String _videoId = 'Fr-qagv7ig0';
  final double _startSeconds = 1543;

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
  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 393;

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
  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 1238;

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