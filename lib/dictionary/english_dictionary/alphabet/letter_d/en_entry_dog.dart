import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydog extends StatefulWidget {
  const EnglishEntrydog({super.key});

  @override
  State<EnglishEntrydog> createState() => _EnglishEntrydogState();
}

class _EnglishEntrydogState extends State<EnglishEntrydog> {
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
  final String keyword = "dog";
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
    return const EntryTitle(word: "dog");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dog");
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
    return const IPAofEnglish(text: "IpaUK: /dɒɡ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdog(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dog");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdog("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɔːɡ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdog(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dog");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdog("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdogs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I took the dog for a walk.");
  }

  Future<void> speakdogs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I could hear a dog barking.");
  }

  Future<void> speakdogs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Stray dogs roamed the streets at night.");
  }

  Future<void> speakdogs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Owners who allow their dogs to foul the footpath will be fined.");
  }

  Future<void> speakdogs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Bad dog! What are you doing there?");
  }

  Future<void> speakdogs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her last movie was an absolute dog.");
  }

  Future<void> speakdogs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You dirty dog!");
  }

  Future<void> speakdogs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He tried to steal my money, the dirty dog.");
  }

  Future<void> speakdogs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had been dogged by ill health all his life.");
  }

  Future<void> speakdogs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her career was dogged by misfortune.");
  }

  Future<void> speakdogs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She had the impression that someone was dogging her steps.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: سەگ، بەشدار، گەماڵ، کوچک، گۆڵەسەگ، سەگی نێر یان گۆڵ،	گورگی گۆڵ، گۆڵەگوڕگ،	گۆڵەڕێوی، ڕێوی نێر،	(خوازە) سەگی گڵاو، بنیادەمی خراپ، مرۆی سووک‌وچروک، مرۆی پیس،	(سووکانە) ژنی ناسەرنج‌ڕاکێش، سەگەژن،	(نافەرمی، ئەمریکا) شتی گەن‌وگووژاڵ، ئایەخ،	بزمارکێش، گاز،	قولاپ، گیرە
