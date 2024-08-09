import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefend extends StatefulWidget {
  const EnglishEntrydefend({super.key});

  @override
  State<EnglishEntrydefend> createState() => _EnglishEntrydefendState();
}

class _EnglishEntrydefendState extends State<EnglishEntrydefend> {
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
    return const EntryTitle(word: "defend");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defend");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfend/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefend(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("defend");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefend("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfend/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefend(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("defend");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefend("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefends1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The role of the military is to defend the country.");
  }

  Future<void> speakdefends2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Troops have been sent to defend the borders.");
  }

  Future<void> speakdefends3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The male birds defend their territory against other males.");
  }

  Future<void> speakdefends4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All our officers are trained to defend themselves against knife attacks.");
  }

  Future<void> speakdefends5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The organization works to defend human rights wherever they are threatened.");
  }

  Future<void> speakdefends6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Freedom must always be defended.");
  }

  Future<void> speakdefends7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The ruling class will always defend its own interests.");
  }

  Future<void> speakdefends8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "People must be vigilant in defending civil liberties regardless of external threats.");
  }

  Future<void> speakdefends9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They defended their decision to pull out of the event.");
  }

  Future<void> speakdefends10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The minister vigorously defended the policy.");
  }

  Future<void> speakdefends11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How can you defend such behaviour?");
  }

  Future<void> speakdefends12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The article seeks to defend him against charges of hypocrisy.");
  }

  Future<void> speakdefends13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her colleagues united in defending her from further personal attacks.");
  }

  Future<void> speakdefends14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were forced to defend for long periods.");
  }

  Future<void> speakdefends15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Moody and Moran defended their goal well.");
  }

  Future<void> speakdefends16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is defending champion.");
  }

  Future<void> speakdefends17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She will be defending her title at next month's championships.");
  }

  Future<void> speakdefends18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He intends to defend his seat in the next election.");
  }

  Future<void> speakdefends19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He has employed one of the UK's top lawyers to defend him.");
  }

  Future<void> speakdefends20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who's defending?");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بەرگری کردن، لایەنگری کردن، پاراستن
