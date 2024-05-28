import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrew extends StatefulWidget {
  const EnglishEntrycrew({super.key});

  @override
  State<EnglishEntrycrew> createState() => _EnglishEntrycrewState();
}

class _EnglishEntrycrewState extends State<EnglishEntrycrew> {
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
    return const EntryTitle(word: "crew");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crew");
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
    return const IPAofEnglish(text: "IpaUK: /kruː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrew(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crew"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrew("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kruː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrew(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crew"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrew("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrews1(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "None of the passengers and crew were injured."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews2(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The crew of the plane instructed everyone to remain seated."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews3(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It took ambulance crews more than an hour to free them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews4(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fire crews were called to the scene."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews5(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cast and crew of the movie are giving it their all."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews6(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house was soon besieged by TV crews and photographers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews7(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The people she invited were a pretty motley crew."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews8(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's get a crew together and go to the pub."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews9(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Normally the boat is crewed by five people."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews10(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I crewed for him on his yacht last summer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews11(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrews1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews12(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrews1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrews13(String languageCode) async {
    // DOPSUM: CHANGE speakcrew
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrews1300"); // DOPSUM: CHANGE TEXT
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
کوردی: کارکەران، دەستەی کارکەران (فڕۆکەوانی و کەشتی‌یەوانی)،	کۆمەڵە، دەستە، گروپ، تیپ، تاقم،	دارودەستە
"""),
          const DefinitionKurdish(text: "١. (ناو) تەواوی ئەو کەسانەی کە لەسەر فڕۆکەیەک، کەشتییەک، هتد کار دەکەن؛ تەواوی دەستەکە جگە لە ئەو ئەفسەرانەی بەڕێوەبەرن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "None of the passengers and crew were injured."),
                    ExampleSentenceKurdish(text: "هیچ یەک لە گەشتیاران و دەستەی کارکەران بریندار نەبوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crew", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrews1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrews1("en-US"),
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
          "The crew of the plane instructed everyone to remain seated."),
          ExampleSentenceKurdish(
          text: "تاقمی فڕۆکەکە ڕێنمایی هەموانیان کرد کە لە جێگای خۆیان بمێننەوە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews2("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews2("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) کۆمەڵە کەسێک کە شارەزاییەکی تایبەتیان هەیە و پێکەوە کار دەکەن"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "It took ambulance crews more than an hour to free them."),
          ExampleSentenceKurdish(
          text: "زیاتر لە یەک کاتژمێری پێچوو بۆ تیمی فریاگوزاری تاوەکو ئازادیان بکەن."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews3("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews3("en-US"),
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
          "Fire crews were called to the scene."),
          ExampleSentenceKurdish(
          text: "تیمی ئاگرکوژێنەرەوە بانگ کران بۆ شوێنی ڕووداوەکە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews4("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews4("en-US"),
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
          "The cast and crew of the movie are giving it their all."),
          ExampleSentenceKurdish(
          text: "ئەکتەران و تیمی فیلمەکە تەواوی تانایان تەرخان کردووە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews5("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews5("en-US"),
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
          "The house was soon besieged by TV crews and photographers."),
          ExampleSentenceKurdish(
          text: "خانووەکە هەرزوو دەوردرا بە تیمی تەلەفیزیۆنەکان و وێنەگران."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews6("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews6("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) گرووپێک لە خەڵکی"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "The people she invited were a pretty motley crew (= a strange mix of types of people)."),
          ExampleSentenceKurdish(
          text: "ئەو کەسانەی بانگهێشت کران گرووپێکی تەواو فرەڕەنگ بوون."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews7("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews7("en-US"),
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
          "Let's get a crew together and go to the pub."),
          ExampleSentenceKurdish(
          text: "با گرووپێک درووست بکەین و بچین بۆ مەیخانەکە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews8("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews8("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) بوون بە بەشێک لە دەستەی کارکەرانی فڕۆکەیەک، کەشتییەک، هتد"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "Normally the boat is crewed by five people."),
          ExampleSentenceKurdish(
          text: "بە شێوەی ئاسایی بەلەمەکە پێنج کارکەری تێدا دەبێت."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews9("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews9("en-US"),
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
          "I crewed for him on his yacht last summer."),
          ExampleSentenceKurdish(
          text: "هاوینی ڕابردوو کارکەرێک بووم لەسەر یەختەکەی."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrews10("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrews10("en-US"),
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
- Noun: crew (derived forms: crews)
1. The men and women who man a vehicle (ship, aircraft, etc.)
 
2. An organized group of workmen (= gang, work party)
 
3. An informal body of friends (= crowd, gang, bunch)
"he still hangs out with the same crew";
 
4. The team of men or women manning a racing shell

- Verb: crew (derived forms: crews, crewing, crewed)
1. Serve as a crew member on
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
    videoId: '-HyHZsa79LU',
    startSeconds: 1223,
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
    videoId: 'HDntl7yzzVI',
    startSeconds: 113,
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
    videoId: 'zz5MV_qB36Q',
    startSeconds: 230,
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
    videoId: 'npZF5gJHhZM',
    startSeconds: 12,
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
    videoId: 'VS6tnF31zr4',
    startSeconds: 484,
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
    videoId: 'IHAVC3ASxi4',
    startSeconds: 166,
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
    videoId: 'd-WXnEXXQYw',
    startSeconds: 130,
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