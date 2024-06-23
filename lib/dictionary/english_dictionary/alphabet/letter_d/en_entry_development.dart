import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydevelopment extends StatefulWidget {
  const EnglishEntrydevelopment({super.key});

  @override
  State<EnglishEntrydevelopment> createState() =>
      _EnglishEntrydevelopmentState();
}

class _EnglishEntrydevelopmentState extends State<EnglishEntrydevelopment> {
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
    return const EntryTitle(word: "development");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: development");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈveləpmənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelopment(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("development");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdevelopment("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈveləpmənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelopment(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("development");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdevelopment("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelopments1(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is a perfectly normal stage of development.");
  }

  Future<void> speakdevelopments2(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company can offer a number of opportunities for career development.");
  }

  Future<void> speakdevelopments3(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A UN team is monitoring the development of the peace process.");
  }

  Future<void> speakdevelopments4(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cell divisions during development occur in a fixed sequence.");
  }

  Future<void> speakdevelopments5(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Education stimulates the development of rational thinking.");
  }

  Future<void> speakdevelopments6(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Environmental factors can accelerate the development of certain cancers.");
  }

  Future<void> speakdevelopments7(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Increased tourism will promote job creation and economic development.");
  }

  Future<void> speakdevelopments8(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He described women as the backbone of rural development worldwide.");
  }

  Future<void> speakdevelopments9(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Pete is head of product development.");
  }

  Future<void> speakdevelopments10(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A more powerful version of this electric bus is currently in development.");
  }

  Future<void> speakdevelopments11(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A new vaccine is under development.");
  }

  Future<void> speakdevelopments12(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have there been any further developments?");
  }

  Future<void> speakdevelopments13(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We welcome the recent positive developments.");
  }

  Future<void> speakdevelopments14(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There have been some interesting new developments in the case.");
  }

  Future<void> speakdevelopments15(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I live in a brand-new housing development.");
  }

  Future<void> speakdevelopments16(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The protesters oppose plans to build a commercial development on the site.");
  }

  Future<void> speakdevelopments17(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The city has undergone rapid development.");
  }

