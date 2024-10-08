import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrybrief extends StatelessWidget {
  EnglishEntrybrief({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbrief(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("brief");
  }

  Future<void> speakbriefs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Mozart's life was brief.");
  }

  Future<void> speakbriefs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak(" He said nothing during the brief court appearance.");
  }

  Future<void> speakbriefs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He died after a relatively brief period of suffering.");
  }

  Future<void> speakbriefs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Could you make it brief? I've got a meeting in ten minutes.");
  }

  Future<void> speakbriefs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Please be brief.");
  }

  Future<void> speakbriefs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Section 1 of the book gives a brief history of Mexico.");
  }

  Future<void> speakbriefs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was wearing a fairly brief skirt, as I recall.");
  }

  Future<void> speakbriefs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It wasn't part of his brief to speak to the press.");
  }

  Future<void> speakbriefs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It's not part of my brief to advise on financial matters.");
  }

  Future<void> speakbriefs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Will you accept this brief?");
  }

  Future<void> speakbriefs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I want to see my brief.");
  }

  Future<void> speakbriefs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were given daily briefs by the general.");
  }

  Future<void> speakbriefs13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I expect to be kept fully briefed at all times.");
  }

  Future<void> speakbriefs14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The officer briefed her on what to expect.");
  }

  Future<void> speakbriefs15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We had already been briefed about what the job would entail.");
  }

  Future<void> speakbriefs16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The men have been fully briefed about the mission.");
  }

  Future<void> speakbriefs17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "On several occasions government officials briefed against their own ministers.");
  }

  Future<void> speakbriefs18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs1818");
  }

  Future<void> speakbriefs19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs1919");
  }

  Future<void> speakbriefs20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2020");
  }

  Future<void> speakbriefs21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2121");
  }

  Future<void> speakbriefs22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2222");
  }

  Future<void> speakbriefs23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2323");
  }

  Future<void> speakbriefs24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2424");
  }

  Future<void> speakbriefs25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2525");
  }

  Future<void> speakbriefs26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2626");
  }

  Future<void> speakbriefs27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2727");
  }

  Future<void> speakbriefs28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2828");
  }

  Future<void> speakbriefs29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbriefs2929");
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
                            EntryTitle(word: "brief"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /briːf/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbrief("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /briːf/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbrief("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: کورت (جل‌وبەرگ)، تیژپەڕ، کورت‌ماوە، کورتە، پوختە، نویشک، توند، بڕا، یەکلایی‌کەرەوە، دەستوور، فەرمان، ئەرک، چوارچێوەی دەسەڵات، دەستوورەکان، ڕاسپاردەکان، کورتەی داواکاری یان دۆسیە (ماف)، ڕاسپاردە
"""),
                          const DefinitionKurdish(
                              text: """١. (ھاوەڵناو) بۆ ماوەیەکی کەم"""),
                          SentencesRow(
                            englishText: "Mozart's life was brief.",
                            kurdishText: "ژیانی مۆزارت کورتخایەن بوو.",
                            onPressedBritish: () => speakbriefs1("en-GB"),
                            onPressedAmerican: () => speakbriefs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                " He said nothing during the brief court appearance.",
                            kurdishText:
                                "ھیچی نەگوت لە ئامادەبوونە کورتەکەی لە دادگادا.",
                            onPressedBritish: () => speakbriefs2("en-GB"),
                            onPressedAmerican: () => speakbriefs2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He died after a relatively brief period of suffering.",
                                    kurdishText:
                                        "گیانی لەدەستدا لە دوای ماوەیەکی کەم لە ئازارکێشان.",
                                    onPressedBritish: () =>
                                        speakbriefs3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbriefs3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Could you make it brief? I've got a meeting in ten minutes.",
                                    kurdishText:
                                        "ئەتوانی بە کورتی بیڵێیت؟ کۆبوونەوەیەکم ھەیە لە چەند خولەکێکی تردا.",
                                    onPressedBritish: () =>
                                        speakbriefs4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbriefs4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) بەکارھێنانی وشەی کەم"),
                          SentencesRow(
                            englishText:
                                "Please be brief (= say what you want to say quickly).",
                            kurdishText: "تکایە بە کورتی/زوویی بیڵێ.",
                            onPressedBritish: () => speakbriefs5("en-GB"),
                            onPressedAmerican: () => speakbriefs5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Section 1 of the book gives a brief history of Mexico.",
                            kurdishText:
                                "بەشی یەکەمی کتێبەکە مێژووی کورتی مەکسیک دەخاتە بەردەست.",
                            onPressedBritish: () => speakbriefs6("en-GB"),
                            onPressedAmerican: () => speakbriefs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) جلێکی کورت"),
                          SentencesRow(
                            englishText:
                                "She was wearing a fairly brief skirt, as I recall.",
                            kurdishText:
                                "بەپێی ئەوەی بیرم بێت تەنوورەیەکی تاڕادەیەک کورتی لەبەربوو.",
                            onPressedBritish: () => speakbriefs7("en-GB"),
                            onPressedAmerican: () => speakbriefs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمەڵێک ڕێنمایی کە بە کەسێک دەدرێت"),
                          SentencesRow(
                            englishText:
                                "It wasn't part of his brief to speak to the press.",
                            kurdishText:
                                "ئەوە بەشێک لە ڕێنمایەکانی نەبوو کە بە میدیاکان بڵێت.",
                            onPressedBritish: () => speakbriefs8("en-GB"),
                            onPressedAmerican: () => speakbriefs8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's not part of my brief to advise on financial matters.",
                            kurdishText:
                                "ئەوە بەشێک لە ڕاسپاردەکانم نییە کە ڕاوێژ کە باسی ئابووریدا بدەم.",
                            onPressedBritish: () => speakbriefs9("en-GB"),
                            onPressedAmerican: () => speakbriefs9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کەیسێکی یاسایی کە دەدرێت بە پارێزەرێک بۆ ئەوەی لە دادگا بەرگری لێ بکات"),
                          SentencesRow(
                            englishText: "Will you accept this brief?",
                            kurdishText: "ئەم کەیسە/دۆسیەیە وەردەگریت؟",
                            onPressedBritish: () => speakbriefs10("en-GB"),
                            onPressedAmerican: () => speakbriefs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) پارێزەرێک کە بەرگری لە کەیسێک دەکات"),
                          SentencesRow(
                            englishText: "I want to see my brief.",
                            kurdishText: "دەمەوێت پارێزەرەکەم ببینم.",
                            onPressedBritish: () => speakbriefs11("en-GB"),
                            onPressedAmerican: () => speakbriefs11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) زانیاری و ڕێنمایی کە لە کۆبوونەوەیەکدا دەدرێت"),
                          SentencesRow(
                            englishText:
                                "We were given daily briefs by the general.",
                            kurdishText:
                                "زانیاری ڕۆژانەمان پێدەدرا لەلایەن ژەنەراڵەکەوە.",
                            onPressedBritish: () => speakbriefs12("en-GB"),
                            onPressedAmerican: () => speakbriefs12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) پێدانی زانیاری بە کەسێک بۆ ئەوەی ئامادە بێت مامەڵەی لەگەڵدا بکات"),
                          SentencesRow(
                            englishText:
                                "I expect to be kept fully briefed at all times.",
                            kurdishText:
                                "چاوەڕێی ئەوە دەکەم ھەموو کات زانیاریم پێ بدرێت.",
                            onPressedBritish: () => speakbriefs13("en-GB"),
                            onPressedAmerican: () => speakbriefs13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The officer briefed her on what to expect.",
                            kurdishText:
                                "ئەفسەرەکە زانیاریی پێدا لەسەر ئەوەی چاوەڕێی چی بکات.",
                            onPressedBritish: () => speakbriefs14("en-GB"),
                            onPressedAmerican: () => speakbriefs14("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "We had already been briefed about/on what the job would entail.",
                                    kurdishText:
                                        "پێشوەختە زانیاریمان پێدرابوو کە کارەکە چی لەخۆدەگرێت.",
                                    onPressedBritish: () =>
                                        speakbriefs15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbriefs15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The men have been fully briefed about the mission.",
                                    kurdishText:
                                        "سەربازەکان بە تەواوی زانیارییان پێدراوە لەسەر ئەرکەکە.",
                                    onPressedBritish: () =>
                                        speakbriefs16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbriefs16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ئاشکراکردنی زانیاری لەسەر کەسێک/شتێک بە مەبەستی دژایەتی یان پەسندانی"),
                          SentencesRow(
                            englishText:
                                "On several occasions government officials briefed against their own ministers.",
                            kurdishText:
                                "لە ژمارەیەک بۆنەدا بەرپرسانی حکومەت زانیارییان دژ بە وەزیرەکانی خۆیان ئاشکراکردووە.",
                            onPressedBritish: () => speakbriefs17("en-GB"),
                            onPressedAmerican: () => speakbriefs17("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: brief (derived forms: briefer, briefest)
1. Of short duration or distance
"a brief stay in the country"
 
2. Concise and succinct
"covered the matter in a brief statement"
 
3. (of clothing) very short (= abbreviated)
"a brief bikini";

- Noun: brief (derived forms: briefs)
1. (law) a document stating the facts and points of law of a client's case (= legal brief)
 
2. A condensed written summary or abstract
 
3. The topic that a person, committee, or piece of research is expected to deal with or has authority to deal with (= remit [Brit], responsibility)
"they set up a group with a brief to suggest ways for strengthening family life";

- Verb: brief (derived forms: briefed, briefing, briefs)
1. Give essential information to someone
"The reporters were briefed about the President's plan to invade"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 675;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 273;

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

  final String _videoId = 'QiKZYt9070U';
  final double _startSeconds = 480;

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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 1070;

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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 916;

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

  final String _videoId = 'a9m3GD0DbPY';
  final double _startSeconds = 162;

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

  final String _videoId = 'EkIbC5JqVck';
  final double _startSeconds = 362;

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

  final String _videoId = 'C-qYgs_yOXA';
  final double _startSeconds = 10805;

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

  final String _videoId = 'knjliFs3gR8';
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

  final String _videoId = 'fKaZLR2C88E';
  final double _startSeconds = 496;

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

  final String _videoId = 'kotoNOAvNGk';
  final double _startSeconds = 2950;

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

  final String _videoId = '1kNNVgsmMSE';
  final double _startSeconds = 216;

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

// end WORD_WEB
