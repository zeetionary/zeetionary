import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydirty extends StatefulWidget {
  const EnglishEntrydirty({super.key});

  @override
  State<EnglishEntrydirty> createState() => _EnglishEntrydirtyState();
}

class _EnglishEntrydirtyState extends State<EnglishEntrydirty> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
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
    return const EntryTitle(word: "dirty");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dirty");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɜːti/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirty(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dirty");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdirty("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɜːrti/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirty(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dirty");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdirty("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirtys1(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My thumb had left a dirty mark on the paper.");
  }

  Future<void> speakdirtys2(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Try not to get too dirty!");
  }

  Future<void> speakdirtys3(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She didn't want to get her dress dirty.");
  }

  Future<void> speakdirtys4(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I always get given the dirty jobs.");
  }

  Future<void> speakdirtys5(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Everything in the room was incredibly dirty.");
  }

  Future<void> speakdirtys6(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's got a dirty mind.");
  }

  Future<void> speakdirtys7(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's not a good idea to tell dirty jokes in the office.");
  }

  Future<void> speakdirtys8(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Has he been corrupted by watching all these dirty movies?");
  }

  Future<void> speakdirtys9(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That's a dirty lie!");
  }

  Future<void> speakdirtys10(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They discovered her dirty little secret.");
  }

  Future<void> speakdirtys11(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You dirty liar!");
  }

  Future<void> speakdirtys12(String languageCode) async {
    // DOPSUM: CHANGE speakdirty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't sit on the floor - you might dirty your dress.");
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
کوردی: پیس، چڵکن، دژوێن، چەپەڵ، ناخاوێن، قوڕاوی، پۆخڵ، گەمار، کخە، گڵاو، پیس‌کەرەوە،	ناحەز، سووک، ھەرزە، ناشیرین، پیس، شەرماوی، ساردوسووک، شپرزە،	(ھەوا) ناخۆش، ناساز، باھاتوو، ئاڵۆز، خراپ،	(ڕەنگ) تەڵخ، لێڵ، مات، مردوو، چڵکن، یەکجار، گەلێ
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) پیس"),
          SentencesRow(
            englishText: "My thumb had left a dirty mark on the paper.",
            kurdishText:
                "پەنجەم نیشانەیەکی پیسی لەسەر پەڕەکە جێھێشتبوو.", // dirty
            onPressedBritish: () => speakdirtys1("en-GB"),
            onPressedAmerican: () => speakdirtys1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "Try not to get too dirty!",
            kurdishText: "ھەوڵ بدە زۆر پیس نەبیت.",
            onPressedBritish: () => speakdirtys2("en-GB"),
            onPressedAmerican: () => speakdirtys2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "She didn't want to get her dress dirty.",
            kurdishText: "نەیدەویست جلەکەی پیس بکات.",
            onPressedBritish: () => speakdirtys3("en-GB"),
            onPressedAmerican: () => speakdirtys3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I always get given the dirty jobs (= jobs that make you become dirty).",
            kurdishText: "ھەمیشە ئیشە پیسەکانم پێدەدرێت.",
            onPressedBritish: () => speakdirtys4("en-GB"),
            onPressedAmerican: () => speakdirtys4("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "Everything in the room was incredibly dirty.",
            kurdishText: "ھەموو شتێک لە ژوورەکە تەواو پیس بوو.",
            onPressedBritish: () => speakdirtys5("en-GB"),
            onPressedAmerican: () => speakdirtys5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) پەیوەندیدار بە سێکس بەشێوەیەکی نابەجێ"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He's got a dirty mind (= he often thinks about sex).",
            kurdishText: "مێشکێکی حیزی ھەیە.",
            onPressedBritish: () => speakdirtys6("en-GB"),
            onPressedAmerican: () => speakdirtys6("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It's not a good idea to tell dirty jokes in the office.",
            kurdishText: "باش نییە نوکتەی نابەجێ لەسەر کار بگێڕیتەوە.",
            onPressedBritish: () => speakdirtys7("en-GB"),
            onPressedAmerican: () => speakdirtys7("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Has he been corrupted by watching all these dirty movies?",
            kurdishText:
                "تێکچووە بەم ھەموو سەیرکردنی ئەم ھەموو فیلمە نابەجێیانە؟",
            onPressedBritish: () => speakdirtys8("en-GB"),
            onPressedAmerican: () => speakdirtys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) ناشرین و خراپ"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "That's a dirty lie!",
            kurdishText: "درۆیەکی چەپەڵانەیە.",
            onPressedBritish: () => speakdirtys9("en-GB"),
            onPressedAmerican: () => speakdirtys9("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "They discovered her dirty little secret.",
            kurdishText: "نھێنییە خراپەکەییان دۆزییەوە.",
            onPressedBritish: () => speakdirtys10("en-GB"),
            onPressedAmerican: () => speakdirtys10("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "You dirty liar!",
            kurdishText: "درۆزنی چەپەڵ!",
            onPressedBritish: () => speakdirtys11("en-GB"),
            onPressedAmerican: () => speakdirtys11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) پیسکردنی شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Don't sit on the floor - you might dirty your dress.",
            kurdishText: "لەسەر زەوییەکە دامەنیشە ـ لەوانەیە جلەکەت پیس بکەیت.",
            onPressedBritish: () => speakdirtys12("en-GB"),
            onPressedAmerican: () => speakdirtys12("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٥. (ھاوەڵکار) پێنناسە"),
          // dirtys1300"),
          // speakdirtys13
          // dirtys13("en-US"),
          // dirtys1400"),
          // speakdirtys14
          // dirtys14("en-US"),
          // dirtys1500"),
          // speakdirtys15
          // dirtys15("en-US"),
          // dirtys1600"),
          // speakdirtys16
          // dirtys16("en-US"),
          // dirtys1700"),
          // speakdirtys17
          // dirtys17("en-US"),
          // dirtys1800"),
          // speakdirtys18
          // dirtys18("en-US"),
          // dirtys1900"),
          // speakdirtys19
          // dirtys19("en-US"),
          // dirtys_2000"),
          // speakdirtys20
          // dirtys20("en-US"),
          // dirtys2100"),
          // speakdirtys21
          // dirtys21("en-US"),
          // dirtys2200"),
          // speakdirtys22
          // dirtys22("en-US"),
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
- Adjective: dirty 
1. Not clean, or likely to soil with dirt or grime (= soiled, unclean)
"dirty unswept pavements"; "a child in dirty overalls"; "dirty slums"; "piles of dirty dishes"; "put his dirty feet on the clean sheet"; "mining is a dirty job"; "Cinderella did the dirty work while her sisters preened themselves";
 
2. Vile; despicable (= filthy, lousy [informal], cruddy [informal])
"a dirty trick";
 
3. Contaminated with infecting organisms (= pestiferous)
"dirty wounds";
 
4. (of colour) discoloured by impurities; not bright and clear (= dingy, muddied, muddy)
"dirty"; "a dirty white"; "dirty-green walls"; "dirty-blonde hair";
 
5. (of a manuscript) defaced with changes (= foul, marked-up)
"dirty copy";
 
6. Obtained illegally or by improper means (= ill-gotten, misbegotten)
"dirty money";
 
7. Expressing or revealing hostility or dislike
"dirty looks"
 
8. Violating accepted standards or rules (= cheating, foul, unsporting, unsportsmanlike)
"a dirty fighter";
 
9. Unethical or dishonest (= sordid, shoddy)
"dirty police officers";
 
10. Unpleasantly stormy
"there's dirty weather in the offing"
 
11. (of behaviour or especially language) characterized by obscenity or indecency
"dirty words"; "a dirty old man"; "dirty books and movies"; "boys telling dirty jokes"; "has a dirty mouth"
 
12. Spreading pollution or contamination; especially radioactive contamination (= contaminating)
"the air near the foundry was always dirty"; "a dirty bomb releases enormous amounts of long-lived radioactive fallout";

- Verb: dirty 
1. Make soiled, filthy, or dirty (= soil, begrime, grime, colly [archaic], bemire [archaic])
"don't dirty your clothes when you play outside!";

- Adverb: dirty 
1. [Brit, informal] Used as an intensifier (= very, really, real [N. Amer], rattling [informal], mucho [informal], thoroughly, cracking [Brit, informal], rotten [informal], massively [informal], excellently, magnificently, splendidly, famously, tremendously [informal], capitally, awesomely [informal])
"watching the cricket with a dirty big grin";
 
2. In an unfair manner (= unfairly, below the belt) (= derived forms: dirtying, dirtied, dirtier, dirtiest, dirties)
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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 332;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 217;

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

  final String _videoId = 'xkYved-ucGg';
  final double _startSeconds = 372;

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

  final String _videoId = 'DesEUpFgGrQ';
  final double _startSeconds = 328;

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

  final String _videoId = 'U1KGRnWjllg';
  final double _startSeconds = 593;

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

  final String _videoId = '9-hmg1UHySY';
  final double _startSeconds = 236;

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

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 212;

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