  Future<void> speakdevelopments18(String languageCode) async {
    // DOPSUM: CHANGE speakdevelopment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He bought the land for development.");
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
کوردی: گەشە، ھەڵدان، پەرە، گەورەبوون، گووران، فراژی، پێ‌گەیشتن، گەشەسەندن، ڕسکان، پەرەسەندن،	(فیلم) ڕۆشن‌کردنەوە، شۆردنەوە، شتنەوە،	پێشکەوتن، پێشڤەچوون،	بەرھەم، دەسکەوت،	ڕووداو، بوویەر،	بەرھەمی نوێ،	داھێنان،	ناوچەی تازەدروس‌کراو یان تازەپەرەسەندوو
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) گەشەی ھێواشێ شتێک بە شێوەیەک کە بەرەوپێشتر، بەھێزتر، ھتد ببێت"),
          SentencesRow(
            englishText: "This is a perfectly normal stage of development.",
            kurdishText: "ئەمە قۆناغێکی ئاسایی گەشەکردنە.", // development
            onPressedBritish: () => speakdevelopments1("en-GB"),
            onPressedAmerican: () => speakdevelopments1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The company can offer a number of opportunities for career development.",
            kurdishText:
                "کۆمپانیاکە ژمارەیەک ھەلی گەشەپێدانی کار پێشکەش دەکات.",
            onPressedBritish: () => speakdevelopments2("en-GB"),
            onPressedAmerican: () => speakdevelopments2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A UN team is monitoring the development of the peace process.",
            kurdishText:
                "تیمێکی نەتەوە یەکگرتووەکان چاودێری بەرەوپێشچوونی پڕۆسەی ئاشتی دەکەن.",
            onPressedBritish: () => speakdevelopments3("en-GB"),
            onPressedAmerican: () => speakdevelopments3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Cell divisions during development occur in a fixed sequence.",
            kurdishText:
                "دابەشبوونی خانە لەکاتی گەشەدا ڕوودەدات بە زنجیرەیەکی جێگیر.",
            onPressedBritish: () => speakdevelopments4("en-GB"),
            onPressedAmerican: () => speakdevelopments4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Education stimulates the development of rational thinking.",
            kurdishText:
                "پەروەردە و خوێندن ھانی گەشەی بیرکردنەوەی ئاقڵانە دەدات.",
            onPressedBritish: () => speakdevelopments5("en-GB"),
            onPressedAmerican: () => speakdevelopments5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Environmental factors can accelerate the development of certain cancers.",
            kurdishText:
                "فاکتەری ژینگەیی دەکرێت گەشەی جۆری دیاریکراوی شێرپەنجە خێرا بکەن.",
            onPressedBritish: () => speakdevelopments6("en-GB"),
            onPressedAmerican: () => speakdevelopments6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) گەشەی ئابووری وڵاتێک یان ھەرێمێک بە زیادکردنی چالاکیی بازرگانی"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Increased tourism will promote job creation and economic development.",
            kurdishText:
                "گەشتیاریی زیاتر ھەلی کار دەڕەخسێنێت و گەشەی ئابووری زیاد دەکات.",
            onPressedBritish: () => speakdevelopments7("en-GB"),
            onPressedAmerican: () => speakdevelopments7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He described women as the backbone of rural development worldwide.",
            kurdishText: "ژنی وەک بڕبڕەی پشتی گەشەی دێھات لە جیھاندا ناسان.",
            onPressedBritish: () => speakdevelopments8("en-GB"),
            onPressedAmerican: () => speakdevelopments8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) پڕۆسەی درووستکردنی شتێکی تازە یان پێشکەوتووتر"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Pete is head of product development.",
            kurdishText: "پیت سەرپەرشتی گەشەپێدانی بەرھەمەکانە.",
            onPressedBritish: () => speakdevelopments9("en-GB"),
            onPressedAmerican: () => speakdevelopments9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A more powerful version of this electric bus is currently in development.",
            kurdishText:
                "جۆرێکی بەھێزتری ئەم پاسە کارەباییە ئێستا لە گەشەپێداندایە.",
            onPressedBritish: () => speakdevelopments10("en-GB"),
            onPressedAmerican: () => speakdevelopments10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A new vaccine is under development.",
            kurdishText: "ڤاکسینێکی تازە لە گەشەپێداندایە.",
            onPressedBritish: () => speakdevelopments11("en-GB"),
            onPressedAmerican: () => speakdevelopments11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) ڕووداو یان قۆناغێکی تازە کە ئەگەری ھەیە گۆڕانکاری بکات لەوەی چی لە دۆخێکی بەردەوامدا ڕوودەدات"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Have there been any further developments?",
            kurdishText: "ھیچ پەرەسەندنی زیاتر ھەبووە؟",
            onPressedBritish: () => speakdevelopments12("en-GB"),
            onPressedAmerican: () => speakdevelopments12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We welcome the recent positive developments.",
            kurdishText: "پێشوازی لە پەرەسەندنە ئەرێنییە تازەکان دەکەین.",
            onPressedBritish: () => speakdevelopments13("en-GB"),
            onPressedAmerican: () => speakdevelopments13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There have been some interesting new developments in the case.",
            kurdishText:
                "ھەندێک پەرەسەندنی تازەی سەرنجڕاکێش ھەبووە لە کەیسەکەدا.",
            onPressedBritish: () => speakdevelopments14("en-GB"),
            onPressedAmerican: () => speakdevelopments14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) پارچە زەوییەک کە بینای تازەی لەسەرە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I live in a brand-new housing development.",
            kurdishText: "لە پڕۆژەیەکی خانووبەرەی تازەدا دەژیم.",
            onPressedBritish: () => speakdevelopments15("en-GB"),
            onPressedAmerican: () => speakdevelopments15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The protesters oppose plans to build a commercial development on the site.",
            kurdishText:
                "خۆپیشاندەران دژی پلانی بنیادنانی پڕۆژەیەکی بازرگانین لە شوێنەکە.",
            onPressedBritish: () => speakdevelopments16("en-GB"),
            onPressedAmerican: () => speakdevelopments16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) پڕۆسەی بەکارھێنانی پارچە زەوییەک، ڤە تایبەتی بۆ قازانجکردن لێی بە بنیادنان لەسەری"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The city has undergone rapid development.",
            kurdishText: "شارەکە بە بەرەوپێشچوونی خێرادا چووە.",
            onPressedBritish: () => speakdevelopments17("en-GB"),
            onPressedAmerican: () => speakdevelopments17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He bought the land for development.",
            kurdishText: "زەوییەکەی بۆ وەبەرھێنان کڕی.",
            onPressedBritish: () => speakdevelopments18("en-GB"),
            onPressedAmerican: () => speakdevelopments18("en-US"),
          ),
          // developments1900"),
          // speakdevelopments19
          // developments19
          // developments_2000"),
          // speakdevelopments20
          // developments20
          // developments2100"),
          // speakdevelopments21
          // developments21
          // developments2200"),
          // speakdevelopments22
          // developments22("en-US"),
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
- Noun: development (derived forms: developments)
1. Act of improving by expanding, enlarging or refining
"he congratulated them on their development of a plan to meet the emergency"; "they funded research and development"
 
2. A process in which something passes by degrees to a different stage (especially a more advanced or mature stage) (= evolution)
"the development of his ideas took many years"; "the slow development of her skill as a writer";
 
3. (biology) the process of an individual organism growing organically; a purely biological unfolding of events involved in an organism changing gradually from a simple to a more complex level (= growth, growing, maturation, ontogeny, ontogenesis)
"he proposed an indicator of osseous development in children";
 
4. A recent event that has some relevance for the present situation
"recent developments in Iraq"; "what a revolting development!"
 
5. The act of making some area of land or water more profitable or productive or useful (= exploitation)
"the development of Alaskan resources";
 
6. A district that has been developed to serve some purpose
"such land is practical for small park developments"
 
7. (chess) a state in which things are improving; the result of developing (as in the early part of a game of chess)
"after he saw the latest development he changed his mind and became a supporter"; "in chess your should take care of your development before moving your queen"
 
8. Processing a photosensitive material in order to make an image visible (= developing)
"the development and printing of his pictures took only two hours";
 
9. (music) the section of a composition or movement (especially in sonata form) where the major musical themes are developed and elaborated
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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 841;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '_45zjnjrFOA';
  final double _startSeconds = 109;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'gwZuUxeBYV8';
  final double _startSeconds = 152;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'Bg_tJvCA8zw';
  final double _startSeconds = 357;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'hRSGxw2AQnk';
  final double _startSeconds = 292;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'qg2nGY1aqlg';
  final double _startSeconds = 117;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 1233;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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