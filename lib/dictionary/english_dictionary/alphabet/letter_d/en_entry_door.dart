import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydoor extends StatefulWidget {
  const EnglishEntrydoor({super.key});

  @override
  State<EnglishEntrydoor> createState() => _EnglishEntrydoorState();
}

class _EnglishEntrydoorState extends State<EnglishEntrydoor> {
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
  final String keyword = "door";
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
    return const EntryTitle(word: "door");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: door");
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
    return const IPAofEnglish(text: "IpaUK: /dɔː(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoor(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("door");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdoor("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɔːr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoor(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("door");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdoor("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoors1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Open the door!");
  }

  Future<void> speakdoors2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Close the door behind you, please.");
  }

  Future<void> speakdoors3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The door to his office opened.");
  }

  Future<void> speakdoors4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Each bedroom has a door onto the balcony.");
  }

  Future<void> speakdoors5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Always put the door chain on.");
  }

  Future<void> speakdoors6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He arrived home to find the door barred.");
  }

  Future<void> speakdoors7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He pulled the door shut.");
  }

  Future<void> speakdoors8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was woken by a door banging in the wind.");
  }

  Future<void> speakdoors9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As we walked through the door, the phone rang.");
  }

  Future<void> speakdoors10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Marc appeared through a door at the far end of the room.");
  }

  Future<void> speakdoors11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's just arrived—she's just come in the door");
  }

  Future<void> speakdoors12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He walked out the door.");
  }

  Future<void> speakdoors13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's somebody at the door.");
  }

  Future<void> speakdoors14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our other branch is just a few doors down the road.");
  }

  Future<void> speakdoors15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("50% of the door will go to the Red Cross.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: درگا، دەرگا، دەر، دەرکە، کەل، قاپ، دەروازە، ژوورگە (دەرکەڵە: ھی چکۆلە)،	ماڵ، خانوو، خانووبەرە، دەزگا
"""),
          const DefinitionKurdish(text: "١. (ناو) دەرگا"),
          SentencesRow(
            englishText: "Open the door!",
            kurdishText: "دەرگاکە بکەرەوە!", // door
            onPressedBritish: () => speakdoors1("en-GB"),
            onPressedAmerican: () => speakdoors1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Close the door behind you, please.",
            kurdishText: "دەرگاکە لە دوای خۆت دابخە.",
            onPressedBritish: () => speakdoors2("en-GB"),
            onPressedAmerican: () => speakdoors2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The door to his office opened.",
            kurdishText: "دەرگای چوون بۆ ئۆفیسەکەی کرایەوە.",
            onPressedBritish: () => speakdoors3("en-GB"),
            onPressedAmerican: () => speakdoors3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Each bedroom has a door onto the balcony.",
            kurdishText: "ھەر ژوورێک دەرگایەکی بۆ باڵکۆنەکە ھەیە.",
            onPressedBritish: () => speakdoors4("en-GB"),
            onPressedAmerican: () => speakdoors4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Always put the door chain on.",
            kurdishText: "ھەمیشە زنجیر بە دەرگاکەکەوە بھێڵەوە .",
            onPressedBritish: () => speakdoors5("en-GB"),
            onPressedAmerican: () => speakdoors5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He arrived home to find the door barred.",
            kurdishText: "گەڕایەوە ماڵ و زانی کە دەرگاکە گیرا بوو.",
            onPressedBritish: () => speakdoors6("en-GB"),
            onPressedAmerican: () => speakdoors6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He pulled the door shut.",
            kurdishText: "دەرگاکەی گرت بە ڕاکێشان.",
            onPressedBritish: () => speakdoors7("en-GB"),
            onPressedAmerican: () => speakdoors7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I was woken by a door banging in the wind.",
            kurdishText: "خەبەرم بوویەوە بە زرمەی دەرگایەک لە باکەدا.",
            onPressedBritish: () => speakdoors8("en-GB"),
            onPressedAmerican: () => speakdoors8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەو بۆشاییە کراوەی کە دەرگایەکی تێدایە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "As we walked through the door, the phone rang.",
            kurdishText: "کە بە دەرگاکەدا چوو، تەلەفۆنەکە زەنگی لێدا.",
            onPressedBritish: () => speakdoors9("en-GB"),
            onPressedAmerican: () => speakdoors9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Marc appeared through a door at the far end of the room.",
            kurdishText:
                "مارک لە دەرگایەکەوە دەرکەوت لە لایە دوورەکەی ژوورەکەوە.",
            onPressedBritish: () => speakdoors10("en-GB"),
            onPressedAmerican: () => speakdoors10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's just arrived—she's just come in the door",
            kurdishText: "ھەر ئێستا گەشت، ئێستا لە دەرگاکە ھاتە ژوورەوە.",
            onPressedBritish: () => speakdoors11("en-GB"),
            onPressedAmerican: () => speakdoors11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He walked out the door.",
            kurdishText: "لە دەرگاکە چووە دەرەوە.",
            onPressedBritish: () => speakdoors12("en-GB"),
            onPressedAmerican: () => speakdoors12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) پێشی دەرگا لە دەرەوەی شوێنێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "There's somebody at the door (= at the front door of a house).",
            kurdishText: "کەسێک لە پێش دەرگاکەیە.",
            onPressedBritish: () => speakdoors13("en-GB"),
            onPressedAmerican: () => speakdoors13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) خانوویەک، ژوورێک، ھتد کە چەند خانوو یان ژوورێکی دیاریکراو دوورە لە یەکێکی دیکە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Our other branch is just a few doors down the road.",
            kurdishText:
                "لقەکەی دیکەمان تەنھا چەند بینایەک لە خوار شەقامەکەوەیە.",
            onPressedBritish: () => speakdoors14("en-GB"),
            onPressedAmerican: () => speakdoors14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) ئەو بڕە پارەیەی کە بە فرۆشتنی بلیتی بۆنەیەک بەدەست دەخرێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "50% of the door will go to the Red Cross.",
            kurdishText: "٥٠٪ ــی پارەکە دەچێت بۆ مانگی سوور.",
            onPressedBritish: () => speakdoors15("en-GB"),
            onPressedAmerican: () => speakdoors15("en-US"),
          ),
          // doors1600"),
          // speakdoors16
          // doors16
          // doors1700"),
          // speakdoors17
          // doors17
          // doors1800"),
          // speakdoors18
          // doors18
          // doors1900"),
          // speakdoors19
          // doors19
          // doors_2000"),
          // speakdoors20
          // doors20
          // doors2100"),
          // speakdoors21
          // doors21
          // doors2200"),
          // speakdoors22
          // doors22("en-US"),
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
- Noun: door (derived forms: doors)
1. A swinging or sliding barrier that will close the entrance to a room or building or vehicle
"he knocked on the door"; "he slammed the door as he left"
 
2. The entrance (the space in a wall) through which you enter or leave a room or building; the space that a door can close (= doorway, room access, threshold)
"he stuck his head in the door";
 
3. Anything providing a means of access (or escape)
"we closed the door to Haitian immigrants"; "education is the door to success"
 
4. A structure where people live or work (usually ordered along a street or road)
"the office next door"; "they live two doors up the street from us"
 
5. A room that is entered via a door
"his office is the third door down the hall on the left"

- Verb: door (derived forms: doors, dooring, doored)
1. Open a vehicle door so that it accidentally hits a passing cyclist, pedestrian or other vehicle 
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 47;

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

  final String _videoId = 'TJmTHuuYx3k';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 123;

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

  final String _videoId = '1aHVa2jT3n4';
  final double _startSeconds = 253;

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

  final String _videoId = 'cAPgFzMA7LQ';
  final double _startSeconds = 152;

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

  final String _videoId = 'U1KGRnWjllg';
  final double _startSeconds = 201;

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

  final String _videoId = '55XJ1ObZKaM';
  final double _startSeconds = 437;

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