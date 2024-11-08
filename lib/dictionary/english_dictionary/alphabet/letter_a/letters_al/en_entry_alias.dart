import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalias extends StatefulWidget {
  const EnglishEntryalias({super.key});

  @override
  State<EnglishEntryalias> createState() => _EnglishEntryaliasState();
}

class _EnglishEntryaliasState extends State<EnglishEntryalias> {
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
- Noun: alias (derived forms: aliases)
1. A name that has been assumed (= assumed name, false name)

- Adverb: alias 
1. As known or named at another time or place (= a.k.a., also known as)
"Mr. Smith, alias Mr. Lafayette";

- Verb: alias (derived forms: aliased, aliasing, aliases)
1. [technical] Have a signal at frequency appear as a different frequency due to inadequate sampling
 
2. (computing) give an additional equivalent name to an entity, for example one that's more user-friendly
""",
  );
// 188888880002200

  final String keyword = "alias";
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
    await flutterTts.speak("""alias""");
  }

  Future<void> speakalias53444(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He travels under an alias.");
  }

  Future<void> speakalias4556(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Paul Kennedy, alias Rupert Sharp, went to prison today.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '5HHdk_GP-Ew';
    const double startSecondsend = 126;
    const String videoIdone = 'oQt-0qysykQ';
    const double startSecondsone = 1;
    const String videoIdtwo = '1eYZnCx-02g';
    const double startSecondstwo = 725;
    const String videoIdthree = 'AwhBTrzzqeg';
    const double startSecondsthree = 157;
    const String videoIdfour = 'KZbzIf_C6Y4';
    const double startSecondsfour = 430;
    const String videoIdfive = 'VFHiKAfPpGk';
    const double startSecondsfive = 1382;
    // final String _videoId = 'AvQkGo2wAUo';
    // final double _startSeconds = 313;
    // final String _videoId = 'Z0qwi6UkKtQ';
    // final double _startSeconds = 324;
    // final String _videoId = 'vchJnrZgz-4';
    // final double _startSeconds = 1153;
    // final String _videoId = 'Ws_YyegWGKY';
    // final double _startSeconds = 367;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """alias""",
                      // alsoEnglishWord: "also: alias",
                      britshText: """IpaUK: /ˈælɡərɪðəm/""",
                      americanText: """IpaUS: /ˈælɡərɪðəm/""",
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
                    const KurdishVocabulary(text: """
کوردی: قەرزەنێو، ناوی خواستەمەنی، ناوی خواستراو، زڕەناو، ناوی تر، ناسراو بە، نازناو، ناوی خوازیار، خوازناو
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) ناوێکی تر کە ناوی ڕاستی کەسێک نییە"
                            ""),
                    SentencesRow(
                      englishText: "He travels under (= using) an alias.",
                      kurdishText: "لەژێر نازناوێکدا گەشت دەکات.",
                      onPressedBritish: () => speakalias53444("en-GB"),
                      onPressedAmerican: () => speakalias53444("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) لەپێش دەربڕینی ناوێکی خوازراو بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          "Paul Kennedy, alias (= also known as) Rupert Sharp, went to prison today.",
                      kurdishText:
                          "پاوڵ کەنەدی کە ھەروەھا ناسراوە بە ڕوپرت شارپ ئەمڕۆ چوو بپ زیندان.",
                      onPressedBritish: () => speakalias4556("en-GB"),
                      onPressedAmerican: () => speakalias4556("en-US"),
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

// end WORD_WEB

