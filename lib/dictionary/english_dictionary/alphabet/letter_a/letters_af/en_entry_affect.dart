import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffect extends StatefulWidget {
  const EnglishEntryaffect({super.key});

  @override
  State<EnglishEntryaffect> createState() => _EnglishEntryaffectState();
}

class _EnglishEntryaffectState extends State<EnglishEntryaffect> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: affect (derived forms: affecting, affected, affects)
1. Have an effect upon (= impact, bear upon, bear on, touch on, touch)
"Will the new rules affect me?";
 
2. Act physically on; have an effect upon
"the medicine affects my heart rate"
 
3. Connect closely and often incriminatingly (= involve, regard)
"This new ruling affects your business";
 
4. Make believe with the intent to deceive (= feign, sham, pretend, dissemble)
"He affected that he was ill";

5. Have an emotional or cognitive impact upon (= impress, move, strike)
"This child affected me as unusually mature";

- Noun: affect ((derived forms: affects))
The conscious subjective aspect of feeling or emotion
""",
  );
// 188888880002200

  final String keyword = "affect";
  List<Map<String, dynamic>> filteredSentences = [];

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

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""affect""");
  }

  Future<void> speakaffe5699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The article deals with issues affecting the lives of children.");
  }

  Future<void> speakaffe741(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your opinion will not affect my decision.");
  }

  Future<void> speakaffe25699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The disease is more likely to affect women than men.");
  }

  Future<void> speakaff2566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They were deeply affected by the news of her death.");
  }

  @override
  Widget build(BuildContext context) {
    
    const String videoIdend = '4kzGtLkRW_g';
    const double startSecondsend = 1;
    const String videoIdone = 'OHdV9aO6jaE';
    const double startSecondsone = 112;
    const String videoIdtwo = 'omsGQUTM2fo';
    const double startSecondstwo = 884;
    const String videoIdthree = '3oeB4goJaM8';
    const double startSecondsthree = 167;
    const String videoIdfour = 'n_QVtF9Bdw4';
    const double startSecondsfour = 239;
    const String videoIdfive = 'hdb83uN6AUg';
    const double startSecondsfive = 12;
    // const String videoId = 'OF000Jm-U9c';
    // const double startSeconds = 44;
    // const String videoId = 'XRIEz_YjVIc';
    // const double startSeconds = 18;
    // const String videoId = '2W-KUSb3DTM';
    // const double startSeconds = 298;
    // const String videoId = 'byLbEzE9yHI';
    // const double startSeconds = 156;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """affect""",
                      // alsoEnglishWord: "also: affect",
                      britshText: """IpaUK: /əˈfekt/""",
                      americanText: """IpaUS: /əˈfekt/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EnglishButtonTTS(
                      onBritishPressed: (languageCode) =>
                          startSpeaking(languageCode, englishMeaningConst),
                      onAmericanPressed: (languageCode) =>
                          startSpeaking(languageCode, englishMeaningConst),
                      onStopPressed: stopSpeaking,
                    ),
                    englishMeaningConst,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
const DefinitionKurdish(text: """
١. (کردار) کاریگەری درووستکردن"""),
                          SentencesRow(
                            englishText:
                                "The article deals with issues affecting the lives of children.",
                            kurdishText:
                                "وتارەکە مامەڵە لەگەڵ ئەو کێشانە دەکات کە کاریگەری لەسەر ژیانی منداڵان درووست دەکەن.",
                            onPressedBritish: () => speakaffe5699("en-GB"),
                            onPressedAmerican: () => speakaffe5699("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Your opinion will not affect my decision.",
                            kurdishText:
                                "بۆچوونت کاریگەری لەسەر بڕیارەکەم ناکات.",
                            onPressedBritish: () => speakaffe741("en-GB"),
                            onPressedAmerican: () => speakaffe741("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) نەخۆشییەک کە کاریگەری دەبێت لەسەر جەستە"""),
                          SentencesRow(
                            englishText:
                                "The disease is more likely to affect women than men.",
                            kurdishText:
                                "نەخۆشییەکە ئەگەری زیاترە تووشی ژنان بێت وەک لە پیاوان.",
                            onPressedBritish: () => speakaffe25699("en-GB"),
                            onPressedAmerican: () => speakaffe25699("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) وا لە کەسێک بکەیت ھەست بە دڵتەنگی بکات"""),
                          SentencesRow(
                            englishText:
                                "They were deeply affected by the news of her death.",
                            kurdishText: "زۆر ناڕەحەت بوون بە ھەواڵی مردنی.",
                            onPressedBritish: () => speakaff2566("en-GB"),
                            onPressedAmerican: () => speakaff2566("en-US"),
                          ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
