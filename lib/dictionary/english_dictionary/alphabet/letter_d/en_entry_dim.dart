import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydim extends StatefulWidget {
  const EnglishEntrydim({super.key});

  @override
  State<EnglishEntrydim> createState() => _EnglishEntrydimState();
}

class _EnglishEntrydimState extends State<EnglishEntrydim> {
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
    return const EntryTitle(word: "dim");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dim");
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
    return const IPAofEnglish(text: "IpaUK: /dɪm/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdim(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dim");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdim("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪm/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdim(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dim");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdim("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdims1(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This light is too dim to read by.");
  }

  Future<void> speakdims2(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A dim lamp swung in the entrance.");
  }

  Future<void> speakdims3(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Owls' eyesight is good in dim light.");
  }

  Future<void> speakdims4(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The room was dim because the curtains were half drawn.");
  }

  Future<void> speakdims5(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The living room looked dim.");
  }

  Future<void> speakdims6(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I could see a dim shape in the doorway.");
  }

  Future<void> speakdims7(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His eyesight is getting dim.");
  }

  Future<void> speakdims8(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had a dim recollection of the visit.");
  }

  Future<void> speakdims9(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's very dim.");
  }

  Future<void> speakdims10(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He seems incredibly dim sometimes!");
  }

  Future<void> speakdims11(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her future career prospects look dim.");
  }

  Future<void> speakdims12(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The lights in the theatre dimmed as the curtain rose.");
  }

  Future<void> speakdims13(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The electric light flickered and dimmed slightly.");
  }

  Future<void> speakdims14(String languageCode) async {
    // DOPSUM: CHANGE speakdim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her passion for dancing never dimmed over the years.");
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
کوردی: تاریک، تار، بێ‌شەوق، بێ‌ڕووناکی، بێ‌ڕۆشنایی،	(شەوق) کز، کەم،	(چاو) کەم‌سۆما، کز، لێڵ، چاک‌نەدیتوو،	لێڵ، ڕوون نییە، نامەعلووم، نادیار، تەماوی،	گێژ، کەم‌ھۆش، گەمژە، حەپە
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) کە ڕۆشن نییە"),
          SentencesRow(
            englishText: "This light is too dim to read by.",
            kurdishText: "ئەم ڕۆشناییە زۆر کزە کە لە پاڵیدا بخوێنیتەوە.", // dim
            onPressedBritish: () => speakdims1("en-GB"),
            onPressedAmerican: () => speakdims1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A dim lamp swung in the entrance.",
            kurdishText: "گڵۆپێکی کز لە دەروازەکە دەجوڵایەوە.",
            onPressedBritish: () => speakdims2("en-GB"),
            onPressedAmerican: () => speakdims2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Owls' eyesight is good in dim light.",
            kurdishText: "بینایی کوندەپەپوو باشە لە ڕۆشنایی کزدا.",
            onPressedBritish: () => speakdims3("en-GB"),
            onPressedAmerican: () => speakdims3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) شوێنێک کە ناتوانی باش ببینیت بەھۆی ئەوەی کە ڕۆشنایی زۆر نییە"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The room was dim because the curtains were half drawn.",
            kurdishText:
                "ژوورەکە کز بوو بەھۆی ئەوەی پەردەکان بە نیوە لادرابوون.",
            onPressedBritish: () => speakdims4("en-GB"),
            onPressedAmerican: () => speakdims4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The living room looked dim.",
            kurdishText: "ژووری میوانەکە کز دیاربوو.",
            onPressedBritish: () => speakdims5("en-GB"),
            onPressedAmerican: () => speakdims5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) شێوەیەک کە ناتوانیت باش بیبینیت بەھۆی ئەوەی ڕۆشنایی زۆر نییە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I could see a dim shape in the doorway.",
            kurdishText: "شێوەیەکی ناڕوونم دەبینی لەپێش دەرگاکە.",
            onPressedBritish: () => speakdims6("en-GB"),
            onPressedAmerican: () => speakdims6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) چاوێک کە باش نابینێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "His eyesight is getting dim.",
            kurdishText: "بینایی کز دەبێت.",
            onPressedBritish: () => speakdims7("en-GB"),
            onPressedAmerican: () => speakdims7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) یادەوەرییەک کە باش بیرت نایەتەوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She had a dim recollection of the visit.",
            kurdishText: "بیرەوەرییەکی لاوازی سەردانەکەی ھەبوو.",
            onPressedBritish: () => speakdims8("en-GB"),
            onPressedAmerican: () => speakdims8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) کەسێک کە زیرەک نییە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He's very dim.",
            kurdishText: "تەواو گێژە.",
            onPressedBritish: () => speakdims9("en-GB"),
            onPressedAmerican: () => speakdims9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He seems incredibly dim sometimes!",
            kurdishText: "ھەندێک جار لەڕادەبەدەر گێژە!",
            onPressedBritish: () => speakdims10("en-GB"),
            onPressedAmerican: () => speakdims10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵناو) کە ھیچ ھۆکارێک نادات بۆ ھەبوونی ھیوا"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Her future career prospects look dim.",
            kurdishText: "ئاسۆی کاری داھاتووی کز دیارە.",
            onPressedBritish: () => speakdims11("en-GB"),
            onPressedAmerican: () => speakdims11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (کردار) کزبوونی ڕۆشنایی"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The lights in the theatre dimmed as the curtain rose.",
            kurdishText: "لایتەکانی ھۆڵی شانۆکە کزبوون کە پەردەکە بەرزبوویەوە.",
            onPressedBritish: () => speakdims12("en-GB"),
            onPressedAmerican: () => speakdims12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The electric light flickered and dimmed slightly.",
            kurdishText: "لایتە کارەباییەکە پرتەی کرد و کەمێک کزبوو.",
            onPressedBritish: () => speakdims13("en-GB"),
            onPressedAmerican: () => speakdims13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) کاڵبوونەوەی ھەست یان شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Her passion for dancing never dimmed over the years.",
            kurdishText:
                "خولیای بۆ سەما بە درێژایی ساڵان ھەرگیز کاڵ نەبوویەوە.",
            onPressedBritish: () => speakdims14("en-GB"),
            onPressedAmerican: () => speakdims14("en-US"),
          ),
          // dims1500"),
          // speakdims15
          // dims15("en-US"),
          // dims1600"),
          // speakdims16
          // dims16("en-US"),
          // dims1700"),
          // speakdims17
          // dims17("en-US"),
          // dims1800"),
          // speakdims18
          // dims18("en-US"),
          // dims1900"),
          // speakdims19
          // dims19("en-US"),
          // dims_2000"),
          // speakdims20
          // dims20("en-US"),
          // dims2100"),
          // speakdims21
          // dims21("en-US"),
          // dims2200"),
          // speakdims22
          // dims22("en-US"),
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
- Adjective: dim (derived forms: dimmer, dimmest)
1. Lacking in light; not bright or harsh (= subdued)
"a dim light beside the bed";
 
