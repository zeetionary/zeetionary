import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychannel extends StatelessWidget {
  // blank divider
  EnglishEntrychannel({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchannel(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("channel");
  }

  Future<void> speakchannels1(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's on Channel 4 tonight?");
  }

  Future<void> speakchannels2(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I changed channels when the news came on.");
  }

  Future<void> speakchannels3(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Lily surfed the channels on the television.");
  }

  Future<void> speakchannels4(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This channel broadcasts 24 hours a day.");
  }

  Future<void> speakchannels5(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They broadcast on high-frequency channels.");
  }

  Future<void> speakchannels6(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Complaints must be made through the proper channels.");
  }

  Future<void> speakchannels7(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Steps are being taken to implement a ceasefire through diplomatic channels.");
  }

  Future<void> speakchannels8(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Journalists always have indirect channels for getting information.");
  }

  Future<void> speakchannels9(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The campaign provided a channel for protest against the war.");
  }

  Future<void> speakchannels10(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Music is a great channel for releasing your emotions.");
  }

  Future<void> speakchannels11(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A channel is being dug to divert the river.");
  }

  Future<void> speakchannels12(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ditches were constructed to channel water away from the buildings.");
  }

  Future<void> speakchannels13(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A lot of money has been channelled into research in that particular field.");
  }

  Future<void> speakchannels14(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Money for the project will be channelled through local government.");
  }

  Future<void> speakchannels15(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A sensor channels the light signal along an fibre.");
  }

  Future<void> speakchannels16(String languageCode) async {
    // DOPSUM: CHANGE speakchannel
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The band were dressed in 1960s outfits and seemed to be channelling the Beatles.");
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
                            EntryTitle(word: "channel"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃænl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchannel("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃænl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchannel("en-US"),
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
کوردی: گەروو، تەنگەڵان، تەنگە، دەریاڕێ، باریکەڕێ (دەریا)، بنکاو، تەختاو، بنک (ڕووبار و ھتد)، قووڵگە، جێی قووڵ، شوێنی پڕئاو، نێرینە، قووڵایی، دەریای قووڵ، جۆگە، ئاوەڕێ، ئاوەڕۆ، ئاودڕ، نۆکەند، جۆم، ڕەھەنداو، شوێن، کووز، خەت، کەند، دەربەند، ڕێگا، (تەلەفیزیۆن) ڕایەڵە، کاناڵ، کاناڵی ئینگلتەرە، (ڕادیۆ و تەلەفیزیۆن) درێژی شەپۆل، (خوازە) ڕێگا، شوێن، ڕێڕەو، ڕێ، کاناڵ
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) وێستگەیەکی تەلەفیزیۆنی"),
                          SentencesRow(
                            englishText: "What's on Channel 4 tonight?",
                            kurdishText:
                                "ئەمشەو چی لەسەر کەناڵ 4 دەبێت؟", // channel",
                            onPressedBritish: () => speakchannels1("en-GB"),
                            onPressedAmerican: () => speakchannels1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I changed channels when the news came on.",
                            kurdishText: "کەناڵەکانم گۆڕی کە ھەواڵەکە گەشت.",
                            onPressedBritish: () => speakchannels2("en-GB"),
                            onPressedAmerican: () => speakchannels2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Lily surfed the channels on the television.",
                                    kurdishText:
                                        "لیلی بە کەناڵەکانی تەلەفیزیۆنەکەدا دەگەڕا.",
                                    onPressedBritish: () =>
                                        speakchannels3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchannels3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "This channel broadcasts 24 hours a day.",
                                    kurdishText:
                                        "ئەم کەناڵە ٢٤ کاتژمێر لە ڕۆژێکدا پەخش دەکات.",
                                    onPressedBritish: () =>
                                        speakchannels4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchannels4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕێژەیەک لە لەرە کە بەکاردێت بۆ پەخشی شەپۆل یان پڕۆگرامی ڕادیۆ و تەلەفیزیۆن"),
                          SentencesRow(
                            englishText:
                                "They broadcast on high-frequency channels.",
                            kurdishText: "لەسەر کەناڵی شەپۆل بەرز پەخش دەکەن.",
                            onPressedBritish: () => speakchannels5("en-GB"),
                            onPressedAmerican: () => speakchannels5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) سیستەمێک یان ڕێگایەک کە خەڵکی بەکاریدێنن بۆ وەرگرتنی زانیاری، پەیوەندی کردن، یان ناردنی شتێک بۆ شوێنێک"),
                          SentencesRow(
                            englishText:
                                "Complaints must be made through the proper channels.",
                            kurdishText:
                                "ناڕەزایی دەبێت لە ڕێگەی گونجاوەوە بگەیەندرێت.",
                            onPressedBritish: () => speakchannels6("en-GB"),
                            onPressedAmerican: () => speakchannels6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Steps are being taken to implement a ceasefire through diplomatic channels.",
                            kurdishText:
                                "ھەنگاو دەگیردرێتە بەر بۆ ھێنانە کارای ئاگربەست لە ڕێگەی کەناڵی دیبلۆماسییەوە.",
                            onPressedBritish: () => speakchannels7("en-GB"),
                            onPressedAmerican: () => speakchannels7("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Journalists always have indirect channels for getting information.",
                                    kurdishText:
                                        "ڕۆژنامەنووسان ھەمیشە ڕێگای ناڕاستەوخۆیان ھەیە بۆ وەرگرتنی زانیاری.",
                                    onPressedBritish: () =>
                                        speakchannels8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchannels8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) ڕێگای دەربڕینی ھەست و بیرۆکە"),
                          SentencesRow(
                            englishText:
                                "The campaign provided a channel for protest against the war.",
                            kurdishText:
                                "کەمپینەکە ڕێگایەکی خستەبەردەست بۆ دەربڕینی ناڕەزایی دژ بە جەنگەکە.",
                            onPressedBritish: () => speakchannels9("en-GB"),
                            onPressedAmerican: () => speakchannels9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Music is a great channel for releasing your emotions.",
                            kurdishText:
                                "میوزیک ڕێگایەکی زۆر باشە بۆ دەربڕینی ھەستەکانت.",
                            onPressedBritish: () => speakchannels10("en-GB"),
                            onPressedAmerican: () => speakchannels10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) جۆگەی ئاو"),
                          SentencesRow(
                            englishText:
                                "A channel is being dug to divert the river.",
                            kurdishText:
                                "جۆگەیەک درووست دەکرێت بۆ گۆڕینی ئاراستەی ڕووبارەکە.",
                            onPressedBritish: () => speakchannels11("en-GB"),
                            onPressedAmerican: () => speakchannels11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The drainage channels had survived since the Roman occupation.",
                            kurdishText:
                                "جۆگە ئاوەڕۆکان لە سەردەمی نیشتەجێ‌بوونی ڕۆمەکانەوە ماونەتەوە.",
                            onPressedBritish: () => speakchannels11("en-GB"),
                            onPressedAmerican: () => speakchannels11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ئاراستەکردن یان تەرخانکردنی پارە، ھەست، بیرۆکە، ھتد بەرەو شتێک یان مەبەستێک"),
                          SentencesRow(
                            englishText:
                                "Ditches were constructed to channel water away from the buildings.",
                            kurdishText:
                                "کەندەڵان درووستکران بۆ ئاراستەکردنی ئاوەکە دوور لە بیناکان.",
                            onPressedBritish: () => speakchannels12("en-GB"),
                            onPressedAmerican: () => speakchannels12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "A lot of money has been channelled into research in that particular field.",
                            kurdishText:
                                "ڕێژەیەکی زۆر پارە تەرخانکراوە بۆ لێکۆڵینەوە لەو بوارە دیاریکراوەدا.",
                            onPressedBritish: () => speakchannels13("en-GB"),
                            onPressedAmerican: () => speakchannels13("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Money for the project will be channelled through local government.",
                                    kurdishText:
                                        "پارە بۆ پڕۆژەکە لە ڕێگەی حکومەتی خۆجێییەوە تەرخان دەکرێت.",
                                    onPressedBritish: () =>
                                        speakchannels14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchannels14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A sensor channels the light signal along an fibre.",
                                    kurdishText:
                                        "ھەستەوەرێک شەپۆلە ڕووناکییەکە بە فایبەرێکدا دەنێرێت.",
                                    onPressedBritish: () =>
                                        speakchannels15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchannels15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) لاسایی‌کردنەوەی کەسێک یان شتێک"),
                          SentencesRow(
                            englishText:
                                "The band were dressed in 1960s outfits and seemed to be channelling the Beatles.",
                            kurdishText:
                                "باندەکە جلی ١٩٦٠ ەکانیان لەبەربوو و وادیاربوو کە لاسایی باندی بیتڵز دەکەنەوە.",
                            onPressedBritish: () => speakchannels16("en-GB"),
                            onPressedAmerican: () => speakchannels16("en-US"),
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
- Noun: channel (derived forms: channels)
1. A path over which electrical signals can pass (= transmission channel)
"a channel is typically what you rent from a telephone company";
 
2. A passage for water (or other fluids) to flow through
"the fields were crossed with irrigation channels"; "gutters carried off the rainwater into a series of channels under the street"
 
3. A long narrow furrow cut either by a natural process (such as erosion) or by a tool (as e.g. a groove in a phonograph record) (= groove)
 
4. A deep and relatively narrow body of water (as in a river or a harbour or a strait linking two larger bodies) that allows the best passage for vessels
"the ship went aground in the channel"
 
5. (often plural) a means of communication or access (= communication channel, line)
"it must go through official channels";

6. A bodily passage or tube lined with epithelial cells and conveying a secretion or other substance (= duct, epithelial duct, canal)
"poison is released through a channel in the snake's fangs";

7. A television station and its programs (= television channel, TV channel)
"a satellite TV channel"; "surfing through the channels"; "they offer more than one hundred channels"; "a satellite TV television channel";
 
8. A way of selling a company's product either directly or via distributors (= distribution channel)
"possible distribution channels are wholesalers or small retailers or retail chains or direct mailers or your own stores";

- Verb: channel (derived forms: channeled, channels, channelling, channelled, channeling)
1. Serve as the medium for transmission, allow movement of (= impart, conduct, transmit, convey, carry)
"Many metals channel heat";

2. Direct the flow of
"channel information towards a broad audience"
 
3. Send from one person or place to another (= transmit, transfer, transport, channelize, channelise [Brit])
"channel a message";

4. Emulate the personality or attributes of another person, adopt the sprit of someone
"he looks like he's channelling Elvis as he swings his microphone around and practically dances in his evangelical fervour"
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

  final String _videoId = 'WoYaQBltn1A';
  final double _startSeconds = 428;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'VwPGtn9qJZ4';
  final double _startSeconds = 194;

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

  final String _videoId = '8T7lEvtwETA';
  final double _startSeconds = 172;

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

  final String _videoId = 'Bltc4o615qI';
  final double _startSeconds = 319;

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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 73;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 967;

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

  final String _videoId = 'BsjQqm60ZEI';
  final double _startSeconds = 164;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 't02bJ94vlKA';
  final double _startSeconds = 28;

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
