import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapproach extends StatefulWidget {
  const EnglishEntryapproach({super.key});

  @override
  State<EnglishEntryapproach> createState() => _EnglishEntryapproachState();
}

class _EnglishEntryapproachState extends State<EnglishEntryapproach> {
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
- Verb: approach (derived forms: approaching, approaches, approached)
1. Move towards (= near, come on, go up, draw near, draw close, come near)
 
2. Come near or verge on, resemble, come nearer in quality, or character (= border on)
"His playing approaches that of Horowitz";
 
2. Begin to deal with (= set about, go about)
"approach a task";
 
3. Come near in time (= come near)
"Winter is approaching"; "approaching old age";
 
4. Make advances to someone, usually with a proposal or suggestion
"I was approached by the President to serve as his adviser in foreign matters"

- Noun: approach (derived forms: approaches)
1. Ideas or actions intended to deal with a problem or situation (= attack, plan of attack)
"his approach to every problem is to draw up a list of pros and cons";
 
2. A way of entering or leaving (= access)
"he took a wrong turn on the approach to the bridge";
 
3. The final path followed by an aircraft as it is landing (= approach path, glide path, glide slope)
 
4. The event of one object coming closer to another (= approaching)
 
5. A tentative suggestion designed to elicit the reactions of others (= overture, advance, feeler)
"she rejected his approaches";
 
6. The temporal property of becoming nearer in time (= approaching, coming)
"the approach of winter";
 
7. A close approximation
"the nearest approach to genius"
 
8. (golf) a relatively short golf shot intended to put the ball onto the putting green (= approach shot)
"he lost the hole when his approach rolled over the green";

- Adjective: approach  
1. Close in time; about to occur (= at hand, close at hand, imminent, impendent, impending, approaching, coming)
"the hunter's approach scattered the geese";
""",
  );
// 188888880002200

  final String keyword = "approach";
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
    await flutterTts.speak("""approach""");
  }

  Future<void> speakapproach1026(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She took the wrong approach in her dealings with them.");
  }

  Future<void> speakapproach1028(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The approach they were using no longer seemed to work.");
  }

  Future<void> speakapproach1030(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They felt apprehensive about the approach of war.");
  }

  Future<void> speakapproach1031(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The children fell silent at the approach of their teacher.");
  }

  Future<void> speakapproach1034(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The club has made an approach to a local company for sponsorship.");
  }

  Future<void> speakapproach1038(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She resented his persistent approaches.");
  }

  Future<void> speakapproach1039(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All the approaches to the palace were guarded by troops.");
  }

  Future<void> speakapproach1044(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Please fasten your seat belts, the plane is now making its final approach into Heathrow.");
  }

  Future<void> speakapproach1047(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We could hear the train approaching.");
  }

  Future<void> speakapproach1048(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Winter is approaching.");
  }

  Future<void> speakapproach1050(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I'd like to ask his opinion but I find him difficult to approach (= not easy to talk to in a friendly way).");
  }

  Future<void> speakapproach1053(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Interest rates are approaching zero.");
  }

  Future<void> speakapproach1055(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What's the best way to approach this problem?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JbVA1BDQw3Y';
    const double startSecondsend = 167;
    const String videoIdone = 'clfpWjqVP6U';
    const double startSecondsone = 32;
    const String videoIdtwo = '0oL6K8kg7IU';
    const double startSecondstwo = 484;
    const String videoIdthree = 'bWF7Gzv8myI';
    const double startSecondsthree = 18;
    const String videoIdfour = 'uqN_kISm98c';
    const double startSecondsfour = 784;
    const String videoIdfive = '4Sb2lh14ItI';
    const double startSecondsfive = 16;
    // final String _videoId = 'X0wku-pPWec';
    // final double _startSeconds = 122;
    // final String _videoId = '7EetZt4XdU4';
    // final double _startSeconds = 44;
    // final String _videoId = 'Ejt4ZUqlg34';
    // final double _startSeconds = 1;
    // final String _videoId = 'J3CeSOUtQ54';
    // final double _startSeconds = 1;
    // final String _videoId = 'U_3jhNQh5B4';
    // final double _startSeconds = 60;
    // final String _videoId = 'TCzpjnqibSU';
    // final double _startSeconds = 55;

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
                      word: """approach""",
                      // alsoEnglishWord: "also: approach",
                      britshText: """IpaUK: /əˈprəʊtʃ/""",
                      americanText: """IpaUS: /əˈprəʊtʃ/""",
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
کوردی: بۆچوون، دیتن، نێرین، تێ‌ڕوانین، ھەڵس‌وکەوت، شێوەی جووڵانەوە، شێوە، ڕێک، شێواز، بار، ڕێگا، ڕێ، ڕێگای چوونەنێو، ئامێر، کەرەسە، لێکچوون، ھاوشێوەیی، دەس‌ڕاگەیشتن، گەیشتن، نزیک‌بوونەوە، نزیکی، نزیک‌کەوتن، قەرەکەوتن، توخن‌کەوتن، داوا، داخوازی، پێشنیار
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ڕێگای مامەڵەکردن لەگەڵ شتێک"""),
                    SentencesRow(
                      englishText:
                          "She took the wrong approach in her dealings with them.",
                      kurdishText:
                          "ڕێگایەکی ھەڵەی گرتە بەر بۆ مامەڵەکردن لەگەڵیان.",
                      onPressedBritish: () => speakapproach1026("en-GB"),
                      onPressedAmerican: () => speakapproach1026("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The approach they were using no longer seemed to work.",
                      kurdishText:
                          "ئەو ڕێگایەی بەکاریان دەھێنا چی دیکە گونجاو نەبوو.",
                      onPressedBritish: () => speakapproach1028("en-GB"),
                      onPressedAmerican: () => speakapproach1028("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) نزیکبوونەوە لە شتێک لەڕووی دورییەوە یان کات"""),
                    SentencesRow(
                      englishText:
                          "They felt apprehensive about the approach of war.",
                      kurdishText:
                          "نیگەران‌بوون سەبارەت بە نزیکبوونەوە لە جەنگ.",
                      onPressedBritish: () => speakapproach1030("en-GB"),
                      onPressedAmerican: () => speakapproach1030("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The children fell silent at the approach of their teacher.",
                      kurdishText:
                          "منداڵەکان بێ‌دەنگ بوون بە نزیکبوونەوەی مامۆستاکەیان.",
                      onPressedBritish: () => speakapproach1031("en-GB"),
                      onPressedAmerican: () => speakapproach1031("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) قسەکردن لەگەڵ کەسێک سەبارەت بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "The club has made an approach to a local company for sponsorship.",
                      kurdishText:
                          "یانەکە قسەی لەگەڵ کۆمپانیایەکی ناوخۆیی کردووە بۆ ڕیکلام‌کردن.",
                      onPressedBritish: () => speakapproach1034("en-GB"),
                      onPressedAmerican: () => speakapproach1034("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) ھەوڵدان بۆ دەستپێکردنی پەیوەندی لەگەڵ کەسێک، بۆ نموونە پەیوەندی سێکسی"""),
                    SentencesRow(
                      englishText: "She resented his persistent approaches.",
                      kurdishText: "بەرھەڵستی نزیکبوونەوە پێ‌داگیرەکانیی کرد.",
                      onPressedBritish: () => speakapproach1038("en-GB"),
                      onPressedAmerican: () => speakapproach1038("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ناو) ڕێگای گەشتن بە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          "All the approaches to the palace were guarded by troops.",
                      kurdishText:
                          "ھەموو ڕێگاکانی گەشتن بە کۆشکەکە لەلایەن سەربازەکانەوە پاسەوانی دەکران.",
                      onPressedBritish: () => speakapproach1039("en-GB"),
                      onPressedAmerican: () => speakapproach1039("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (ناو) کۆتا قۆناغی گەشتێکی فڕۆکە"""),
                    SentencesRow(
                      englishText:
                          "Please fasten your seat belts, the plane is now making its final approach (in)to (= is coming near to and preparing to land at) Heathrow.",
                      kurdishText:
                          "تکایە پشتێنی سەلامەتی ببەستن، فڕۆکەکە ئێستا کۆتا فڕینی ئەنجام‌دەدا بۆ فڕۆکەخانەی ھیسرۆو.",
                      onPressedBritish: () => speakapproach1044("en-GB"),
                      onPressedAmerican: () => speakapproach1044("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (کردار) نزیکبوونەوە لە کەسێک/شتێک لە کاتدا یان بەپێی دووری"""),
                    SentencesRow(
                      englishText: "We could hear the train approaching.",
                      kurdishText:
                          "گوێمان لە دەنگی نزیکبوونەوەی شەمەندەفەرەکە بوو.",
                      onPressedBritish: () => speakapproach1047("en-GB"),
                      onPressedAmerican: () => speakapproach1047("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Winter is approaching.",
                      kurdishText: "زستان خەریکە نزیک‌دەبێتەوە.",
                      onPressedBritish: () => speakapproach1048("en-GB"),
                      onPressedAmerican: () => speakapproach1048("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (کردار) نزیکبوونەوە لە کەسێک/شتێک لە کاتدا یان بەپێی دووری"""),
                    SentencesRow(
                      englishText:
                          "I'd like to ask his opinion but I find him difficult to approach (= not easy to talk to in a friendly way).",
                      kurdishText:
                          "حەز دەکەم بۆچوونی بخوازم، بەڵام نزیکبوونەوە لێی بە ئاسان نابینم.",
                      onPressedBritish: () => speakapproach1050("en-GB"),
                      onPressedAmerican: () => speakapproach1050("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٩. (کردار) نزیکبوونەوە لە شتێک لە ڕووی بڕ، ئاست، یان کوالێتی"""),
                    SentencesRow(
                      englishText: "Interest rates are approaching zero.",
                      kurdishText: "ڕێژەی سوو خەریکە نزیک لە سفر دەبێتەوە.",
                      onPressedBritish: () => speakapproach1053("en-GB"),
                      onPressedAmerican: () => speakapproach1053("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
١٠. (کردار) دەستکردن بە مامەڵەکردن لەگەڵ کێشەیەک یان ئەرکێک"""),
                    SentencesRow(
                      englishText:
                          "What's the best way to approach this problem?",
                      kurdishText:
                          "باشترین ڕێگا چییە بۆ مامەڵەکردن لەگەڵ ئەم کێشەیە؟",
                      onPressedBritish: () => speakapproach1055("en-GB"),
                      onPressedAmerican: () => speakapproach1055("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