"""),
          const DefinitionKurdish(text: "١. (کردار) پاراستنی کەسێک لە ھێرش"),
          SentencesRow(
            englishText: "The role of the military is to defend the country.",
            kurdishText: "ئەرکی سوپا بەرگری کردن لە وڵاتە.", // defend
            onPressedBritish: () => speakdefends1("en-GB"),
            onPressedAmerican: () => speakdefends1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Troops have been sent to defend the borders.",
            kurdishText: "ھێز نێردراوە تاوەکو بەرگری لە سنوورەکان بکەن.",
            onPressedBritish: () => speakdefends2("en-GB"),
            onPressedAmerican: () => speakdefends2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The male birds defend their territory against other males.",
            kurdishText:
                "باڵندە نێرینەکان بەرگری لە سنوورەکانیان دەکەن دژ بە نێرینەکانی دیکە.",
            onPressedBritish: () => speakdefends3("en-GB"),
            onPressedAmerican: () => speakdefends3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "All our officers are trained to defend themselves against knife attacks.",
            kurdishText:
                "تەواوی ئەفسەرەکانمان ڕاھێنراون بەرگری لە خۆیان بکەن دژ بە ھێرشی چەقۆ.",
            onPressedBritish: () => speakdefends4("en-GB"),
            onPressedAmerican: () => speakdefends4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) پاراستنی شتێک کە بەھای ھەیە لات و دەیپارێزیت"),
          SentencesRow(
            englishText:
                "The organization works to defend human rights wherever they are threatened.",
            kurdishText:
                "ڕێکخراوەکە کار بۆ بەرگریکردن لە مافەکانی مرۆڤ دەکات لە ھەر شوێنێک ھەڕەشەیان لەسەر بێت.",
            onPressedBritish: () => speakdefends5("en-GB"),
            onPressedAmerican: () => speakdefends5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Freedom must always be defended.",
            kurdishText: "ھەمیشە دەبێت بەرگری لە ئازادی بکرێت.",
            onPressedBritish: () => speakdefends6("en-GB"),
            onPressedAmerican: () => speakdefends6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The ruling class will always defend its own interests.",
            kurdishText:
                "چینی دەسەڵاتدار ھەمیشە بەرگری لە بەرژەوەندییەکانی خۆی دەکات..",
            onPressedBritish: () => speakdefends7("en-GB"),
            onPressedAmerican: () => speakdefends7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "People must be vigilant in defending civil liberties regardless of external threats.",
            kurdishText:
                "خەڵک دەبێت وریا بن لە بەرگریکردن لە ئازادییە مەدەنییەکان بەبێ گوێدانە ھەڕەشە دەرەکییەکان.",
            onPressedBritish: () => speakdefends8("en-GB"),
            onPressedAmerican: () => speakdefends8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) نووسین یان قسەکردن بۆ بەرگری لە کەسێک/شتێک کە ھەڕەشەی لێکراوە"),
          SentencesRow(
            englishText:
                "They defended their decision to pull out of the event.",
            kurdishText:
                "بەرگریان لە بڕیارەکەیان کرد بۆ کشانەوە لە چالاکییەکە.",
            onPressedBritish: () => speakdefends9("en-GB"),
            onPressedAmerican: () => speakdefends9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The minister vigorously defended the policy.",
            kurdishText: "وەزیرەکە بە توندی بەرگری لە سیاسەتەکە کرد.",
            onPressedBritish: () => speakdefends10("en-GB"),
            onPressedAmerican: () => speakdefends10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "How can you defend such behaviour?",
            kurdishText: "چۆن دەتوانیت بەرگری لەم جۆرە ڕەفتارانە بکەیت؟",
            onPressedBritish: () => speakdefends11("en-GB"),
            onPressedAmerican: () => speakdefends11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The article seeks to defend him against charges of hypocrisy.",
            kurdishText:
                "وتارەکە ھەوڵ دەدات بەرگری لێ بکات لە تۆمەتەکانی دووڕووی.",
            onPressedBritish: () => speakdefends12("en-GB"),
            onPressedAmerican: () => speakdefends12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Her colleagues united in defending her from further personal attacks.",
            kurdishText:
                "ھاوکارەکانی یەکیان گرت بۆ بەرگری لێی لە ھێرشی کەسی زیاتر.",
            onPressedBritish: () => speakdefends13("en-GB"),
            onPressedAmerican: () => speakdefends13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) بەرگری کردن لە یاری وەرزشیدا لەوەی گۆڵ لە تیمەکەت بکرێت"),
          SentencesRow(
            englishText: "They were forced to defend for long periods.",
            kurdishText: "ناچارکران بۆ ماوەیەکی زۆر بەرگری بکەن.",
            onPressedBritish: () => speakdefends14("en-GB"),
            onPressedAmerican: () => speakdefends14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Moody and Moran defended their goal well.",
            kurdishText: "مودی و مۆران بەباشی بەرگرییان لە گۆڵەکەیان کرد.",
            onPressedBritish: () => speakdefends15("en-GB"),
            onPressedAmerican: () => speakdefends15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) بەژداری کردن لە پاڵەوانێتییەک کە جاری پێشووتر بردتەوە و ھەوڵ دەدەیت دووبارە بیبەیتەوە"),
          SentencesRow(
            englishText: "He is defending champion.",
            kurdishText: "بەرگری لە پاڵەوانێتییەکەی دەکات.",
            onPressedBritish: () => speakdefends16("en-GB"),
            onPressedAmerican: () => speakdefends16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She will be defending her title at next month's championships.",
            kurdishText:
                "بەرگری لە پاڵەوانێتییەکەی دەکات لە پاڵەوانێتی مانگی داھاتوودا.",
            onPressedBritish: () => speakdefends17("en-GB"),
            onPressedAmerican: () => speakdefends17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He intends to defend his seat in the next election.",
            kurdishText:
                "نیازی ھەیە کورسییەکەی بپارێزێت لە ھەڵبژاردنی دواتردا.",
            onPressedBritish: () => speakdefends18("en-GB"),
            onPressedAmerican: () => speakdefends18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) بوون بە پارێزەری کەسێک کە بە تاوانێک تۆمەتبار کراوە"),
          SentencesRow(
            englishText:
                "He has employed one of the UK's top lawyers to defend him.",
            kurdishText:
                "یەکێک لە باشترین پارێزەرەکانی بەریتانیای گرتووە کە بەرگری لێ بکات.",
            onPressedBritish: () => speakdefends19("en-GB"),
            onPressedAmerican: () => speakdefends19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Who's defending?",
            kurdishText: "کێ بەرگری لێ دەکات؟",
            onPressedBritish: () => speakdefends20("en-GB"),
            onPressedAmerican: () => speakdefends20("en-US"),
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
- Verb: defend (derived forms: defending, defends, defended)
1. Argue or speak in defence of (= support, fend for)
"She defended the motion to strike";
 
2. Be on the defensive; act against an attack
 
3. Protect against a challenge or attack (= guard, hold)
"defend that position behind the trees!";
 
4. Fight against or resist strongly (= fight, oppose, fight back, fight down, dispute)
"Don't defend it!";
 
5. Protect or fight for as a champion (= champion)
 
6. Be the defence counsel for someone in a trial (= represent)
"Ms. Smith will defend the defendant";
 
7. State or assert (= maintain)
"He defended his innocence";
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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 32;

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

  final String _videoId = 'o9zCgPtsups';
  final double _startSeconds = 61;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 264;

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

  final String _videoId = 'NZ74oFctP_g';
  final double _startSeconds = 46;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1449;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 905;

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
  final double _startSeconds = 853;

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