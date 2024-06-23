import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycharacter extends StatelessWidget {
  // blank divider
  EnglishEntrycharacter({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharacter(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("character");
  }

  Future<void> speakcharacters1(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who plays the main character?");
  }

  Future<void> speakcharacters2(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The writers killed off her character when she got cancer.");
  }

  Future<void> speakcharacters3(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The two lead actors inhabit their characters fully.");
  }

  Future<void> speakcharacters4(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The main character is played by Nicole Kidman.");
  }

  Future<void> speakcharacters5(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has developed a skill set from his character work in film, TV and stage.");
  }

  Future<void> speakcharacters6(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Generosity is part of the American character.");
  }

  Future<void> speakcharacters7(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His scruffy appearance does not reflect his character.");
  }

  Future<void> speakcharacters8(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's not in his character to be so secretive.");
  }

  Future<void> speakcharacters9(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone admires her strength of character and determination for success.");
  }

  Future<void> speakcharacters10(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The team showed great character in coming back to win.");
  }

  Future<void> speakcharacters11(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The character of the neighbourhood hasn't changed at all.");
  }

  Future<void> speakcharacters12(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police pointed out the illegal character of the protest action.");
  }

  Future<void> speakcharacters13(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The restaurant is cheap and full of character.");
  }

  Future<void> speakcharacters14(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Who's that suspicious character hanging around outside?");
  }

  Future<void> speakcharacters15(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a character!");
  }

  Future<void> speakcharacters16(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He left his job without a stain on his character.");
  }

  Future<void> speakcharacters17(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was prepared to sue for defamation of character.");
  }

  Future<void> speakcharacters18(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These are the Chinese characters meaning ‘wind’ and ‘water’.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "character"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkærəktə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcharacter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkærəktər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcharacter("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: کەسایەتی، کەسێتی، خوو، خوو و ڕەوشت، کریار، تایبەتمەندی، ڕەوشت، سروشت، جیانیشان، تایبەتمەندی جیاکەەروە، خەسڵەت، توانایی مێنتاڵ یان ھۆشی، لێھاتوویی، کەش، کەش‌وھەوا، بار، ڕەوش، پیت، تیپ، نیشانە، ھێما، بەرژەنگ، جۆر، چەشن، ئاوا،	نێوبانگ، ناوودەنگ،	ڕۆڵ،	ئابڕوو، ناوی باش،	پلە، پلەوپایە،	کەس، مرۆ، پیاو، بنیادەم، مرۆی نائاسایی، پیاوی سەیر،	ڕابووری، پێشینە،	(کۆمپیوتەر) نیشانە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کەسێک یان شتێک لە شانۆیەک، فیلمێک، یان کتێبێک"),
                          SentencesRow(
                            englishText: "Who plays the main character?",
                            kurdishText:
                                "کێ ڕۆڵی کەسایەتی سەرەکی دەبینێت؟", // character",
                            onPressedBritish: () => speakcharacters1("en-GB"),
                            onPressedAmerican: () => speakcharacters1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The writers killed off her character when she got cancer.",
                            kurdishText:
                                "نووسەرەکان کۆتییان بە کارەکتەرەکەی ھێنا کە تووشی شێرپەنجە بوو.",
                            onPressedBritish: () => speakcharacters2("en-GB"),
                            onPressedAmerican: () => speakcharacters2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The two lead actors inhabit their characters fully.",
                                    kurdishText:
                                        "دوو ئەکتەرە سەرەکییەکە بە تەواوی ڕۆدەچنە ناو کارەکتەرەکانیان.",
                                    onPressedBritish: () =>
                                        speakcharacters3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharacters3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The main character is played by Nicole Kidman.",
                            kurdishText:
                                "کارەکتەری سەرەکی لەلایەن نیکۆڵ کیدمانەوە ڕۆڵی دەبینرێت.",
                            onPressedBritish: () => speakcharacters4("en-GB"),
                            onPressedAmerican: () => speakcharacters4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەسێکی دیاریکراو کە فیلمێک، شانۆیەک، یان زنجیرە درامایەک"),
                          SentencesRow(
                            englishText:
                                "He has developed a skill set from his character work in film, TV and stage.",
                            kurdishText:
                                "شارەزاییەکی بەدەستھێناوە کە سەرچاوەی گرتووە لە کارە کارەکتەرییەکانی لە فیلم، تەلەفیزیۆن، و تەختەی شانۆوە.",
                            onPressedBritish: () => speakcharacters5("en-GB"),
                            onPressedAmerican: () => speakcharacters5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) تەواوی خاسیەت و تایبەتمەندی کەسێک کە وادەکات جیاواز بێت لە کەسانی دیکە"),
                          SentencesRow(
                            englishText:
                                "Generosity is part of the American character.",
                            kurdishText: "بەخشندەیی بەشێکە لە سرووشتی ئەمریکا.",
                            onPressedBritish: () => speakcharacters6("en-GB"),
                            onPressedAmerican: () => speakcharacters6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His scruffy appearance does not reflect his character.",
                            kurdishText:
                                "دەرکەوتنە شڕوشپرزەکەی پێناسەی کەسایەتیی ناکات.",
                            onPressedBritish: () => speakcharacters7("en-GB"),
                            onPressedAmerican: () => speakcharacters7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's not in his character to be so secretive.",
                            kurdishText:
                                "لە کەسایەتییدا نییە کە نھێنی‌پارێز بێت.",
                            onPressedBritish: () => speakcharacters8("en-GB"),
                            onPressedAmerican: () => speakcharacters8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) خاسیەتی کەسیی بەھێز، بۆ نموونە وەک توانای مامەڵەکردن لەگەڵ دۆخی مەترسیدار و سەخت"),
                          SentencesRow(
                            englishText:
                                "Everyone admires her strength of character and determination for success.",
                            kurdishText:
                                "ھەمووان سەرسامی بەھێزیی کەسایەتیی و ویستی بۆ سەرکەوتن.",
                            onPressedBritish: () => speakcharacters9("en-GB"),
                            onPressedAmerican: () => speakcharacters9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The team showed great character in coming back to win.",
                            kurdishText:
                                "تیمەکە لێھاتوویی گەورەی پیشاندا لە گەڕانەوە بۆ بردنەوە.",
                            onPressedBritish: () => speakcharacters10("en-GB"),
                            onPressedAmerican: () => speakcharacters10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) خاسیەتێکی دیاریکراو یان تایبەتمەندییەک کە شتێک، بۆنەیەک، یان شوێنێک ھەیەتی"),
                          SentencesRow(
                            englishText:
                                "The character of the neighbourhood hasn't changed at all.",
                            kurdishText: "ڕواڵەتی گەڕەکەکە ھیچ نەگۆڕاوە.",
                            onPressedBritish: () => speakcharacters11("en-GB"),
                            onPressedAmerican: () => speakcharacters11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The police pointed out the illegal character of the protest action.",
                            kurdishText:
                                "پۆلیس خەسڵەتی نایاسایی‌بوونی ناڕەزایی دەربڕینەکەی خستەبەرچاو.",
                            onPressedBritish: () => speakcharacters12("en-GB"),
                            onPressedAmerican: () => speakcharacters12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) خاسیەتی سەرنجڕاکێش یان نامۆی شتێک یان کەسێک"),
                          SentencesRow(
                            englishText:
                                "The restaurant is cheap and full of character.",
                            kurdishText:
                                "چێشتخانەکە ھەرزان و پڕ لە تایبەتمەندییە.",
                            onPressedBritish: () => speakcharacters13("en-GB"),
                            onPressedAmerican: () => speakcharacters13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەسێک، بەتایبەتی کەسێک نامۆ و خراپ"),
                          SentencesRow(
                            englishText:
                                "Who's that suspicious character hanging around outside?",
                            kurdishText:
                                "ئەو کەسە گوماناوییە کێیە کە لە دەرەوە دەسووڕێتەوە؟",
                            onPressedBritish: () => speakcharacters14("en-GB"),
                            onPressedAmerican: () => speakcharacters14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) کەسێکی سەرنجڕاکێش و نامۆ"),
                          SentencesRow(
                            englishText: "She's a character!",
                            kurdishText: "کچێکی سەرنجڕاکێشە.",
                            onPressedBritish: () => speakcharacters15("en-GB"),
                            onPressedAmerican: () => speakcharacters15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) بۆچوونی خەڵکی لەسەرت"),
                          SentencesRow(
                            englishText:
                                "He left his job without a stain on his character.",
                            kurdishText:
                                "کارەکەی جێھێشت بەبێ ھیچ لەکەیەک لەسەر کەسایەتیی.",
                            onPressedBritish: () => speakcharacters16("en-GB"),
                            onPressedAmerican: () => speakcharacters16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was prepared to sue for defamation of character.",
                            kurdishText:
                                "ئامادەبوو بۆ شکاتکردن بۆ لەکەدارکردنی کەسایەتیی.",
                            onPressedBritish: () => speakcharacters17("en-GB"),
                            onPressedAmerican: () => speakcharacters17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) پیتێک، ئاماژەیەک، نیشانەیەک، یان سمبولێک کە لە نووسین، چاپ، و کۆمپیوتەردا بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "These are the Chinese characters meaning ‘wind’ and ‘water’.",
                            kurdishText:
                                "ئەم ئەو ھێما چینییانەن کە بە واتار 'با' و 'ئاو' دێن.",
                            onPressedBritish: () => speakcharacters18("en-GB"),
                            onPressedAmerican: () => speakcharacters18("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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
                    ),
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
- Noun: character (derived forms: characters)
1. An imaginary person represented in a work of fiction (play, film or story) (= fictional character, fictitious character)
"she is the main character in the novel";
 
2. A characteristic property that defines the apparent individual nature of something (= quality, lineament)
"the radical character of our demands";

3. The inherent complex of attributes that determines a person's moral and ethical actions and reactions (= fiber [US], fibre [Brit, Cdn])
"education has for its object the formation of character";
 
4. An actor's portrayal of someone in a play (= role, theatrical role, part, persona)
"she played the character of Desdemona";
 
5. A person of a specified kind (usually with many eccentricities) (= eccentric, type, case)
"a real character"; "a strange character";
 
6. Good repute
"he is a man of character"
 
7. A formal recommendation by a former employer to a potential future employer describing the person's qualifications and dependability (= reference, character reference)
"requests for character references are all too often answered evasively";

8. A written symbol that is used to represent speech (= graph, grapheme, graphic symbol)
"the Greek alphabet has 24 characters";
 
9. (genetics) an attribute (structural or functional) that is determined by a gene or group of genes

- Verb: character (derived forms: characters, charactering, charactered)
1. Engrave or inscribe characters on
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

  final String _videoId = 'OR2gpBMHI9I';
  final double _startSeconds = 34;

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

  final String _videoId = 'ZVS1YrH_Lfc';
  final double _startSeconds = 29;

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

  final String _videoId = 'nQ-Ua6NYago';
  final double _startSeconds = 93;

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

  final String _videoId = 'R0wa9IlCA_w';
  final double _startSeconds = 354;

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

  final String _videoId = 'Jk7NYEhai0g';
  final double _startSeconds = 232;

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

  final String _videoId = 'xoyLYumj7tI';
  final double _startSeconds = 125;

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

  final String _videoId = 'a3WnvDtDD2M';
  final double _startSeconds = 24;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '_GFkHA5EZdE';
  final double _startSeconds = 204;

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

// end WORD_WEB
