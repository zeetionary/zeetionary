import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimprint extends StatefulWidget {
  const EnglishEntryimprint({super.key});

  @override
  State<EnglishEntryimprint> createState() => _EnglishEntryimprintState();
}

class _EnglishEntryimprintState extends State<EnglishEntryimprint> {
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
- Verb: imprint (Derived forms: imprints, imprinting, imprinted)
1. Establish or impress firmly in the mind (- form)
"We imprint our ideas onto our children";
 
2. Mark or stamp with or as if with pressure (- impress)
"To make a batik, you imprint a design with wax";

- Noun: imprint (Derived forms: imprints)
1. A distinctive influence
"English stills bears the imprint of the Norman invasion"
 
2. A concavity in a surface produced by pressing (- depression, impression)
"he left the imprint of his fingers in the soft mud";
 
3. An identification of a publisher; a publisher's name along with the date and address and edition that is printed at the bottom of the title page
"the book was published under a distinguished imprint"
 
4. An impression produced by pressure or printing (- embossment)
 
5. A device produced by pressure on a surface
""",
  );

  final String keyword = "imprint";
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
    await flutterTts.speak("""imprint""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He imprints his own personal style on his work.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The terrible scenes were indelibly imprinted on her mind.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their footprints were imprinted in the snow.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The blow made a sharp imprint on the skin.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Colonialism has left an indelible imprint on the island.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '7j5ul4XBjAI';
    const double startSecondsend = 499;
    const String videoIdone = 'Zad6v8ZHzdg';
    const double startSecondsone = 252;
    const String videoIdtwo = '60FM9WjkXtA';
    const double startSecondstwo = 1014;
    const String videoIdthree = 'QcUey-DVYjk';
    const double startSecondsthree = 1103;
    const String videoIdfour = 'ShMRAN78598';
    const double startSecondsfour = 60;
    const String videoIdfive = 'dHPTR96Sc1g';
    const double startSecondsfive = 785;

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
                      word: """imprint""",
                      // alsoEnglishWord: "also: imprint",
                      britshText: """IpaUK: /ɪmˈprɪnt/""",
                      americanText: """IpaUS: /ɪmˈprɪnt/""",
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
کوردی: شوێن، مۆرک، شەقڵ، جێ،	ناونیشانی بڵاوکەرەوە، مۆری دەزگای بڵاوکردنەوە
"""),
// With short examples define "imprint", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) هەبوونی کاریگەریی گەورە لەسەر شتێک بە شێوەیەک کە نەکرێت لەبیربکرێت، بگۆڕدرێت، هتد"""),
                    SentencesRow(
                      englishText:
                          """He imprints his own personal style on his work.""",
                      kurdishText:
                          """شێوازی کەسی خۆی لەسەر کارەکەی جێدەهێڵێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The terrible scenes were indelibly imprinted on her mind.""",
                      kurdishText:
                          """دیمەنە ناخۆشەکان لەبیرنەکراوانە شوێنیان کەوت لە هزریدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) نەخشاندنی دیزاین یان ئاماژەیەک لەسەر ڕوویەک"""),
                    SentencesRow(
                      englishText:
                          """Their footprints were imprinted in the snow.""",
                      kurdishText: """شوێن‌پێیان کەوت لە بەفرەکەدا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئاماژەیەک کە درووست بووە بە توندکردنی شتێک لە ڕوویەک"""),
                    SentencesRow(
                      englishText:
                          """The blow made a sharp imprint on the skin.""",
                      kurdishText:
                          """لێدانەکە مۆرکێکی توندی لەسەر پێستەکە درووستکرد.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) کریگەریی بەردەوام کە کەسێک یان ئەزموونێک هەیەتی لەسەر شوێن یان دۆخێک"""),
                    SentencesRow(
                      englishText:
                          """Colonialism has left an indelible imprint on the island.""",
                      kurdishText:
                          """کۆلۆنیاڵیزم مۆرکێکی نەکوژاوەی جێهێشتووە لەسەر دوورگەکە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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