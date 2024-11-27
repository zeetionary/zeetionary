import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylace extends StatefulWidget {
  const EnglishEntrylace({super.key});

  @override
  State<EnglishEntrylace> createState() => _EnglishEntrylaceState();
}

class _EnglishEntrylaceState extends State<EnglishEntrylace> {
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
- Noun: lace (Derived forms: laces)
1. A cord that is drawn through eyelets or around hooks in order to draw together two edges (as of a shoe or garment) (- lacing)
 
2. A delicate decorative fabric woven in an open web of symmetrical patterns

- Verb: lace (Derived forms: lacing, laced, laces)
1. Spin, wind, or twist together (- intertwine, twine, entwine, enlace, interlace, interwind, intwine [archaic])
"lace the ribbons";
 
2. (handicraft) make by braiding or interlacing (- braid, plait)
"lace a tablecloth";
 
3. (handicraft) do lacework
"The Flemish women were lacing in front of the cathedral"
 
4. Draw through eyes or holes (- lace up)
"lace the shoelaces";
 
5. (cooking) add alcohol to (beverages) (- spike, fortify)
"the punch is laced!";
""",
  );

  final String keyword = "lace";
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
    await flutterTts.speak("""lace""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He offered her a lace handkerchief when she sneezed.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Your laces are undone.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's still too young to tie his own laces.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was wearing a dress that laced up at the side.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was sitting on the bed lacing up his shoes.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He had laced her milk with poison.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The chocolates had been laced with arsenic.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Irene's voice was heavily laced with irony.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They sat with their fingers laced.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/mcZdTvOqmvI?t=171';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/WUjVPIEtJd0?t=160';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/jxk259Eqnks?t=292';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/9TugA_z5vQE?t=1304';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/rOqUiXhECos?t=99';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/_LUX70mXcEE?t=174';
    const double startSecondsfive = 0;

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
                      word: """lace""",
                      // alsoEnglishWord: "also: lace",
                      britshText: """IpaUK: /leɪs/""",
                      americanText: """IpaUS: /leɪs/""",
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
کوردی: تۆڕ، کوتاڵ یا پارچەی تۆڕی،	قەیتان، پەت، بەن، پەتک، بەست،	زنجیرە، بەنۆکە، شریت
"""),
// With short examples define "lace", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) مادەیەکی زۆر باریک کە لە دەزووی ئاوریشم، لۆکە، هتد درووستکراوە دەکرێت بە شێوەیەک کە کونی تێدایە"""),
                    SentencesRow(
                      englishText:
                          """He offered her a lace handkerchief when she sneezed.""",
                      kurdishText: """دەستەسڕێکی تۆڕی پێدا کە پژمی.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ناو) قەیتانی پێڵاو"""),
                    const AlsoEnglishckb(word: "ھەروەھا: shoelace، shoestring"),
                    SentencesRow(
                      englishText: """Your laces are undone.""",
                      kurdishText: """وەیتانەکانت نەبەستراون.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's still too young to tie his own laces.""",
                      kurdishText:
                          """هێشتا زۆر گەنجە کە قەیتانەکانی خۆی ببەستێت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) بەستن بە پارچەیەک کە وەک بەن وابێت؛ کردنی قەیتان بە کوونەکانی پێڵاودا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was wearing a dress that laced up at the side.""",
                      kurdishText:
                          """جلێکی لەبەربوو کە لە لاوە بە دووخێن بەسترابوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was sitting on the bed lacing up his shoes.""",
                      kurdishText:
                          """لەسەر جێخەوەکە دانیشطبوو قەیتانی پێڵاوەکانیی دەبەست.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) زیادکردنی ڕێژەیەکی کەم لە کحوول، مادەی هۆشبەر، ژەهر، هتد بۆ شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: spike"),
                    SentencesRow(
                      englishText: """He had laced her milk with poison.""",
                      kurdishText: """ژەهری کردبووە شیرەکەی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The chocolates had been laced with arsenic.""",
                      kurdishText: """چکلێتەکان ئارسنیکیان تێکرابوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) زیادکردنی خاسیەتێکی دیاریکراو بۆ کتێب، وتار، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Irene's voice was heavily laced with irony.""",
                      kurdishText: """دەنگی ئایرین پڕبوو لە گاڵتە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """٦. (کردار) بەستنی شتێک بە یەکێکی دیکە"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """They sat with their fingers laced.""",
                    //   kurdishText: """رستە_رستە_رستە__رستە.""",
                    //   onPressedBritish: () => speaksentence9("en-GB"),
                    //   onPressedAmerican: () => speaksentence9("en-US"),
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
// end lace