2. Lacking clarity or distinctness (= faint, shadowy, vague, wispy)
"a dim figure in the distance";
 
3. Offering little or no hope (= black, bleak)
"took a dim view of things";
 
4. [informal] Taking more than usual time to learn or understand; lacking intellectual acuity (= dense, dull, dumb, obtuse, slow)
"never met anyone quite so dim";
 
5. Made dim or less bright (= dimmed)
"the dim houselights brought a hush of anticipation";

- Verb: dim (derived forms: dimmed, dims, dimming)
1. Become dim or lusterless
"the lights dimmed and the curtain rose"
 
2. Make dim or lusterless
"Time had dimmed the silver"
 
3. Make dim by comparison or conceal (= blind)
 
4. Switch (a car's headlights) from a higher to a lower beam (= dip)
 
5. Become vague or indistinct (= blur, slur)
"The distinction between the two theories dimmed";
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

  final String _videoId = 'eikqzBcOweM';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'xreA0vkHMBY';
  final double _startSeconds = 3506;

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

  final String _videoId = 'ieUVI-J_nyU';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'LIN5omLzutI';
  final double _startSeconds = 227;

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

  final String _videoId = 'NiJwvF3t2bY';
  final double _startSeconds = 463;

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

  final String _videoId = 'v-TtJH9PzUM';
  final double _startSeconds = 363;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 1853;

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