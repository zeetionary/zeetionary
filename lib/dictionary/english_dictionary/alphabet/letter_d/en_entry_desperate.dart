import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydesperate extends StatefulWidget {
  const EnglishEntrydesperate({super.key});

  @override
  State<EnglishEntrydesperate> createState() => _EnglishEntrydesperateState();
}

class _EnglishEntrydesperateState extends State<EnglishEntrydesperate> {
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
    return const EntryTitle(word: "desperate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: desperate");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdespərət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesperate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("desperate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdesperate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdespərət/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesperate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("desperate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdesperate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesperates1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The prisoners grew increasingly desperate.");
  }

  Future<void> speakdesperates2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Stores are getting desperate after two years of poor sales.");
  }

  Future<void> speakdesperates3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I heard sounds of a desperate struggle in the next room.");
  }

  Future<void> speakdesperates4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was starting to get desperate.");
  }

  Future<void> speakdesperates5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She felt utterly desperate.");
  }

  Future<void> speakdesperates6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The sudden loss of his money had made him desperate.");
  }

  Future<void> speakdesperates7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He made a desperate bid for freedom.");
  }

  Future<void> speakdesperates8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She clung to the edge in a desperate attempt to save herself.");
  }

  Future<void> speakdesperates9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Doctors were fighting a desperate battle to save the little girl's life.");
  }

  Future<void> speakdesperates10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm desperate for a coffee.");
  }

  Future<void> speakdesperates11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was so desperate for a job he would have done anything.");
  }

  Future<void> speakdesperates12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was absolutely desperate to see her.");
  }

  Future<void> speakdesperates13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They face a desperate shortage of clean water.");
  }

  Future<void> speakdesperates14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His financial situation was desperate.");
  }

  Future<void> speakdesperates15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had died in desperate poverty.");
  }

  Future<void> speakdesperates20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Stores are getting desperate after two years of poor sales.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: دەس‌لەگیان‌بەرداو، چارەنەماو، بێچارە، زۆربۆھاتوو، گیرکردوو، ناچار، داماو،	لە حەیبەتا، لە ڕووی ناچاری‌یەوە یان داماوی‌یەوە،	مەترسی‌دار، پڕمەترسی،	یەکجار خراپ، زۆر، شپرزە، سەخت، ئاستەم، توند، توندوتیژ، بەزەبروزەنگ، بێ‌بەزەیی‌یانە، توندوتیژانە،	چاولەدەس، موحتاج، حەوەجێ‌تێ‌کەوتوو،	ھیوابڕاو، دڵسارد، دەس‌شواردوو، دلساردانە، لە حەیبەت،	(تێکۆشان) بێ‌ئەنجام، بێھوودە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) بێ‌ھیوا و ئامادەیی بۆ کردنی ھەر شتێک بەبێ گرنگیدان بە مەترسی"),
          SentencesRow(
            englishText: "The prisoners grew increasingly desperate.",
            kurdishText: "زیندانییەکان کەم‌کەم ھیوابڕاو بوون.",
            onPressedBritish: () => speakdesperates1("en-GB"),
            onPressedAmerican: () => speakdesperates1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Stores are getting desperate after two years of poor sales.",
            kurdishText:
                "فرۆشگاکان موحتاج بوونە لە دوای دوو ساڵ لە فرۆشی خراپ.",
            onPressedBritish: () => speakdesperates2("en-GB"),
            onPressedAmerican: () => speakdesperates2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I heard sounds of a desperate struggle in the next room.",
            kurdishText:
                "گوێم لە دەنگی ھەوڵدانێکی ناچاری بوو لە ژوورەکەی دیکە.",
            onPressedBritish: () => speakdesperates3("en-GB"),
            onPressedAmerican: () => speakdesperates3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I was starting to get desperate.",
            kurdishText: "دەستم دەکرد بەوەی بێچارە بم.",
            onPressedBritish: () => speakdesperates4("en-GB"),
            onPressedAmerican: () => speakdesperates4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She felt utterly desperate.",
            kurdishText: "تەواو ھەستی بە بێھوودەیی دەکرد.",
            onPressedBritish: () => speakdesperates5("en-GB"),
            onPressedAmerican: () => speakdesperates5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The sudden loss of his money had made him desperate.",
            kurdishText: "لەدەستدانی لەناکاوی پارەکەی بێچارەی کردبوو.",
            onPressedBritish: () => speakdesperates6("en-GB"),
            onPressedAmerican: () => speakdesperates6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) کارێک کە ھیوای سەرکەوتنی کەمە"),
          SentencesRow(
            englishText: "He made a desperate bid for freedom.",
            kurdishText: "ھەوڵێکی بێھوودەی دا بۆ سەرکەوتن.",
            onPressedBritish: () => speakdesperates7("en-GB"),
            onPressedAmerican: () => speakdesperates7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She clung to the edge in a desperate attempt to save herself.",
            kurdishText:
                "خۆی بە قەراغەکەدا ڕاگرت لە ھەوڵێکی بێھوودەدا بۆ ڕزگارکردنی خۆی.",
            onPressedBritish: () => speakdesperates8("en-GB"),
            onPressedAmerican: () => speakdesperates8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Doctors were fighting a desperate battle to save the little girl's life.",
            kurdishText:
                "پزیشکان لە ھەوڵێکی بێھوودەدا ھەوڵیان دەدا ژیانی کچە بچووکەکە ڕزگاربکەن.",
            onPressedBritish: () => speakdesperates9("en-GB"),
            onPressedAmerican: () => speakdesperates9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) ویستنی زۆری شتێک"),
          SentencesRow(
            englishText: "I'm desperate for a coffee.",
            kurdishText: "موحتاجی کارێکم.",
            onPressedBritish: () => speakdesperates10("en-GB"),
            onPressedAmerican: () => speakdesperates10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was so desperate for a job he would have done anything.",
            kurdishText: "زۆر چاولەدەست بوو بۆ کارێک کە ھەموو شتێکی دەکرد.",
            onPressedBritish: () => speakdesperates11("en-GB"),
            onPressedAmerican: () => speakdesperates11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I was absolutely desperate to see her.",
            kurdishText: "تەواو موحتاجی بینینی بووم.",
            onPressedBritish: () => speakdesperates12("en-GB"),
            onPressedAmerican: () => speakdesperates12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ھاوەڵناو) تەواو جدی یان مەترسیدار"),
          SentencesRow(
            englishText: "They face a desperate shortage of clean water.",
            kurdishText: "تووشی کەماسییەکی توندی ئاوی پاک بوونەتەوە.-",
            onPressedBritish: () => speakdesperates13("en-GB"),
            onPressedAmerican: () => speakdesperates13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His financial situation was desperate.",
            kurdishText: "دۆخی دارایی شلۆق بوو.",
            onPressedBritish: () => speakdesperates14("en-GB"),
            onPressedAmerican: () => speakdesperates14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He had died in desperate poverty.",
            kurdishText: "لە ھەژارییەکی سەختدا مرد.",
            onPressedBritish: () => speakdesperates15("en-GB"),
            onPressedAmerican: () => speakdesperates15("en-US"),
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
- Adjective: desperate 
1. Arising from or marked by despair or loss of hope (= despairing)
"a desperate cry for help"; "helpless and desperate--as if at the end of his tether"; "her desperate screams";
 
2. Desperately determined (= do-or-die)
"desperate revolutionaries";
 
3. (of persons) dangerously reckless or violent as from urgency or despair
"a desperate criminal"; "taken hostage of desperate men"
 
4. Showing extreme courage; especially of actions courageously undertaken in desperation as a last resort (= heroic)
"made a last desperate attempt to reach the climber"; "the desperate gallantry of our naval task forces marked the turning point in the Pacific war";
 
5. Showing extreme urgency or intensity especially because of great need or desire
"felt a desperate urge to confess"; "a desperate need for recognition"
 
6. Fraught with extreme danger; nearly hopeless (= dire)
"a desperate illness"; "on all fronts the Allies were in a desperate situation due to lack of materiel";

- Noun: desperate (derived forms: desperates)
1. A person who is frightened and in need of help
"they prey on the hopes of the desperate"
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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 928;

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

  final String _videoId = '-CJ4eUhE3Lw';
  final double _startSeconds = 596;

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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 1028;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 873;

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

  final String _videoId = 'wknSc6HRUMI';
  final double _startSeconds = 195;

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

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 420;

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

  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 1582;

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