import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

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
    await flutterTts.speak("deal"); // DOPSUM: CHANGE TEXT
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
    await flutterTts.speak("deal"); // DOPSUM: CHANGE TEXT
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
    await flutterTts.speak("Whose turn is it to deal?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals2(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can often see people dealing openly on the streets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals3(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was sent to jail for dealing drugs to his friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals4(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is travelling to New York to seal the deal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals5(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We did a deal with the management on overtime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals6(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll make a deal with you—I'll work evenings if you'll work weekends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals7(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is trying to cut a deal with the rebels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals8(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If elected, the party has promised a new deal for teachers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals9(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They knew they'd been given a raw deal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals10(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We tried to ensure that everyone got a fair deal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals11(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeals1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals12(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeals1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeals13(String languageCode) async {
    // DOPSUM: CHANGE speakdeal
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeals1300"); // DOPSUM: CHANGE TEXT
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
کوردی: هەڵس‌وکەوت، (چۆنیەتی) جووڵانەوە،	سەودا، مامەلە، ئاڵ‌ووێر،	ڕێک‌کەوتن،	دابەش‌کردنەوە، بڵاوکردنەوە، (لە پەڕێن‌دا) دەست، نۆرە، بڕ، ئەندازە، زۆر، گەلێ، یەکجار
"""),
          const DefinitionKurdish(
              text: "١. (کردار) پێدانی کارد بە یاریزانان لە یاری کارددا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Whose turn is it to deal?"),
                    ExampleSentenceKurdish(text: "نۆرەی کێیە کارد دابەش بکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "deal", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) کڕین و فرۆشتنی مادەی هۆشبەر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You can often see people dealing openly on the streets."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆرجار خەڵکی دەبینیت بە ئاشكرایی لەسەر شەقامەکان مادەی هۆشبەر دەفرۆشن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals2("en-US"),
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
                            "He was sent to jail for dealing drugs to his friends."),
                    ExampleSentenceKurdish(
                        text:
                            "نێردرا بۆ زیندان بۆ فرۆشتنی مادەی هۆشبەر بە هاوڕێکانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ڕێککەوتنێک، بە تایبەتی هی بازرگانی، لەسەر مەرجی دیاریکراو بۆ کڕین و کردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She is travelling to New York to seal the deal (= conclude it)."),
                    ExampleSentenceKurdish(
                        text:
                            "گەشت دەکات بۆ نیویۆرک بۆ کۆتایی هێنان بە ڕێککەوتنەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals4("en-US"),
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
                        text: "We did a deal with the management on overtime."),
                    ExampleSentenceKurdish(
                        text:
                            "لەگەڵ بەڕێوەبەرایەتیدا ڕێککەوتنێکمان کرد سەبارەت بە کاتژمێری زیادەی کارکردن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals5("en-US"),
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
                            "I'll make a deal with you—I'll work evenings if you'll work weekends."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێککەوتنێکت لەگەڵ دەکەم ـ من ئێواران کار دەکەم ئەگەر تۆ کۆتایی هەفتان کار بکەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals6("en-US"),
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
                            "He is trying to cut a deal (= make one) with the rebels."),
                    ExampleSentenceKurdish(
                        text: "هەوڵ دەدات لەگەڵ یاخیبووان ڕێککەوتنێک بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شێوازی مامەڵەکردن لەگەڵ کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "If elected, the party has promised a new deal (= better and fairer treatment) for teachers."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەر هەڵبژێردرێن، پارتەکە بەڵێنی مامەڵەیەکی باشتری لەگەڵ مامۆستایان داوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals8("en-US"),
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
                            "They knew they'd been given a raw deal (= been treated unfairly)."),
                    ExampleSentenceKurdish(
                        text: "دەیانزانی مامەڵەیەکی خراپیان لەگەڵ کراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals9("en-US"),
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
                            "We tried to ensure that everyone got a fair deal."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵمان دڵنیایی بکەینەوە کە هەموان مامەڵەیەکی یەکسانیان لەگەڵ کراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeals10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeals10("en-US"),
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
- Verb: deal (Derived forms: dealt, dealing, deals)
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

- Noun: deal (Derived forms: deals)
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
    videoId: 'https://youtu.be/VrKW58MS12g?t=',
    startSeconds: 467,
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
    videoId: 'https://youtu.be/XZVHmRvfDHM?t=',
    startSeconds: 142,
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
    videoId: 'https://youtu.be/ozsgl_sLnHQ?t=',
    startSeconds: 3401,
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
    videoId: 'https://youtu.be/gmr41ht2Sq4?t=',
    startSeconds: 143,
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
    videoId: 'https://youtu.be/gmr41ht2Sq4?t=',
    startSeconds: 138,
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
    videoId: 'https://youtu.be/DTvS9lvRxZ8?t=',
    startSeconds: 160,
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
    videoId: 'https://youtu.be/khOUvmOQExc?t=',
    startSeconds: 693,
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