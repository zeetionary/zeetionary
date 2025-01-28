import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinitial extends StatefulWidget {
  const EnglishEntryinitial({super.key});

  @override
  State<EnglishEntryinitial> createState() => _EnglishEntryinitialState();
}

class _EnglishEntryinitialState extends State<EnglishEntryinitial> {
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
- Adjective: initial
1. Occurring at the beginning
"took the initial step toward reconciliation"

- Noun: initial (Derived forms: initials)
1. The first letter of a word (especially a person's name)
"he refused to put the initials FRS after his name"

- Verb: initial (Derived forms: initialed, initialing, initialled, initials, initialling)
1. Mark with one's initials
""",
  );

  final String keyword = "initial";
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
    await flutterTts.speak("""initial""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government will make an initial investment of £5 billion in the company.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The word ‘hour’ is pronounced without an initial aspirate.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We conducted the initial assessments defining the scope of work.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The initial talks were intended to provide a basis for negotiations.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They carved their initials on the desk.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The debate seems to have lost much of its initial impetus.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In smallpox, there is an incubation period of 8–18 days between initial infection and first symptoms.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """John Fitzgerald Kennedy was often known by his initials JFK.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The agreement was finally initialled on May 8.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '8HEfIJlcFbs';
    const double startSecondsend = 3;
    const String videoIdone = 'Hi0zbU3DW6o';
    const double startSecondsone = 324;
    const String videoIdtwo = 'tsxmyL7TUJg';
    const double startSecondstwo = 1121;
    const String videoIdthree = '9TugA_z5vQE';
    const double startSecondsthree = 978;
    const String videoIdfour = 'AF8d72mA41M';
    const double startSecondsfour = 1622;
    const String videoIdfive = 'dtp6b76pMak';
    const double startSecondsfive = 1606;

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
                      word: """initial""",
                      // alsoEnglishWord: "also: initial",
                      britshText: """IpaUK: /ɪˈnɪʃl/""",
                      americanText: """IpaUS: /ɪˈnɪʃl/""",
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
کوردی: یەکەمین، هەوەڵین، دەسپێک، سەرەتایی
"""),
// With short examples define "initial", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) یەکەم؛ کە لە سەرەتا ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          """The government will make an initial investment of £5 billion in the company.""",
                      kurdishText:
                          """حکومەت وەبەرهێنانی سەرەتای ملیار پاوەندی لە کۆمپانیاکە دەبێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The word ‘hour’ is pronounced without an initial aspirate.""",
                      kurdishText:
                          "وشەی ‘hour’ بەبێ ئەسپیرەیتی سەرەتا دەخوێندرێتەوە.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We conducted the initial assessments defining the scope of work.""",
                      kurdishText:
                          "ھەڵسەنگاندنێکی سەرەتاییمان ئەنجام‌دا بۆ دیاریکردنی ئاستی کارەکە.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The initial talks were intended to provide a basis for negotiations.""",
                      kurdishText:
                          "گفتوگۆکانی سەرەتا مەبەست لێیان درووستکردنی بنەمایەک بوو بۆ گفتوگۆ.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The debate seems to have lost much of its initial impetus.""",
                      kurdishText:
                          """دیبەیتەکە وەها دیارە زۆرینەی گوڕی سەرەتای لەدەست دابێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In smallpox, there is an incubation period of 8–18 days between initial infection and first symptoms.""",
                      kurdishText:
                          """لە نەخۆشی ئاوڵەدا، ماوەی بێ‌نیشانەیی ٨-١٨ ڕۆژ هەیە لە نێوان و گرتنی سەرەتا و یەکەم نیشانەکان.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) یەکەم پیتی ناوی یەکەم یان دووەمی کەسێک"""),
                    SentencesRow(
                      englishText:
                          """They carved their initials on the desk.""",
                      kurdishText:
                          "یەکەم پیتی ناوەکانیان لەسەر ڕەحلەکە ھەڵکۆڵی.",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) یەکەم پیتەکانی هەموو ناوەکانی کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """John Fitzgerald Kennedy was often known by his initials JFK.""",
                      kurdishText:
                          """جۆن فیتزجێرڵد کەنەدی زۆرجار بە پیتە یەکەمینەکانی JFK ناسرابوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) واژۆکردنی شتێک بە پیتەکانی سەرەتات"""),
                    SentencesRow(
                      englishText:
                          """The agreement was finally initialled on May 8.""",
                      kurdishText:
                          """ڕێکەوتنەکە لەکۆتاییدا لە ٨ ـی ئایار واژۆکرا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
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