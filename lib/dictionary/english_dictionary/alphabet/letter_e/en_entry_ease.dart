import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryease extends StatefulWidget {
  const EnglishEntryease({super.key});

  @override
  State<EnglishEntryease> createState() => _EnglishEntryeaseState();
}

class _EnglishEntryeaseState extends State<EnglishEntryease> {
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
                  background: EntryAndIPA(),
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
  final String keyword = "ease";
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
    return const EntryTitle(word: "ease");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: ease");
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
    return const IPAofEnglish(text: "IpaUK: /iːz/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakease(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("ease");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakease("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /iːz/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakease(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("ease");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakease("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeases1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He passed the exam with ease.");
  }

  Future<void> speakeases2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("The ease with which she learns languages is astonishing.");
  }

  Future<void> speakeases3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("This computer is popular for its good design and ease of use.");
  }

  Future<void> speakeases4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In his retirement, he lived a life of ease.");
  }

  Future<void> speakeases5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The pain immediately eased.");
  }

  Future<void> speakeases6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This should help ease the pain.");
  }

  Future<void> speakeases7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("The plan should ease traffic congestion in the town.");
  }

  Future<void> speakeases8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It would ease my mind to know that she was safe.");
  }

  Future<void> speakeases9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Tensions between the two countries are beginning to ease.");
  }

  Future<void> speakeases10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "His family connections eased his passage into the top ranks of the industry.");
  }

  Future<void> speakeases11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He eased slowly forwards.");
  }

  Future<void> speakeases12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She eased herself into a chair.");
  }

  Future<void> speakeases13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He eased off his shoes.");
  }

  Future<void> speakeases14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Ease your grip on the wheel a little.");
  }

  Future<void> speakeases15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Share prices eased back from yesterday's levels.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ئاسوودەیی، ئاسایش، ئاسایشت، حەساوەیی، بێکاری،	ئاسانی،	ئارام‌بوونەوە، ھێدی‌بوونەوە
