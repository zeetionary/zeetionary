import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryacute - replace speakAcute - replace acute - /əˈkjuːt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryacute extends StatelessWidget {
  EnglishEntryacute({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakacute(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("acute");
  }

  Future<void> speakacute1247(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There is an acute shortage of water.");
  }

  Future<void> speakacut3749(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The scandal was an acute embarrassment for the President.");
  }

  Future<void> speakacute42(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("acute abdominal pains");
  }

  Future<void> speakacu5268(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dogs have an acute sense of smell.");
  }

  Future<void> speakacu5269(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her judgement is acute.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "acute"), // Find /əˈkjuːt/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈkjuːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakacute("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈkjuːt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakacute("en-US"),
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
کوردی: تیژ، زیرەک، زرینگ، زووتێگەیشتوو، توند، چەنگ (بەتایبەت بۆ ڕژدی دەم یان تیخی مەڵەغان و داس، بەرامبەرەکەی دەبێتە واڵ کە دەمەکەی (سەبارەت بە چەنگ) بڵاوترە)، ڕژد، تیژ (کەم‌تر لە90 پلە (ئەندازیاری)، سەخت، قووڵ، توند، گران، قەیراناوی، ئاستەم، ئاگا، خراپ، شپرزە، چاوتیژ، وریا، وردبین
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) شتێک کە بە ئاستێکی سەخت بوونی ھەیە"
                                  ""),
                          SentencesRow(
                            englishText: "There is an acute shortage of water.",
                            kurdishText: "کەمئاوییەکی سەخت بوونی ھەیە.",
                            onPressedBritish: () => speakacute1247("en-GB"),
                            onPressedAmerican: () => speakacute1247(
                                // REPLACE: acute /əˈkjuːt/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The scandal was an acute embarrassment for the President.",
                            kurdishText:
                                "ئابڕووچوونەکە شەرمەزارییەکی خراپ بوو بۆ سەرۆک.",
                            onPressedBritish: () => speakacut3749("en-GB"),
                            onPressedAmerican: () => speakacut3749(
                                // REPLACE: acute /əˈkjuːt/
                                "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) نەخۆشییەک کە لەناکاو سەخت و مەترسیدار دەبێت"""),
                          SentencesRow(
                            englishText: "acute abdominal pains",
                            kurdishText: "ئازاری سەختی سک ئێشە.",
                            onPressedBritish: () => speakacute42("en-GB"),
                            onPressedAmerican: () =>
                                speakacute42(// REPLACE: acute /əˈkjuːt/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ھەبوونی ھەستی تیژ"""),
                          SentencesRow(
                            englishText: "Dogs have an acute sense of smell.",
                            kurdishText: "سەگ ھەستێکی تیژی بۆنکردنی ھەیە.",
                            onPressedBritish: () => speakacu5268("en-GB"),
                            onPressedAmerican: () =>
                                speakacu5268(// REPLACE: acute /əˈkjuːt/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) زیرەک و خێرا لە تێگەشتن و بڕیاردان"""),
                          SentencesRow(
                            englishText: "Her judgement is acute.",
                            kurdishText: "بڕیاردانی وردبینانەیە.",
                            onPressedBritish: () => speakacu5269("en-GB"),
                            onPressedAmerican: () =>
                                speakacu5269(// REPLACE: acute /əˈkjuːt/
                                    "en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedend(),
                        // YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Adjective: acute (derived forms: acutest, acuter)
1. Of critical importance and consequence
"an acute (or critical) lack of research funds"
 
2. Extremely sharp or strongly felt (= intense)
"acute pain"; "felt acute annoyance";
 
3. Having or demonstrating ability to recognize or draw fine distinctions (= discriminating, incisive, keen, knifelike, penetrating, penetrative, piercing, sharp)
"an acute observer of politics and politicians";
 
4. Ending in a piercing point; pointed (= acuate, sharp, needlelike)
 
5. (medicine) having or experiencing a rapid onset and short but severe course
"acute appendicitis"; "the acute phase of the illness"; "acute patients"
 
6. Of an angle; less than 90 degrees

- Noun: acute (derived forms: acutes)
1. A mark placed above a vowel to indicate pronunciation (= acute accent, ague)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'lcBPaHQUvXY';
  final double _startSeconds = 1;

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

  final String _videoId = 'sQKK6VWmF7o';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '5CKzP5-0kT4';
  final double _startSeconds = 448;

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

  final String _videoId = 'VmtcrpTRUyI';
  final double _startSeconds = 9;

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

  final String _videoId = '_IcM3i5l534';
  final double _startSeconds = 34;

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
