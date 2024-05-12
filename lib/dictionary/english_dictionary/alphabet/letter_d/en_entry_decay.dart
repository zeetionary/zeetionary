import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydecay extends StatefulWidget {
  const EnglishEntrydecay({super.key});

  @override
  State<EnglishEntrydecay> createState() => _EnglishEntrydecayState();
}

class _EnglishEntrydecayState extends State<EnglishEntrydecay> {
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
    return const EntryTitle(word: "decay");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: decay");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈkeɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecay(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("decay"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdecay("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈkeɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecay(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("decay"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdecay("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecays1(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The landlord had let the building fall into decay."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays2(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The smell of death and decay hung over the town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays3(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My dentist could not find any signs of decay."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays4(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This government promises to reverse industrial decay."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays5(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sugar makes your teeth decay."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays6(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The role of the royal family has been decaying for some time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays7(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays8(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays9(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays10(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays11(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays12(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecays13(String languageCode) async {
    // DOPSUM: CHANGE speakdecay
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecays1300"); // DOPSUM: CHANGE TEXT
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
کوردی: خراپ‌بوون، گەنین، گنخان، ڕزین، پووان، دافەوتان، داقەنین، خورانەوە، ڕەش‌داگەڕان،	(فیزیک) لێک‌بوونەوە، لێک‌هەڵوەشان،	وێران‌بوون، کاول‌بوون، تێک‌دران، تێکچوون، داشکان، داچوون، داخزان، لێژەوەبوون، هەڵتەکان، لێ‌کەوتن، داکەوتن، داشکان، هاتنەخوارێ، پووکانەوە،	تیاچوون، قڕتێ‌کەوتن، لەنێوچوون، نەمان،	لاوازبوون، سستی، پێچوون
"""),
          const DefinitionKurdish(text: "١. (ناو) لەناوچوون بە هۆکاری سرووشتی یان نەبوونی گرنگی‌پێدان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The landlord had let the building fall into decay."),
                    ExampleSentenceKurdish(text: "خاوەنەکە هێشتی بیناکە دابڕزێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "decay", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecays1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecays1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٢. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The smell of death and decay hung over the town."),
                    ExampleSentenceKurdish(text: "بۆنی مەرگ و گەنین باڵی بەسەر شارۆچکەکەدا کێشابوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecays2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecays2("en-US"),
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
          "My dentist could not find any signs of decay."),
          ExampleSentenceKurdish(
          text: "پزیشکە ددانەکەم هیچ ئاماژەیەکی داڕزانی نەدۆزییەوە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakdecays3("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakdecays3("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) پڕۆسەی داڕووخانی کۆمەڵگایەک، دامەزراوەیەک، سیستەمێک، هتد"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "This government promises to reverse industrial decay."),
          ExampleSentenceKurdish(
          text: "حکومەت بەڵێنی داوە ڕێگر بێت لە داڕووخانی پیشەسازی."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakdecays4("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakdecays4("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) کەم کەم لەناوبردن بە پڕۆسەی سرووشتی"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "Sugar makes your teeth decay."),
          ExampleSentenceKurdish(
          text: "شەکر وا دەکات ددانت دابڕزێت."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakdecays5("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakdecays5("en-US"),
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
          "The role of the royal family has been decaying for some time."),
          ExampleSentenceKurdish(
          text: "ئەرکی خێزانی شاهانە بۆ ماوەیەک دەبێت کاڵ بووەتەوە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakdecays6("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakdecays6("en-US"),
          ),
          ],
          ),
          ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٤. (کردار) داڕزانی بینایەک"),
          // Row(
          // children: [
          // const Expanded(
          // child: Column(
          // children: [
          // ExampleSentenceEnglish(
          // text:
          // "speakdecays700"),
          // ExampleSentenceKurdish(
          // text: "رستە_رستە_رستە_رستە."),
          // ],
          // ),
          // ),
          // const CustomSizedBoxForTTS(),
          // Column(
          // children: [
          // CustomIconButtonBritish(
          // onPressed: () => speakdecays7("en-GB"),
          // ),
          // CustomIconButtonAmerican(
          // onPressed: () => speakdecays7("en-US"),
          // ),
          // ],
          // ),
          // ],
          // ),
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
- Verb: decay (Derived forms: decayed, decaying, decays)
1. (physics) lose a stored charge, magnetic flux, or current (= disintegrate, decompose)
"the particles decayed during the nuclear fission process";
 
2. Fall into decay or ruin (= crumble, dilapidate)
"The unoccupied house started to decay";
 
3. Undergo decay or decomposition
"The body started to decay and needed to be cremated"

- Noun: decay (Derived forms: decays)
1. The process of gradually becoming inferior
 
2. A gradual decrease; as of stored charge or current (= decline)
 
3. The organic phenomenon of rotting (= decomposition)
 
4. An inferior state resulting from the process of decaying
"the corpse was in an advanced state of decay"; "the house had fallen into a serious state of decay and disrepair"
 
5. The spontaneous disintegration of a radioactive substance along with the emission of ionizing radiation (= radioactive decay, disintegration)
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
    videoId: 'https://youtu.be/Pon4Zux5MaQ?t=',
    startSeconds: 443,
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
    videoId: 'https://youtu.be/DxL2HoqLbyA?t=',
    startSeconds: 968,
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
    videoId: 'https://youtu.be/Xzv84ZdtlE0?t=',
    startSeconds: 312,
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
    videoId: 'https://youtu.be/S3ksC_8jGuc?t=',
    startSeconds: 161,
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
    videoId: 'https://youtu.be/y4DTW4B3Sjs?t=',
    startSeconds: 1179,
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
    videoId: 'https://youtu.be/OgFcz6klaeg?t=',
    startSeconds: 430,
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
    videoId: 'https://youtu.be/6etTERFUlUI?t=',
    startSeconds: 660,
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