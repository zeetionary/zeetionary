import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontent extends StatelessWidget {
// blank divider
  EnglishEntrycontent({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("content");
  }

  Future<void> speakcontents1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He tipped the contents of the bag onto the table.");
  }

  Future<void> speakcontents2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Fire has caused severe damage to the contents of the building.");
  }

  Future<void> speakcontents3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She picked up the glass and drank the contents.");
  }

  Future<void> speakcontents4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scroll down the table of contents to find areas that interest you.");
  }

  Future<void> speakcontents5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her poetry has a good deal of political content.");
  }

  Future<void> speakcontents6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The content of the course depends on what the students would like to study.");
  }

  Future<void> speakcontents7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Chocolate has a high fat content.");
  }

  Future<void> speakcontents8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We plan to spend more on creating content for the website.");
  }

  Future<void> speakcontents9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They haven't updated the content of their site.");
  }

  Future<void> speakcontents10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Not content with stealing my boyfriend, she has turned all my friends against me.");
  }

  Future<void> speakcontents11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had to be content with third place.");
  }

  Future<void> speakcontents12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She seemed quite content with the idea.");
  }

  Future<void> speakcontents13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was content to wait.");
  }

  Future<void> speakcontents14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She stood for a moment looking with content at her husband.");
  }

  Future<void> speakcontents15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Martina contented herself with a bowl of soup.");
  }

  Future<void> speakcontents16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The crowd contented themselves with shouting insults.");
  }

  Future<void> speakcontents17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My apology seemed to content him.");
  }

  Future<void> speakcontents18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Nothing would content her.");
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
                            EntryTitle(word: "content"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntent/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontent("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntent/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontent("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ناوەرۆک، نێوەرۆک، نێواخن، ناواخن، تیایە،	بڕ، ڕادە، بارستە، ڕازی، قایل، قانع، ملکەچ، بەقنیات،	پێخۆش‌بوو، ئامادە، حازر، ساز، پێخوش‌بوون، قایل‌بوون، بێ‌نیازی، ڕازی‌بوون، قنیات، قایلی، ڕەزامەندی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ئەو شتانەی لە شتێکدان"),
                          SentencesRow(
                            englishText:
                                "He tipped the contents of the bag onto the table.",
                            kurdishText:
                                "ناواخنی جانتاکەی خستە سەر مێزەکە.", // content",
                            onPressedBritish: () => speakcontents1("en-GB"),
                            onPressedAmerican: () => speakcontents1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Fire has caused severe damage to the contents of the building.",
                            kurdishText:
                                "ئاگر زیانی زۆری داوە لە شتەکانی ناو بیناکە.",
                            onPressedBritish: () => speakcontents2("en-GB"),
                            onPressedAmerican: () => speakcontents2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She picked up the glass and drank the contents.",
                            kurdishText:
                                "گڵاسەکەی ھەڵگرت و ئەوەی لە ناوی بوو خواردییەوە.",
                            onPressedBritish: () => speakcontents3("en-GB"),
                            onPressedAmerican: () => speakcontents3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) بەشە جیاوازەکانی کتێبێک"),
                          SentencesRow(
                            englishText:
                                "Scroll down the table of (= list of) contents to find areas that interest you.",
                            kurdishText:
                                "بە خشتەی ناوەڕۆکەکاندا بچۆ خوارەوە بۆ دۆزینەوەی ئەو باباتانەی کە سەرنجت ڕادەکێشن.",
                            onPressedBritish: () => speakcontents4("en-GB"),
                            onPressedAmerican: () => speakcontents4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو بابەتەی کتێبێک، وتارێک، پڕۆگرامێک، ھتد باسی دەکات"),
                          SentencesRow(
                            englishText:
                                "Her poetry has a good deal of political content.",
                            kurdishText:
                                "ھۆنراوەکانی ڕێژەیەکی زۆر لە ناوەڕۆکی سیاسییان تێدایە.",
                            onPressedBritish: () => speakcontents5("en-GB"),
                            onPressedAmerican: () => speakcontents5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The content of the course depends on what the students would like to study.",
                            kurdishText:
                                "ناوەڕۆکی کۆرسەکە دەوەستێتە سەر ئەوەی خوێندکاران حەز دەکەن بیخوێنن.",
                            onPressedBritish: () => speakcontents6("en-GB"),
                            onPressedAmerican: () => speakcontents6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو ڕێژەیە لە شت کە لە شتێکی دیکەدا جێگای دەبێتەوە"),
                          SentencesRow(
                            englishText: "Chocolate has a high fat content.",
                            kurdishText: "چکلێت بڕێکی زۆر لە چەوری تێدایە.",
                            onPressedBritish: () => speakcontents7("en-GB"),
                            onPressedAmerican: () => speakcontents7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) زانیاری و بابەتی دیکەی سەر وێبسایتێک یان میدیای دیجیتاڵی دیکە"),
                          SentencesRow(
                            englishText:
                                "We plan to spend more on creating content for the website.",
                            kurdishText:
                                "پلانمان ھەیە زیاتر خەرج بکەین لە درووستکردنی بابەت بۆ وێبسایتەکە.",
                            onPressedBritish: () => speakcontents8("en-GB"),
                            onPressedAmerican: () => speakcontents8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They haven't updated the content of their site.",
                            kurdishText: "بابەتی سایتەکەیان تازە نەکردووەتەوە.",
                            onPressedBritish: () => speakcontents9("en-GB"),
                            onPressedAmerican: () => speakcontents9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) ئاسوودە بەوەی ھەتە"),
                          SentencesRow(
                            englishText:
                                "Not content with stealing my boyfriend (= not thinking that this was enough), she has turned all my friends against me.",
                            kurdishText:
                                "نەک ئەوەی ئاسوودە بووبێت بە دزینی دڵدارە کوڕەکەم، ھەموو ھاوڕێکانمی دژم ھانداوە.",
                            onPressedBritish: () => speakcontents10("en-GB"),
                            onPressedAmerican: () => speakcontents10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He had to be content with third place.",
                            kurdishText: "دەبێت قانع بێت بە پلەی سێیەم.",
                            onPressedBritish: () => speakcontents11("en-GB"),
                            onPressedAmerican: () => speakcontents11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She seemed quite content with the idea.",
                            kurdishText: "تەواو بەقەناعەت بوو بە پێشنیارەکە.",
                            onPressedBritish: () => speakcontents12("en-GB"),
                            onPressedAmerican: () => speakcontents12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) ئامادەی کردنی شتێک"),
                          SentencesRow(
                            englishText: "I was content to wait.",
                            kurdishText: "قایل بووم بە چاوەڕێ کردن.",
                            onPressedBritish: () => speakcontents13("en-GB"),
                            onPressedAmerican: () => speakcontents13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ھەستی دڵخۆشی و ئاسوودەیی بەوەی ھەتە"),
                          SentencesRow(
                            englishText:
                                "She stood for a moment looking with content at her husband.",
                            kurdishText:
                                "بۆ ساتێک وەستا بە ڕەزامەندییەوە لە ھاوسەرەکەی ڕوانی.",
                            onPressedBritish: () => speakcontents14("en-GB"),
                            onPressedAmerican: () => speakcontents14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) پەسەندکردن و ڕازیبوون بەوەی ھەتە و ھەوڵی باشتر نەدەیت"),
                          SentencesRow(
                            englishText:
                                "Martina contented herself with a bowl of soup.",
                            kurdishText:
                                "مارتینا بە دەفرێک شۆربا قەناعەتی کرد.",
                            onPressedBritish: () => speakcontents15("en-GB"),
                            onPressedAmerican: () => speakcontents15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The crowd contented themselves with shouting insults.",
                            kurdishText:
                                "جەماوەرەکە خۆیان ئاسوودە کرد بە جوێندان.",
                            onPressedBritish: () => speakcontents16("en-GB"),
                            onPressedAmerican: () => speakcontents16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) دڵخۆشکردن یان ئاسوودەکردنی کەسێک"),
                          SentencesRow(
                            englishText: "My apology seemed to content him.",
                            kurdishText:
                                "لێبووردنخوازییەکەم وادیاربوو ئاسوودەی کرد.",
                            onPressedBritish: () => speakcontents17("en-GB"),
                            onPressedAmerican: () => speakcontents17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Nothing would content her.",
                            kurdishText: "ھیچ ھێوری نەدەکردەوە.",
                            onPressedBritish: () => speakcontents18("en-GB"),
                            onPressedAmerican: () => speakcontents18("en-US"),
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
- Noun: content (derived forms: contents)
1. (usually plural) everything that is included in a collection and that is held or included in something (= contents)
"he emptied the contents of his pockets"; "the two groups were similar in content";
 
2. What a communication is about; the information conveyed or area of interest (= message, subject matter, substance)
 
3. The proportion of a substance that is contained in a mixture or alloy etc.
 
4. The amount that can be contained (= capacity)
 
5. The sum or range of what has been perceived, discovered, or learned (= cognitive content, mental object)
 
6. Something (a person or object or scene) selected by an artist or photographer for graphic representation (= subject, depicted object)
"a moving picture of a train is more dramatic than a still picture of the same content";

- Adjective: content
1. Satisfied or showing satisfaction with things as they are (= contented)
"a content smile";

- Noun: content (derived forms: contents)
1. The state of being contented with your situation in life (= contentedness)
"they could read to their hearts' content";

- Verb: content (derived forms: contents, contenting, contented)
1. Satisfy in a limited way
"He content[2]ed himself with one glass of beer per day"
 
2. Make or become satisfied
"I am content[2]ed"
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 28;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 668;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'j1BfO7VlIw4';
  final double _startSeconds = 622;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 727;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'oIdLlERQWsE';
  final double _startSeconds = 68;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = '7nPknkgc-Ps';
  final double _startSeconds = 20;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'jaRcbpN_KlM';
  final double _startSeconds = 1716;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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