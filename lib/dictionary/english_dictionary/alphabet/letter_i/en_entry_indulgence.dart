import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindulgence extends StatefulWidget {
  const EnglishEntryindulgence({super.key});

  @override
  State<EnglishEntryindulgence> createState() => _EnglishEntryindulgenceState();
}

class _EnglishEntryindulgenceState extends State<EnglishEntryindulgence> {
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
- Noun: indulgence (Derived forms: indulgences)
1. The act of indulging or gratifying a desire
 
2. Something that is desired or appreciated but costs more than one would usually spend (- extravagance, treat)
 
2. An inability to resist the gratification of whims and desires (- self-indulgence)
 
3. A disposition to yield to the wishes of someone (- lenience, leniency)
"too much indulgence spoils a child";
 
4. Foolish or senseless behaviour (- folly, foolery, tomfoolery, craziness, lunacy)
 
5. (Roman Catholicism) the remission by the pope of the temporal punishment in purgatory that is still due for sins even after absolution
"in the Middle Ages the unrestricted sale of indulgences by pardoners became a widespread abuse"
""",
  );

  final String keyword = "indulgence";
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
    await flutterTts.speak("""indulgence""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Avoid excessive indulgence in sweets and canned drinks.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There is no limit to the indulgence he shows to his grandchildren.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He attacked the indulgence granted to religious dissenters.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The holiday was an extravagant indulgence.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He begged the audience's indulgence to read some passages from his latest book.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'cCP9vjp4kSg';
    const double startSecondsend = 64;
    const String videoIdone = 'f5NJQiY9AuY';
    const double startSecondsone = 173;
    const String videoIdtwo = '_-Ic5nS5TXA';
    const double startSecondstwo = 289;
    const String videoIdthree = 'vsMydMDi3rI';
    const double startSecondsthree = 17;
    const String videoIdfour = 'CjiKlLE3NuI';
    const double startSecondsfour = 839;
    const String videoIdfive = '2MZZrDA-I4M';
    const double startSecondsfive = 528;

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
                      word: """indulgence""",
                      // alsoEnglishWord: "also: indulgence",
                      britshText: """IpaUK: /ɪnˈdʌldʒəns/""",
                      americanText: """IpaUS: /ɪnˈdʌldʒəns/""",
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
کوردی: زیادەڕەوی، پێ‌داکێشی،	پێش‌نەگرتن، لابۆشل‌کردن، ئازادهێشتن(ەوە)، بەربۆ بەڕەڵاکردن، لێ‌گەڕان، بەرنەگرتن، جڵەو بۆ شل‌کردن، بە دەمەوەدان، ئاسان‌گری، ئاسان‌کاری، شل‌گرتن
"""),
// With short examples define "indulgence", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) دۆخ یان ئەوەی کە هەر شتێک بکەیت کە دەتەوێت"""),
                    SentencesRow(
                      englishText:
                          """Avoid excessive indulgence in sweets and canned drinks.""",
                      kurdishText:
                          """دووربە لە خووی لە ڕادەبەدەری خواردنی شیرینی و خواردنەوەی قوتوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is no limit to the indulgence he shows to his grandchildren.""",
                      kurdishText:
                          """هیچ سنوورێک نییە بۆ ئەو لێ‌گەڕانەی کە دەیدات بە نەوەکانی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He attacked the indulgence granted to religious dissenters.""",
                      kurdishText:
                          """هێرشی کردە سەر ئەو دەس‌کراوەییەی کە درابوو بە ڕەخنەگرانی ئایینی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شتێک کە ڕێگا بە خۆت دەدەیت هەتبێت ئەگەرچی زۆر گرنگ نییە"""),
                    SentencesRow(
                      englishText:
                          """The holiday was an extravagant indulgence.""",
                      kurdishText: """گەشتەکە زیادەڕەوییەکی زۆر گران بوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    // skipped_meaning
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """٣. (ناو) ئەوەی کە ئامادە بیت لاوازی ک/شت پشتگوێ بخەیت"""),
                    // const AlsoEnglishckb(word: "ھەروەھا: patience"),
                    // SentencesRow(
                    //   englishText: """He begged the audience's indulgence to read some passages from his latest book.""",
                    //   kurdishText: """لە گوێگرانی خواست .""",
                    //   englishNote: """This means he politely asked the audience for their patience and understanding while he took the time to read parts of his newest book to them.""",
                    //   onPressedBritish: () => speaksentence5("en-GB"),
                    //   onPressedAmerican: () => speaksentence5("en-US"),
                    // ),
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