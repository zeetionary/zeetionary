import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadministration extends StatefulWidget {
  const EnglishEntryadministration({super.key});

  @override
  State<EnglishEntryadministration> createState() =>
      _EnglishEntryadministrationState();
}

class _EnglishEntryadministrationState
    extends State<EnglishEntryadministration> {
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
- Noun: administration (derived forms: administrations)
1. The work of organizing and managing the affairs of a business, organization or activity (= admin [informal])
 
2. A method of tending to or managing the affairs of some group of people (especially the group's business affairs) (= disposal)
 
3. The persons (or committees or departments etc.) who make up a body for the purpose of administering something (= governance, governing body, establishment, brass, organization, organisation [Brit], admin [informal])
"he claims that the present administration is corrupt";
 
4. The act of administering medication (= giving medication)
 
5. The tenure of a president (= presidency, presidential term)
"things were quiet during the Eisenhower administration";
 
6. The act of governing; exercising authority (= government, governing, governance, government activity)
"he had considerable experience of administration";
 
7. The act of meting out justice according to the law (= judicature)
""",
  );
// 188888880002200

  final String keyword = "administration";
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
    await flutterTts.speak("""administration""");
  }

  Future<void> speakadminis2547(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The university loses a lot of money through poor administration.");
  }

  Future<void> speakadminist3547(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was Secretary of Education in Obama's first administration.");
  }

  Future<void> speakadministr2222(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The administration of justice involves making sure that people are treated fairly in legal matters.");
  }

  Future<void> speakadmi25682(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The hospital administration can refuse patients' access to their own records.");
  }

  Future<void> speakadm25589(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There are strict controls on the administration of drugs.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'cCKkr2IIfVU';
    const double startSecondsend = 96;
    const String videoIdone = 'yXj7Hfrc5PM';
    const double startSecondsone = 1;
    const String videoIdtwo = 'sV6uuMAnJUE';
    const double startSecondstwo = 885;
    const String videoIdthree = 'nGrB-5ieeMU';
    const double startSecondsthree = 386;
    const String videoIdfour = 'FQ4hvLqNfqo';
    const double startSecondsfour = 894;
    const String videoIdfive = 'ziwYbVx_-qg';
    const double startSecondsfive = 98;
    // const String videoId = 'IGyP2uMM3i0';
    // const double startSeconds = 156;
    // const String videoId = 'YAr7O8-iRgQ';
    // const double startSeconds = 2058;
    // const String videoId = 'o1RS7D_szJo';
    // const double startSeconds = 1458;
    // const String videoId = '4XlZHweHEtc';
    // const double startSeconds = 600;

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
                      word: """administration""",
                      // alsoEnglishWord: "also: administration",
                      britshText: """IpaUK: /ədˌmɪnɪˈstreɪʃn/""",
                      americanText: """IpaUS: /ədˌmɪnɪˈstreɪʃn/""",
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
کوردی: بەڕێوەبەری، بەڕێوەبردن، ھەڵسووڕاندن، بەڕێوەبەرایەتی، کارگێڕی،ج ێبەجێ‌کردن، پیادەکردن، سەرپەرشتی، سەرپەرستی، بەرپرسان، ھەڵسووڕێنەران، بەڕێوەبەران، میری، حکومەت، دان (سوێند)، بەڕێوەبەرایەتی، حکومەتی وڵات بەتایبەت لە ئەمریکا
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) بەڕێوەبردنی شوێنێک" ""),
                    SentencesRow(
                      englishText:
                          "The university loses a lot of money through poor administration.",
                      kurdishText:
                          "زانکۆکە پارەیەکی زۆر لەدەستدەدات بەھۆی خراپ بەڕێوەبردن.",
                      onPressedBritish: () => speakadminis2547("en-GB"),
                      onPressedAmerican: () => speakadminis2547("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) حکومەتی وڵاتێک، بەتایبەتی ئەمریکا"""),
                    SentencesRow(
                      englishText:
                          "He was Secretary of Education in Obama's first administration.",
                      kurdishText: "وەزیری پەروەردە بوو لە کابینەکەی ئۆباما.",
                      onPressedBritish: () => speakadminist3547("en-GB"),
                      onPressedAmerican: () => speakadminist3547("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) پڕۆسەی ڕێکخستنی شێوازی کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "The administration of justice involves making sure that people are treated fairly in legal matters.",
                      kurdishText:
                          "ھەڵسووڕاندنی کاری دادپەروەری ئەوە لەخۆدەگرێت کە دڵنیایی بدەیت کە خەڵکی بە یەکسانی مامەڵەیان لەگەڵ دەکرێت لە کێشە یاساییەکان.",
                      onPressedBritish: () => speakadministr2222("en-GB"),
                      onPressedAmerican: () => speakadministr2222("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) ئەو کەسانەی کە شوێنێک بەڕێوەدەبەن"""),
                    SentencesRow(
                      englishText:
                          "The hospital administration can refuse patients' access to their own records.",
                      kurdishText:
                          "بەرپرسانی نەخۆشخانەکە دەتوانن ڕێگری لە نەخۆشان بکەن داتای خودی خۆیان ببینن.",
                      onPressedBritish: () => speakadmi25682("en-GB"),
                      onPressedAmerican: () => speakadmi25682("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ناو) پێدانی دەرمان بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "There are strict controls on the administration of drugs.",
                      kurdishText: "کۆنترۆڵی توند ھەیە لەسەر پێدانی دەرمان.",
                      onPressedBritish: () => speakadm25589("en-GB"),
                      onPressedAmerican: () => speakadm25589("en-US"),
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