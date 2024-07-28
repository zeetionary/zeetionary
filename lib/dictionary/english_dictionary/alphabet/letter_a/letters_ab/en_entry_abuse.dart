// replace these: EnglishEntryabuse - speakAbuse - abuse - /əˈbjuːs/

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryabuse extends StatelessWidget {
  EnglishEntryabuse({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabuse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abuse");
  }

  Future<void> speaka5741(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The boy had been sexually abused.");
  }

  Future<void> speaka15876(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She abused her position as principal by giving jobs to her friends.");
  }

  Future<void> speaka1258(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People who abuse alcohol over a long period will develop health problems.");
  }

  Future<void> speaka14582(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The man burst into a torrent of foul-mouthed racist abuse.");
  }

  Future<void> speaka25641(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She suffered years of physical abuse.");
  }

  Future<void> speaka45961(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was arrested on charges of corruption and abuse of power.");
  }

  Future<void> speaka26935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The legal system in this country is open to abuse.");
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
                            EntryTitle(word: "abuse"), // WORD ENTRY
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: noun > /əˈbjuːs/, verb > /əˈbjuːz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakabuse("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: noun > /əˈbjuːs/, verb > /əˈbjuːz/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakabuse("en-US"),
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
کوردی: چەوت یان خراپ بەکارھێنان، خراپ جووڵانەوە، ھەڵس‌وکەوتی خراپ، بە توندوتیژی جووڵانەوە، جنێو، دەم‌چەوتی، ڕەف، سخێف، دەس‌درێژی (ڕەگەزی)، ئەشکەنجەی لەشی/جەستەیی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) بەکارھێنانی شتێک بەشێوەیەکی خراپ"
                                  ""),
                          SentencesRow(
                            englishText:
                                "The legal system in this country is open to abuse.",
                            kurdishText:
                                "سیستەمی دادوەری لەم وڵاتە ئەکرێت خراپ بەکاربێت.",
                            onPressedBritish: () => speaka26935("en-GB"),
                            onPressedAmerican: () => speaka26935("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was arrested on charges of corruption and abuse of power.",
                            kurdishText:
                                "دەستگیرکرا بە تۆمەتەکانی گەندڵی و خراپ بەکارھێنانی دەسەڵات.",
                            onPressedBritish: () => speaka45961("en-GB"),
                            onPressedAmerican: () => speaka45961("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) مامەڵەی خراپ لەگەڵ کەسێک"""),
                          SentencesRow(
                            englishText:
                                "She suffered years of physical abuse.",
                            kurdishText:
                                "بۆ چەندین ساڵ بەدەست توندوتیژی جەستەییەوە ناڵاندی.",
                            onPressedBritish: () => speaka25641("en-GB"),
                            onPressedAmerican: () => speaka25641("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) قسەی چەوت و ناشرین و لەلایەن کەسێکی توڕەوە"""),
                          SentencesRow(
                            englishText:
                                "The man burst into a torrent of foul-mouthed racist abuse.",
                            kurdishText:
                                "پیاوەکە دەستیکرد بە ژمارەیەکی زۆر لە قسەی پیسی ڕەگەزپەرستییانە.",
                            onPressedBritish: () => speaka14582("en-GB"),
                            onPressedAmerican: () => speaka14582("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) بەکارھێنانی شتێک بە خراپی، یان بەکارھێنانی شتێکی خراپ کە زیانی بۆ جەستە ھەیە"""),
                          SentencesRow(
                            englishText:
                                "People who abuse alcohol over a long period will develop health problems.",
                            kurdishText:
                                "ئەو کەسانەی کە کە کحوول بۆ ماوەیەکی زۆر بەکاردێنن کێشەی تەندرووستییان بۆ درووستدەبێت.",
                            onPressedBritish: () => speaka1258("en-GB"),
                            onPressedAmerican: () => speaka1258("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەکارھێنانی زانیاری یان دەسەڵات بەشێوەیەکی خراپ"""),
                          SentencesRow(
                            englishText:
                                "She abused her position as principal by giving jobs to her friends.",
                            kurdishText:
                                "پێگەکەی خراپ بەکارھێنا وەک بەڕێوەبەرێک بە پێدانی کار بە ھاوڕێکانی.",
                            onPressedBritish: () => speaka15876("en-GB"),
                            onPressedAmerican: () => speaka15876("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) دەستدرێژیکردنە سەر کەسێک، زۆرجار دەستدرێژی سێکسی"""),
                          SentencesRow(
                            englishText: "The boy had been sexually abused.",
                            kurdishText: "کوڕەکە دەستدرێژیی سێکسی کرابووە سەر.",
                            onPressedBritish: () => speaka5741("en-GB"),
                            onPressedAmerican: () => speaka5741("en-US"),
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
- Verb: abuse (derived forms: abused, abuses, abusing)
1. Treat badly (= mistreat, maltreat, ill-use, ill-treat, step on [informal])
"This boss abuses his workers";
 
2. Use to one's advantage in a way that was not intended (= pervert, misuse)
"Don't abuse the system";
 
3. Use foul or abusive language towards (= clapperclaw [archaic], blackguard, shout)
"The actress abused the policeman who gave her a parking ticket";
 
4. Use wrongly, improperly or excessively
"Her husband often abuses alcohol"; "while she was pregnant, she abused drugs"
 
5. Subject to sexual assault (= sexually assault)
"she was abused by her uncle";

- Noun: abuse (derived forms: abuses)
1.Cruel or inhumane treatment (= maltreatment, ill-treatment, ill-usage)
"the child showed signs of physical abuse";
 
2. A rude expression intended to offend or hurt (= insult, revilement, contumely [archaic], vilification)
"when a student made a stupid mistake he spared them no abuse";
 
3. Improper or excessive use (= misuse)
"the abuse of public funds"; "alcohol abuse";
 
4. (law) a statutory offence that provides that it is a crime to knowingly cause another person to engage in an unwanted sexual act by force or threat (= sexual assault, sexual abuse, sex crime, sex offense [US], sex offence [Brit, Cdn])
"most states have replaced the common law definition of rape with statutes defining sexual abuse";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'WDetHC86Dgo';
  final double _startSeconds = 313;

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

  final String _videoId = '_0RTH57v66I';
  final double _startSeconds = 948;

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

  final String _videoId = '_0RTH57v66I';
  final double _startSeconds = 948;

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

  final String _videoId = 'vn1_vUghWzA';
  final double _startSeconds = 103;

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

  final String _videoId = 'wrsUbwKGuko';
  final double _startSeconds = 2654;

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

  final String _videoId = 'wrsUbwKGuko';
  final double _startSeconds = 2654;

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

  final String _videoId = 'Qc0vRRJuQic';
  final double _startSeconds = 53;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'SOq05_6w0ig';
  final double _startSeconds = 734;

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

// end