"""),
          const DefinitionKurdish(text: "١. (ناو) سەگ"),
          SentencesRow(
            englishText: "I took the dog for a walk.",
            englishNote: "Similar: I'm just going to walk the dog.",
            kurdishText: "سەگەکەم بردە پیاسەیەک.",
            kurdishNote: "بەڵێ ئەوە ڕاستە کە بردی.",
            onPressedBritish: () => speakdogs1("en-GB"),
            onPressedAmerican: () => speakdogs1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I could hear a dog barking.",
            kurdishText: "گوێم لە سەگێک بوو دەیحەپاند.",
            onPressedBritish: () => speakdogs2("en-GB"),
            onPressedAmerican: () => speakdogs2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Stray dogs roamed the streets at night.",
            kurdishText: "سەگی وێڵ بە شەقامەکاندا دەگەڕان لە شەواندا.",
            onPressedBritish: () => speakdogs3("en-GB"),
            onPressedAmerican: () => speakdogs3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Owners who allow their dogs to foul the footpath will be fined.",
            kurdishText:
                "ئەو خاوەنانەی کە دەھێڵن سەگەکانیان پیسایی بکەنە سەر پیادەڕێکە سزا دەدرێن.",
            onPressedBritish: () => speakdogs4("en-GB"),
            onPressedAmerican: () => speakdogs4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Bad dog! What are you doing there?",
            kurdishText: "سەگی خراپ! چی دەکەیت؟",
            onPressedBritish: () => speakdogs5("en-GB"),
            onPressedAmerican: () => speakdogs5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) نێرینەی سەگ، ڕێوی، گورگ، یان سەگڵاوی"),
          // const DividerSentences(),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) شتێک کە لە ئاستێکی خراپە"),
          SentencesRow(
            englishText: "Her last movie was an absolute dog.",
            kurdishText: "کۆتا فیلمی ھیچەکەیەکی تەواو بوو.",
            onPressedBritish: () => speakdogs6("en-GB"),
            onPressedAmerican: () => speakdogs6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) بۆ ناوھێنانی ژنێک کە جوان نییە"),
          // const DividerSentences(),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) بۆ ناوھێنانی پیاوێک کە شتێکی خراپی کردووە"),
          SentencesRow(
            englishText: "You dirty dog!",
            kurdishText: "ھەی سەگی پیس!",
            onPressedBritish: () => speakdogs7("en-GB"),
            onPressedAmerican: () => speakdogs7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He tried to steal my money, the dirty dog.",
            kurdishText: "سەگی پیسە ھەوڵیدا پارەکەم بدزێت.",
            onPressedBritish: () => speakdogs8("en-GB"),
            onPressedAmerican: () => speakdogs8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) کە بۆ ماوەیەکی زۆر کێشەت بۆ درووست دەکات"),
          SentencesRow(
            englishText: "He had been dogged by ill health all his life.",
            kurdishText:
                "بۆ تەواوی ژیانی بە دەست تەندرووستی خراپەوە دەیناڵاند.",
            onPressedBritish: () => speakdogs9("en-GB"),
            onPressedAmerican: () => speakdogs9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her career was dogged by misfortune.",
            kurdishText: "ژیانی کارکردنی بەھۆی بەدبەختییەوە وێران بوو.",
            onPressedBritish: () => speakdogs10("en-GB"),
            onPressedAmerican: () => speakdogs10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) شوێنکەوتنی کەسێک بە نزیکی"),
          SentencesRow(
            englishText:
                "She had the impression that someone was dogging her steps.",
            kurdishText: "ئەو ھەستەی ھەبوو کە کەسێک بە شوێن ھەنگاوەکانیەتی.",
            onPressedBritish: () => speakdogs11("en-GB"),
            onPressedAmerican: () => speakdogs11("en-US"),
          ),
          // dogs12dogs12
          // dogs13dogs13
          // dogs14dogs14
          // dogs15dogs15
          // dogs16dogs16
          // dogs17dogs17
          // dogs18dogs18
          // dogs19dogs19
          // dogs_20dogs20
          // dogs21dogs21
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
- Noun: dog (derived forms: dogs)
1. A member of the genus Canis (probably descended from the common wolf) that has been domesticated by man since prehistoric times; occurs in many breeds (= domestic dog, Canis familiaris, dawg [non-standard], doggo [informal], pooch [informal], doggie [informal], doggy [informal], barker [informal], bow-wow [informal])
"the dog barked all night"; "the domestic dog barked all night";
 
2. [informal] A dull unattractive unpleasant girl or woman (= frump)
"she's a real dog";
 
3. [informal] A boy or man (= chap [Brit, informal], fellow, feller [non-standard], fella [informal], lad [informal], gent [informal], blighter [Brit, informal], cuss [informal], bloke [Brit, informal], boyo [UK, Ireland], bucko [informal])
"you lucky dog";
 
4. [informal] Someone who is morally reprehensible (= cad [archaic], bounder [Brit, archaic], blackguard, hound, heel [informal])
"you dirty dog";
 
5. [informal] A smooth-textured sausage of minced beef or pork usually smoked; often served on a bread roll (= frank [US, informal], frankfurter, hotdog, hot dog, wiener [N. Amer, S.Africa], wienerwurst [N. Amer], weenie [N. Amer, informal], wienie [N. Amer, informal])
 
6. A hinged catch that fits into a notch of a ratchet to move a wheel forward or prevent it from moving backward (= pawl, detent, click)
 
7. A metal support for logs in a fireplace (= andiron, firedog, dog-iron)
"the dogs were too hot to touch";
 
8. A mechanical device for holding, gripping, or fastening something

- Verb: dog (derived forms: dogged, dogging, dogs)
1. Go after with the intent to catch (= chase, chase after, trail, tail, tag, give chase, go after, track)
"The policeman dogged the mugger down the alley";
 
2. Persistently cause trouble for
"dogged by reports of shareholder revolt"
 
3. Follow closely
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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 401;

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

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 246;

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
  final double _startSeconds = 505;

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

  final String _videoId = '5mZ8Hk_j9D4';
  final double _startSeconds = 67;

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

  final String _videoId = 'y6lgIZr8Sfw';
  final double _startSeconds = 27;

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

  final String _videoId = 'Ck_e5VDv_Xc';
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

  final String _videoId = 'BFeciLURidQ';
  final double _startSeconds = 10;

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