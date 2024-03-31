import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycounterattack extends StatelessWidget {
  const EnglishEntrycounterattack({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              const EntryAndIPA(),
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
                    const EnglishMeaning(),
                    KurdishMeaning(),
                    const YoutubeVideos(),
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

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
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
    return const EntryTitle(word: "counter-attack");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounterattack(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("counter-attack"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /ˈkaʊntər ətæk/"),
        CustomIconButtonBritish(
          onPressed: () => speakcounterattack("en-GB"),
        ),
      ],
    );
  }
}

class IpaUS extends StatelessWidget {
  IpaUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounterattack(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("counter-attack"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /ˈkaʊntər ətæk/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcounterattack("en-US"),
        ),
      ],
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounterattacks1(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Armed forces launched a counter-attack against the rebels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks2(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He led a counterattack on the enemy's supply lines."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks3(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The air force counterattacked and repelled the invasion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks4(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks5(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks6(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks7(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks8(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks9(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks10(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks11(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks12(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounterattacks13(String languageCode) async {
    // DOPSUM: CHANGE speakcounterattack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounterattacks1300"); // DOPSUM: CHANGE TEXT
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
کوردی: هێرشی پێچەوانە، دژەهێرش، پەرچەهێرش، هێرش‌دانەوە
"""),
          const DefinitionKurdish(text: "١. (ناو) هێرشێک کە وەک وەڵامی هێرشی دوژمن یان ڕکابەرە لە جەنگ، وەرزش، یان مشتومڕێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Armed forces launched a counter-attack against the rebels."),
                    ExampleSentenceKurdish(text: "هێزە سەربازییەکان پەرچەهێرشێکیان دژ بە یاخیبووان ئەنجامدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "counter-attack", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounterattacks1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounterattacks1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "He led a counterattack on the enemy's supply lines."),
          ExampleSentenceKurdish(
          text: "سەرپەرشتی هێرشێکی پێچەوانەی دژ بە هێڵەکانی ئازووقەی دوژمن کرد."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcounterattacks2("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcounterattacks2("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) ئەنجامدانی هێرشی پێچەوانە"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "The air force counterattacked and repelled the invasion."),
          ExampleSentenceKurdish(
          text: "هێزی ئاسمانی پەرچەکرداری دایەوە و هێرشکارییەکەی شکستپێهێنا."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcounterattacks3("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcounterattacks3("en-US"),
          ),
          ],
          ),
          ],
          ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Noun: counter-attack (Derived forms: counter-attacks)
1. An attack by a defending force against an attacking enemy force in order to regain lost ground or cut off enemy advance units etc. (= countermove)
 
2. (chess) an attack that is intended to counter the opponent's advantage in another part of the board (= counterplay)

- Verb: counter-attack (Derived forms: counter-attacked, counter-attacking, counter-attacks)
1. Make a counterattack (= counterstrike)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/SHfqtaa0VI8?t=',
    startSeconds: 86,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/sV6uuMAnJUE?t=',
    startSeconds: 454,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/4MqK90Aq8bE?t=',
    startSeconds: 102,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/wpE8PyAfT6g?t=',
    startSeconds: 280,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/EDeyMeouyfY?t=',
    startSeconds: 115,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/MQAVbwUTaYU?t=',
    startSeconds: 459,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/bLApZfnLJoM?t=',
    startSeconds: 562,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
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