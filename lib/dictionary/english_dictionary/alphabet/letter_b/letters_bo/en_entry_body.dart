import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "body" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace body - /ˈbɒdi/

enum TtsState { playing }

class EnglishEntrybody extends StatelessWidget {
// blank divider
  EnglishEntrybody({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbody(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("body");
  }

  Future<void> speakbodys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The human body is a complex structure.");
  }

  Future<void> speakbodys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The virus can affect all parts of the body.");
  }

  Future<void> speakbodys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had injuries to her head and body.");
  }

  Future<void> speakbodys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has a large body, but thin legs.");
  }

  Future<void> speakbodys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The family of the missing girl has been called in by the police to identify the body.");
  }

  Future<void> speakbodys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bar is in the main body of the hotel.");
  }

  Future<void> speakbodys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are some references in the main body of the text.");
  }

  Future<void> speakbodys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The governing body of the school is/are concerned about discipline.");
  }

  Future<void> speakbodys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "An independent body has been set up to investigate the affair.");
  }

  Future<void> speakbodys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is a powerful body of opinion against the ruling.");
  }

  Future<void> speakbodys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The two islands are separated by a large body of water.");
  }

  Future<void> speakbodys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They removed a foreign body from her eye.");
  }

  Future<void> speakbodys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stars are celestial bodies.");
  }

  Future<void> speakbodys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Regular use of conditioner is supposed to give your hair more body.");
  }

  Future<void> speakbodys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This wine has plenty of body.");
  }

  Future<void> speakbodys16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Every able-bodied man had to fight for his country.");
  }

  Future<void> speakbodys17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys1717");
  }

  Future<void> speakbodys18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys1818");
  }

  Future<void> speakbodys19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys1919");
  }

  Future<void> speakbodys20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2020");
  }

  Future<void> speakbodys21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2121");
  }

  Future<void> speakbodys22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2222");
  }

  Future<void> speakbodys23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2323");
  }

  Future<void> speakbodys24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2424");
  }

  Future<void> speakbodys25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2525");
  }

  Future<void> speakbodys26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2626");
  }

  Future<void> speakbodys27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2727");
  }

  Future<void> speakbodys28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2828");
  }

  Future<void> speakbodys29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2929");
  }

  Future<void> speakbodys30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys3030");
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
                            EntryTitle(word: "body"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɒdi/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbody("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɑːdi/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbody("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: لەش، تەن، جەستە، ئەندام، گیان، قەلبەند، کەلەخ، کەلاک، جەندەک، تەرم، لاشە، بەشی سەرەکی، (ئۆتۆمبێل) بەدەنە، لاشە، گروپ، دەستە، تیپ، تاقم، کۆمەڵە، کۆمەڵ، کۆما، کۆگا، لۆدەتەن، ژمارە، چۆنیەتی، باشی، بنیادەم، پیاو، مرۆ، (مەی) خەستی
"""),
                          const DefinitionKurdish(text: "١. (ناو) لەش، جەستە"),
                          SentencesRow(
                            englishText:
                                "The human body is a complex structure.",
                            kurdishText: "لەشی مرۆڤ پێکھاتەیەکی ئاڵۆزە.",
                            onPressedBritish: () => speakbodys1("en-GB"),
                            onPressedAmerican: () => speakbodys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The virus can affect all parts of the body.",
                            kurdishText:
                                "ڤایرۆسەکە دەکرێت کار بکاتە سەر ھەموو بەشەکانی جەستە.",
                            onPressedBritish: () => speakbodys2("en-GB"),
                            onPressedAmerican: () => speakbodys2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بەشی سەرەکی جەستە بەبێ سەر، یان بەبێ سەر و باڵ و لاق"),
                          SentencesRow(
                            englishText:
                                "She had injuries to her head and body.",
                            kurdishText: "برینی ھەبوو لەسەر سەری و جەستەی.",
                            onPressedBritish: () => speakbodys3("en-GB"),
                            onPressedAmerican: () => speakbodys3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He has a large body, but thin legs.",
                            kurdishText:
                                "لاشەیەکی گەورەی ھەیە، بەڵام لاقەکانی باریکن.",
                            onPressedBritish: () => speakbodys4("en-GB"),
                            onPressedAmerican: () => speakbodys4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) لاشەی کەسێک یان ئاژەڵێکی مردوو"),
                          SentencesRow(
                            englishText:
                                "The family of the missing girl has been called in by the police to identify the body.",
                            kurdishText:
                                "خێزانی کچە ونبووەکە بانگکراون لەلایەن پۆلیسەوە بۆ ناسینەوەی لاشەکە.",
                            onPressedBritish: () => speakbodys5("en-GB"),
                            onPressedAmerican: () => speakbodys5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بەشی سەرەکیی شتێک، بەتایبەتی بینایەک، ئامرازێکی گواستنەوە، کتێبێک، وتارێک، ھتد"),
                          SentencesRow(
                            englishText:
                                "The bar is in the main body of the hotel.",
                            kurdishText: "باڕەکە بەشی سەرەکی ھوتێلەکەیە.",
                            onPressedBritish: () => speakbodys6("en-GB"),
                            onPressedAmerican: () => speakbodys6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There are some references in the main body of the text.",
                            kurdishText:
                                "ھەندێک سەرچاوە ھەن لە بەشی سەرەکیی نووسراوەکە.",
                            onPressedBritish: () => speakbodys7("en-GB"),
                            onPressedAmerican: () => speakbodys7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵێک لە خەڵکی کە پێکەوە کاردەکەن، زۆرجار بۆ مەبەستێکی فەرمی، یان ئەوەی بە شێوەیەک پێکەوە پەیوەندیدارن"),
                          SentencesRow(
                            englishText:
                                "The governing body of the school is/are concerned about discipline.",
                            kurdishText:
                                "دەستەی بەڕێوبەری قوتابخانەکە نیگەرانن سەبارەت بە گوێرایەڵی (خوێندکاران).",
                            onPressedBritish: () => speakbodys8("en-GB"),
                            onPressedAmerican: () => speakbodys8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "An independent body has been set up to investigate the affair.",
                            kurdishText:
                                "دەستەیەکی سەربەخۆ پێکھێنراوە بۆ لێکۆڵینەوە لە بابەتەکە.",
                            onPressedBritish: () => speakbodys9("en-GB"),
                            onPressedAmerican: () => speakbodys9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) ڕێژەیەکی زۆر لە شتێک"),
                          SentencesRow(
                            englishText:
                                "There is a powerful body of opinion against the ruling.",
                            kurdishText:
                                "ڕێژەیەکی بەھێز لە بۆچوون ھەیە دژ بە بڕیارەکە.",
                            onPressedBritish: () => speakbodys10("en-GB"),
                            onPressedAmerican: () => speakbodys10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The two islands are separated by a large body of water.",
                            kurdishText:
                                "دوو دوورگەکە جیاکراونەتەوە بە بڕێکی زۆر لە ئاو.",
                            onPressedBritish: () => speakbodys11("en-GB"),
                            onPressedAmerican: () => speakbodys11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٧. (ناو) شتێک"),
                          SentencesRow(
                            englishText:
                                "They removed a foreign body from her eye.",
                            kurdishText: "شتێکی دەرەکییان لە چاوی دەرکرد.",
                            onPressedBritish: () => speakbodys12("en-GB"),
                            onPressedAmerican: () => speakbodys12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Stars are celestial bodies.",
                            kurdishText: "ئەستێرەکان تەنی ئاسمانین.",
                            onPressedBritish: () => speakbodys13("en-GB"),
                            onPressedAmerican: () => speakbodys13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) کوالێتی بەھێز یان ئەستوور"),
                          SentencesRow(
                            englishText:
                                "Regular use of conditioner is supposed to give your hair more body.",
                            kurdishText:
                                "بەکارھێنانی بەردەوامی نەرم‌کەرەوە دەبێت ئەستووری زیاتر بە قژت بدات.",
                            onPressedBritish: () => speakbodys14("en-GB"),
                            onPressedAmerican: () => speakbodys14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This wine has plenty of body (= strong flavour).",
                            kurdishText: "ئەم بیرەیە تامی بەھێزی ھەیە.",
                            onPressedBritish: () => speakbodys15("en-GB"),
                            onPressedAmerican: () => speakbodys15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) ھەبوونی ئەو جۆرە لاشەیەی کە باسکراوە"),
                          SentencesRow(
                            englishText:
                                "Every able-bodied man had to fight for his country.",
                            kurdishText:
                                "ھەموو پیاوێکی لاشە ساخ دەبوو شەڕ بۆ وڵاتەکەی بکات.",
                            onPressedBritish: () => speakbodys16("en-GB"),
                            onPressedAmerican: () => speakbodys16("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                        // YoutubeEmbeddeddsixteen(),
                        // YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
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
- Noun: body (derived forms: bodies)
1. The entire physical structure of an organism (an animal, plant, or human being) (= organic structure)
"he felt as if his whole body were on fire";

2. A group of persons associated by some common tie or occupation and regarded as an entity
"the whole body filed out of the auditorium"; "the student body"; "administrative body"
 
3. A natural object consisting of a dead animal or person (= dead body)
"they found the body in the lake";

4. An individual 3-dimensional object that has mass and that is distinguishable from other objects
"heavenly body"
 
5. The body excluding the head and neck and limbs (= torso, trunk)
"they moved their arms and legs and bodies";

6. A collection of particulars considered as a system
"a body of law"; "a body of doctrine"; "a body of precedents"
 
7. The property of holding together and retaining its shape (= consistency, consistence, substance)
"wool has more body than rayon";

8. The central message of a communication
"the body of the message was short"
 
9. The main mass of a thing
 
10. A resonating chamber in a musical instrument (as the body of a violin) (= soundbox)
 
11. The external structure of a vehicle
"the body of the car was badly rusted"

- Verb: body (derived forms: bodied, bodies, bodying)
1. Invest with or as with a body; give body to (= personify)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '10FiSsim_a4';
  final double _startSeconds = 59;

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

  final String _videoId = 'Pon4Zux5MaQ';
  final double _startSeconds = 109;

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

  final String _videoId = 'vhmtoAYVRSo';
  final double _startSeconds = 25;

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

  final String _videoId = 'y4TAuIuC2Gg';
  final double _startSeconds = 158;

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

  final String _videoId = 'GLy2rYHwUqY';
  final double _startSeconds = 118;

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

  final String _videoId = 'O9ifAYdKDG4';
  final double _startSeconds = 16;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'DG8rPBlbOrY';
  final double _startSeconds = 23;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'e5WJ5_0Z7Ww';
  final double _startSeconds = 14;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'JljeqZ4iei8';
  final double _startSeconds = 83;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'Jt5WpKRPIlE';
  final double _startSeconds = 12;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'il1SqNg_ZAw';
  final double _startSeconds = 0;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'Y0VQyEY-B2I';
  final double _startSeconds = 131;

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

// end body
