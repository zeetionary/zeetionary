import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydifficult extends StatefulWidget {
  const EnglishEntrydifficult({super.key});

  @override
  State<EnglishEntrydifficult> createState() => _EnglishEntrydifficultState();
}

class _EnglishEntrydifficultState extends State<EnglishEntrydifficult> {
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
    return const EntryTitle(word: "difficult");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: difficult");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪfɪkəlt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficult(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("difficult");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdifficult("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪfɪkəlt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficult(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("difficult");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdifficult("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficults1(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The competition judges were given a very difficult task.");
  }

  Future<void> speakdifficults2(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Asking for help is extremely difficult for some people.");
  }

  Future<void> speakdifficults3(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's really difficult to read your writing.");
  }

  Future<void> speakdifficults4(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is difficult to imagine a woman in the 1950s behaving like this.");
  }

  Future<void> speakdifficults5(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She finds it very difficult to get up early.");
  }

  Future<void> speakdifficults6(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It has become increasingly difficult for young people to buy a house.");
  }

  Future<void> speakdifficults7(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is getting more and more difficult to find a job.");
  }

  Future<void> speakdifficults8(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fog made driving very difficult.");
  }

  Future<void> speakdifficults9(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He finds French pronunciation quite difficult.");
  }

  Future<void> speakdifficults10(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is confronted with a difficult choice.");
  }

  Future<void> speakdifficults11(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The exam questions were particularly difficult.");
  }

  Future<void> speakdifficults12(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I found myself in a difficult situation.");
  }

  Future<void> speakdifficults13(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'd had a difficult time and needed a break.");
  }

  Future<void> speakdifficults14(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My boss is making life very difficult for me.");
  }

  Future<void> speakdifficults15(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They had to set up camp in extremely difficult conditions.");
  }

  Future<void> speakdifficults16(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His presence there put me in a very difficult position.");
  }

  Future<void> speakdifficults17(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The next few months were quite difficult.");
  }

  Future<void> speakdifficults18(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't pay any attention to her—she's just being difficult.");
  }

