import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydive extends StatefulWidget {
  const EnglishEntrydive({super.key});

  @override
  State<EnglishEntrydive> createState() => _EnglishEntrydiveState();
}

class _EnglishEntrydiveState extends State<EnglishEntrydive> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: CustomTabBarNew(
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
  final String keyword = "dive";
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
    return const EntryTitle(word: "dive");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dive");
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
    return const IPAofEnglish(text: "IpaUK: /daɪv/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdive(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dive");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdive("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /daɪv/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdive(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dive");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdive("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdives1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We dived into the river to cool off.");
  }

  Future<void> speakdives2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He dived off the bridge.");
  }

  Future<void> speakdives3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Sam walked to the deep end of the pool and dived in.");
  }

  Future<void> speakdives4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She dived from the top diving board.");
  }

  Future<void> speakdives5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The main purpose of his holiday to Greece was to go diving.");
  }

  Future<void> speakdives6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The submarine dived to avoid being seen.");
  }

  Future<void> speakdives7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The whale dived as the harpoon struck it.");
  }

  Future<void> speakdives8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The seagulls soared then dived.");
  }

  Future<void> speakdives9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plane dived down to attack.");
  }

  Future<void> speakdives10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We heard an explosion and dived for cover.");
  }

  Future<void> speakdives11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The goalie dived for the ball, but missed it.");
  }

  Future<void> speakdives12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It started to rain so we dived into the nearest cafe.");
  }

  Future<void> speakdives13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He did a dive off a cliff.");
  }

  Future<void> speakdives14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We did a deep dive to see if we could find the wreckage.");
  }

  Future<void> speakdives15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plane went into a steep dive.");
  }

  Future<void> speakdives16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The pilot seemed to be having difficulty in pulling out of the dive.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: لووربوون، گوژین، خۆتێ‌خستن، خۆتێ‌ھەڵکردن،	تێ‌ڕژان، خۆپیاکردن، ھێرش،	ھاتنەخوارەوەی کت‌وپڕ، داشکانی لەپڕ (نرخ و ھتد)،	جێگای خراپ (مەی‌خانە و ھتد)
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بازدانە ناو ئاو بەشێوەیەک کە سەر و دەستت سەرەتا بچن"),
          SentencesRow(
            englishText: "We dived into the river to cool off.",
            kurdishText: "خۆمان فڕێدایە ناو ڕووبارەکە تاوەکو فێنک بینەوە.",
            onPressedBritish: () => speakdives1("en-GB"),
            onPressedAmerican: () => speakdives1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He dived off the bridge.",
            kurdishText: "لە پردەکەوە بازی دایە خوارەوە.",
            onPressedBritish: () => speakdives2("en-GB"),
            onPressedAmerican: () => speakdives2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Sam walked to the deep end of the pool and dived in.",
            kurdishText: "سام چووە لا قووڵەکەی مەلەوانگەکە و چووە خوارەوە.",
            onPressedBritish: () => speakdives3("en-GB"),
            onPressedAmerican: () => speakdives3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She dived from the top diving board.",
            kurdishText: "لە سەرەوەی تەختەی بازدانەکەوە بازی دا.",
            onPressedBritish: () => speakdives4("en-GB"),
            onPressedAmerican: () => speakdives4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) مەلەکردن لە ژێر ئاودا بە بەستنی کەرەستەی تایبەتی ھەناسەدان بۆ گەڕان بە شوێن شتدا یان کۆکردنەوەیان"),
          SentencesRow(
            englishText:
                "The main purpose of his holiday to Greece was to go diving.",
            kurdishText:
                "مەبەستی سەرەکی پشووەکەی لە یۆنان بۆ چوونە مەلەی ژێرئاو بوو.",
            onPressedBritish: () => speakdives5("en-GB"),
            onPressedAmerican: () => speakdives5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) دابەزینە ئاستێکی نزمتری ژێرئاو"),
          SentencesRow(
            englishText: "The submarine dived to avoid being seen.",
            kurdishText: "ژێردەریاکە زیاتر دابەزی بۆ ئەوەی دووربێت لە بینین.",
            onPressedBritish: () => speakdives6("en-GB"),
            onPressedAmerican: () => speakdives6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The whale dived as the harpoon struck it.",
            kurdishText: "نەھەنگەکە چووە قوڵاییەوە کە ڕمەکە لێیدا.",
            onPressedBritish: () => speakdives7("en-GB"),
            onPressedAmerican: () => speakdives7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) دابەزین بە ستوونی لە حەوادا"),
          SentencesRow(
            englishText: "The seagulls soared then dived.",
            kurdishText: "نەورەسەکان بەرزبوونەوە و دابەزین.",
            onPressedBritish: () => speakdives8("en-GB"),
            onPressedAmerican: () => speakdives8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The plane dived down to attack.",
            kurdishText: "فڕۆکەکە دابەزی بۆ ھێرشکردن.",
            onPressedBritish: () => speakdives9("en-GB"),
            onPressedAmerican: () => speakdives9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) بازدان یان جوڵان بە ئاراستەیەکی دیاریکراو، بەتایبەتی بۆ دووربوون لە شتێک، ھەوڵدانی گرتنی تۆپێک، ھتد"),
          SentencesRow(
            englishText:
                "We heard an explosion and dived for cover (= got into a place where we would be protected).",
            kurdishText: "تەقینەوەیەکمان بیست و خۆمان داخست بۆ پاراستن.",
            onPressedBritish: () => speakdives10("en-GB"),
            onPressedAmerican: () => speakdives10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The goalie dived for the ball, but missed it.",
            kurdishText: "گۆڵپارێزەکە خۆی بۆ تۆپەکە ھەڵدا بەڵام نەیگرت.",
            onPressedBritish: () => speakdives11("en-GB"),
            onPressedAmerican: () => speakdives11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It started to rain so we dived into the nearest cafe.",
            kurdishText: "دەستی بە باران کرد بۆیە چووین بۆ نزیکترین قاوەخانە.",
            onPressedBritish: () => speakdives12("en-GB"),
            onPressedAmerican: () => speakdives12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بازدانە ناو ئاو بەوەی سەر و دەستت سەرەتا بچێت"),
          SentencesRow(
            englishText: "He did a dive off a cliff.",
            kurdishText: "لە قەدپاڵێکەوە خۆی ھەڵدا.",
            onPressedBritish: () => speakdives13("en-GB"),
            onPressedAmerican: () => speakdives13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) چوونە ژێرئاو و مەلەکردن بە کەرەستەی تایبەت"),
          SentencesRow(
            englishText:
                "We did a deep dive to see if we could find the wreckage.",
            kurdishText:
                "مەلەکردنێکی قووڵمان ئەنجامدا تاوەکە بزانین کە پاشماوەکە دەدۆزینەوە.",
            onPressedBritish: () => speakdives14("en-GB"),
            onPressedAmerican: () => speakdives14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) لەناکاو مەلەکردن بۆ خوارەوە"),
          SentencesRow(
            englishText: "The plane went into a steep dive.",
            kurdishText: "فڕۆکەکە کەوتە دابەزینێکی لێژەوە.",
            onPressedBritish: () => speakdives15("en-GB"),
            onPressedAmerican: () => speakdives15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The pilot seemed to be having difficulty in pulling out of the dive.",
            kurdishText:
                "فڕۆکەوانەکە وادیاربوو کە کێشەی ھەبێت لە ڕێگری لە کەوتنەکە.",
            onPressedBritish: () => speakdives16("en-GB"),
            onPressedAmerican: () => speakdives16("en-US"),
          ),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: dive (derived forms: dives)
1. A headlong plunge into water
 
2. A steep nose-down descent by an aircraft (= nose dive, nosedive)
 
3. A swim under water using breathing equipment
 
4. [informal] A cheap disreputable nightclub or dance hall (= honky-tonk)

- Verb: dive (derived forms: dives, diving, dived)
1. Swim under water
"the children enjoyed diving and looking for shells"
 
2. Drop steeply (= plunge, plunk)
"the stock market dived";
 
3. (water sport) plunge into water
"I was afraid to dive from the board into the pool"
 
4. (sports) deliberately fall down after a challenge, imitating being fouled, in the hope of getting the opponent penalized
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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 407;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 65;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 382;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 114;

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

  final String _videoId = 'VS6tnF31zr4';
  final double _startSeconds = 153;

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

  final String _videoId = 'WUjVPIEtJd0';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 51;

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