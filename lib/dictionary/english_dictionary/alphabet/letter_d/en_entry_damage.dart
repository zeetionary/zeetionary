import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydamage extends StatefulWidget {
  const EnglishEntrydamage({super.key});

  @override
  State<EnglishEntrydamage> createState() => _EnglishEntrydamageState();
}

class _EnglishEntrydamageState extends State<EnglishEntrydamage> {
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
    return const EntryTitle(word: "damage");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: damage");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdæmɪdʒ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamage(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("damage");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdamage("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdæmɪdʒ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamage(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("damage");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdamage("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamages1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The building suffered extensive damage by fire in 1925.");
  }

  Future<void> speakdamages2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The accident caused no permanent damage.");
  }

  Future<void> speakdamages3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She suffered minor brain damage at birth.");
  }

  Future<void> speakdamages4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The earthquake caused damage to property estimated at £6 billion.");
  }

  Future<void> speakdamages5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The storm didn't do much damage.");
  }

  Future<void> speakdamages6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It could take years to repair the damage.");
  }

  Future<void> speakdamages7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children suffered psychological and emotional damage.");
  }

  Future<void> speakdamages8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This could cause serious damage to the country's economy.");
  }

  Future<void> speakdamages9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It will be hard to repair the damage to his reputation.");
  }

  Future<void> speakdamages10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't you think you've done enough damage already?");
  }

  Future<void> speakdamages11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't try to apologize—the damage is done.");
  }

  Future<void> speakdamages12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The incident did permanent damage to relations between the two countries.");
  }

  Future<void> speakdamages13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was ordered to pay damages totalling £30 000.");
  }

  Future<void> speakdamages14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They intend to sue for damages.");
  }

  Future<void> speakdamages15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ann was awarded £6 000 (in) damages.ئان");
  }

  Future<void> speakdamages16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The church was badly damaged by the 1997 earthquake.");
  }

  Future<void> speakdamages17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Smoking seriously damages your health.");
  }

  Future<void> speakdamages18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our car was damaged beyond repair in the crash.");
  }

  Future<void> speakdamages19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She fears the allegations could permanently damage her reputation.");
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
کوردی: زەرەر، زەدە، خەسار، زیان، وەزەن، برینداری، برینداربوون، ئێش، ئێش‌پێ‌گەیشتن، ئاسێو، بەڵا، گورز، زەبر، زەربە، (ماف) پێ‌بژاردن، بژاردن، زەرەربژاردن، زەرەردانەوە، زیانە، تاوان، زیان‌دانەوە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) زیانی فیزیکی کە لە نرخ، جوانی، یان سوودی شتێک کەم دەکاتەوە"),
          SentencesRow(
            englishText:
                "The building suffered extensive damage by fire in 1925.",
            kurdishText:
                "بیناکە ڕووبەڕووی زیانی زۆر بە ئاگر بوویەوە لە ساڵی ١٩٢٥.", // damage
            onPressedBritish: () => speakdamages1("en-GB"),
            onPressedAmerican: () => speakdamages1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The accident caused no permanent damage.",
            kurdishText: "ڕووداوەکە ھیچ زیانێکی ھەمیشەیی درووست نەکرد.",
            onPressedBritish: () => speakdamages2("en-GB"),
            onPressedAmerican: () => speakdamages2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "She suffered minor brain damage at birth.",
                    kurdishText:
                        "لە کاتی لەدایکبووندا ڕووبەڕووی زیانی بچووکی مێشکی بوویەوە.",
                    onPressedBritish: () => speakdamages3("en-GB"),
                    onPressedAmerican: () => speakdamages3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The earthquake caused damage to property estimated at £6 billion.",
                    kurdishText:
                        "بومەلەرزەکە زیانی مادی بە بەھای ٦ ملیار پاوەند درووست کرد.",
                    onPressedBritish: () => speakdamages4("en-GB"),
                    onPressedAmerican: () => speakdamages4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The storm didn't do much damage.",
                    kurdishText: "زریانەکە زیانی زۆری نەگەیاند.",
                    onPressedBritish: () => speakdamages5("en-GB"),
                    onPressedAmerican: () => speakdamages5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "It could take years to repair the damage.",
                    kurdishText:
                        "دەکرێت چەندین ساڵی پێبچێت بۆ چاککردنەوەی زیانەکە.",
                    onPressedBritish: () => speakdamages6("en-GB"),
                    onPressedAmerican: () => speakdamages6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) کاریگەرییە خراپەکانی سەر کەسێک یان شتێک"),
          SentencesRow(
            englishText:
                "The children suffered psychological and emotional damage.",
            kurdishText: "منداڵەکان تووشی کێشەی دەروونی و سۆزداری بوونەوە.",
            onPressedBritish: () => speakdamages7("en-GB"),
            onPressedAmerican: () => speakdamages7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This could cause serious damage to the country's economy.",
            kurdishText:
                "ئەمە دەکرێت زیانی مەترسیدار بۆ ئابووری وڵاتەکە درووست بکات.",
            onPressedBritish: () => speakdamages8("en-GB"),
            onPressedAmerican: () => speakdamages8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It will be hard to repair the damage to his reputation.",
            kurdishText: "سەخت دەبێت لەکەداری ناوبانگی چاکبکرێتەوە.",
            onPressedBritish: () => speakdamages9("en-GB"),
            onPressedAmerican: () => speakdamages9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Don't you think you've done enough damage already?",
            kurdishText: "پێتوانییە تا ئێستا بەشی پێویست زیانت گەیاندبێت؟",
            onPressedBritish: () => speakdamages10("en-GB"),
            onPressedAmerican: () => speakdamages10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Don't try to apologize—the damage is done.",
            kurdishText: "ھەوڵ مەدە داوای لێبووردن بکەیت، زیانەکە گەشتووە.",
            onPressedBritish: () => speakdamages11("en-GB"),
            onPressedAmerican: () => speakdamages11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The incident did permanent damage to relations between the two countries.",
            kurdishText:
                "ڕووداوەکە زیانی ھەمیشەیی گەیاند بە پەیوەندی نێوان دوو وڵاتەکە.",
            onPressedBritish: () => speakdamages12("en-GB"),
            onPressedAmerican: () => speakdamages12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) بڕە پارەیەک کە وەک قەرەبوو لەلایەن دادگاوە دەدرێت"),
          SentencesRow(
            englishText: "He was ordered to pay damages totalling £30 000.",
            kurdishText: "سزادرا بە دانی قەرەبوو بە کۆی گشتی ٣٠٠٠٠ پاوەند.",
            onPressedBritish: () => speakdamages13("en-GB"),
            onPressedAmerican: () => speakdamages13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They intend to sue for damages.",
            kurdishText: "نیازیان ھەیە سکاڵا بۆ قەرەبوو تۆمار بکەن.",
            onPressedBritish: () => speakdamages14("en-GB"),
            onPressedAmerican: () => speakdamages14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Ann was awarded £6 000 (in) damages.ئان",
            englishNote: "Also: Ann was awarded damages of £6 000.",
            kurdishText: "ئان ٦٠٠٠ پاوەندی وەک قەرەبوو پێدرا.",
            onPressedBritish: () => speakdamages15("en-GB"),
            onPressedAmerican: () => speakdamages15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) زیان گەیاندن بە کەسێک یان شتێک"),
          SentencesRow(
            englishText: "The church was badly damaged by the 1997 earthquake.",
            kurdishText: "کڵێساکە بەخراپی زیانی پێگەشت بە بومەلەرزەکەی ١٩٩٧.",
            onPressedBritish: () => speakdamages16("en-GB"),
            onPressedAmerican: () => speakdamages16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Smoking seriously damages your health.",
            kurdishText: "جگەرەکێشان بە خراپی زیان دەگەیەنێت بە تەندرووستیت.",
            onPressedBritish: () => speakdamages17("en-GB"),
            onPressedAmerican: () => speakdamages17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Our car was damaged beyond repair in the crash.",
            kurdishText:
                "ئۆۆتمبێلەکەمان ھێندە بەر زیان کەوت لە ڕووداوەکەدا کە چاکنەدەکرایەوە.",
            onPressedBritish: () => speakdamages18("en-GB"),
            onPressedAmerican: () => speakdamages18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She fears the allegations could permanently damage her reputation.",
            kurdishText:
                "دەترسێت کە تۆمەتەکان بۆ ھەمیشەیی ناوبانگی لەکەدار بکەن.",
            onPressedBritish: () => speakdamages19("en-GB"),
            onPressedAmerican: () => speakdamages19("en-US"),
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
- Verb: damage (derived forms: damaging, damages, damaged)
1. Inflict damage upon
"The snow damaged the roof"; "She damaged the car when she hit the tree"
 
2. Suffer or be susceptible to damage
"These fine china cups damage easily"

- Noun: damage  (derived forms: damages)
1. The occurrence of a change for the worse (= harm, impairment)
 
2. (military) loss of military equipment (= equipment casualty)
 
3. The act of damaging something or someone (= harm, hurt, scathe [archaic])
 
4. The amount of money needed to purchase something (= price, terms)
"how much is the damage?";
 
5. Any harm or injury resulting from a violation of a legal right (= wrong, legal injury)
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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 773;

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

  final String _videoId = 'MAnvn25URvc';
  final double _startSeconds = 68;

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

  final String _videoId = 'L6tVjqfIXFY';
  final double _startSeconds = 99;

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

  final String _videoId = '0jtWcq3zLfo';
  final double _startSeconds = 71;

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

  final String _videoId = 'hW69OIdAey0';
  final double _startSeconds = 153;

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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 62;

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

  final String _videoId = 'XG8b7WhANNA';
  final double _startSeconds = 487;

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