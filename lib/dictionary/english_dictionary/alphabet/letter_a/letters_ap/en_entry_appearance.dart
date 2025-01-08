import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappearance extends StatefulWidget {
  const EnglishEntryappearance({super.key});

  @override
  State<EnglishEntryappearance> createState() => _EnglishEntryappearanceState();
}

class _EnglishEntryappearanceState extends State<EnglishEntryappearance> {
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
- Noun: appearance (derived forms: appearances)
1. Outward or visible aspect of a person or thing (= visual aspect)
 
2. The event of coming into sight
 
3. Formal attendance (in court or at a hearing) of a party in an action (= appearing, coming into court)
 
4. A mental representation
"I tried to describe his appearance to the police"
 
5. The act of appearing in public view
"the rookie made a brief appearance in the first period"; "it was Bernhardt's last appearance in America"
 
6. Pretending that something is the case in order to make a good impression (= show)
"they try to keep up appearances";
""",
  );
// 188888880002200

  final String keyword = "appearance";
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
    await flutterTts.speak("""appearance""");
  }

  Future<void> speakappearance1127(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She had never been greatly concerned about her appearance.");
  }

  Future<void> speakappearance1128(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Judging by appearances can be misleading.");
  }

  Future<void> speakappearance1131(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The sudden appearance of a security guard caused them to drop the money and run.");
  }

  Future<void> speakappearance1132(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Since its first appearance in the 19th century, cholera has killed millions.");
  }

  Future<void> speakappearance1135(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The singer's first public appearance was at the age of eight.");
  }

  Future<void> speakappearance1145(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The appearance of claims about the minister's private life in the press has caused a lot of discussions.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'FhrBGkeTPi0';
    const double startSecondsend = 29;
    const String videoIdone = 'WCmO_y-0YdY';
    const double startSecondsone = 258;
    const String videoIdtwo = 'SkfQM031gWQ';
    const double startSecondstwo = 1;
    const String videoIdthree = 'qsx7YFkPMlQ';
    const double startSecondsthree = 8;
    const String videoIdfour = 'wU_xwCfMEVk';
    const double startSecondsfour = 317;
    const String videoIdfive = '7nFlA3_zVa0';
    const double startSecondsfive = 133;
    // final String _videoId = 'olDKxSIRtts';
    // final double _startSeconds = 102;
    // final String _videoId = 'henKHBigegE';
    // final double _startSeconds = 226;
    // final String _videoId = 'Wbe2jH0TinY';
    // final double _startSeconds = 1;
    // final String _videoId = 'WiBCStec_rI';
    // final double _startSeconds = 1487;
    // final String _videoId = 'jBDDWvfWYtg';
    // final double _startSeconds = 23;
    // final String _videoId = 'JFjsi7xKk4A';
    // final double _startSeconds = 12;

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
                      word: """appearance""",
                      // alsoEnglishWord: "also: appearance",
                      britshText: """IpaUK: /əˈpɪərəns/""",
                      americanText: """IpaUS: /əˈpɪrəns/""",
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
کوردی: دەرکەوتن، دەرکەوت، ھاتنەڕوو، پەیدابوون، دیار(کەوتن)ی، سەرھەڵدان، ھاتنەنێو، گەیشتن، ڕواڵەت، ڕووکەش، نموود، دیمەن، سەروسەکوت، شێوەی دەرەوە، ڕووکار، پێش، ڕوخسار، ڕوو، پیشان‌دان، ڕانان، ھاتن، ئامادەبوون
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) شێوازی دەرکەوتنی شتێک لە ڕواڵەتدا"""),
                    SentencesRow(
                      englishText:
                          "She had never been greatly concerned about her appearance.",
                      kurdishText: "ھەرگیز ھێندە زۆر گرنگی بە ڕواڵەتی نەداوە.",
                      onPressedBritish: () => speakappearance1127("en-GB"),
                      onPressedAmerican: () => speakappearance1127("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Judging by appearances can be misleading.",
                      kurdishText: "بڕیاردان بە ڕواڵەت دەکرێت بتخاتە ھەڵەوە.",
                      onPressedBritish: () => speakappearance1128("en-GB"),
                      onPressedAmerican: () => speakappearance1128("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) گەشتنی کەسێک لە شوێنێک، بەتایبەتی کە پێشبینی‌نەکراوە"""),
                    SentencesRow(
                      englishText:
                          "The sudden appearance of a security guard caused them to drop the money and run.",
                      kurdishText:
                          "دەرکەوتنی لەناکاوی پاسەوانێک بووە ھۆی ئەوەی پارەکە دابنێن و ھەڵبێن.",
                      onPressedBritish: () => speakappearance1131("en-GB"),
                      onPressedAmerican: () => speakappearance1131("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) ساتی درووست بوون یان دەرکەوتنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "Since its first appearance in the 19th century, cholera has killed millions.",
                      kurdishText:
                          "لە سەرەتای دەرکەوتنییەوە لە سەدەی نۆزدەوە، کۆلێرا بووە بەھۆی کووشتنی ملیۆنان کەس.",
                      onPressedBritish: () => speakappearance1132("en-GB"),
                      onPressedAmerican: () => speakappearance1132("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) دەرکەوتن لە شوێنێکی گشتی"""),
                    SentencesRow(
                      englishText:
                          "The singer's first public appearance was at the age of eight.",
                      kurdishText:
                          "یەکەم دەرکەوتنی گۆرانیبێژەکە لە تەمەنی ھەشت ساڵی بوو.",
                      onPressedBritish: () => speakappearance1135("en-GB"),
                      onPressedAmerican: () => speakappearance1135("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ناو) بڵاوبوونەوە یان پەخشکردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "The appearance of claims about the minister's private life in the press has caused a lot of discussions.",
                      kurdishText:
                          "بڵاوبوونەوەی دەنگۆکان لەسەر ژیان تایبەتیی وەزیرەکە لە میدیادا قسەی زۆری بەدوادا ھاتووە.",
                      onPressedBritish: () => speakappearance1145("en-GB"),
                      onPressedAmerican: () => speakappearance1145("en-US"),
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