"""),
          const DefinitionKurdish(text: """١. (ناو) ئاسانی"""),
          SentencesRow(
            englishText: """He passed the exam with ease.""",
            kurdishText: """تاقیکردنەوەکەی بە ئاسانی تێپەڕاند.""",
            onPressedBritish: () => speakeases1("en-GB"),
            onPressedAmerican: () => speakeases1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The ease with which she learns languages is astonishing.""",
            kurdishText: """بەو ئاسانییەی کە زمان فێردەبێت سەرنجڕاکێشە.""",
            onPressedBritish: () => speakeases2("en-GB"),
            onPressedAmerican: () => speakeases2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This computer is popular for its good design and ease of use.""",
            kurdishText:
                """ئەم کۆمپیوتەرە ناسراوە بۆ دیزاینەکەی و ئاسانی بەکارھێنانی.""",
            onPressedBritish: () => speakeases3("en-GB"),
            onPressedAmerican: () => speakeases3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) ئەو دۆخەی کە تێیدا ئاسوودە و بێ کێشە و ئازاریت"""),
          SentencesRow(
            englishText: """In his retirement, he lived a life of ease.""",
            kurdishText: """لە خانەنشینییدا، ژیانێکی بێ‌کێشە ژیا.""",
            onPressedBritish: () => speakeases4("en-GB"),
            onPressedAmerican: () => speakeases4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (کردار) سوککردنی کێشەیەک یان ئازارێک"""),
          SentencesRow(
            englishText: """The pain immediately eased.""",
            kurdishText: """ئازارەکە دەستبەجێ سووکبوو.""",
            onPressedBritish: () => speakeases5("en-GB"),
            onPressedAmerican: () => speakeases5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """This should help ease the pain.""",
            kurdishText: """ئەمە دەبێت ئازارەکە سووک بکات.""",
            onPressedBritish: () => speakeases6("en-GB"),
            onPressedAmerican: () => speakeases6("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """The plan should ease traffic congestion in the town.""",
                    kurdishText:
                        """پلانەکە دەبێت قەرەباڵغی ھاتووچۆ لەسەر شەقامەکان سووک بکات.""",
                    onPressedBritish: () => speakeases7("en-GB"),
                    onPressedAmerican: () => speakeases7("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """It would ease my mind (= make me less worried) to know that she was safe.""",
                    kurdishText:
                        """ئەوە مێشکم دەڕەواندەوە کە بمزانیبایە سەلامەت بوو.""",
                    onPressedBritish: () => speakeases8("en-GB"),
                    onPressedAmerican: () => speakeases8("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Tensions between the two countries are beginning to ease.""",
                    kurdishText:
                        """گرژی نێوان دوو وڵاتەکە خەریکە دەڕەوێتەوە.""",
                    onPressedBritish: () => speakeases9("en-GB"),
                    onPressedAmerican: () => speakeases9("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (کردار) ئاسانکردنی شتێک"""),
          SentencesRow(
            englishText:
                """His family connections eased his passage into the top ranks of the industry.""",
            kurdishText:
                """پەیوەندییەکانی خێزانەکەی ڕێگای بۆ بەرزترین ئاستی پیشەسازییەکە ئاسان کرد.""",
            onPressedBritish: () => speakeases10("en-GB"),
            onPressedAmerican: () => speakeases10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (کردار) جوڵان بەھێواشی و وریایی"""),
          SentencesRow(
            englishText: """He eased slowly forwards.""",
            kurdishText: """بەھێواشی بۆ پێشەوە ھەنگاوی نا.""",
            onPressedBritish: () => speakeases11("en-GB"),
            onPressedAmerican: () => speakeases11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She eased herself into a chair.""",
            kurdishText: """دانەمییە سەر کورسییەکە.""",
            onPressedBritish: () => speakeases12("en-GB"),
            onPressedAmerican: () => speakeases12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He eased off (= took off) his shoes.""",
            kurdishText: """پێڵاوەکەی داکەند.""",
            onPressedBritish: () => speakeases13("en-GB"),
            onPressedAmerican: () => speakeases13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٦. (کردار) شلکردن؛ شلبوونەوە"""),
          SentencesRow(
            englishText: """Ease your grip on the wheel a little.""",
            kurdishText: """کەمێک گرتنی ویلەکە شڵ‌بکە.""",
            onPressedBritish: () => speakeases14("en-GB"),
            onPressedAmerican: () => speakeases14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٧. (کردار) کەمبوونەوە"""),
          SentencesRow(
            englishText: """Share prices eased back from yesterday's levels.""",
            kurdishText: """نرخی پشکەکان لە ئاستی دوێنێ کەمبووبەوە.""",
            onPressedBritish: () => speakeases15("en-GB"),
            onPressedAmerican: () => speakeases15("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: ease (derived forms: easing, eases, eased)
1. Move gently or carefully
"He eased himself into the chair"
 
2. Lessen pain or discomfort; alleviate (= comfort)
"ease the pain in your legs";
 
3. Make easier (= facilitate, alleviate, grease [informal])
"you could ease the process by sharing your knowledge";
 
4. Lessen the intensity of or calm (= still, allay, relieve)
"The news eased my conscience";

- Noun: ease (derived forms: eases)
1. Freedom from difficulty, hardship or effort (= easiness, simplicity, simpleness)
"he rose through the ranks with apparent ease"; "they put it into containers for ease of transportation";
 
2. A freedom from financial difficulty that promotes a comfortable state (= comfort)
"a life of luxury and ease";
 
3. The condition of being comfortable or relieved (especially after being relieved of distress) (= relief)
"getting it off his conscience gave him some ease";
 
4. Freedom from constraint or embarrassment (= informality)
"I am never at ease with strangers";
 
5. Freedom from activity (work, strain or responsibility) (= rest, repose, relaxation)
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

  final String _videoId = 'xVQxvthAcLU';
  final double _startSeconds = 1227;

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

  final String _videoId = 'WnozP8OWeik';
  final double _startSeconds = 235;

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

  final String _videoId = 'EjidrUoHvPs';
  final double _startSeconds = 203;

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

  final String _videoId = 'O-6f5wQXSu8';
  final double _startSeconds = 499;

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

  final String _videoId = '8GKI2sYe1CI';
  final double _startSeconds = 916;

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

  final String _videoId = 'v8JiaY4ZCyA';
  final double _startSeconds = 232;

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

  final String _videoId = 'fxGI8r8vAFk';
  final double _startSeconds = 74;

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