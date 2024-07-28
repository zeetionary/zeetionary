import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydrink extends StatefulWidget {
  const EnglishEntrydrink({super.key});

  @override
  State<EnglishEntrydrink> createState() => _EnglishEntrydrinkState();
}

class _EnglishEntrydrinkState extends State<EnglishEntrydrink> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "drink";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
    return const EntryTitle(word: "drink");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drink");
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
    return const IPAofEnglish(text: "IpaUK: /drɪŋk/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrink(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drink");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrink("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /drɪŋk/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrink(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drink");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrink("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrinks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can I have a drink?");
  }

  Future<void> speakdrinks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you want a drink?");
  }

  Future<void> speakdrinks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Passengers were left without food and drink for hours.");
  }

  Future<void> speakdrinks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were offered free drinks to make up for the wait.");
  }

  Future<void> speakdrinks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She took a drink from the glass and then put it down.");
  }

  Future<void> speakdrinks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They went for a drink together.");
  }

  Future<void> speakdrinks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you coming for a drink with us after work?");
  }

  Future<void> speakdrinks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There were free drinks at the bar for everyone.");
  }

  Future<void> speakdrinks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's got a drink problem.");
  }

  Future<void> speakdrinks10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Would you like to come for drinks on Sunday?");
  }

  Future<void> speakdrinks11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't drink coffee.");
  }

  Future<void> speakdrinks12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What would you like to drink?");
  }

  Future<void> speakdrinks13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In hot weather, drink plenty of water.");
  }

  Future<void> speakdrinks14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She drank from a tall glass.");
  }

  Future<void> speakdrinks15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He doesn't drink.");
  }

  Future<void> speakdrinks16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's been drinking heavily since she lost her job.");
  }

  Future<void> speakdrinks17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't drink and drive.");
  }

  Future<void> speakdrinks18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think he's drunk too much.");
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
کوردی: ئاوی خواردنەوە،	خواردنەوەی ئەڵکۆڵی، ئارەق، ئارەق‌خواردنەوە،	قوم، گوڵپ، فڕ، دەریا، زەریا، زرێ،	گۆم، زەریاچە
"""),
          const DefinitionKurdish(text: "١. (ناو) شلەی خواردنەوە"),
          SentencesRow(
            englishText: "Can I have a drink?",
            kurdishText: "خواردنەوەیەکم پێ دەدەیت؟", // drink
            onPressedBritish: () => speakdrinks1("en-GB"),
            onPressedAmerican: () => speakdrinks1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "Do you want a drink?",
                    kurdishText: "خواردنەوەیەکت دەوێت؟",
                    onPressedBritish: () => speakdrinks2("en-GB"),
                    onPressedAmerican: () => speakdrinks2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Passengers were left without food and drink for hours.",
                    kurdishText:
                        "گەشتیاران بۆ چەندین کاتژمێر بەبێ خواردن و خواردنەوە ھێڵدرانەوە؟",
                    onPressedBritish: () => speakdrinks3("en-GB"),
                    onPressedAmerican: () => speakdrinks3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "We were offered free drinks to make up for the wait.",
                    kurdishText:
                        "خواردنەوەی بێبەرامبەرمان پێدرا بۆ قەرەبووکردنەوەی چاوەڕوانییەکە.",
                    onPressedBritish: () => speakdrinks4("en-GB"),
                    onPressedAmerican: () => speakdrinks4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She took a drink from the glass and then put it down.",
                    kurdishText: "خواردنەوەیەکی بە گڵاسەکە خواردەوە و داینا.",
                    onPressedBritish: () => speakdrinks5("en-GB"),
                    onPressedAmerican: () => speakdrinks5("en-US"),
                  ),
                ],
              ),
            ],
          ),

          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) خواردنەوەی کحوولی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They went for a drink together.",
            kurdishText: "پێکەوە چوون بۆ خواردنەوەیەک.",
            onPressedBritish: () => speakdrinks6("en-GB"),
            onPressedAmerican: () => speakdrinks6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Are you coming for a drink with us after work?",
            kurdishText: "لە دوای کار لەگەڵمان دێیت بۆ خواردنەوەیەک؟",
            onPressedBritish: () => speakdrinks7("en-GB"),
            onPressedAmerican: () => speakdrinks7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There were free drinks at the bar for everyone.",
            kurdishText: "لە باڕەکە خواردنەوەی بێبەرامبەر بۆ ھەموان ھەبوو.",
            onPressedBritish: () => speakdrinks8("en-GB"),
            onPressedAmerican: () => speakdrinks8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He's got a drink problem.",
            kurdishText: "کێشەی خواردنەوەی ھەیە (ئاڵوودەیە پێی).",
            onPressedBritish: () => speakdrinks9("en-GB"),
            onPressedAmerican: () => speakdrinks9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) بۆنەیەکی خواردنەوەی کحوولی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Would you like to come for drinks on Sunday?",
            kurdishText: "دەتەوێت یەکشەممە بێیت بۆ خواردنەوە؟",
            onPressedBritish: () => speakdrinks10("en-GB"),
            onPressedAmerican: () => speakdrinks10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) خواردنەوەی شتێکی شلە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I don't drink coffee.",
            kurdishText: "قاوە ناخۆمەوە.",
            onPressedBritish: () => speakdrinks11("en-GB"),
            onPressedAmerican: () => speakdrinks11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What would you like to drink?",
            kurdishText: "حەزت بە چییە بیخۆیتەوە؟",
            onPressedBritish: () => speakdrinks12("en-GB"),
            onPressedAmerican: () => speakdrinks12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "In hot weather, drink plenty of water.",
            kurdishText: "لە کەشی گەرمدا، ئاوێکی زۆر بخۆرەوە.",
            onPressedBritish: () => speakdrinks13("en-GB"),
            onPressedAmerican: () => speakdrinks13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She drank from a tall glass.",
            kurdishText: "لە گڵاسێکی درێژ خواردییەوە.",
            onPressedBritish: () => speakdrinks14("en-GB"),
            onPressedAmerican: () => speakdrinks14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) خواردنەوەی مادەی کحوولی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He doesn't drink.",
            kurdishText: "ناخواتەوە.",
            onPressedBritish: () => speakdrinks15("en-GB"),
            onPressedAmerican: () => speakdrinks15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's been drinking heavily since she lost her job.",
            kurdishText: "لەوەتەی کارەکەی لەدەستداوە ئێجگار زۆر دەخواتەوە.",
            onPressedBritish: () => speakdrinks16("en-GB"),
            onPressedAmerican: () => speakdrinks16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Don't drink and drive (= drive a car after drinking alcohol).",
            kurdishText: "شۆفێری مەکە لەگەڵ خواردنەوە.",
            onPressedBritish: () => speakdrinks17("en-GB"),
            onPressedAmerican: () => speakdrinks17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I think he's drunk too much.",
            kurdishText: "پێموایە زۆری خواردووەتەوە.",
            onPressedBritish: () => speakdrinks18("en-GB"),
            onPressedAmerican: () => speakdrinks18("en-US"),
          ),
          // drinks1900"),
          // speakdrinks19
          // drinks19("en-US"),
          // drinks_2000"),
          // speakdrinks20
          // drinks20("en-US"),
          // drinks2100"),
          // speakdrinks21
          // drinks21("en-US"),
          // drinks2200"),
          // speakdrinks22
          // drinks22("en-US"),
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
- Verb: drink (derived forms: drank, drunk, drinking, drinks)
1. Take in liquids (= imbibe)
"The children like to drink soda"; "The patient must drink several litres each day";
 
2. Consume alcohol (= hit the bottle [informal], booze [informal], fuddle)
"We were up drinking all night";
 
3. Propose a toast to (= toast, pledge, salute, wassail [archaic])
"Let's drink to the New Year";
 
4. Be fascinated or spell-bound by; pay close attention to (= drink in)
"The mother drinks in every word of her son on the stage";
 
5. Drink excessive amounts of alcohol; be an alcoholic (= tope [archaic])
"The husband drinks and beats his wife";

- Noun: drink (derived forms: drinks)
1. A single serving of a beverage
"I asked for a hot drink"; "likes a drink before dinner"
 
2. The act of drinking alcoholic beverages to excess (= drinking, boozing, drunkenness, crapulence)
"drink was his downfall";
 
3. Any liquid suitable for drinking (= beverage, drinkable, potable)
"may I take your drink order?";
 
4. Any large deep body of water
"he jumped into the drink and had to be rescued"
 
5. The act of swallowing (= swallow, deglutition [technical])
"he took a drink of his beer and smacked his lips";
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

  final String _videoId = 'N7hlIbJkvUQ';
  final double _startSeconds = 245;

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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 2673;

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

  final String _videoId = '2GsK5feFt1U';
  final double _startSeconds = 203;

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

  final String _videoId = 'F-Z3qNeZyTU';
  final double _startSeconds = 140;

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

  final String _videoId = 'GlPaFt6C56Y';
  final double _startSeconds = 211;

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

  final String _videoId = '1fjawd7uF4U';
  final double _startSeconds = 171;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 639;

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