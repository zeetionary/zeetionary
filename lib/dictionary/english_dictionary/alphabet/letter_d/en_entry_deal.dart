import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeal extends StatefulWidget {
  const EnglishEntrydeal({super.key});

  @override
  State<EnglishEntrydeal> createState() => _EnglishEntrydealState();
}

class _EnglishEntrydealState extends State<EnglishEntrydeal> {
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
    return const EntryTitle(word: "deal");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deal");
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
    return const IPAofEnglish(text: "IpaUK: /diːl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeal(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deal");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeal("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /diːl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeal(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deal");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeal("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeals1(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Whose turn is it to deal?");
  }

  Future<void> speakdeals2(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You can often see people dealing openly on the streets.");
  }

  Future<void> speakdeals3(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was sent to jail for dealing drugs to his friends.");
  }

  Future<void> speakdeals4(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is travelling to New York to seal the deal.");
  }

  Future<void> speakdeals5(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We did a deal with the management on overtime.");
  }

  Future<void> speakdeals6(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll make a deal with you—I'll work evenings if you'll work weekends.");
  }

  Future<void> speakdeals7(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is trying to cut a deal with the rebels.");
  }

  Future<void> speakdeals8(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If elected, the party has promised a new deal for teachers.");
  }

  Future<void> speakdeals9(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They knew they'd been given a raw deal.");
  }

  Future<void> speakdeals10(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We tried to ensure that everyone got a fair deal.");
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
کوردی: ھەڵس‌وکەوت، (چۆنیەتی) جووڵانەوە،	سەودا، مامەلە، ئاڵ‌ووێر،	ڕێک‌کەوتن،	دابەش‌کردنەوە، بڵاوکردنەوە، (لە پەڕێن‌دا) دەست، نۆرە، بڕ، ئەندازە، زۆر، گەلێ، یەکجار
"""),
          const DefinitionKurdish(
              text: "١. (کردار) پێدانی کارد بە یاریزانان لە یاری کارددا"),
          SentencesRow(
            englishText: "Whose turn is it to deal?",
            kurdishText: "نۆرەی کێیە کارد دابەش بکات؟", // deal
            onPressedBritish: () => speakdeals1("en-GB"),
            onPressedAmerican: () => speakdeals1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) کڕین و فرۆشتنی مادەی ھۆشبەر"),
          SentencesRow(
            englishText:
                "You can often see people dealing openly on the streets.",
            kurdishText:
                "زۆرجار خەڵکی دەبینیت بە ئاشكرایی لەسەر شەقامەکان مادەی ھۆشبەر دەفرۆشن.",
            onPressedBritish: () => speakdeals2("en-GB"),
            onPressedAmerican: () => speakdeals2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was sent to jail for dealing drugs to his friends.",
            kurdishText:
                "نێردرا بۆ زیندان بۆ فرۆشتنی مادەی ھۆشبەر بە ھاوڕێکانی.",
            onPressedBritish: () => speakdeals3("en-GB"),
            onPressedAmerican: () => speakdeals3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ڕێککەوتنێک، بە تایبەتی ھی بازرگانی، لەسەر مەرجی دیاریکراو بۆ کڕین و کردنی شتێک"),
          SentencesRow(
            englishText:
                "She is travelling to New York to seal the deal (= conclude it).",
            kurdishText:
                "گەشت دەکات بۆ نیویۆرک بۆ کۆتایی ھێنان بە ڕێککەوتنەکە.",
            onPressedBritish: () => speakdeals4("en-GB"),
            onPressedAmerican: () => speakdeals4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We did a deal with the management on overtime.",
            kurdishText:
                "لەگەڵ بەڕێوەبەرایەتیدا ڕێککەوتنێکمان کرد سەبارەت بە کاتژمێری زیادەی کارکردن.",
            onPressedBritish: () => speakdeals5("en-GB"),
            onPressedAmerican: () => speakdeals5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I'll make a deal with you—I'll work evenings if you'll work weekends.",
            kurdishText:
                "ڕێککەوتنێکت لەگەڵ دەکەم ـ من ئێواران کار دەکەم ئەگەر تۆ کۆتایی ھەفتان کار بکەیت.",
            onPressedBritish: () => speakdeals6("en-GB"),
            onPressedAmerican: () => speakdeals6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He is trying to cut a deal (= make one) with the rebels.",
            kurdishText: "ھەوڵ دەدات لەگەڵ یاخیبووان ڕێککەوتنێک بکات.",
            onPressedBritish: () => speakdeals7("en-GB"),
            onPressedAmerican: () => speakdeals7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شێوازی مامەڵەکردن لەگەڵ کەسێک"),
          SentencesRow(
            englishText:
                "If elected, the party has promised a new deal (= better and fairer treatment) for teachers.",
            kurdishText:
                "ئەگەر ھەڵبژێردرێن، پارتەکە بەڵێنی مامەڵەیەکی باشتری لەگەڵ مامۆستایان داوە.",
            onPressedBritish: () => speakdeals8("en-GB"),
            onPressedAmerican: () => speakdeals8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They knew they'd been given a raw deal (= been treated unfairly).",
            kurdishText: "دەیانزانی مامەڵەیەکی خراپیان لەگەڵ کراوە.",
            onPressedBritish: () => speakdeals9("en-GB"),
            onPressedAmerican: () => speakdeals9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We tried to ensure that everyone got a fair deal.",
            kurdishText:
                "ھەوڵمان دڵنیایی بکەینەوە کە ھەموان مامەڵەیەکی یەکسانیان لەگەڵ کراوە.",
            onPressedBritish: () => speakdeals10("en-GB"),
            onPressedAmerican: () => speakdeals10("en-US"),
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
- Verb: deal (derived forms: dealt, dealing, deals)
1. Act on verbally or in some form of artistic expression (= cover, treat, handle, plow [N. Amer], address, plough [Brit, Cdn])
"This book deals with incest";
 
2. Take action with respect to (someone or something)
"How are we going to deal with this problem?"; "The teacher knew how to deal with these lazy students"
 
3. Succeed in doing, achieving, or producing (something) with the limited or inadequate means available (= cope, get by, make do, contend, grapple, manage)
 
4. Give or provide in small portions (= distribute, administer, mete out, parcel out, lot, dispense, deal out, dish out, allot, dole out, mete, dole)
"deal a blow to someone"; "deal out critical remarks to everyone present";
 
5. Do business; offer for sale as for one's livelihood (= sell, trade)
"She deals in gold";
 
6. Be in charge of, act on, or dispose of (= manage, care, handle)
"I can deal with this crew of workers";
 
7. Behave in a certain way towards others
"He deals fairly with his employees"
 
8. (card game) distribute cards to the players in a game
"Who's dealing?"
 
9. Direct the course of; manage or control (= conduct, carry on)
 
10. Give out as one's portion or share (= share, divvy up [informal], portion out, apportion, divvy [informal])
 
11. (card game) give (a specific card) to a player
"He dealt me the Queen of Spades"
 
12. Sell (especially of illegal material)
"deal hashish"

- Noun: deal (derived forms: deals)
1. A particular instance of buying or selling (= trade, business deal, transaction)
"it was a package deal"; "he's a master of the business deal";
 
2. An agreement between parties (usually arrived at after discussion) fixing obligations of each (= bargain)
"he rose to prominence through a series of shady deals";
 
3. (often followed by 'of') a large number, amount or extent (= batch, flock, good deal, great deal, hatful, heap, lot, mass, mess, mickle [archaic], mint, mountain, muckle, passel [US], peck, pile [informal], plenty, pot, quite a little, raft, sight, slew, spate, stack, tidy sum, wad, bunch [informal])
"a deal of trouble"; "a great deal of letters";

4. A plank of softwood (fir or pine board)
 
5. Wood that is easy to saw (from conifers such as pine or fir) (= softwood)
 
6. The cards held in a card game by a given player at any given time (= hand)
"I didn't hold a good deal all evening";
 
7. The type of treatment received (especially as the result of an agreement)
"he got a good deal on his car"
 
8. (card game) the act of distributing playing cards
"the deal was passed around the table clockwise"
 
9. The act of apportioning or distributing something
"the captain was entrusted with the deal of provisions"
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 467;

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

  final String _videoId = 'XZVHmRvfDHM';
  final double _startSeconds = 142;

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

  final String _videoId = 'ozsgl_sLnHQ';
  final double _startSeconds = 3401;

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

  final String _videoId = 'gmr41ht2Sq4';
  final double _startSeconds = 143;

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

  final String _videoId = 'gmr41ht2Sq4';
  final double _startSeconds = 138;

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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 160;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 693;

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