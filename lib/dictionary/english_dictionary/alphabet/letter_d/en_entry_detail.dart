import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydetail extends StatefulWidget {
  const EnglishEntrydetail({super.key});

  @override
  State<EnglishEntrydetail> createState() => _EnglishEntrydetailState();
}

class _EnglishEntrydetailState extends State<EnglishEntrydetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
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
    return const EntryTitle(word: "detail");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: detail");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdiːteɪl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdetail(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("detail");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdetail("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdiːteɪl/,  /dɪˈteɪl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdetail(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("detail");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdetail("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdetails1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The Ministry refused to reveal any more details of the attack.");
  }

  Future<void> speakdetails2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Tell me the main points now; leave the details till later.");
  }

  Future<void> speakdetails3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The finer details of the plan have still to be worked out.");
  }

  Future<void> speakdetails4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These are all relatively minor details.");
  }

  Future<void> speakdetails5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The report was criticized for its lack of detail.");
  }

  Future<void> speakdetails6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Ensure that your diagrams contain the appropriate level of detail.");
  }

  Future<void> speakdetails7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This issue will be discussed in more detail in the next chapter.");
  }

  Future<void> speakdetails8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The making of the movie is explored in minute detail.");
  }

  Future<void> speakdetails9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Please provide the following details: name, age and sex.");
  }

  Future<void> speakdetails10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can you send me your contact details?");
  }

  Future<void> speakdetails11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("For further details visit our website.");
  }

  Future<void> speakdetails12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They didn't give any details about the game.");
  }

  Future<void> speakdetails13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In this lecture, I will detail the history of television from the beginning.");
  }

  Future<void> speakdetails14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Of the factors detailed above, supply and demand are the primary forces behind interest rate levels.");
  }

  Future<void> speakdetails15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Several of the men were detailed to form a search party.");
  }

  Future<void> speakdetails16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He got work for a while detailing cars.");
  }

  Future<void> speakdetails20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Tell me the main points now; leave the details till later.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بەش، پشک، دوورودرێژ، چڕوپڕ، تێروتەسەل، تێروپڕ، مووبەموو، وردەکاری، وردەباس، لێکدانەوە
