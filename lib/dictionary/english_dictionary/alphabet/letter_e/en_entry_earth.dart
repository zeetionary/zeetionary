import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryearth extends StatefulWidget {
  const EnglishEntryearth({super.key});

  @override
  State<EnglishEntryearth> createState() => _EnglishEntryearthState();
}

class _EnglishEntryearthState extends State<EnglishEntryearth> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "earth";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "earth");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: earth");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /ɜːθ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakearth(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("earth");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakearth("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /ɜːrθ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakearth(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("earth");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakearth("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakearths1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The earth revolves around the sun.");
  }

  Future<void> speakearths2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("I must be the happiest person on earth!");
  }

  Future<void> speakearths3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("No one knows what happens to us after we leave this earth.");
  }

  Future<void> speakearths4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The earth revolves on its axis.");
  }

  Future<void> speakearths5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        "The astronauts were able to send the information back to earth.");
  }

  Future<void> speakearths6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        "After a week at sea, it was good to feel the earth beneath our feet again.");
  }

  Future<void> speakearths7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("You could feel the earth shake as the truck came closer.");
  }

  Future<void> speakearths8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The bunker is located deep below the earth.");
  }

  Future<void> speakearths9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("I cleaned off the earth clinging to my boots.");
  }

  Future<void> speakearths10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("I filled the pot with a handful of loose earth.");
  }

  Future<void> speakearths11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The plants must have their roots in the earth.");
  }

  Future<void> speakearths12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("Dig the earth to a depth of two meters.");
  }

  Future<void> speakearths13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("His boots sank into the soft earth.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: گۆی زەوی، عەرز، زەمین، زەوی، ھەرد، خۆڵ، گڵ، خاک، ئاخ، خاک‌وخۆڵ، وشکانی، وشکایی، بەژ،	دانیشتووانی سەرعەرز،	کون، کولانە، بوودڕ، لانە، ھێلانە
"""),
          const DefinitionKurdish(
              text: """١. (ناو) ھەسارەکەمان؛ ھەسارەی زەوی"""),
          SentencesRow(
            englishText: """The earth revolves around the sun.""",
            kurdishText: """زەوی بە دەوری خۆردا دەخولێتەوە.""", // earth
            onPressedBritish: () => speakearths1("en-GB"),
            onPressedAmerican: () => speakearths1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I must be the happiest person on earth!""",
            kurdishText: """دەبێت دڵخۆشترین بم لە جیھاندا.""",
            onPressedBritish: () => speakearths2("en-GB"),
            onPressedAmerican: () => speakearths2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """No one knows what happens to us after we leave this earth.""",
                    kurdishText:
                        """کەس نازانێت چیمان بەسەر دێت کە زەوی جێدەھێڵین.""",
                    onPressedBritish: () => speakearths3("en-GB"),
                    onPressedAmerican: () => speakearths3("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The earth revolves on its axis.""",
                    kurdishText: """زەوی بە دەوری تەوەرەکەیدا دەسووڕێتەوە.""",
                    onPressedBritish: () => speakearths4("en-GB"),
                    onPressedAmerican: () => speakearths4("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The astronauts were able to send the information back to earth.""",
                    kurdishText:
                        """ئاسمانەوانەکان توانییان زانیارییەکە بنێرنەوە بۆ زەوی.""",
                    onPressedBritish: () => speakearths5("en-GB"),
                    onPressedAmerican: () => speakearths5("en-US" ""),
                  ),
                ],
              ),
            ],
          ),

          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) خاکی سەر زەوی"""),
          SentencesRow(
            englishText:
                """After a week at sea, it was good to feel the earth beneath our feet again.""",
            kurdishText:
                """لە دوای ھەفتەیەک لە دەریادا، خۆش بوو کە دووبارە ھەست بە خاک بکەین لە ژێر پێماندا.""",
            onPressedBritish: () => speakearths6("en-GB"),
            onPressedAmerican: () => speakearths6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """You could feel the earth shake as the truck came closer.""",
            kurdishText:
                """دەتتوانی ھەست بە خاکەکە بکەیت کە دەلەرزێتەوە کە بارھەڵگرەکە نزیکبوویەوە.""",
            onPressedBritish: () => speakearths7("en-GB"),
            onPressedAmerican: () => speakearths7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The bunker is located deep below the earth.""",
            kurdishText: """پەناگەکە لە قوڵایی ژێر زەویدایە.""",
            onPressedBritish: () => speakearths8("en-GB"),
            onPressedAmerican: () => speakearths8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ناو) ئەو مادانەی ڕووەک تێیدا گەشە دەکەن"""),
          SentencesRow(
            englishText: """I cleaned off the earth clinging to my boots.""",
            kurdishText: """ئەو خۆڵەم لێکردەوە کە نووسابوو بە پووتەکانمەوە.""",
            onPressedBritish: () => speakearths9("en-GB"),
            onPressedAmerican: () => speakearths9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I filled the pot with a handful of loose earth.""",
            kurdishText: """گوڵدانەکەم پڕکرد لە چنگێک لە خۆڵە نەرمە.""",
            onPressedBritish: () => speakearths10("en-GB"),
            onPressedAmerican: () => speakearths10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The plants must have their roots in the earth.""",
            kurdishText: """ڕووەکەکان مەرجە ڕەگەکەیان لە خۆڵەکەدا بێت.""",
            onPressedBritish: () => speakearths11("en-GB"),
            onPressedAmerican: () => speakearths11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Dig the earth to a depth of two meters.""",
            kurdishText: """زەوییەکە بکەنە تاوەکو قووڵی دوو مەتر.""",
            onPressedBritish: () => speakearths12("en-GB"),
            onPressedAmerican: () => speakearths12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """His boots sank into the soft earth.""",
            kurdishText: """پووتەکانی کەوتنە ناو خۆڵە نەرمەکە.""",
            onPressedBritish: () => speakearths13("en-GB"),
            onPressedAmerican: () => speakearths13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) حەشارگەی ژێر زەوی ئاژەڵێک، بەتایبەتی ڕێوی"""),
          // speakearths
        ],
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
- Noun: earth (derived forms: earths)
1. The 3rd planet from the sun; the planet we live on (= Earth, world, globe)
"the Earth moves around the sun";
 
2. The loose soft material that makes up a large part of the land surface (= ground)
"they dug into the earth outside the church";
 
3. The solid part of the earth's surface (= land, dry land, ground, solid ground, terra firma)
"the earth shook for several minutes";
 
4. The abode of mortals (as contrasted with Heaven or Hell) (= Earth)
"it was hell on earth";
 
5. The concerns of this life as distinguished from heaven and the afterlife (= worldly concern, earthly concern, world)
 
6. [Brit] (electricity) a connection between an electrical device and a large conducting body, such as the earth (which is taken to be at zero voltage) (= ground)
 
7. [archaic] Once thought to be one of four elements composing the universe (Empedocles), associated with the humour black bile

- Verb: earth (derived forms: earths, earthing, earthed)
1. Hide in the earth like a hunted animal
 
2. [Brit] Connect to the earth
"earth the circuit"
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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 202;

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

  final String _videoId = '4uV5fvSZFoE';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '8pOymi4ipp0';
  final double _startSeconds = 11;

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

  final String _videoId = 'LLZGsnmW5Vg';
  final double _startSeconds = 36;

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

  final String _videoId = 'WuLHfiyIS0Q';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'jFLTHSEKPoQ';
  final double _startSeconds = 57;

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

  final String _videoId = 'GFDhOy2qVgE';
  final double _startSeconds = 78;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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
    );
  }
}

// end WORD_WEB