import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagainst extends StatefulWidget {
  const EnglishEntryagainst({super.key});

  @override
  State<EnglishEntryagainst> createState() => _EnglishEntryagainstState();
}

class _EnglishEntryagainstState extends State<EnglishEntryagainst> {
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
- Preposition: against 
1. Opposed to
"I'm against commercialization of space"
 
2. Playing in opposition to (= versus)
"Manchester against Liverpool should be a good match";
 
3. In contact with
"leaning against the door"
 
4. In a direction opposite to
"swimming against the tide"
 
5. In contrast to
"look dark against the window"
""",
  );
// 188888880002200

  final String keyword = "against";
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
    await flutterTts.speak("""against""");
  }

  Future<void> speakaga937884(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That's against the law.");
  }

  Future<void> speakagain2566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was forced to marry against her will.");
  }

  Future<void> speakagain156(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The evidence is against him.");
  }

  Future<void> speakaga156338(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Put the piano there, against the wall.");
  }

  Future<void> speakaga98274(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They took precautions against fire.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '86SDpAhBsSc';
    const double startSecondsend = 3;
    const String videoIdone = 'bITz9yQPjy8';
    const double startSecondsone = 129;
    const String videoIdtwo = 'ws0Ela-kdTs';
    const double startSecondstwo = 102;
    const String videoIdthree = 'DRn71PvaX_w';
    const double startSecondsthree = 112;
    const String videoIdfour = 'y4ppy3dVz8c';
    const double startSecondsfour = 551;
    const String videoIdfive = 'OEiwoY_6ll8';
    const double startSecondsfive = 65;
    // final String _videoId6 = 'mFOlpEE-QYk';
    // final double _startSeconds6 = 4;
    // final String _videoId = '37lqCgW1h9o';
    // final double _startSeconds = 200;
    // final String _videoId = 'sv0dQfRRrEQ';
    // final double _startSeconds = 251;
    // final String _videoId = 'dBhjtI3UexU';
    // final double _startSeconds = 70;

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
                      word: """against""",
                      // alsoEnglishWord: "also: against",
                      britshText: """IpaUK: /əˈɡenst/, /əˈɡeɪnst/""",
                      americanText: """IpaUS: /əˈɡenst/, /əˈɡeɪnst/""",
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
کوردی: دژی، بە دژی، بەرانبەر، بەرامبەر، ھەڤبەر، لە بەرامبەر، پێچەوانە، بە زیانی، بە زەرەری، بەرەوڕووی، بەرامبەری، ڕووبەرووی، لەسەر، بە، لەگەڵ
"""),
                    const DefinitionKurdish(text: "١. (ئامراز) دژ بە شتێک" ""),
                    SentencesRow(
                      englishText: "That's against the law.",
                      kurdishText: "ئەوە دژ بە یاسایە.",
                      onPressedBritish: () => speakaga937884("en-GB"),
                      onPressedAmerican: () => speakaga937884("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "She was forced to marry against her will.",
                      kurdishText: "دژ بە ویستی خۆی ناچار بە ھاوسەرگیری کرا.",
                      onPressedBritish: () => speakagain2566("en-GB"),
                      onPressedAmerican: () => speakagain2566("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) شتێک کە لە بەرژەوەندیت نییە"""),
                    SentencesRow(
                      englishText: "The evidence is against him.",
                      kurdishText: "بەڵگەکان لە دژین.",
                      onPressedBritish: () => speakagain156("en-GB"),
                      onPressedAmerican: () => speakagain156("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) لە نزیک یان پاڵ شتێک"""),
                    SentencesRow(
                      englishText: "Put the piano there, against the wall.",
                      kurdishText: "پیانۆکە بخە ئەوێ، لەلای دیوارەکە.",
                      onPressedBritish: () => speakaga156338("en-GB"),
                      onPressedAmerican: () => speakaga156338("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ئامراز) ڕێگەدان لە ڕوودانی شتێک یان کەمکردنەوەی زیانەکانی"""),
                    SentencesRow(
                      englishText: "They took precautions against fire.",
                      kurdishText: "ڕێکاریان دژ بە ئاگرەکە گرتەبەر.",
                      onPressedBritish: () => speakaga98274("en-GB"),
                      onPressedAmerican: () => speakaga98274("en-US"),
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

