import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycraft extends StatelessWidget {
  const EnglishEntrycraft({super.key});

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
    return const EntryTitle(word: "craft");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: craft");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcraft(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("craft"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /krɑːft/"),
        CustomIconButtonBritish(
          onPressed: () => speakcraft("en-GB"),
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

  Future<void> speakcraft(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("craft"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /kræft/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcraft("en-US"),
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

  Future<void> speakcrafts1(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sheep shearing is a highly skilled craft."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts2(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The men practised various traditional crafts, such as carving toys out of bone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts3(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Mastering the craft of woodworking requires patience, precision, and dedication."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts4(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He knew how to win by craft and diplomacy what he could not gain by force."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts5(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Hundreds of small craft bobbed around the liner as it steamed into the harbour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts6(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the furniture is crafted from natural materials."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts7(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These bracelets were crafted by Native Americans."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts8(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrafts800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts9(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrafts900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts10(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrafts1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts11(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrafts1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts12(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrafts1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrafts13(String languageCode) async {
    // DOPSUM: CHANGE speakcraft
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrafts1300"); // DOPSUM: CHANGE TEXT
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
کوردی: پیشەگەری، پیشەسازی، کار، پیشە، هونەر، پیشەگەری دەستی، کاری دەستی،	لێزانی، وەستاکاری، شارەزایی، مامۆستایی، وەستایی، دەسڕەنگینی،	بەلەم، گەمی، کەشتی،	ژێردەریایی،	فڕۆکە،	کەشتی ئاسمانی،	فێڵ، دهۆ، تەڵەکە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) چالاکی بەکارهێنانی شارەزاییەکی تایبەت بۆ کاری دەستی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Sheep shearing is a highly skilled craft."),
                    ExampleSentenceKurdish(
                        text: "مەقەستکردنی مەڕ پیشەیەکی تەواو شارەزایی‌ویستە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "craft", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts1("en-US"),
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
                            "The men practised various traditional crafts, such as carving toys out of bone."),
                    ExampleSentenceKurdish(
                        text:
                            "پیاوەکان ژمارەیەک کاری دەستی نەریتییان ئەنجام دا، وەک درووستکردنی بوکەڵە لە ئێسک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) هەموو ئەو شارەزاییانەی پێویستن بۆ چالاکییەکی دیاریکراو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Mastering the craft of woodworking requires patience, precision, and dedication."),
                    ExampleSentenceKurdish(
                        text:
                            "فێربوونی پیشەسازی دارتاشی پێویستی بە پشوودرێژی و وردی و خۆبەخت‌کردن هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) شارەزایی ئەوەی باوەڕ بە خەڵکی بهێنیت بەوەی کە دەتەوێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He knew how to win by craft and diplomacy what he could not gain by force."),
                    ExampleSentenceKurdish(
                        text:
                            "دەیزانی چۆن بە لێزانی و دیپلۆماسی و ئەوە بباتەوە کە بە هێز بەدەست نەدەهێنرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) بەلەم یان کەشتی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Hundreds of small craft bobbed around the liner as it steamed into the harbour."),
                    ExampleSentenceKurdish(
                        text:
                            "سەدان بەلەم هەڵبەز و دابەزیان بوو بە دەوری کەشتییە گەورەکەدا کە دەچووە ناو بەندەرەکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) درووستکردنی شتێک بە شارەزایی تایبەت، بە تایبەتی بە دەست"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "All the furniture is crafted from natural materials."),
                    ExampleSentenceKurdish(
                        text:
                            "تەواوی کەل‌وپەلەکان لە مادەی سرووشتی درووستکراون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts6("en-US"),
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
                            "These bracelets were crafted by Native Americans."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم دەسبەندانە لەلایەن ئەمریکییە ڕەسەنەکانەوە درووستکران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrafts7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrafts7("en-US"),
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
- Noun: craft (Derived forms: crafts)
1. The skilled practice of a practical occupation (= trade)
"he learned his craft as an apprentice";
 
2. A vehicle designed for navigation in or on water or air or through outer space
 
3. People who perform a particular kind of skilled work (= trade)
"he represented the craft of brewers";
 
4. Skill in an occupation or trade (= craftsmanship, workmanship)
"they sponsored arts and crafts in order to encourage craftsmanship in an age of mass production";
 
5. Shrewdness as demonstrated by being skilled in deception (= craftiness, cunning, foxiness, guile, slyness, wiliness)

- Verb: craft (Derived forms: crafts, crafting, crafted)
1. Make by hand and with much skill
"The artisan crafted a complicated tool"
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
    videoId: 'https://youtu.be/rRymSi8SmqA?t=',
    startSeconds: 334,
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
    videoId: 'https://youtu.be/-L7o6HtX8Vg?t=',
    startSeconds: 445,
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
    videoId: 'https://youtu.be/7j5ul4XBjAI?t=',
    startSeconds: 387,
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
    videoId: 'https://youtu.be/PhNUjg9X4g8?t=',
    startSeconds: 180,
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
    videoId: 'https://youtu.be/CJUKVmkRx_E?t=',
    startSeconds: 202,
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
    videoId: 'https://youtu.be/oD9BaNAH-eE?t=',
    startSeconds: 221,
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
    videoId: 'https://youtu.be/0ST4_hmop9Y?t=',
    startSeconds: 1112,
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