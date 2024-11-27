import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylandscape extends StatefulWidget {
  const EnglishEntrylandscape({super.key});

  @override
  State<EnglishEntrylandscape> createState() => _EnglishEntrylandscapeState();
}

class _EnglishEntrylandscapeState extends State<EnglishEntrylandscape> {
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
- Noun: landscape (Derived forms: landscapes)
1. An expanse of scenery that can be seen in a single view
 
2. Painting depicting an expanse of natural scenery
 
3. A genre of art dealing with the depiction of natural scenery (- landscape painting)
 
4. An extensive mental viewpoint
"the political landscape looks bleak without a change of administration"; "we changed the landscape for solving the problem of payroll inequity"
 
5. (printing) printing orientation where the horizontal sides are longer than the vertical sides

- Verb: landscape (Derived forms: landscaping, landscaped, landscapes)
1. (gardening) embellish with plants
"Let's landscape the yard"
 
2. (gardening) do landscape gardening
"My sons landscapes for corporations and earns a good living"
""",
  );

  final String keyword = "landscape";
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
    await flutterTts.speak("""landscape""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The mountains dominate the landscape.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Rocks of all sizes dotted the landscape.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She specializes in landscapes.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We can expect changes in the political landscape.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Their songs altered the landscape of popular music.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They have done a fantastic job landscaping the garden.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/MqyJZsGFZ3M?t=34';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/b_rjBWmc1iQ?t=119';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/8FpPSMIB4uA?t=1150';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/W8uXhQnWgj4?t=973';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/wir7jmefyec?t=336';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/oD9BaNAH-eE?t=1041';
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
                      word: """landscape""",
                      // alsoEnglishWord: "also: landscape",
                      britshText: """IpaUK: /ˈlændskeɪp/""",
                      americanText: """IpaUS: /ˈlændskeɪp/""",
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
کوردی: دیمەن، دیمەنی وشکانی،	هونەری کێشانەوەی دیمەنەکان،	بواری چالاکی، مەڵبەند، گۆڕەپان، پانتایی، وەک: گۆڕەپانی ڕامیاری یان سیاسی
"""),
// With short examples define "landscape", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) هەموو ئەوەی دەیبینیت کە سەیری زەوییەکی فراوان دەکەیت، بە تایبەتی لە دەشت‌ودەر"""),
                    SentencesRow(
                      englishText: """The mountains dominate the landscape.""",
                      kurdishText: """چیاکان بەشی سەرەکی دیمەنەکەن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Rocks of all sizes dotted the landscape.""",
                      kurdishText:
                          """بەردی هەموو قەبارەیەک بە دیمەنەکەدا بڵاوبووبوون.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) تابلۆیەک کە وێنەی دەشت‌ودەرە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She specializes in landscapes.""",
                      kurdishText: """شارەزای تابلۆی دەشت‌دەرە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) تایبەتمەندییە ناسێنەرەکانی بوارێک لە چالاکی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We can expect changes in the political landscape.""",
                      kurdishText:
                          """دەکرێت پێشبینی گۆڕان لە گۆڕەپانی سیاسی بکەین.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """Their songs altered the landscape of popular music.""",
                    //   kurdishText: """گۆرانییەکانیان.""", // review_translation
                    //   onPressedBritish: () => speaksentence5("en-GB"),
                    //   onPressedAmerican: () => speaksentence5("en-US"),
                    // ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) باشترکردنی وێنای ناوچەیەک لە زەوی بە گۆڕینی دیزاین و ناشتنی دار، گوڵ، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They have done a fantastic job landscaping the garden.""",
                      kurdishText:
                          """کارێکی ناوازەیان کردووە بە ڕازاندنەوەی باخچەکە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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
// end landscape