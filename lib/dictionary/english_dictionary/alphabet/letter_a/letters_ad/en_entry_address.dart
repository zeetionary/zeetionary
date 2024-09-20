import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaddress extends StatefulWidget {
  const EnglishEntryaddress({super.key});

  @override
  State<EnglishEntryaddress> createState() => _EnglishEntryaddressState();
}

class _EnglishEntryaddressState extends State<EnglishEntryaddress> {
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
- Noun: address (derived forms: addresses)
1. The place where a person or organization can be found or communicated with
 
2. Written directions for finding some location; written on letters or packages that are to be delivered to that location (= destination, name and address)
 
3. The act of delivering a formal spoken communication to an audience (= speech)
"he listened to an address on minor Roman poets";
 
4. The manner of speaking to another individual
"he failed in his manner of address to the captain"
 
5. A sign in front of a house or business carrying the conventional form by which its location is described
 
6. (golf) the stance assumed by a golfer in preparation for hitting a golf ball
 
7. The social skill to do or say what is appropriate for the occasion (= savoir-faire, savoir faire)
 
8. (computing) the code that identifies where a piece of information is stored (= computer address, reference)

- Verb: address (derived forms: addressed, addresses, addressing)
1. Speak to (= turn to)
"He addressed the crowd outside the window";
 
2. Give a speech to (= speak)
"The chairman addressed the board of trustees";
 
3. Put an address on (an envelope) (= direct)
 
4. Direct a question at someone
 
5. Give attention to something; direct efforts towards something, such as how to solve a problem
"We need to address this issue first"
 
6. Greet, as with a prescribed form, title, or name (= call)
"He always addresses me with 'Sir'";
 
7. Act on verbally or in some form of artistic expression (= cover, treat, handle, plow [N. Amer], deal, plough [Brit, Cdn])
"The course addressed all of Western Civilization";
 
8. (golf) adjust and aim (a golf ball) at in preparation of hitting
 
9. (computing) access or locate by address
""",
  );
// 188888880002200

  final String keyword = "address";
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
    await flutterTts.speak("""address""");
  }

  Future<void> speakadd774(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll give you my address and phone number.");
  }

  Future<void> speakaddress452(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Police found him at an address in West London.");
  }

  Future<void> speakaddr2458(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What's your email address?");
  }

  Future<void> speakaddr624(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He gave details of the policy in an address to party members.");
  }

  Future<void> speakadd99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("These concerns were not adequately addressed in the report.");
  }

  Future<void> speakaddr11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The letter was correctly addressed, but delivered to the wrong house.");
  }

  Future<void> speakaddr766(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He addressed his comments to the supervisor.");
  }

  Future<void> speakaddre444(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The President has been asked to address the parliament.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zPx5N6Lh3sw';
    const double startSecondsend = 1277;
    const String videoIdone = 'h_jrebvmPlk';
    const double startSecondsone = 1;
    const String videoIdtwo = 'B7VKqFTaPl8';
    const double startSecondstwo = 1;
    const String videoIdthree = 'Gyb-DjVT5_c';
    const double startSecondsthree = 128;
    const String videoIdfour = 'sZ3sCBdqCVU';
    const double startSecondsfour = 66;
    const String videoIdfive = 'hOUGNGWmN0k';
    const double startSecondsfive = 993;
    // const String videoId = 'cqidD7kVnxY';
    // const double startSeconds = 1379;
    // const String videoId = 'pFmtmO2cnlg';
    // const double startSeconds = 64;
    // const String videoId = 'HAnw168huqA';
    // const double startSeconds = 3045;
    // const String videoId = 'PqpCeiYycVM';
    // const double startSeconds = 1107;

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
                      word: """address""",
                      // alsoEnglishWord: "also: address",
                      britshText: """IpaUK: /əˈdres/""",
                      americanText: """IpaUS: /əˈdres/""",
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
کوردی: ناونیشان، نیشان، شێوازی لێداون یان دووان، دەراوی دەم، (دەم‌و)ڕاوێژ، شارەزایی، وتاردان، قسەکردن لە بەردەم ئامادەبووان‌دا
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) شوێنی ژیان یان کارکردنی کەسێک"""),
                    SentencesRow(
                      englishText: "I'll give you my address and phone number.",
                      kurdishText: "ناونیشان و ژمارە تەلەفۆنی خۆمت پێ ئەدەم.",
                      onPressedBritish: () => speakadd774("en-GB"),
                      onPressedAmerican: () => speakadd774("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Police found him at an address (= a house or flat) in West London.",
                      kurdishText:
                          "پۆلیس لە شوێنێک لە ڕۆژھەڵاتی لەندەن دۆزییەوە.",
                      onPressedBritish: () => speakaddress452("en-GB"),
                      onPressedAmerican: () => speakaddress452("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ژمارەیەک پیت و ژمارە کە ناونیشانی شوێنێک یان کەسێکە لەسەر ئینتەرنێت"""),
                    SentencesRow(
                      englishText: "What's your email address?",
                      kurdishText: "ناونیشانی ئیمەیڵەکەت چییە؟",
                      onPressedBritish: () => speakaddr2458("en-GB"),
                      onPressedAmerican: () => speakaddr2458("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) وتارێکی فەرمی"""),
                    SentencesRow(
                      englishText:
                          "He gave details of the policy in an address to party members.",
                      kurdishText:
                          "وردەکارییەکانی سیاسەتیانی ڕوونکردەوە لە وتارێکدا بۆ ئەندامانی پارتەکە.",
                      onPressedBritish: () => speakaddr624("en-GB"),
                      onPressedAmerican: () => speakaddr624("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) بیرکرنەوە لە چۆنیەتی مامەڵەکردن لەگەل کێشەیەک"""),
                    SentencesRow(
                      englishText:
                          "These concerns were not adequately addressed in the report.",
                      kurdishText:
                          "ئەم نیگەرانیانە بەپێی پێویست لە ڕاپۆرتەکەدا مامەڵەیان لەگەڵ نەکراوە.",
                      onPressedBritish: () => speakadd99("en-GB"),
                      onPressedAmerican: () => speakadd99("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) نووسینی ناو و ناونیشانی کەسێک و شوێنەکەی لەسەر نامەیەک"""),
                    SentencesRow(
                      englishText:
                          "The letter was correctly addressed, but delivered to the wrong house.",
                      kurdishText:
                          "نامەکە بە درووستی ناو و ناونیشانی لەسەر نووسرابوو، بەڵام بۆ ماڵێکی ھەڵە نێردرا.",
                      onPressedBritish: () => speakaddr11("en-GB"),
                      onPressedAmerican: () => speakaddr11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) پێشکەشکردنی وتارێک بۆ کۆمەڵە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "The President has been asked to address the parliament.",
                      kurdishText:
                          "سەرۆک داوای لێکرا وتارێک لە پەرلەمان پێشکەش بکات.",
                      onPressedBritish: () => speakaddre444("en-GB"),
                      onPressedAmerican: () => speakaddre444("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (کردار) وتنی شتێک ڕاستەوخۆ بە کەسێك"""),
                    SentencesRow(
                      englishText:
                          "He addressed his comments to the supervisor.",
                      kurdishText:
                          "بۆچوونەکانی ڕاستەوخۆ بە سەرپەرشتیارەکە گووت.",
                      onPressedBritish: () => speakaddr766("en-GB"),
                      onPressedAmerican: () => speakaddr766("en-US"),
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