  Future<void> speakdifficults19(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Roger was always a difficult child.");
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
کوردی: سەخت، گران، پڕئەرک، ئاسێ، کەرژاڵ، دژوار، چەتوون، ئاریش،	سەخت، قیرسیچمە، سەختگر، درەنگ‌ڕازی(بوو)، پڕچاوەڕوانی، عیناد، سەرڕەق، مانگرتوو، کەلەڕەق، سەرسەخت، ھەرۆک، لاڕێ، لەنجباز
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) سەخت"),
          SentencesRow(
            englishText:
                "The competition judges were given a very difficult task.",
            kurdishText:
                "دادوەرەکانی ڕکابەرییەکە ئەرکێکی زۆر قورسیان پێدرا.", // difficult
            onPressedBritish: () => speakdifficults1("en-GB"),
            onPressedAmerican: () => speakdifficults1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Asking for help is extremely difficult for some people.",
            kurdishText: "داواکردنی یارمەتی تەواو سەزتە بۆ ھەندێک کەس.",
            onPressedBritish: () => speakdifficults2("en-GB"),
            onPressedAmerican: () => speakdifficults2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "It's really difficult to read your writing.",
            englishNote: "Similar: Your writing is really difficult to read.",
            kurdishText: "خوێندنەوەی نووسینت تەواو سەختە.",
            onPressedBritish: () => speakdifficults3("en-GB"),
            onPressedAmerican: () => speakdifficults3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "It is difficult to imagine a woman in the 1950s behaving like this.",
                    kurdishText:
                        "سەختە خەیاڵی ئەوە بکەیت کە ژنێک لە ١٩٥٠ ـیەکان بەم شێوەیە ڕەفتار بکات.",
                    onPressedBritish: () => speakdifficults4("en-GB"),
                    onPressedAmerican: () => speakdifficults4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "She finds it very difficult to get up early.",
                    kurdishText: "زۆر بە سەختی دەبینێت زوو لە خەو ھەستێت.",
                    onPressedBritish: () => speakdifficults5("en-GB"),
                    onPressedAmerican: () => speakdifficults5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "It has become increasingly difficult for young people to buy a house.",
                    kurdishText:
                        "زیاتر و زیاتر سەخت بووە بۆ گەنجان کە خانوویەک بکڕن.",
                    onPressedBritish: () => speakdifficults6("en-GB"),
                    onPressedAmerican: () => speakdifficults6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "It is getting more and more difficult to find a job.",
                    kurdishText: "زیاتر و زیاتر سەخت بووە کارێک بدۆزیتەوە.",
                    onPressedBritish: () => speakdifficults7("en-GB"),
                    onPressedAmerican: () => speakdifficults7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The fog made driving very difficult.",
                    kurdishText: "تەمەکە لێخوڕینی سەخت کرد.",
                    onPressedBritish: () => speakdifficults8("en-GB"),
                    onPressedAmerican: () => speakdifficults8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "He finds French pronunciation quite difficult.",
                    kurdishText: "گۆکردنی فەرەنسی بە تەواو سەخت دەبینێت.",
                    onPressedBritish: () => speakdifficults9("en-GB"),
                    onPressedAmerican: () => speakdifficults9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "She is confronted with a difficult choice.",
                    kurdishText: "ڕووبەڕووی ھەڵبژاردەیەکی سەخت بووە.",
                    onPressedBritish: () => speakdifficults10("en-GB"),
                    onPressedAmerican: () => speakdifficults10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The exam questions were particularly difficult.",
                    kurdishText: "پرسیارەکانی تاقیکردنەوە بەتایبەتی سەخت بوون.",
                    onPressedBritish: () => speakdifficults11("en-GB"),
                    onPressedAmerican: () => speakdifficults11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) پڕ لە کێشە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I found myself in a difficult situation.",
            kurdishText: "خۆم لە دۆخێکی سەخت بینییەوە.",
            onPressedBritish: () => speakdifficults12("en-GB"),
            onPressedAmerican: () => speakdifficults12("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'd had a difficult time and needed a break.",
            kurdishText: "کاتێکی سەختم ھەبووبوو و پێویستیم بە پشوویەک بوو.",
            onPressedBritish: () => speakdifficults13("en-GB"),
            onPressedAmerican: () => speakdifficults13("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "My boss is making life very difficult for me.",
                    kurdishText: "سەرپەرشتەکەم ژیانی سەخت کردووم.",
                    onPressedBritish: () => speakdifficults14("en-GB"),
                    onPressedAmerican: () => speakdifficults14("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "They had to set up camp in extremely difficult conditions.",
                    kurdishText:
                        "پێویست بوو کەمپ ھەڵبدەن لە دۆخێکی زۆر سەختدا.",
                    onPressedBritish: () => speakdifficults15("en-GB"),
                    onPressedAmerican: () => speakdifficults15("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "His presence there put me in a very difficult position.",
                    kurdishText: "بوونی لەوێ خستمیە دۆخێکی زۆر سەختەوە.",
                    onPressedBritish: () => speakdifficults16("en-GB"),
                    onPressedAmerican: () => speakdifficults16("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The next few months were quite difficult.",
                    kurdishText: "چەند مانگی دواتر تەواو سەخت بوون.",
                    onPressedBritish: () => speakdifficults17("en-GB"),
                    onPressedAmerican: () => speakdifficults17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) کەسێک کە بە ئاسانی ڕازی نابێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Don't pay any attention to her—she's just being difficult.",
            kurdishText: "ھیچ سەرنجی پێمەدە ـ تەنھا خۆی عیناد کردووە.",
            onPressedBritish: () => speakdifficults18("en-GB"),
            onPressedAmerican: () => speakdifficults18("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "Roger was always a difficult child.",
            kurdishText: "ڕۆجەر ھەمیشە منداڵێکی کەلەڕەق بوو.",
            onPressedBritish: () => speakdifficults19("en-GB"),
            onPressedAmerican: () => speakdifficults19("en-US"),
          ),
          // difficults_2000"),
          // speakdifficults20
          // difficults20("en-US"),
          // difficults2100"),
          // speakdifficults21
          // difficults21("en-US"),
          // difficults2200"),
          // speakdifficults22
          // difficults22("en-US"),
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
- Adjective: difficult 
1. Not easy; requiring great physical or mental effort to accomplish or comprehend or endure (= hard)
"a difficult task"; "nesting places on the cliffs are difficult of access"; "difficult times";
 
2. Hard to control (= unmanageable)
"a difficult child";
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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 3;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 63;

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

  final String _videoId = 'a3WnvDtDD2M';
  final double _startSeconds = 198;

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

  final String _videoId = 'ozsgl_sLnHQ';
  final double _startSeconds = 530;

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

  final String _videoId = 'wV-NcNwXqcA';
  final double _startSeconds = 90;

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

  final String _videoId = 't1shnJT8NCY';
  final double _startSeconds = 42;

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

  final String _videoId = 'vN5UCHdgTLA';
  final double _startSeconds = 45;

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