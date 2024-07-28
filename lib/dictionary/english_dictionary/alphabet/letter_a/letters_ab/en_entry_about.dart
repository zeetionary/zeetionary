import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryabout extends StatefulWidget {
  const EnglishEntryabout({super.key});

  @override
  State<EnglishEntryabout> createState() => _EnglishEntryaboutState();
}

class _EnglishEntryaboutState extends State<EnglishEntryabout> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "about");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: about");
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
    return const IPAofEnglish(text: "IpaUK: /əˈbaʊt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabout(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("about");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakabout("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /əˈbaʊt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabout(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("about");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakabout("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabouts1(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("// speakabouts111111111111111111111111111111111");
  }

  Future<void> speakabouts2(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts200");
  }

  Future<void> speakabouts3(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts300");
  }

  Future<void> speakabouts4(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts400");
  }

  Future<void> speakabouts5(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts500");
  }

  Future<void> speakabouts6(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts600");
  }

  Future<void> speakabouts7(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts700");
  }

  Future<void> speakabouts8(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts800");
  }

  Future<void> speakabouts9(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts900");
  }

  Future<void> speakabouts10(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts1000");
  }

  Future<void> speakabouts11(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts1100");
  }

  Future<void> speakabouts12(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts1200");
  }

  Future<void> speakabouts13(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakabouts1300");
  }

  Future<void> speaka2247(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her books were lying about on the floor.");
  }

  Future<void> speaka34(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children were rushing about in the garden.");
  }

  Future<void> speaka994(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm just about ready.");
  }

  Future<void> speaka54(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They waited (for) about an hour.");
  }

  Future<void> speaka557(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Everywhere people were going about their daily business.");
  }

  Future<void> speaka25(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We wandered about the town for an hour or so.");
  }

  Future<void> speaka327(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Movies are all about making money these days.");
  }

  Future<void> speaka5541(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's something about this business that is not quite right.");
  }

  Future<void> speaka337(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's she so angry about?");
  }

  Future<void> speaka225(String languageCode) async {
    // speakabout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tell me all about it.");
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
کوردی: نزیکەی، لە دەوروبەری، بە مەزندە، سەرلە، لەبارەی، لەمەڕ، دەوروبەر، دەوروپشت، دۆرمادۆر، بە ھەر لا، لێرە و لەوێ، خەریکی، سەرقاڵی، مژولی، خەریک، پێچەوانەی، بەرڤاژی، 
"""),
          const DefinitionKurdish(text: "١. (ئامراز) دەربارەی شتێک" ""),
          SentencesRow(
            englishText: "Tell me all about it.",
            kurdishText: "ھەموو شتێکم پێ بڵێ لەسەری.",
            onPressedBritish: () => speaka225("en-GB"),
            onPressedAmerican: () => speaka225("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What's she so angry about?",
            kurdishText: "لەسەر چییە وا تووڕەیە؟",
            onPressedBritish: () => speaka337("en-GB"),
            onPressedAmerican: () => speaka337("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There's something about this business that is not quite right.",
            kurdishText: "شتێک دەربارەی ئەم ئیشە لە جێگەی خۆی نییە.",
            onPressedBritish: () => speaka5541("en-GB"),
            onPressedAmerican: () => speaka5541("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٢. (ئامراز) بەکاردێت بۆ باسکردنی ئامانجی شتێک"""),
          SentencesRow(
            englishText: "Movies are all about making money these days.",
            kurdishText: "لەم سەردەمەدا ئامانج لە ھەموو فیلمەکان قازانجە.",
            onPressedBritish: () => speaka327("en-GB"),
            onPressedAmerican: () => speaka327("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٣. (ئامراز) سەرقاڵبوون بە شتێک"""),
          SentencesRow(
            englishText:
                "Everywhere people were going about their daily business.",
            kurdishText: "لە ھەموو شوێنێک خەڵکی سەرقاڵی ژیانی ڕۆزانەیانن.",
            onPressedBritish: () => speaka557("en-GB"),
            onPressedAmerican: () => speaka557("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٤. (ئامراز) بە ژمارەیەک لادا"""),
          SentencesRow(
            englishText: "We wandered about the town for an hour or so.",
            kurdishText: "نزیکەی کاتژمێرێک بە شارۆچکەکەدا سووڕاینەوە.",
            onPressedBritish: () => speaka25("en-GB"),
            onPressedAmerican: () => speaka25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٥. (ئامراز) بە ژمارەیەک لادا"""),
          SentencesRow(
            englishText: "We wandered about the town for an hour or so.",
            kurdishText: "نزیکەی کاتژمێرێک بە شارۆچکەکەدا سووڕاینەوە.",
            onPressedBritish: () => speaka25("en-GB"),
            onPressedAmerican: () => speaka25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) بەنزیکەیی"""),
          SentencesRow(
            englishText: "They waited (for) about an hour.",
            kurdishText: "بە نزیکەیی یەک کاتژمێر چاوەڕێ بوون.",
            onPressedBritish: () => speaka54("en-GB"),
            onPressedAmerican: () => speaka54("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) زۆر نزیک لە"""),
          SentencesRow(
            englishText: "I'm just about ready.",
            kurdishText: "یەک تۆزم ماوە.",
            onPressedBritish: () => speaka994("en-GB"),
            onPressedAmerican: () => speaka994("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە زۆر لادا"""),
          SentencesRow(
            englishText: "The children were rushing about in the garden.",
            kurdishText: "منداڵەکان بە باخجەکەدا ھاتوچۆیان بوو.",
            onPressedBritish: () => speaka34("en-GB"),
            onPressedAmerican: () => speaka34("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """
١٠. (ھاوەڵکار) بە ھەڕەمەکی"""),
          SentencesRow(
            englishText: "Her books were lying about on the floor.",
            kurdishText: "کتێبەکانی لەسەر زەوییەکە کەوتبوون.",
            onPressedBritish: () => speaka2247("en-GB"),
            onPressedAmerican: () => speaka2247("en-US"),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adverb: about 
1. (of quantities) imprecise but fairly close to correct (= approximately, close to, just about, some, roughly, more or less, around, or so, loosely)
"in just about a minute"; "he's about 30 years old"; "I've had about all I can stand"; "we meet about once a month";

2. All around or on all sides (= around)
"dirty clothes lying about"; "let's look about for help";

3. In the area or vicinity (= around)
"a few spectators standing about";
 
4. Used of movement to or among many different places or in no particular direction (= around)
"wandering about with no place to go"; "people were rushing about"; "news gets about";
 
5. In or to a reversed position or direction (= around)
"about face";
 
6. In rotation or succession
"turn about is fair play"
 
7. (of actions or states) slightly short of or not quite accomplished; all but (= almost, most, nearly, near, nigh, virtually, well-nigh, all but)
"the job is (just) about done";

- Preposition: about  u'bawt
1. On the topic of (= on)
"a book about physics";
 
2. With regard or relation to; on the subject of (= regarding, concerning, respecting, re, apropos, as regards, with regard to, as for, as to, in connection with)
"I have a query about your previous reply"; "think about it";

- Adjective: about
1. On the move (= astir)
"up and about";
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

  final String _videoId = 'jNQXAC9IVRw';
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

  final String _videoId = 'DOMPU26i7Xw';
  final double _startSeconds = 266;

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

  final String _videoId = 'pvuN_WvF1to';
  final double _startSeconds = 52;

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

  final String _videoId = 'tQwVKr8rCYw';
  final double _startSeconds = 109;

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

  final String _videoId = 'uXyxFMbqKYA';
  final double _startSeconds = 138;

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

  final String _videoId = 'jbBbRjs_niM';
  final double _startSeconds = 38;

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

  final String _videoId = 'vmsTcj3WuoE';
  final double _startSeconds = 3732;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '4BvwpjaGZCQ';
  final double _startSeconds = 154;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = '67JzSRnyXr4';
  final double _startSeconds = 402;

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

  final String _videoId = 'Q1c6PmxZ2ZM';
  final double _startSeconds = 224;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });
// speakabouts111111111111111111111111111111111

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
        YoutubeEmbeddedseven(),
        YoutubeEmbeddedeight(),
        YoutubeEmbeddednine(),
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