"""),
          const DefinitionKurdish(text: "١. (ناو) شتێک کە کەمتر گرنگە"),
          SentencesRow(
            englishText:
                "The Ministry refused to reveal any more details of the attack.",
            kurdishText:
                "وەزارەتەکە ڕەتیکردەوە ھیچ وردەکارییەکی دیکە ئاشکرا بکات.",
            onPressedBritish: () => speakdetails1("en-GB"),
            onPressedAmerican: () => speakdetails1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Tell me the main points now; leave the details till later.",
            kurdishText:
                "ئێستا خاڵە سەرەکییەکانم پێ بڵێ؛ وردەکارییەکان بۆ دواتر جێبھێڵە.",
            onPressedBritish: () => speakdetails2("en-GB"),
            onPressedAmerican: () => speakdetails2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The finer details of the plan have still to be worked out.",
            kurdishText:
                "وردەکارییە بچووکەکانی پلانەکە ھێشتا باسیان لێوە دەکرا.",
            onPressedBritish: () => speakdetails3("en-GB"),
            onPressedAmerican: () => speakdetails3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "These are all relatively minor details.",
            kurdishText: "ھەموویان تاڕادەیەک وردەکاری بچووکن.",
            onPressedBritish: () => speakdetails4("en-GB"),
            onPressedAmerican: () => speakdetails4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ڕاستی یان خاسیەتەکانی شتێک کە ھەموویان پێکەوە ناودێنیت"),
          const DividerSentences(),
          SentencesRow(
            englishText: "The report was criticized for its lack of detail.",
            kurdishText: "ڕاپۆرتەکە ڕەخنەی لێ گیردرا بۆ کەمیی وردەکاریی.",
            onPressedBritish: () => speakdetails5("en-GB"),
            onPressedAmerican: () => speakdetails5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Ensure that your diagrams contain the appropriate level of detail.",
            kurdishText:
                "دڵنیابەرەوە کە ھێڵکارییەکانت ئاستی گونجاوی وردەکاری لەخۆدەگرن.",
            onPressedBritish: () => speakdetails6("en-GB"),
            onPressedAmerican: () => speakdetails6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This issue will be discussed in more detail in the next chapter.",
            kurdishText:
                "ئەم بابەتە لە بەشی دواتردا بە وردەکاریی زیاترەوە باس دەکرێت.",
            onPressedBritish: () => speakdetails7("en-GB"),
            onPressedAmerican: () => speakdetails7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The making of the movie is explored in minute detail.",
            kurdishText:
                "بەرھەمھێنانی فیلمەکە بە وردەکاریی وردەوە باسی لێوە دەکرێت.",
            onPressedBritish: () => speakdetails8("en-GB"),
            onPressedAmerican: () => speakdetails8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) زانیاری لەسەر شتێک"),
          SentencesRow(
            englishText:
                "Please provide the following details: name, age and sex.",
            kurdishText:
                "تکایە ئەم زانیارییانە بدە بەدەستەوە: ناو، تەمەن، ڕەگەز.",
            onPressedBritish: () => speakdetails9("en-GB"),
            onPressedAmerican: () => speakdetails9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Can you send me your contact details?",
            kurdishText: "دەتوانیت زانیارییەکانی پەیوەندتم بۆ بنێریت؟",
            onPressedBritish: () => speakdetails10("en-GB"),
            onPressedAmerican: () => speakdetails10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "For further details visit our website.",
            kurdishText: "بۆ زانیاری زیاتر سەردانی وێبسایتەکەمان بکە.",
            onPressedBritish: () => speakdetails11("en-GB"),
            onPressedAmerican: () => speakdetails11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They didn't give any details about the game.",
            kurdishText: "ھیچ زانیارییەکیان نەدا لەسەر یارییەکە.",
            onPressedBritish: () => speakdetails12("en-GB"),
            onPressedAmerican: () => speakdetails12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) پێدانی لیستێکی زانیاری یان ھەموو زانیاریی بەردەست لەسەر شتێک"),
          SentencesRow(
            englishText:
                "In this lecture, I will detail the history of television from the beginning.",
            kurdishText: "لەم وانەدا، مێژووی تەلەفیزیۆن لە سەرەتاوە دەخەمەڕوو.",
            onPressedBritish: () => speakdetails13("en-GB"),
            onPressedAmerican: () => speakdetails13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Of the factors detailed above, supply and demand are the primary forces behind interest rate levels.",
            kurdishText:
                "لەو فاکتەرانەی لە سەرەوە باسکراون، دابینکردن و خواست لە ھۆکارە سەرەکییەکانی ئاستی گۆڕانی سووە.",
            onPressedBritish: () => speakdetails14("en-GB"),
            onPressedAmerican: () => speakdetails14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) پێدانی فەرمانی فەرمی بە کەسێک بۆ ئەنجامدانی ئەرکێکی تایبەت"),
          SentencesRow(
            englishText:
                "Several of the men were detailed to form a search party.",
            kurdishText:
                "ژمارەیەک لە پیاوەکان فەرمانیان پێکرا کە گرووپێکی گەڕان پێکبھێنن.",
            onPressedBritish: () => speakdetails15("en-GB"),
            onPressedAmerican: () => speakdetails15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) پاککردنەوەی ئۆتۆمبێل بە تەواوی و پاکی"),
          SentencesRow(
            englishText: "He got work for a while detailing cars.",
            kurdishText: "بۆ ماوەیەک کاری شووشتنی ئۆتۆمبێلی دەکرد.",
            onPressedBritish: () => speakdetails16("en-GB"),
            onPressedAmerican: () => speakdetails16("en-US"),
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
- Noun: detail (derived forms: details)
1. An isolated fact that is considered separately from the whole (= item, point)
"several of the details are similar";
 
2. A small part that can be considered separately from the whole (= particular, item)
"it was perfect in all details";
 
3. Extended treatment of particulars
"the essay contained too much detail"
 
4. A crew of workers selected for a particular task
"a detail was sent to remove the fallen trees"
 
5. (military) a temporary military unit (= contingent)
"the peacekeeping force includes one British detail";

- Verb: detail (derived forms: detailed, detailing, details)
1. Provide details for
 
2. Assign to a specific task
"The ambulances were detailed to the fire station"
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
  final double _startSeconds = 667;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 1442;

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

  final String _videoId = 'FT3ODSg1GFE';
  final double _startSeconds = 82;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 105;

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

  final String _videoId = 'iWmRvrhNQkQ';
  final double _startSeconds = 200;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 1677;

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

  final String _videoId = 'BZbChKzedEk';
  final double _startSeconds = 626;

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