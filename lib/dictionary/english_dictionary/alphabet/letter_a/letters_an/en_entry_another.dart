import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanother extends StatefulWidget {
  const EnglishEntryanother({super.key});

  @override
  State<EnglishEntryanother> createState() => _EnglishEntryanotherState();
}

class _EnglishEntryanotherState extends State<EnglishEntryanother> {
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
- Adjective: another 
1. Any of various alternatives; some other; entity, singular, other pronoun; quantifier, singular, another (some other)
"put it off to another day";
 
2. One more, in addition to a former
"have another drink"
""",
  );
// 188888880002200

  final String keyword = "another";
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
    await flutterTts.speak("""another""");
  }

  Future<void> speakanother935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Would you like another drink?");
  }

  Future<void> speakanother937(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm going to have another piece of cake.");
  }

  Future<void> speakanother938(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We can fit another person in my car.");
  }

  Future<void> speakanother940(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's do it another time.");
  }

  Future<void> speakanother942(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I don't like this room. I'm going to ask for another.");
  }

  Future<void> speakanother944(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There'll never be another like him.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JoNj0KDuDR8';
    const double startSecondsend = 225;
    const String videoIdone = 'OP7l1n_8Lh4';
    const double startSecondsone = 1;
    const String videoIdtwo = 'fVN35EoLtZw';
    const double startSecondstwo = 91;
    const String videoIdthree = 'MiTG1ride7s';
    const double startSecondsthree = 405;
    const String videoIdfour = 'P8lFcp4GjaI';
    const double startSecondsfour = 462;
    const String videoIdfive = 'KjuyvkCGZis';
    const double startSecondsfive = 599;
    // final String _videoId = 'Gc-B-a5FrvU';
    // final double _startSeconds = 153;
    // final String _videoId = 'Gx4HxgJMDHo';
    // final double _startSeconds = 483;
    // final String _videoId = 'Un75CN1X3h8';
    // final double _startSeconds = 1;
    // final String _videoId = 'd3DuOWARCCc';
    // final double _startSeconds = 74;
    // final String _videoId = 'D5SYrX41BtA';
    // final double _startSeconds = 50;
    // final String _videoId = '1LdeBY9uNUg';
    // final double _startSeconds = 18;

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
                      word: """another""",
                      // alsoEnglishWord: "also: another",
                      britshText: """IpaUK: /əˈnʌðə(r)/""",
                      americanText: """IpaUS: /əˈnʌðər/""",
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
کوردی: یەکێکی تر، یەکێکی دی، دانەیێکی تر، تر، دی، دن، کەسێکی تر، ئەویدی، ئەویتر
"""),
                    const DefinitionKurdish(
                        text: """١. (دیارخەر، جێناو) یەکێکی تر"""),
                    SentencesRow(
                      englishText: "Would you like another drink?",
                      kurdishText: "حەزت بە خواردنەوەیەکی ترە؟",
                      onPressedBritish: () => speakanother935("en-GB"),
                      onPressedAmerican: () => speakanother935("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "I'm going to have another piece of cake.",
                      kurdishText: "پارچە کێکێکی تر دەخۆم.",
                      onPressedBritish: () => speakanother937("en-GB"),
                      onPressedAmerican: () => speakanother937("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "We can fit another person in my car.",
                      kurdishText:
                          "دەتوانین کەسێکی تر لە ئۆتۆمبێلەکەم جێبکەینەوە.",
                      onPressedBritish: () => speakanother938("en-GB"),
                      onPressedAmerican: () => speakanother938("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (دیارخەر، جێناو) یەکێکی تر کە جیاوازە """),
                    SentencesRow(
                      englishText: "Let's do it another time.",
                      kurdishText: "با کاتێکی تر بیکەین.",
                      onPressedBritish: () => speakanother940("en-GB"),
                      onPressedAmerican: () => speakanother940("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "I don't like this room. I'm going to ask for another.",
                      kurdishText:
                          "حەزم بەم ژوورە نییە، داوای دانەیەکی تر دەکەم.",
                      onPressedBritish: () => speakanother942("en-GB"),
                      onPressedAmerican: () => speakanother942("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (دیارخەر، جێناو) کەسێک/شتێک کە وەک یەکێکی ترە"""),
                    SentencesRow(
                      englishText: "There'll never be another like him.",
                      kurdishText: "کەسێکی تری وەک ئەو دووبارە نابێتەوە.",
                      onPressedBritish: () => speakanother944("en-GB"),
                      onPressedAmerican: () => speakanother944("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
