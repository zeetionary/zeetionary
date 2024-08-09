import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychallenge extends StatelessWidget {
  // blank divider
  EnglishEntrychallenge({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchallenge(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("challenge");
  }

  Future<void> speakchallenges1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The role will be the biggest challenge of his acting career.");
  }

  Future<void> speakchallenges2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She still faces many challenges.");
  }

  Future<void> speakchallenges3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Destruction of the environment is one of the most serious challenges we face.");
  }

  Future<void> speakchallenges4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The greatest challenge facing the region is unemployment.");
  }

  Future<void> speakchallenges5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She accepted his challenge to a debate on the issue.");
  }

  Future<void> speakchallenges6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their legal challenge was unsuccessful.");
  }

  Future<void> speakchallenges7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It was a direct challenge to the president's authority.");
  }

  Future<void> speakchallenges8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His legal team immediately sought to challenge the decision.");
  }

  Future<void> speakchallenges9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She does not like anyone challenging her authority.");
  }

  Future<void> speakchallenges10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The opposition leader challenged the prime minister to call an election.");
  }

  Future<void> speakchallenges11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was poised to challenge for the party leadership.");
  }

  Future<void> speakchallenges12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("No one has seriously challenged the champion.");
  }

  Future<void> speakchallenges13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were challenged by police at the border.");
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
                            EntryTitle(word: "challenge"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃælɪndʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchallenge("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃælɪndʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchallenge("en-US"),
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
کوردی: بەرەنگاری، بەرەنگارخوازی، بەرەنگاربوونەوە، بەگژداچوون(ەوە)، تێخوڕین، لەڕووداوێستان، بەرپەرچ‌دانەوە، بانگ‌کردن بۆ شەڕ یان پێشبڕکێ، ھاڕەوگیفە خۆھەڵکێشی، دژایەتی، ناکۆکی،	دەستوور یان فەرمانی وێستان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ئەرکێکی قورس کە توانا و شارەزایی کەسێک تاقیدەکاتەوە"),
                          SentencesRow(
                            englishText:
                                "The role will be the biggest challenge of his acting career.",
                            kurdishText:
                                "ڕۆڵەکە دەبێتە قورسترین بەرەنگاریی کاری ھونەریی.", // challenge",
                            onPressedBritish: () => speakchallenges1("en-GB"),
                            onPressedAmerican: () => speakchallenges1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She still faces many challenges (= has to deal with them).",
                            kurdishText: "ھێشتا ڕووبەڕووی زۆر سەختی دەبێتەوە.",
                            onPressedBritish: () => speakchallenges2("en-GB"),
                            onPressedAmerican: () => speakchallenges2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Destruction of the environment is one of the most serious challenges we face.",
                                    kurdishText:
                                        "لەناوبردنی ژینگە یەکێکە لەو سەختییە دژوارانەی کە ڕووبەڕووی دەبینەوە.",
                                    onPressedBritish: () =>
                                        speakchallenges3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchallenges3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The greatest challenge facing the region is unemployment.",
                            kurdishText:
                                "گەورەترین دژواری ژە ڕووبەڕووی ھەرێمەکە بووەتەوە بێ‌کارییە.",
                            onPressedBritish: () => speakchallenges4("en-GB"),
                            onPressedAmerican: () => speakchallenges4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پێشنیار یان بانگھێشتی کەسێک بۆ چوونە ناو پێشبڕکێیەک، شەڕێک، ھتد"),
                          SentencesRow(
                            englishText:
                                "She accepted his challenge to a debate on the issue.",
                            kurdishText:
                                "چاڵنجی ئەوی بۆ ھەبوونی دیبەیت لەسەر کێشەکە پەسەندکرد.",
                            onPressedBritish: () => speakchallenges5("en-GB"),
                            onPressedAmerican: () => speakchallenges5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) وتەیەک یان کردارێک کە پیشانی دەدات کە کەسێک ڕەتی‌دەکاتەوە شتێک پەسەند بکات و گومانی ھەیە کە ڕاست، یاسایی، ھتد بێت"),
                          SentencesRow(
                            englishText:
                                "Their legal challenge was unsuccessful.",
                            kurdishText:
                                "بەرھەڵستییە یاساییەکەیان شکستخواردوو بوو.",
                            onPressedBritish: () => speakchallenges6("en-GB"),
                            onPressedAmerican: () => speakchallenges6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It was a direct challenge to the president's authority.",
                            kurdishText:
                                "بەرھەڵستی ڕاستەوخۆی دەسەڵاتەکانی سەرۆک بوو.",
                            onPressedBritish: () => speakchallenges7("en-GB"),
                            onPressedAmerican: () => speakchallenges7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) ڕەتکردنەوەی پەسەندکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "His legal team immediately sought to challenge the decision.",
                            kurdishText:
                                "تیمە یاساییەکەی دەستبەجێ ویستیان بەرھەڵستی بڕیارەکە بکەن.",
                            onPressedBritish: () => speakchallenges8("en-GB"),
                            onPressedAmerican: () => speakchallenges8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She does not like anyone challenging her authority.",
                            kurdishText:
                                "حەزی بە ھیچ کەس نییە بەرھەڵستی دەسەڵاتەکانی بکات.",
                            onPressedBritish: () => speakchallenges9("en-GB"),
                            onPressedAmerican: () => speakchallenges9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) پێشنیازکردنی کردنی شتێک بۆ کەسێک"),
                          SentencesRow(
                            englishText:
                                "The opposition leader challenged the prime minister to call an election.",
                            kurdishText:
                                "سەرۆکی ئۆپۆزسیۆن تەحەدای سەرۆک وەزیرانی کرد بڕیاری ھەڵبژاردن بدات.",
                            onPressedBritish: () => speakchallenges10("en-GB"),
                            onPressedAmerican: () => speakchallenges10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) چوونە پێشبڕکێیەکەوە دژ بە کەسێک بۆ بەدەستھێنانی  شتێک یان بردنی شتێک لێیان"),
                          SentencesRow(
                            englishText:
                                "She was poised to challenge for the party leadership.",
                            kurdishText:
                                "ئامادەبوو بۆ ڕکابەری بۆ ڕابەرێتی پارتەکە.",
                            onPressedBritish: () => speakchallenges11("en-GB"),
                            onPressedAmerican: () => speakchallenges11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) تاقیکردنەوەی توانا و شارەزایی کەسێک"),
                          SentencesRow(
                            englishText:
                                "No one has seriously challenged the champion.",
                            kurdishText:
                                "ھیچ کەس بەرەنگاری نەبووە وەک پاڵەوانێک.",
                            onPressedBritish: () => speakchallenges12("en-GB"),
                            onPressedAmerican: () => speakchallenges12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) فەرمانکردن بە کەسێک کە بوەستێت و خۆی بناسێنێت یان ئەوەی چی دەکات"),
                          SentencesRow(
                            englishText:
                                "We were challenged by police at the border.",
                            kurdishText:
                                "لەلایەن پۆلیسەوە لە سنوورەکە وەستێندراین.",
                            onPressedBritish: () => speakchallenges13("en-GB"),
                            onPressedAmerican: () => speakchallenges13("en-US"),
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
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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
- Verb: challenge (derived forms: challenging, challenges, challenged)
1. Question the truth or validity of; take exception to (= dispute, gainsay)
"She challenged his claims";
 
2. Issue a challenge to
"Fischer challenged Spassky to a match"
 
3. Ask for identification
"The illegal immigrant was challenged by the border guard"
 
4. (law) raise a formal objection in a court of law (= take exception)

- Noun: challenge (derived forms: challenges)
1. A demanding or stimulating situation
"they reacted irrationally to the challenge of Russian power"
 
2. A call to engage in a contest or fight
 
3. Questioning a statement and demanding an explanation
"his challenge of the assumption that Japan is still our enemy"
 
4. A formal objection to the selection of a particular person as a juror
 
5. A demand by a sentry for a password or identification
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

  final String _videoId = 'QhjY1u8scAk';
  final double _startSeconds = 15;

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

  final String _videoId = 'RsFb2DubRDI';
  final double _startSeconds = 56;

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

  final String _videoId = 'UedulOcGomw';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'Q2hxlxWYTN0';
  final double _startSeconds = 21;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 279;

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

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 23;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 95;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 927;

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
