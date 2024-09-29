import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomfort extends StatelessWidget {
  EnglishEntrycomfort({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomfort(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("comfort");
  }

  Future<void> speakcomforts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The hotel offers a high standard of comfort and service.");
  }

  Future<void> speakcomforts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I didn't want to leave the comfort of my bed.");
  }

  Future<void> speakcomforts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They had enough money to live in comfort in their old age.");
  }

  Future<void> speakcomforts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I dress for comfort rather than elegance.");
  }

  Future<void> speakcomforts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I tried to offer a few words of comfort.");
  }

  Future<void> speakcomforts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His words were of little comfort in the circumstances.");
  }

  Future<void> speakcomforts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("If it's any comfort to you, I'm in the same situation.");
  }

  Future<void> speakcomforts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I drew comfort from his words.");
  }

  Future<void> speakcomforts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her being with me was such a comfort.");
  }

  Future<void> speakcomforts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The children have been a great comfort to me through all of this.");
  }

  Future<void> speakcomforts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's a comfort to know that she is safe.");
  }

  Future<void> speakcomforts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It was a comfort to her to know that I was never far away.");
  }

  Future<void> speakcomforts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The hotel has all modern comforts.");
  }

  Future<void> speakcomforts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The victim's widow was today being comforted by family and friends.");
  }

  Future<void> speakcomforts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The idea that he was not alone comforted him greatly.");
  }

  Future<void> speakcomforts16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She comforted herself with the thought that it would soon be spring.");
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
                            EntryTitle(word: "comfort"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌmfət/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomfort("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌmfərt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomfort("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: تەناھی، ئاسایش، ئاسوودەیی، حەساوەیی،	دڵنەوایی، دڵخۆشی، دڵدانەوە، خەم‌ڕەوێن، مایەی دڵخۆشی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دۆخی ئاسوودەیی دوور لە ئازار"),
                          SentencesRow(
                            englishText:
                                "The hotel offers a high standard of comfort and service.",
                            kurdishText:
                                "ھوتێلەکە ئاستێکی بەرزی ئاسوودەیی و خزمەت پێشکەش دەکات.",
                            onPressedBritish: () => speakcomforts1("en-GB"),
                            onPressedAmerican: () => speakcomforts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I didn't want to leave the comfort of my bed.",
                            kurdishText:
                                "نەمدەویست ئاسوودەیی جێخەوەکەم بە جێبھێڵم.",
                            onPressedBritish: () => speakcomforts2("en-GB"),
                            onPressedAmerican: () => speakcomforts2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They had enough money to live in comfort in their old age.",
                                    kurdishText:
                                        "پارەی پێویستییان ھەبوو کە لە ئاسوودەییدا بژین لە تەمەنی پیرییاندا.",
                                    onPressedBritish: () =>
                                        speakcomforts3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomforts3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I dress for comfort rather than elegance.",
                                    kurdishText:
                                        "بۆ ئاسوودەیی جل دەپۆشم نەک بۆ جوانی.",
                                    onPressedBritish: () =>
                                        speakcomforts4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomforts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) دۆخی نەبوونی نیگەرانی و ئازار"),
                          SentencesRow(
                            englishText:
                                "I tried to offer a few words of comfort.",
                            kurdishText: "ھەوڵم دا ھەندێک وشەی دڵنەوایی بڵێم.",
                            onPressedBritish: () => speakcomforts5("en-GB"),
                            onPressedAmerican: () => speakcomforts5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His words were of little comfort in the circumstances.",
                            kurdishText:
                                "قسەکانی دڵدانەوەی کەم بوون لە دۆخەکەدا.",
                            onPressedBritish: () => speakcomforts6("en-GB"),
                            onPressedAmerican: () => speakcomforts6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If it's any comfort to you, I'm in the same situation.",
                            kurdishText:
                                "ئەگەر ھیچ دڵدانەوەیک دەبێت بۆت، منیش لە ھەمان دۆخدام.",
                            onPressedBritish: () => speakcomforts7("en-GB"),
                            onPressedAmerican: () => speakcomforts7("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I drew comfort from his words.",
                                    kurdishText: "دڵنەواییم وەرگرت لە قسەکانی.",
                                    onPressedBritish: () =>
                                        speakcomforts8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomforts8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شتێک یان کەسێک کە جێگەی دڵدانەوەیە بۆت"),
                          SentencesRow(
                            englishText:
                                "Her being with me was such a comfort.",
                            kurdishText: "بوونی لەگەڵم دڵدانەوەیەکی گەورە بوو.",
                            onPressedBritish: () => speakcomforts9("en-GB"),
                            onPressedAmerican: () => speakcomforts9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The children have been a great comfort to me through all of this.",
                            kurdishText:
                                "منداڵەکان دڵنەواییەکی گەورە بوون بەدرێژایی ھەموو ئەەم.",
                            onPressedBritish: () => speakcomforts10("en-GB"),
                            onPressedAmerican: () => speakcomforts10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's a comfort to know that she is safe.",
                            kurdishText: "زانینی ئەوەی کە سەلامەتە ئارامبەخشە.",
                            onPressedBritish: () => speakcomforts11("en-GB"),
                            onPressedAmerican: () => speakcomforts11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It was a comfort to her to know that I was never far away.",
                            kurdishText:
                                "خەم‌ڕەوێنییەک بوو بۆی کە دەیزانی ھەرگیز زۆر دوور نەبووم.",
                            onPressedBritish: () => speakcomforts12("en-GB"),
                            onPressedAmerican: () => speakcomforts12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شتێک کە ژیانت ئاسوودە دەکات یان ئاسانتری دەکات"),
                          SentencesRow(
                            englishText:
                                "The hotel has all modern comforts (/every modern comfort).",
                            kurdishText:
                                "ھوتێلەکە ھەموو ئاسانکارییەکانی سەردەمی تێدایە.",
                            onPressedBritish: () => speakcomforts13("en-GB"),
                            onPressedAmerican: () => speakcomforts13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) دڵنەوایی دانەوە"),
                          SentencesRow(
                            englishText:
                                "The victim's widow was today being comforted by family and friends.",
                            kurdishText:
                                "بێوەژنی قوربانییەکە ئەمڕۆ لەلایەن خێزان و ھاوڕێیانەوە دڵنەوایی دەکرا.",
                            onPressedBritish: () => speakcomforts14("en-GB"),
                            onPressedAmerican: () => speakcomforts14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The idea that he was not alone comforted him greatly.",
                            kurdishText:
                                "بیرکردنەوەی ئەوەی کە تەنھا نەبوو زۆر ئاسوودەی دەکرد.",
                            onPressedBritish: () => speakcomforts15("en-GB"),
                            onPressedAmerican: () => speakcomforts15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She comforted herself with the thought that it would soon be spring.",
                            kurdishText:
                                "دڵی خۆی دەدایەوە بەوەی زوو نابا بەھار دەبێت.",
                            onPressedBritish: () => speakcomforts16("en-GB"),
                            onPressedAmerican: () => speakcomforts16("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: comfort (derived forms: comforts)
1. A state of being relaxed and feeling no pain (= comfortableness)
"he is a man who enjoys his comfort";
 
2. A feeling of freedom from worry or disappointment
 
3. The act of consoling; giving relief in affliction (= consolation, solace)
"his presence was a comfort to her";
 
4. A freedom from financial difficulty that promotes a comfortable state (= ease)
"he had all the material comforts of this world";
 
5. Satisfaction or physical well-being provided by a person or thing
"his friendship was a comfort"; "a padded chair was one of the room's few comforts"
 
6. Bedding made of two layers of cloth filled with stuffing and stitched together (= quilt, comforter, puff)
 
7. Assistance, such as that provided to an enemy or to a known criminal
"it gave comfort to the enemy"

- Verb: comfort (derived forms: comforts, comforted, comforting)
1. Give moral or emotional strength to (= soothe, console, solace)
 
2. Lessen pain or discomfort; alleviate (= ease)
"comfort the pain in your legs";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'VZXyCwokQh8';
  final double _startSeconds = 48;

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

  final String _videoId = 'SyJFybCfDZU';
  final double _startSeconds = 45;

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

  final String _videoId = 'FShqQfUILwM';
  final double _startSeconds = 252;

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

  final String _videoId = 'gUYAyZu-Wt4';
  final double _startSeconds = 7;

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

  final String _videoId = 'C81R24LZcDE';
  final double _startSeconds = 8;

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

  final String _videoId = 'Ij71DXDgvz0';
  final double _startSeconds = 0;

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

  final String _videoId = 'CwzaVzIhgmk';
  final double _startSeconds = 0;

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