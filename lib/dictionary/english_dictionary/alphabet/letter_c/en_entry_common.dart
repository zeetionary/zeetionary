import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommon extends StatelessWidget {
// blank divider
  EnglishEntrycommon({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommon(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("common");
  }

  Future<void> speakcommons1(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Breast cancer is the most common form of cancer among women in this country.");
  }

  Future<void> speakcommons2(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Jackson is a common English name.");
  }

  Future<void> speakcommons3(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Heart disease was the most common cause of death in those aged over 85.");
  }

  Future<void> speakcommons4(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The disease is very common in young horses.");
  }

  Future<void> speakcommons5(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Allergies to milk are quite common in childhood.");
  }

  Future<void> speakcommons6(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stomach pain is very common in children.");
  }

  Future<void> speakcommons7(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They share a common interest in photography.");
  }

  Future<void> speakcommons8(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We are working together for a common purpose.");
  }

  Future<void> speakcommons9(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This decision was taken for the common good.");
  }

  Future<void> speakcommons10(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This attitude is common to most young men in the armed services.");
  }

  Future<void> speakcommons11(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Shakespeare's work was popular among the common people in his day.");
  }

  Future<void> speakcommons12(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In most people's eyes she was nothing more than a common criminal.");
  }

  Future<void> speakcommons13(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's only common decency to let her know what's happening.");
  }

  Future<void> speakcommons14(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This was the staple food of the common people.");
  }

  Future<void> speakcommons15(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This fish is not common in European waters.");
  }

  Future<void> speakcommons16(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She thought he was very common and uneducated.");
  }

  Future<void> speakcommons17(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I wish you wouldn't use that word—it sounds so common.");
  }

  Future<void> speakcommons18(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't like Sandra. She seems a bit common to me.");
  }

  Future<void> speakcommons19(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We went for a walk on the common.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "common"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmən/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommon("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːmən/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommon("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ھاوبەش، ھەڤپار، ھەڤپشک، خەڵکی ڕەمەکی، گشتی، گەلەمپەری، ھەموو، گشت، تێکڕا، پێکەوەیی،	ئاسایی، بێ‌پلەوپایە، عەدەتی،	باو، بەبڕەو، داب،	زۆر، فرە، گەلێ،	سادە، ناتایبەتی،	ڕەمەکی، بازاڕی،	سووک، ھیچەکە،	بێ‌ڕەوشت، چیمەن، مێرگ، باخی گشتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) شتێک کە باوە و زۆر ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "Breast cancer is the most common form of cancer among women in this country.",
                            kurdishText:
                                "شێرپەنجەی مەمک یەکێکە لە باوترین جۆرەکانی شێرپەنجە لە ناو ژناندا لەم وڵاتە.", // common",
                            onPressedBritish: () => speakcommons1("en-GB"),
                            onPressedAmerican: () => speakcommons1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Jackson is a common English name.",
                            kurdishText: "جاکسن ناوێکی ئینگلیزی باوە.",
                            onPressedBritish: () => speakcommons2("en-GB"),
                            onPressedAmerican: () => speakcommons2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Heart disease was the most common cause of death in those aged over 85.",
                                    kurdishText:
                                        "نەخۆشی دڵ باوترین ھۆکاری مردن بوو لە کەسانی تەمەن سەروو ٨٥ ساڵدا.",
                                    onPressedBritish: () =>
                                        speakcommons3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The disease is very common in young horses.",
                                    kurdishText:
                                        "ئەم نەخۆشییە زۆر باوە لەناو بەچکە ئەسپدا.",
                                    onPressedBritish: () =>
                                        speakcommons4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Allergies to milk are quite common in childhood.",
                                    kurdishText:
                                        "ھەستیاری بە شیر زۆر باوە لە منداڵیدا.",
                                    onPressedBritish: () =>
                                        speakcommons5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Stomach pain is very common in children.",
                                    kurdishText:
                                        "ئازاری گەدە زۆر باوە لە منداڵاندا.",
                                    onPressedBritish: () =>
                                        speakcommons6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) شتێک کە بوونی ھەیە لە دوو کەس یان زیاتردا، یان لە ژمارەیەک کەسدا"),
                          SentencesRow(
                            englishText:
                                "They share a common interest in photography.",
                            kurdishText:
                                "خولیایەکی ھاوبەشیان ھەیە بۆ وێنەگرتن.",
                            onPressedBritish: () => speakcommons7("en-GB"),
                            onPressedAmerican: () => speakcommons7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We are working together for a common purpose.",
                            kurdishText: "بۆ ئامانجێکی ھاوبەش کار دەکەین.",
                            onPressedBritish: () => speakcommons8("en-GB"),
                            onPressedAmerican: () => speakcommons8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "This decision was taken for the common good (= the advantage of everyone).",
                                    kurdishText:
                                        "ئەم بڕیارە بۆ چاکەی ھەموان درا.",
                                    onPressedBritish: () =>
                                        speakcommons9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "This attitude is common to most young men in the armed services.",
                                    kurdishText:
                                        "ئەم ھەڵسوکەوتە گشتییە لەناو زۆرینەی پیاوانی گەنجی سوپادا.",
                                    onPressedBritish: () =>
                                        speakcommons10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) شتێک کە ئاساییە؛ تایبەت نییە"),
                          SentencesRow(
                            englishText:
                                "Shakespeare's work was popular among the common people in his day.",
                            kurdishText:
                                "کارەکانی شکسپیر زۆر بەناوبانگ بوون لەناو خەڵکی ئاساییدا لە ڕپژانی خۆیدا.",
                            onPressedBritish: () => speakcommons11("en-GB"),
                            onPressedAmerican: () => speakcommons11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In most people's eyes she was nothing more than a common criminal.",
                            kurdishText:
                                "لە ڕوانگەی زۆر کەسەەو تەنھا تاوانبارێکی ئاسایی بوو.",
                            onPressedBritish: () => speakcommons12("en-GB"),
                            onPressedAmerican: () => speakcommons12("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "It's only common decency to let her know what's happening (= people would expect it).",
                                    kurdishText:
                                        "ئەوە تەنھا دابودەستووری چاوەڕواکراوە کە پێی بڵێیت چی ڕوودەدات.",
                                    onPressedBritish: () =>
                                        speakcommons13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "This was the staple food of the common people.",
                                    kurdishText:
                                        "ئەمە خواردنی سەرەکی خەڵکی بوو.",
                                    onPressedBritish: () =>
                                        speakcommons14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommons14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) ئاژەڵێک یان ڕووەکێک کە بە ژمارەی زۆر بوونی ھەیە و دەگمەن نییە"),
                          SentencesRow(
                            englishText:
                                "This fish is not common in European waters.",
                            kurdishText:
                                "ئەم ماسییە باو نییە لە ئاوەکانی ئەورووپیا.",
                            onPressedBritish: () => speakcommons15("en-GB"),
                            onPressedAmerican: () => speakcommons15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) تایبەت بە کەسێکی کە لە چینی خوارەوەیە و ھەڵسوکەوتی باشی نییە"),
                          SentencesRow(
                            englishText:
                                "She thought he was very common and uneducated.",
                            kurdishText:
                                "وای بیردەکردەوە کە زۆر عەشایەر و نەخوێندەوارە.",
                            onPressedBritish: () => speakcommons16("en-GB"),
                            onPressedAmerican: () => speakcommons16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I wish you wouldn't use that word—it sounds so common.",
                            kurdishText:
                                "بەھیوابووم ئەو وشەیە بەکارنەھێنیت، زۆر عەشایەرانەیە.",
                            onPressedBritish: () => speakcommons17("en-GB"),
                            onPressedAmerican: () => speakcommons17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't like Sandra. She seems a bit common to me.",
                            kurdishText:
                                "حەزم بە ساندرا نییە، زۆر عەشایەرە لام.",
                            onPressedBritish: () => speakcommons18("en-GB"),
                            onPressedAmerican: () => speakcommons18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ناوچەیەک لە گوندێک یان شارۆچکەیەک کە ھەموو کەس دەتوانێت بەکاریبێنێت"),
                          SentencesRow(
                            englishText: "We went for a walk on the common.",
                            kurdishText: "چووین بۆ پیاسەیەک لە باخە گشتییەکە.",
                            onPressedBritish: () => speakcommons19("en-GB"),
                            onPressedAmerican: () => speakcommons19("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
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
            ],
          ),
        ),
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
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

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: common (derived forms: commonest, commoner) 
1. Shared by or having the same connection with two or more parties (= mutual)
"a common friend";
 
2. Found in large numbers or in a large quantity (= usual)
"a common complaint";
 
3. Belonging to or participated in by a community as a whole; public
"for the common good"; "common lands are set aside for use by all members of a community"
 
4. Having no special distinction or quality; widely known or commonly encountered; average or ordinary or usual
"the common man"; "a common sailor"; "the common cold"; "a common nuisance"; "followed common procedure"; "it is common knowledge that she lives alone"; "the common housefly"; "a common brand of soap"
 
5. Being or characteristic of or appropriate to everyday language (= vernacular, vulgar)
"common parlance";
 
6. (disparaging) of or associated with ordinary, common people (= plebeian, vulgar, unwashed)
"the common people in those days suffered greatly"; "behaviour that branded him as common";
 
7. Of low or inferior quality or value (= coarse)
"produced...the common cloths used by the poorer population";
 
8. Lacking refinement, cultivation or taste (= coarse, rough-cut, uncouth, vulgar)
"behaviour that branded him as common";
 
9. To be expected; standard
"common decency"

- Noun: common (derived forms: commons)
1. A piece of open land for recreational use in an urban area (= park, commons, green)
"they went for a walk in the common";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'ToNGJhWPz1o';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'Vx8NyHbh88s';
  final double _startSeconds = 11;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'AAIYR1bs-vQ';
  final double _startSeconds = 3;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 103;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'bXCOI_LQ_0o';
  final double _startSeconds = 9;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = '8T7lEvtwETA';
  final double _startSeconds = 193;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'iKv4oc2zbeA';
  final double _startSeconds = 210;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB