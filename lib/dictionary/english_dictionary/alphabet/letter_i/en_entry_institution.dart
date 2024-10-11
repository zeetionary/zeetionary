import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinstitution extends StatefulWidget {
  const EnglishEntryinstitution({super.key});

  @override
  State<EnglishEntryinstitution> createState() =>
      _EnglishEntryinstitutionState();
}

class _EnglishEntryinstitutionState extends State<EnglishEntryinstitution> {
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
- Noun: institution (Derived forms: institutions)
1. An organization founded and united for a specific purpose (- establishment)
 
2. An establishment consisting of a building or complex of buildings where an organization for the promotion of some cause is situated
 
3. A custom that for a long time has been an important feature of some group or society
"the institution of marriage"; "the institution of slavery"; "he had become an institution in the theatre"
 
4. The act of starting something for the first time; introducing something new (- initiation, founding, foundation, origination, creation, innovation, introduction, instauration, debut, first appearance, launching, unveiling, entry)
 
5. A hospital for mentally incompetent or unbalanced person (- mental hospital, psychiatric hospital, mental institution, mental home, insane asylum, asylum)
""",
  );

  final String keyword = "institution";
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
    await flutterTts.speak("""institution""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The deal is backed by one of the country's largest financial institutions.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The system is targeted mainly at academic and research institutions.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They had him committed to an institution.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We want this to be like a home, not an institution.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Football is a national institution in this country.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""American laws once protected the institution of slavery.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The institution of the Freedom of Information Act has had a significant effect.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'ewLpXw6uN28';
    const double startSecondsend = 1428;
    const String videoIdone = 'LJNtfyq3TDE';
    const double startSecondsone = 612;
    const String videoIdtwo = 'f5jwTft6654';
    const double startSecondstwo = 514;
    const String videoIdthree = 'Y5F_ha7d-PI';
    const double startSecondsthree = 201;
    const String videoIdfour = 'BuX6-lvUwd0';
    const double startSecondsfour = 116;
    const String videoIdfive = 'DuFyGHgGIKg';
    const double startSecondsfive = 329;

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
                      word: """institution""",
                      // alsoEnglishWord: "also: institution",
                      britshText: """IpaUK: /ˌɪnstɪˈtjuːʃn/""",
                      americanText: """IpaUS: /ˌɪnstɪˈtuːʃn/""",
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
کوردی: دامەزراندن، دانان، داڕشتن، بنیات‌نان،	ڕێکخراوە، دامەزراوە، کۆمەڵە، کۆڕ، دەزگا، ئەنیستیتۆ، دەزگای کۆمەڵایەتی، کەڤنەشۆپ، ڕێ‌وشوێن
"""),
// With short examples define "institution", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) دامەزراوەیەکی گەورە کە ئامانجێکی دیاریکراوی هەیە، بۆ نموونە زانکۆ یان بانک"""),
                    SentencesRow(
                      englishText:
                          """The deal is backed by one of the country's largest financial institutions.""",
                      kurdishText:
                          """ڕێکەوتنەکە پشتگیری دەکرێت لەلایەن یەکێک لە دامەزراوە گەورەترینەکانی وڵاتەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The system is targeted mainly at academic and research institutions.""",
                      kurdishText:
                          """سیستەمە بە شێوەی سەرەکی بۆ دامەزراوە ئەکادیمی و توێژینەوەکانە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) نەخۆشخانە، زیندان، هتد کە خەڵکی تێیدا دەمێننەوە و چاودێری دەکرێن"""),
                    SentencesRow(
                      englishText:
                          """They had him committed to an institution.""",
                      kurdishText: """خستیانە دامەزراوەیەکەوە.""",
                      englishNote:
                          """This means they placed him in a facility, such as a hospital or mental health institution, for long-term care or treatment, typically because he couldn't care for himself.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We want this to be like a home, not an institution.""",
                      kurdishText:
                          """دەمانەوێت ئەمە وەک ماڵ بێت، نەک نەخۆشخانەی دەروونی.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) نەریت یان سیستەمێک کە ماوەیەکی زۆر دەبێت لەناو کۆمەڵە خەڵکێکی دیاریکراودا بوونی هەبووە"""),
                    SentencesRow(
                      englishText:
                          """Football is a national institution in this country.""",
                      kurdishText:
                          """تۆپی‌پێ بۆنەیەکی نیشتیمانییە لەم وڵاتە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """American laws once protected the institution of slavery.""",
                      kurdishText:
                          """یاساکانی ئەمریکا سەردەمانێک نەریتی کۆیلایەتییان دەپاراست.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) دەستپێکردنی سیاسەتێک، سیستەمێک، هتد یان دەستپێکردنی پڕۆسەیەک"""),
                    SentencesRow(
                      englishText:
                          """The institution of the Freedom of Information Act has had a significant effect.""",
                      kurdishText:
                          """ناساندنی یاسای ئازادیی زانیاری کاریگەرییەکی گەورەی هەبووە.""",
                      englishNote:
                          "This means the creation or establishment of the Freedom of Information Act has greatly influenced how information is accessed and shared, leading to important changes. This is a law that gives people the right to request and obtain access to American government records and information, promoting transparency. It allows individuals to know what the government is doing, ensuring accountability, with some exceptions for sensitive or classified materials.",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
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
// end institution