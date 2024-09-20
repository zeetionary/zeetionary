import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryforward extends StatefulWidget {
  const EnglishEntryforward({super.key});

  @override
  State<EnglishEntryforward> createState() => _EnglishEntryforwardState();
}

class _EnglishEntryforwardState extends State<EnglishEntryforward> {
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
- Adverb: forward
1. At, to or toward the front; forward (= forwards, frontward, frontwards, forrad [dialect], forrard [dialect])
"he faced forward"; "step forward";
 
2. Ahead in time, order or degree (= forth, onward)
"from that time forward";
 
3. Toward the future; at a later time (= ahead)
"I look forward to seeing you";
 
4. In the usual direction of travel, straight on (= ahead, onward, onwards, forwards, forrader [dialect])
"they went slowly forward in the mud";
 
5. Near or toward the bow of a ship or cockpit of a plane (= fore)
"the captain went forward to check the instruments";

- Adjective: forward
1. At, near or directed toward the front
"the forward section of the aircraft"; "a forward plunge down the stairs"; "forward motion"
 
2. Used of temperament or behaviour; lacking restraint or modesty
"a forward child badly in need of discipline"
 
3. Of the transmission gear causing forward movement in a motor vehicle
"in a forward gear"
 
4. Moving forward (= advancing, forward-moving)

- Verb: forward (derived forms: forwarded, forwarding, forwards)
1. Send or ship onward from an intermediate post or station in transit (= send on)
"forward my mail";

- Noun: forward (derived forms: forwards)
1. The person who plays the position of forward in certain games, such as basketball, soccer, or hockey
 
2. A position on a basketball, soccer, or hockey team
""",
  );

  final String keyword = "forward";
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
    await flutterTts.speak("""forward""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She leaned forward and kissed him on the cheek.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He took two steps forwards.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They ran forward to welcome her.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Turn your wrists so that your palms face forward.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The next scene takes the story forwards five years.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Looking forward, we hope to expand our operations in several of our overseas branches.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We consider this agreement to be an important step forward.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Cutting our costs is the only way forward.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The project will go forward as planned.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It was decided to bring the meeting forward two weeks.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The main cabin is situated forward of the mast.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The door opened, blocking his forward movement.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A bolt may have fallen off the plane's forward door.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The plans are still no further forward than they were last month.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We will be forwarding our new catalogue to you next week.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I’m forwarding you this email that I had from Jeff.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Could you forward any mail to us in New York?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He saw the assignment as a way to forward his career.""");
  }

  @override
  Widget build(BuildContext context) {
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
                      word: """forward""",
                      // alsoEnglishWord: "also: forward",
                      britshText: """IpaUK: /ˈfɔːwəd/""",
                      americanText: """IpaUS: /ˈfɔːrwərd/""",
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
کوردی: بەرەو پێش، پێشەوە، بەر، پێش‌تر،	داھاتوو،	سەربە داھاتوو، داھاتوویی،	ڕوولە پێشەوە، بەرەو پێشەوە،	زووترگەییو، پێش‌وەخت،	پێشکەوتوو، پێشکەوتن‌خواز، پێشەنگ،	خوازیار، ئامادە، پێخۆشبوو، ھۆگر، تامەزرۆ،	ڕووھەڵماڵراو، بێ‌شەرم، ڕوودار، بێ‌شەرمانە،	شینکڕی، پێشکڕی(ن)،	تونڕەو، ڕادیکاڵ
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵکار) بەرەو پێشەوە"""),
                    SentencesRow(
                      englishText:
                          """She leaned forward and kissed him on the cheek.""",
                      kurdishText:
                          """بۆ پێشەوە چەمایەوە و ماچی سەر گۆنایی کرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He took two steps forwards.""",
                      kurdishText: """دوو ھەنگاوی بۆ پێشەوە نا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They ran forward to welcome her.""",
                      kurdishText:
                          """بۆ پێشەوە ڕایان کرد بۆ بەخێرھاتن کردنی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Turn your wrists so that your palms face forward.""",
                      kurdishText:
                          """مەچەکت سووڕ بدە بۆ ئەوەی ناولەپت ڕووی لە پێشەوە بێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵکار) بەرەو داھاتوو"""),
                    SentencesRow(
                      englishText:
                          """The next scene takes the story forwards five years.""",
                      kurdishText:
                          """دیمەنی دواتر چیرۆکەکە پێنج ساڵ دەباتە پێشەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Looking forward, we hope to expand our operations in several of our overseas branches.""",
                      kurdishText:
                          """لە داھاتوودا، بەھیواین کارەکانمان فراوان بکەین بۆ ژمارەیەک لە لقەکانی دەرەوەمان.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵکار) بەرەو ئەنجامی باش"""),
                    SentencesRow(
                      englishText:
                          """We consider this agreement to be an important step forward.""",
                      kurdishText:
                          """ئەم ڕێکەوتنە بە ھەنگاوێک بەرەو پێشەوە دادەنێین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Cutting our costs is the only way forward.""",
                      kurdishText:
                          """کەمکردنەوەی خەرجییەکانمان تەنھا ڕێگەیە بەرەو پێشەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The project will go forward (= continue) as planned.""",
                      kurdishText:
                          """پڕۆژەکە وەک ئەوەی پلانی بۆ دانراوە بۆ پێشەوە دەچێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵکار) پێشتر؛ زووتر"""),
                    SentencesRow(
                      englishText:
                          """It was decided to bring the meeting forward two weeks.""",
                      kurdishText:
                          """بڕیاردرا چاوپێکەوتنەکە دوو ھەفتە بھێندرێتە پێشەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵکار) بەرەو پێشەوەی فڕۆکە یان کەشتی"""),
                    SentencesRow(
                      englishText:
                          """The main cabin is situated forward of (= in front of) the mast.""",
                      kurdishText: """کابینەی یەکەم لە پێشەوەی داراڵایەکە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) بەرەو پێشەوە"""),
                    SentencesRow(
                      englishText:
                          """The door opened, blocking his forward movement.""",
                      kurdishText:
                          """دەرگاکە کرایەوە و جووڵەی بەرەوپێشیی گرت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) کە کەوتووەتە پێشەوە"""),
                    SentencesRow(
                      englishText:
                          """A bolt may have fallen off the plane's forward door.""",
                      kurdishText:
                          """بورغوویەک ڕەنگە لە دەرگای پێشەوەی فڕۆکەکە کەوتبێت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ھاوەڵناو) پەیوەندیدار بە داھاتوو"""),
                    SentencesRow(
                      englishText:
                          """The plans are still no further forward than they were last month.""",
                      kurdishText:
                          """پلانەکان ھیچ بۆ پێشەوە نەچوون وەک لە مانگێک پێش ئێستا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) ناردن یان پێدانی کەلوپەل یان زانیاری بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          """We will be forwarding our new catalogue to you next week.""",
                      kurdishText:
                          """کاتەلۆگی تازەمان ھەفتەی داھاتوو بۆتان دەنێرین.""",
                      englishNote:
                          """Also: We will be forwarding you our new catalogue next week.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I’m forwarding you this email that I had from Jeff.""",
                      kurdishText:
                          """ئەم ئیمەیڵەت بۆ دەنێرم کە لە جێفەوە پێمگەشت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) ناردنی نامە، ھتد لەو شوێنەوەی کە کەسێک پێشتر دەژیا بۆ شوێنی ژیانی ئێستای"""),
                    SentencesRow(
                      englishText:
                          """Could you forward any mail to us in New York?""",
                      kurdishText:
                          """دەتوانیت ھەر مەیڵێکمان بۆ بنێریت بۆ نیویۆرک؟""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) یارمەتیدانی بەرەوپێشبردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """He saw the assignment as a way to forward his career.""",
                      kurdishText:
                          """ئەرکەکەی وەک ڕێگایەک بینی بۆ بەرەوپێشبردنی کارەکەی.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
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
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
                  // YoutubeEmbeddedseven(),
                  // YoutubeEmbeddedeight(),
                  // YoutubeEmbeddednine(),
                  // YoutubeEmbeddedten(),
                  // YoutubeEmbeddedeleven(),
                  // YoutubeEmbeddedtwelve(),
                  // YoutubeEmbeddedthirteen(),
                  // YoutubeEmbeddeddfourteen(),
                  // YoutubeEmbeddedfifteen(),
                  // YoutubeEmbeddeddsixteen(),
                  // YoutubeEmbeddeddseventeen(),
                  // YoutubeEmbeddeddeighteen(),
                  // YoutubeEmbeddeddnineteen(),
                  // YoutubeEmbeddedtwenty(),
                  // YoutubeEmbeddedmulti(),
                  YoutubeEmbeddedend(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _videoIdend = '_spuxXnul0U';
const double _startSecondsend = 1017;
const String _videoIdone = 'khOUvmOQExc';
const double _startSecondsone = 687;
const String _videoIdtwo = 'AvdIqDP0wbo';
const double _startSecondstwo = 33;
const String _videoIdthree = 'oRg7kCVZ3cc';
const double _startSecondsthree = 25;
const String _videoIdfour = '4zAkoXyhrdI';
const double _startSecondsfour = 166;
const String _videoIdfive = 'tsxmyL7TUJg';
const double _startSecondsfive = 1418;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB