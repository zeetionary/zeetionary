import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylap extends StatefulWidget {
  const EnglishEntrylap({super.key});

  @override
  State<EnglishEntrylap> createState() => _EnglishEntrylapState();
}

class _EnglishEntrylapState extends State<EnglishEntrylap> {
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
- Noun: lap (Derived forms: laps)
1. The upper side of the thighs of a seated person
"he picked up the little girl and plopped her down in his lap"
 
2. An area of control or responsibility
"the job fell right in my lap"
 
3. The part of a piece of clothing that covers the thighs (- lap covering)
"his lap was covered with food stains";
 
4. A flap that lies over another part (- overlap)
"the lap of the shingles should be at least ten inches";
 
5. Movement once around a course (- circle, circuit)
"he drove an extra lap just for insurance";
 
6. Touching with the tongue (- lick)
"the dog's laps were warm and wet";

- Verb: lap (Derived forms: laps, lapping, lapped)
1. Lie partly over or alongside of something or of one another
 
2. Pass the tongue over (- lick)
"the dog lapped her hand";
 
3. Move with or cause to move with a whistling or hissing sound (- swish, swosh, swoosh)
"The bubbles lapped around in the glass";

4. Take up with the tongue (- lap up, lick)
"The cat lapped up the milk";
 
5. (of a liquid, esp. water) flow against (- lave, wash)
"the waves lapped the shore";
 
6. (sports) overtake a straggler in a race by completing one more lap than them
""",
  );

  final String keyword = "lap";
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
    await flutterTts.speak("""lap""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There's only one seat so you'll have to sit on my lap.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She sat with her hands in her lap.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has completed six laps.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was overtaken on the final lap.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She tripped and fell on the final lap.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They're off on the first lap of their round-the-world tour.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We've nearly finished. We're on the last lap.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The waves lapped around our feet.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The waves lapped gently against the side of the ship.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/uLsC9aK32QA?t=1398';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/v2lMeryJ8f0?t=944';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/0ETr_5NhX5Q?t=14';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/sScNmeVZWao?t=9';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/07VxhA52dRk?t=122';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/CmhFPjE6U8k?t=44';
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
                      word: """lap""",
                      // alsoEnglishWord: "also: lap",
                      britshText: """IpaUK: /læp/""",
                      americanText: """IpaUS: /læp/""",
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
کوردی: کۆش، ئاتەگ، ئاتەک، پارچەیێ کە ئەو ناوچەیە دادەپۆشێ، کۆشوانە، کۆش‌پۆش، داوێن، دامێن
"""),
// With short examples define "lap", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بەشی سەرەوەی لاقەکانت کە دادەنیشیت"""),
                    SentencesRow(
                      englishText:
                          """There's only one seat so you'll have to sit on my lap.""",
                      kurdishText:
                          """تەنها یەک کورسی هەیە بۆیە دەبێت لەسەر کۆشم دابنیشیت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She sat with her hands in her lap.""",
                      kurdishText: """دانیشت بەوەی دەستەکانی لە کۆشیدا بوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) یەک فڕە لە سەرەتا بۆ کۆتایی بە گۆڕەپانێکدا لە ڕاکردندا، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She has completed six laps.""",
                      kurdishText: """شەش فڕەی تەواو کردووە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He was overtaken on the final lap.""",
                      kurdishText: """لە کۆتا فڕەدا پێشی درایەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She tripped and fell on the final lap.""",
                      kurdishText: """پێی هەڵکەوت و لە کۆتا فڕەدا کەوت.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    // add_more_sentences
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) بەشێکی گەشتێک، کارێک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They're off on the first lap of their round-the-world tour.""",
                      kurdishText:
                          """دەستمان بە یەکەم قۆناغی گەشت بە جیهاندا کردووە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We've nearly finished. We're on the last lap.""",
                      kurdishText: """خەریکە تەواو دەبین. لە کۆتا قۆناغین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) دەستدان لە شتێک بە هێمنی و بەردەوامی، زۆرجار کە دەنگێکی هێواش درووست بکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The waves lapped around our feet.""",
                      kurdishText: """شەپۆلەکان دەیانکێشا بە پێماندا.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The waves lapped gently against the side of the ship.""",
                      kurdishText:
                          """شەپۆلەکان شڵپەیان دەهات بە کێشان بە لاکانی کەشتییەکە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
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
// end lap