import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinterview extends StatefulWidget {
  const EnglishEntryinterview({super.key});

  @override
  State<EnglishEntryinterview> createState() => _EnglishEntryinterviewState();
}

class _EnglishEntryinterviewState extends State<EnglishEntryinterview> {
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
- Verb: interview (Derived forms: interviewed, interviewing, interviews)
1. Conduct an interview in television, newspaper, and radio reporting (- question)
 
2. Discuss formally with (somebody) for the purpose of an evaluation
"We interviewed the job candidates"
 
3. Go for an interview in the hope of being hired
"The job candidate interviewed everywhere"

- Noun: interview (Derived forms: interviews)
1. The questioning of a person (or a conversation in which information is elicited); often conducted by journalists
"my interviews with teenagers revealed a weakening of religious bonds"
 
2. A conference (usually with someone important) (- consultation, audience)
""",
  );

  final String keyword = "interview";
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
    await flutterTts.speak("""interview""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He has an interview next week for the manager's job.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""In the interview they asked me about my future plans.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He came across very well at the interview.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had an interview with IBM.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I have a job interview tomorrow.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The company contacted him to arrange an interview.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's been called for (an) interview.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The interview was published in all the papers.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Yesterday, in an interview on German television, the minister denied the reports.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The film begins with an interview by two local student reporters.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He gave a very full account in long interviews with experienced police officers.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Which post are you being interviewed for?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We interviewed ten people for the job.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The website gives you tips on interviewing for colleges.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Next week, I will be interviewing Spielberg about his latest movie.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The prime minister declined to be interviewed.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The police are waiting to interview the injured man.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '544DTGHIBM0';
    const double startSecondsend = 881;
    const String videoIdone = '_GFkHA5EZdE';
    const double startSecondsone = 0;
    const String videoIdtwo = 'hS2x1zl4rn0';
    const double startSecondstwo = 476;
    const String videoIdthree = 'WUjVPIEtJd0';
    const double startSecondsthree = 1544;
    const String videoIdfour = 'raSeaAeryWE';
    const double startSecondsfour = 92;
    const String videoIdfive = 'TRGHIN2PGIA';
    const double startSecondsfive = 813;

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
                      word: """interview""",
                      // alsoEnglishWord: "also: interview",
                      britshText: """IpaUK: /ˈɪntəvjuː/""",
                      americanText: """IpaUS: /ˈɪntərvjuː/""",
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
کوردی: چاوپێکەوتن، دیمانە، وت‌ووێژ، هەڤ‌پەیڤین، دیدەنی، دیدار
"""),
// With short examples define "interview", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کۆبوونەوەی فەرمی کە تێیدا پرسیاری لێ دەکرێت بۆ زانینی ئەوەی ئایا بۆ کارێکی دیاریکراو گونجاوە، یان بۆ کۆرسێکی خوێندن لە کۆلێژ، زانکۆ، هتد"""),
                    SentencesRow(
                      englishText:
                          """He has an interview next week for the manager's job.""",
                      kurdishText:
                          """هەفتەی داهاتوو چاوپێکەوتنێکی هەیە بۆ کاری بەڕێوەبەری.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the interview they asked me about my future plans.""",
                      kurdishText:
                          """لە چاوپێکەوتنەکە پرسیاریان لێم کرد لەسەر پلانەکانی داهاتووم.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He came across very well at the interview.""",
                      kurdishText: """زۆر باش لە چاوپێکەوتنەکە دەرکەوت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She had an interview with IBM.""",
                      kurdishText: """چاوپێکەوتنێکی لەگەڵ ئای‌بی‌ئێم هەبوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I have a job interview tomorrow.""",
                      kurdishText: """سبەی چاوپێکەوتنێکی کارم هەیە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company contacted him to arrange an interview.""",
                      kurdishText:
                          """کۆمپانیاکە پەیوەندیی پێوە کرد بۆ ڕێکخستنی چاوپێکەوتنێک.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's been called for (an) interview.""",
                      kurdishText: """بانگکراوە بۆ چاوپێکەوتنێک.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) چاوپێکەوتنی ڕۆژنامەنووس لەگەڵ کەسێک بۆ پرسیارکردن و زانینی بۆچوونی"""),
                    SentencesRow(
                      englishText:
                          """The interview was published in all the papers.""",
                      kurdishText:
                          """چاوپێکەوتنەکە لە هەموو ڕۆژنامەکان بڵاوکرایەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Yesterday, in an interview on German television, the minister denied the reports.""",
                      kurdishText:
                          """دوێنێ، لە چاوپێکەوتنێکدا لە تەلەفیزیۆنی ئەڵمانیا، وەزیرەکە نکۆڵی لە ڕاپۆرتەکان کرد.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The film begins with an interview by two local student reporters.""",
                      kurdishText:
                          """فیلمەکە بە چاوپێکەوتنی دوو ڕۆژنامەنووسی خۆجێی دەست پێدەکات.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) چاوپێکەوتنی نێوان دوو کەس کە پرسیار و وەڵامی تێدایە"""),
                    SentencesRow(
                      englishText:
                          """He gave a very full account in long interviews with experienced police officers.""",
                      kurdishText:
                          """گێڕانەوەیەکی زۆر تەواوی ئەنجام دا لەگەڵ ئەفسەرانی پۆلیسی بە ئەزموون.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) قسەکردن لەگەڵ کەسێک و پرسیارکردن لێی لە کۆبوونەوەیەکی فەرمی بۆ زانینی ئەوەی کە گونجاوە بۆ کارێک، کۆرسێکی خوێندن، هتد"""),
                    SentencesRow(
                      englishText:
                          """Which post are you being interviewed for?""",
                      kurdishText:
                          """بۆ چی پێگەیەک چاوپێکەوتنت لەگەڵ دەکرێت؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We interviewed ten people for the job.""",
                      kurdishText:
                          """چاوپێکەوتنمان لەگەڵ دە کەس کرد بۆ کارەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) چوونە چاوپێکەوتنێک بۆ زانینی ئەوەی گونجاوی بۆ کارێک، کۆرسێکی خوێندن، هتد"""),
                    SentencesRow(
                      englishText:
                          """The website gives you tips on interviewing for colleges.""",
                      kurdishText:
                          """وێبسایتەکە زانیاریت پێدەدات لەسەر چاوپێکەوتن بۆ کۆلێژ.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) پرسیارکردن لەسەر کەسێک لەسەر ژیانی کەسی، بۆچوونی، هتد لەسەر ڕادیۆ یان تەلەفیزیۆن، یان  یان ڕۆژنامە یان گۆڤار"""),
                    SentencesRow(
                      englishText:
                          """Next week, I will be interviewing Spielberg about his latest movie.""",
                      kurdishText:
                          """هەفتەی دواتر چاوپێکەوتن لەگەڵ سپیڵبێرگ دەکەم لەسەر تازەترین فیلمی.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The prime minister declined to be interviewed.""",
                      kurdishText:
                          """سەرۆک وەزیران ڕەتیکردەوە چاوپێکەوتنی لەگەڵ بکرێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) پرسیارکردن لە کەسێک لە چاوپێکەوتنێکی تایبەتی"""),
                    SentencesRow(
                      englishText:
                          """The police are waiting to interview the injured man.""",
                      kurdishText:
                          """پۆلیس چاوەڕێن پرسیار لە پیاوە بریندارەکە بکەن.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
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
// end interview