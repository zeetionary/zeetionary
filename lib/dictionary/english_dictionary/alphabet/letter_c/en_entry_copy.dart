import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycopy extends StatelessWidget {
// blank divider
  EnglishEntrycopy({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcopy(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("copy");
  }

  Future<void> speakcopys1(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The thieves replaced the original painting with a copy.");
  }

  Future<void> speakcopys2(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He made careful copies of all the documents he found in the library.");
  }

  Future<void> speakcopys3(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I will send you a copy of the report.");
  }

  Future<void> speakcopys4(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't keep copies of my own letters.");
  }

  Future<void> speakcopys5(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The book sold 20 000 copies within two weeks.");
  }

  Future<void> speakcopys6(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are a limited number of copies still available.");
  }

  Future<void> speakcopys7(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This will make great copy for the advertisement.");
  }

  Future<void> speakcopys8(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could I have ten copies of this page, please?");
  }

  Future<void> speakcopys9(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I ran off a couple of copies of the letter.");
  }

  Future<void> speakcopys10(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He taught himself by copying paintings in the Louvre.");
  }

  Future<void> speakcopys11(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The product has been widely copied by other manufacturers.");
  }

  Future<void> speakcopys12(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The monks spent their days copying manuscripts.");
  }

  Future<void> speakcopys13(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children copied the sentences from the whiteboard.");
  }

  Future<void> speakcopys14(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You do not have to copy down every word in a lecture.");
  }

  Future<void> speakcopys15(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The software has been illegally copied.");
  }

  Future<void> speakcopys16(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You can copy the data to your new laptop in the usual way.");
  }

  Future<void> speakcopys17(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Use the clipboard to copy and paste information from websites.");
  }

  Future<void> speakcopys18(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She copies everything her sister does.");
  }

  Future<void> speakcopys19(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their tactics have been copied by other terrorist organizations.");
  }

  Future<void> speakcopys20(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was punished by his teacher for copying in the exam.");
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
                            EntryTitle(word: "copy"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒpi/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcopy("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːpi/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcopy("en-US"),
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
کوردی: کۆپی، ڕوونووس، نوسخە، لێ‌ھەڵگیراوە، ڕایش، ڕووە، ڕووگیراوە، فۆتۆکۆپی،	(کتێب) دانە، بەرگ، نوسخە،	(ڕۆژنامە) دانە، ژمارە، دەنک، دانە،	بابەت، مژار، نڤیسار (ڕۆژنامە و کۆڤار)،	ئاگاداری
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە ھەمان شتە لەگەڵ شتێکی دیکەدا لە شێوەدا"),
                          SentencesRow(
                            englishText:
                                "The thieves replaced the original painting with a copy.",
                            kurdishText:
                                "دزەکان تابلۆ ڕەسەنەکەیان گۆڕییەوە لەگەڵ دانەیەکی کۆپیدا.", // copy",
                            onPressedBritish: () => speakcopys1("en-GB"),
                            onPressedAmerican: () => speakcopys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He made careful copies of all the documents he found in the library.",
                            kurdishText:
                                "لەبەرگیراوەی ھەموو بەڵگەنامەکانی درووستکرد کە لە کتێبخانەکەدا دۆزییەوە.",
                            onPressedBritish: () => speakcopys2("en-GB"),
                            onPressedAmerican: () => speakcopys2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I will send you a copy of the report.",
                            kurdishText: "کۆپپیەکی ڕاپۆرتەکەت بۆ دەنێرم.",
                            onPressedBritish: () => speakcopys3("en-GB"),
                            onPressedAmerican: () => speakcopys3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't keep copies of my own letters.",
                            kurdishText: "کۆپی نامەکانم ناپارێزم.",
                            onPressedBritish: () => speakcopys4("en-GB"),
                            onPressedAmerican: () => speakcopys4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) یەک نموونەی چاپکراو لە کتێبێک کە ڕێژەیەکی زۆری لێ چاپکراوە"),
                          SentencesRow(
                            englishText:
                                "The book sold 20 000 copies within two weeks.",
                            kurdishText:
                                "کتێبەکە ٢٠٠٠٠ دانەی لێ فرۆشرا لە دوو ھەفتەدا.",
                            onPressedBritish: () => speakcopys5("en-GB"),
                            onPressedAmerican: () => speakcopys5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There are a limited number of copies still available.",
                            kurdishText:
                                "ژمارەیەکی دیاریکراو لە کۆپی ھێشتا بەردەستە.",
                            onPressedBritish: () => speakcopys6("en-GB"),
                            onPressedAmerican: () => speakcopys6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بابەتی نووسراو کە بۆ ئەوەیە لە ڕۆژنامەیەک، گۆڤارێک، ھتد بڵاوبکرێتەوە"),
                          SentencesRow(
                            englishText:
                                "This will make great copy for the advertisement.",
                            kurdishText:
                                "ئەمە بابەتێکی باش دەبێت بۆ بانگەشەکە.",
                            onPressedBritish: () => speakcopys7("en-GB"),
                            onPressedAmerican: () => speakcopys7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆپییەکی بەڵگەنامەیەک کە بە ئامێری لەبەرگرتنەوە کراوە"),
                          SentencesRow(
                            englishText:
                                "Could I have ten copies of this page, please?",
                            kurdishText:
                                "تکایە دەتوانیت ١٠ کۆپی ئەم پەڕەیەم بۆ بکەیت؟",
                            onPressedBritish: () => speakcopys8("en-GB"),
                            onPressedAmerican: () => speakcopys8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I ran off a couple of copies of the letter.",
                            kurdishText: "چەند کۆپییەکی نامەکەم کرد.",
                            onPressedBritish: () => speakcopys9("en-GB"),
                            onPressedAmerican: () => speakcopys9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) لەبەرگرتنەوە"),
                          SentencesRow(
                            englishText:
                                "He taught himself by copying paintings in the Louvre.",
                            kurdishText:
                                "خۆی فێرکرد بە کۆپیکردنی تابلۆکانی مۆزەخانەی لۆڤەر.",
                            onPressedBritish: () => speakcopys10("en-GB"),
                            onPressedAmerican: () => speakcopys10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The product has been widely copied by other manufacturers.",
                            kurdishText:
                                "بەرھەمەکە بە بەرفراوانی لەلایەن بەرھەمھێنەرەکانی دیکەوە کۆپیکراوە.",
                            onPressedBritish: () => speakcopys11("en-GB"),
                            onPressedAmerican: () => speakcopys11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) نووسینی شتێک بەو شێوەیەی کە لە شوێنێکی دیکەدا نووسراوە"),
                          SentencesRow(
                            englishText:
                                "The monks spent their days copying manuscripts.",
                            kurdishText:
                                "ڕەبەنەکان ڕۆژەکەیان بەسەربرد بە لەبەرگرتنەوەی بەڵگەنامە کۆنەکان.",
                            onPressedBritish: () => speakcopys12("en-GB"),
                            onPressedAmerican: () => speakcopys12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The children copied the sentences from the whiteboard.",
                            kurdishText:
                                "منداڵەکان ڕستەکانی سەر بۆردەکەیان نووسییەوە.",
                            onPressedBritish: () => speakcopys13("en-GB"),
                            onPressedAmerican: () => speakcopys13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You do not have to copy down every word in a lecture.",
                            kurdishText:
                                "پێویست ناکات ھەموو وشەیەکی وانەیەک بنووسیتەوە.",
                            onPressedBritish: () => speakcopys14("en-GB"),
                            onPressedAmerican: () => speakcopys14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) درووستکردنی کۆپییەکی تەواوی وشانێکی داتایەک، پڕۆگرامێک، ھتد بۆ ئەوەی دووبارە بەکاریبێنیتەوە"),
                          SentencesRow(
                            englishText:
                                "The software has been illegally copied.",
                            kurdishText: "نەرمامێرەکە بە نایاسایی کۆپیکرا بوو.",
                            onPressedBritish: () => speakcopys15("en-GB"),
                            onPressedAmerican: () => speakcopys15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You can copy the data to your new laptop in the usual way.",
                            kurdishText:
                                "دەتوانیت داتاکە کۆپی بکەیتە لاپتۆپەکە تازەکەت بەشێوەی ئاسایی.",
                            onPressedBritish: () => speakcopys16("en-GB"),
                            onPressedAmerican: () => speakcopys16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Use the clipboard to copy and paste information from websites.",
                            kurdishText:
                                "کلیپبۆردەکە بەکاربێنە بۆ کۆپی و لکاندنی زانیاری لە وێبسایتەوە.",
                            onPressedBritish: () => speakcopys17("en-GB"),
                            onPressedAmerican: () => speakcopys17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) لاسایی کردنەوەی کەسێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "She copies everything her sister does.",
                            kurdishText:
                                "لاسایی ھەر شتێک دەکاتەوە خوشکەکەی دەیکات.",
                            onPressedBritish: () => speakcopys18("en-GB"),
                            onPressedAmerican: () => speakcopys18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Their tactics have been copied by other terrorist organizations.",
                            kurdishText:
                                "تاکتیکەکانیان لەلایەن ڕێکخراوە تیرۆریستییەکانی دیکەوە کۆپیکراوە.",
                            onPressedBritish: () => speakcopys19("en-GB"),
                            onPressedAmerican: () => speakcopys19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) گزیکردن لە تاقیکردنەوەدا بە نووسینەوەی وەڵامی کەسێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "He was punished by his teacher for copying in the exam.",
                            kurdishText:
                                "لەلایەن مامۆستاکەیەوە سزادرا بۆ گزیکردن لە تاقیکردنەوەکەدا.",
                            onPressedBritish: () => speakcopys20("en-GB"),
                            onPressedAmerican: () => speakcopys20("en-US"),
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
- Noun: copy (derived forms: copies)
1. (law) a reproduction of a written record (e.g. of a legal or school record) (= transcript)
 
2. A thing made to be similar or identical to another thing
"she made a copy of the designer dress"; "the clone was a copy of its ancestor"
 
3. Matter to be printed; exclusive of graphical materials (= written matter)
 
4. Material suitable for a journalistic account
"catastrophes make good copy"

- Verb: copy (derived forms: copies, copied, copying)
1. Reproduce on paper
"The students were made to copy the alphabet over and over"
 
2. Reproduce someone's behaviour or looks (= imitate, simulate)
"Children often copy their parents or older siblings";
 
3. (biology) reproduce or make an exact copy of (= replicate)
"copy the genetic information";
 
4. Make a replica of (= re-create, recreate)
"copy that drawing";
 
5. (radio) receive a transmission successfully
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

  final String _videoId = '7LFkN7QGp2c';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'oFKbvpXJ83w';
  final double _startSeconds = 42;

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

  final String _videoId = 'b7ITL2VDH5Q';
  final double _startSeconds = 28;

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

  final String _videoId = 'zjbKILsYYq0';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'xhM0Htv39aE';
  final double _startSeconds = 222;

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

  final String _videoId = 'poS7rZ7-_RU';
  final double _startSeconds = 75;

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
  final double _startSeconds = 1142;

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

// end WORD_WEB