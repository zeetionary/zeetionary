import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinspiration extends StatefulWidget {
  const EnglishEntryinspiration({super.key});

  @override
  State<EnglishEntryinspiration> createState() =>
      _EnglishEntryinspirationState();
}

class _EnglishEntryinspirationState extends State<EnglishEntryinspiration> {
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
- Noun: inspiration (Derived forms: inspirations)
1. Arousal of the mind to special unusual activity or creativity
 
2. A product of your creative thinking and work (- brainchild)
"he had little respect for the inspirations of other artists";
 
3. A sudden intuition as part of solving a problem
 
4. (theology) a special influence of a divinity on the minds of human beings (- divine guidance)
 
5. Arousing to a particular emotion or action (- stirring)
 
6. The act of inhaling; the drawing in of air (or other gases) as in breathing (- inhalation, aspiration, intake, breathing in)
""",
  );

  final String keyword = "inspiration";
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
    await flutterTts.speak("""inspiration""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Dreams can be a rich source of inspiration for an artist.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Both poets drew their inspiration from the countryside.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had the time and the inspiration to develop her talent.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She flipped through her recipe book for inspiration.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He drew his inspiration from Hungarian folk music.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He says my sister was the inspiration for his heroine.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Clark was the inspiration behind Saturday's victory.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His charity work is an inspiration to us all.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She became an inspiration and a role model for a new generation of women.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He had an inspiration: he'd give her a dog for her birthday.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '_wNsZEqpKUA';
    const double startSecondsend = 957;
    const String videoIdone = 'a_TSR_v07m0';
    const double startSecondsone = 24;
    const String videoIdtwo = 'QaZ93sibpk0';
    const double startSecondstwo = 43;
    const String videoIdthree = 'XnbCSboujF4';
    const double startSecondsthree = 273;
    const String videoIdfour = 'rRymSi8SmqA';
    const double startSecondsfour = 148;
    const String videoIdfive = 'a9m3GD0DbPY';
    const double startSecondsfive = 70;

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
                      word: """inspiration""",
                      // alsoEnglishWord: "also: inspiration",
                      britshText: """IpaUK: /ˌɪnspəˈreɪʃn/""",
                      americanText: """IpaUS: /ˌɪnspəˈreɪʃn/""",
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
کوردی: سەرۆ، ئیلهام، بیرۆکەی باش (لە ئەنجامی سەرۆدا)،	هەناسە، هەڵمژین،	(لە دین‌دا) وەحی، سروش
"""),
// With short examples define "inspiration", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو پڕۆسەیەی کە ڕوودەدات و کاتێک کەسێک شتێک دەبینێت یان دەیبیستێت کە وای لێدەکات بیرۆکەی سەرنجڕاکێشی تازەی هەبێت و شتێک درووست بکات، بە تایبەتی لە هونەر، ئەدەب، و میوزیک"""),
                    SentencesRow(
                      englishText:
                          """Dreams can be a rich source of inspiration for an artist.""",
                      kurdishText:
                          """خەونەکان دەکرێت سەرچاوەیەکی دەوڵەمەند لە ئیلهام بن بۆ هونەرمەندێک.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Both poets drew their inspiration from the countryside.""",
                      kurdishText:
                          """هەردوو شاعیرەکە ئیلهامیان لە دەشت‌ودەر وەرگرت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had the time and the inspiration to develop her talent.""",
                      kurdishText:
                          """کات و ئیلهامی هەبوو بۆ بەرەوپێشبردنی بەهرەکەی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She flipped through her recipe book for inspiration.""",
                      kurdishText:
                          "کتێبی ڕەچەتەکەی ھەڵدایەوە بۆ ئیلھام وەرگرتن.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He drew his inspiration from Hungarian folk music.""",
                      kurdishText:
                          """ئیلھامی وەرگرت لە میوزیکی خۆجێیی ھەنگاری.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ک/شت کە هۆکارە بۆ ئەوەی کەسێک شتێک دەکات یان درووستی دەکات"""),
                    SentencesRow(
                      englishText:
                          """He says my sister was the inspiration for his heroine.""",
                      kurdishText:
                          """دەڵێت خوشکەکەم ئیلهام بوو بۆ ژنە پاڵەوانەکەی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Clark was the inspiration behind Saturday's victory.""",
                      kurdishText: """کلارک هۆکاری پشت بردنەوەکەی شەممە بوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ک/شت کە وات لێدەکات وابکەیت زیاتر سەرکەوتوو، باشتر، هتد بیت"""),
                    SentencesRow(
                      englishText:
                          """His charity work is an inspiration to us all.""",
                      kurdishText: """کاری خێرخوازیی ئیلهامێکە بۆ هەموومان.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She became an inspiration and a role model for a new generation of women.""",
                      kurdishText:
                          """بوو بە ئیلهام و سەرمەشقێک بۆ نەوەی تازە لە ژنان.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) بیرۆکەیەکی باشی لەناکاو"""),
                    SentencesRow(
                      englishText:
                          """He had an inspiration: he'd give her a dog for her birthday.""",
                      kurdishText:
                          """بیرۆکەیەکی هەبوو؛ سەگێکی پێدەدات بۆ ڕۆژی لەدایکبوونی.""",
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
// end inspiration