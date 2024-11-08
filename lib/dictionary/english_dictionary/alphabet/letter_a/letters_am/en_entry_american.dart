import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamerican extends StatefulWidget {
  const EnglishEntryamerican({super.key});

  @override
  State<EnglishEntryamerican> createState() => _EnglishEntryamericanState();
}

class _EnglishEntryamericanState extends State<EnglishEntryamerican> {
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
- Adjective: American 
1. Of or relating to the United States of America or its people or language or culture
"American citizens"; "American English"; "the American dream"
 
2. Of or relating to or characteristic of the continents and islands of the Americas
"the American hemisphere"; "American flora and fauna"

- Noun: American ((derived forms: Americans))
1. A native or inhabitant of the United States
 
2. A native or inhabitant of a North American or Central American or South American country
 
3. The English language as used in the United States (= American English, American language)
""",
  );
// 188888880002200

  final String keyword = "American";
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
    await flutterTts.speak("""American""");
  }

  Future<void> speakamerican4211(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He said he was proud to be an American.");
  }

  Future<void> speakamerican4555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm American.");
  }

  Future<void> speakamerican46599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They drive a big American car.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'tsxmyL7TUJg';
    const double startSecondsend = 504;
    const String videoIdone = 'sV6uuMAnJUE';
    const double startSecondsone = 17;
    const String videoIdtwo = 'qxVWpWNPEWU';
    const double startSecondstwo = 187;
    const String videoIdthree = 'AAGIi62-sAU';
    const double startSecondsthree = 55;
    const String videoIdfour = 'z4L2E6_Gmkk';
    const double startSecondsfour = 339;
    const String videoIdfive = '544DTGHIBM0';
    const double startSecondsfive = 923;
    // final String _videoId = 'UuGpm01SPcA';
    // final double _startSeconds = 211;
    // final String _videoId = 'ea4Tq7HB7kU';
    // final double _startSeconds = 100;
    // final String _videoId = 'sV6uuMAnJUE';
    // final double _startSeconds = 16;
    // final String _videoId = 'Bl5630CeYFs';
    // final double _startSeconds = 57;
    // final String _videoId = 'XEZfGlyLQnA';
    // final double _startSeconds = 276;
    // final String _videoId = 'J8ZOttyAs9Y';
    // final double _startSeconds = 430;

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
                      word: """American""",
                      // alsoEnglishWord: "also: American",
                      britshText: """IpaUK: /əˈmerɪkən/""",
                      americanText: """IpaUS: /əˈmerɪkən/""",
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
کوردی: ئەمریکایی، سەربە ئەمریکا یان وشکاری ئەمریکا، خەڵکی ئەمریکا (باکوور، ناوەند یا باشوور، بەڵام باتایبەتی ویلایەتە یەکگرتووەکانی ئەمریکا)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەسێکی ئەمریکایی، بەتایبەت دانیشتووی ویلایەتە یەکگرتووەکانی ئەمریکا"""),
                    SentencesRow(
                      englishText: "He said he was proud to be an American.",
                      kurdishText: "گوتی شانازییە بۆی خەڵکی ئەمریکا بێت.",
                      onPressedBritish: () => speakamerican4211("en-GB"),
                      onPressedAmerican: () => speakamerican4211("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پەیوەندیدار بە ئەمریکا، بەتایبەت ویلایەتە یەکگرتووەکانی ئەمریکا"""),
                    SentencesRow(
                      englishText: "I'm American.",
                      kurdishText: "من ئەمریکیم.",
                      onPressedBritish: () => speakamerican4555("en-GB"),
                      onPressedAmerican: () => speakamerican4555("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "They drive a big American car.",
                      kurdishText: "ئۆتۆمبێلێکی گەورەی ئەمریکییان ھەیە.",
                      onPressedBritish: () => speakamerican46599("en-GB"),
                      onPressedAmerican: () => speakamerican46599("en-US"),
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
