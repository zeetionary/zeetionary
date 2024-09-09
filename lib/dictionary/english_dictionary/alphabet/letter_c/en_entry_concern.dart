import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconcern extends StatelessWidget {
  EnglishEntryconcern({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconcern(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("concern");
  }

  Future<void> speakconcerns1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Don't interfere in what doesn't concern you.");
  }

  Future<void> speakconcerns2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Please pay attention because this information concerns all of you.");
  }

  Future<void> speakconcerns3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The letter is for both of us, but it mainly concerns you.");
  }

  Future<void> speakconcerns4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The story concerns the prince's efforts to rescue Pamina.");
  }

  Future<void> speakconcerns5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The book is primarily concerned with Soviet-American relations during the Cold War.");
  }

  Future<void> speakconcerns6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("My question concerns the way he handles the evidence.");
  }

  Future<void> speakconcerns7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It concerns me that you no longer seem to care.");
  }

  Future<void> speakconcerns8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It really concerns me that he doesn't eat properly.");
  }

  Future<void> speakconcerns9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He didn't concern himself with the details.");
  }

  Future<void> speakconcerns10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Villagers expressed concern about the level of traffic.");
  }

  Future<void> speakconcerns11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There is growing concern about violence in the media.");
  }

  Future<void> speakconcerns12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She hasn't been seen for four days and there is concern for her safety.");
  }

  Future<void> speakconcerns13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He showed deep concern for his employees.");
  }

  Future<void> speakconcerns14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She forgot her own worries in her concern for him.");
  }

  Future<void> speakconcerns15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I appreciate everyone's concern and help at this difficult time.");
  }

  Future<void> speakconcerns16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Thanks for your concern and sympathy.");
  }

  Future<void> speakconcerns17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Our main concern is to ensure the safety of the children.");
  }

  Future<void> speakconcerns18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government's primary concern is to reduce crime.");
  }

  Future<void> speakconcerns19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This matter is their concern.");
  }

  Future<void> speakconcerns20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How much money I make is none of your concern.");
  }

  Future<void> speakconcerns21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It started slowly, but the company is now a going concern.");
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
                            EntryTitle(word: "concern"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈsɜːn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconcern("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈsɜːrn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconcern("en-US"),
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
کوردی: بابەتی پێخۆش‌بوو، باسی بابەتی (دڵ)، بابەت یان پرسی جێی سەرنج،	ھۆگری، دڵبەستەیی،	دەخڵ، پێوەندی، بەر،	سەرنج، ئاگاداری، ئاگالێ‌بوون، چاوبەسەرەوەبوون،	نیگەرانی، دڵەڕاوکێ، دڵ‌لەدوایی، ناڕەحەتی، مایەی نگەرانی،	کار و کاسپی، کار، ئەرک، پەیور،	بەرپرسایەتی،	کۆمپانیا، نێوکۆیی،	دامەزراوە کارداری یان پیشەسازی،	بەش، پشک
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) کاریگەری کردن لە کەسێک/شتێک"),
                          SentencesRow(
                            englishText:
                                "Don't interfere in what doesn't concern you.",
                            kurdishText:
                                "خۆت مەگلێنە لە شتێک کە پەیوەندی پێوەت نییە.",
                            onPressedBritish: () => speakconcerns1("en-GB"),
                            onPressedAmerican: () => speakconcerns1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Please pay attention because this information concerns all of you.",
                            kurdishText:
                                "تکایە سەرنج بدەن چونکە ئەم زانیارییە پەیوەندی بە ھەموانەوە ھەیە.",
                            onPressedBritish: () => speakconcerns2("en-GB"),
                            onPressedAmerican: () => speakconcerns2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The letter is for both of us, but it mainly concerns you.",
                            kurdishText:
                                "نامەکە بۆ ھەردووکمانە، بەڵام زیاتر پەیوەندی بە تۆوە ھەیە.",
                            onPressedBritish: () => speakconcerns3("en-GB"),
                            onPressedAmerican: () => speakconcerns3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) دەربارەی شتێک بوون"),
                          SentencesRow(
                            englishText:
                                "The story concerns the prince's efforts to rescue Pamina.",
                            kurdishText:
                                "چیرۆکەکە دەربارەی ھەوڵەکانی شازادەیە بۆ ڕزگارکردنی پامینا.",
                            onPressedBritish: () => speakconcerns4("en-GB"),
                            onPressedAmerican: () => speakconcerns4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The book is primarily concerned with Soviet-American relations during the Cold War.",
                            kurdishText:
                                "کتێبەکە بە شێوەیەکی سەرەکی دەربارەی پەیوەندییەکانی ئەمریکا و سۆڤیەتە لە ماوەی جەنگی سارددا.",
                            onPressedBritish: () => speakconcerns5("en-GB"),
                            onPressedAmerican: () => speakconcerns5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "My question concerns the way he handles the evidence.",
                            kurdishText:
                                "پرسیارەکەم دەربارەی شێوازی مامەڵەیەتی لەگەڵ بەڵگەکەدا.",
                            onPressedBritish: () => speakconcerns6("en-GB"),
                            onPressedAmerican: () => speakconcerns6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) نیگەرانکردنی کەسێک"),
                          SentencesRow(
                            englishText:
                                "It concerns me that you no longer seem to care.",
                            kurdishText:
                                "ئەوە نیگەران دەکات کە وا دەردەکەویت کە چی دیکە گرنگی نادەیت.",
                            onPressedBritish: () => speakconcerns7("en-GB"),
                            onPressedAmerican: () => speakconcerns7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It really concerns me that he doesn't eat properly.",
                            kurdishText:
                                "ئەوە نیگەرانم دەکات کە بە درووستی نان ناخوات.",
                            onPressedBritish: () => speakconcerns8("en-GB"),
                            onPressedAmerican: () => speakconcerns8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) حەزکردن لە شتێک"),
                          SentencesRow(
                            englishText:
                                "He didn't concern himself with the details.",
                            kurdishText: "خۆی لە وردەکارییەکان تێوە نەگلاند.",
                            onPressedBritish: () => speakconcerns9("en-GB"),
                            onPressedAmerican: () => speakconcerns9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) نیگەرانی، بەتایبەتی وەک ھەستێکی گشتگیر"),
                          SentencesRow(
                            englishText:
                                "Villagers expressed concern about the level of traffic.",
                            kurdishText:
                                "گوندنشینەکان نیگەرانییان دەربڕی سەبارەت بە ئاستی ھاتووچۆ.",
                            onPressedBritish: () => speakconcerns10("en-GB"),
                            onPressedAmerican: () => speakconcerns10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There is growing concern about violence in the media.",
                            kurdishText:
                                "نیگەرانی گەشەسەندوو ھەیە لەسەر توندوتیژی کە میدیادا.",
                            onPressedBritish: () => speakconcerns11("en-GB"),
                            onPressedAmerican: () => speakconcerns11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She hasn't been seen for four days and there is concern for her safety.",
                            kurdishText:
                                "بۆ چوار ڕۆژ دەبێت نەبینراوە و نیگەرانی ھەیە بۆ سەلامەتیی.",
                            onPressedBritish: () => speakconcerns12("en-GB"),
                            onPressedAmerican: () => speakconcerns12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئارەزووی پاراستن و یارمەتیدانی کەسێک/شتێک"),
                          SentencesRow(
                            englishText:
                                "He showed deep concern for his employees.",
                            kurdishText:
                                "دڵەڕاوکێی زۆری بۆ کارمەندانی دەردەبڕی.",
                            onPressedBritish: () => speakconcerns13("en-GB"),
                            onPressedAmerican: () => speakconcerns13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She forgot her own worries in her concern for him.",
                            kurdishText:
                                "نیگەرانییەکانی خۆی بیرچوو لە دڵەڕاوکێیدا بۆ ئەو.",
                            onPressedBritish: () => speakconcerns14("en-GB"),
                            onPressedAmerican: () => speakconcerns14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I appreciate everyone's concern and help at this difficult time.",
                            kurdishText:
                                "دڵەڕاوکێ و یارمەتی ھەموان بەرزدەنرخێنم لەم کاتە سەختەدا.",
                            onPressedBritish: () => speakconcerns15("en-GB"),
                            onPressedAmerican: () => speakconcerns15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Thanks for your concern and sympathy.",
                            kurdishText: "سوپاس بۆ خەمخۆری و ھاوسۆزیت.",
                            onPressedBritish: () => speakconcerns16("en-GB"),
                            onPressedAmerican: () => speakconcerns16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شتێک کە گرنگە بۆ کەسێک، دامەزراوەیەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "Our main concern is to ensure the safety of the children.",
                            kurdishText:
                                "بەرپرسیاریەتی سەرەکیمان سەلامەتی منداڵەکانە.",
                            onPressedBritish: () => speakconcerns17("en-GB"),
                            onPressedAmerican: () => speakconcerns17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The government's primary concern is to reduce crime.",
                            kurdishText:
                                "ئامانجی سەرەکی حکومەت کەمکردنەوەی تاوانە.",
                            onPressedBritish: () => speakconcerns18("en-GB"),
                            onPressedAmerican: () => speakconcerns18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) شتێک کە بەرپرسیاریەتیتە، یان مافت ھەیە بیزانیت"),
                          SentencesRow(
                            englishText: "This matter is their concern.",
                            kurdishText: "ئەم بابەتە بەرپرسیاریەتییانە.",
                            onPressedBritish: () => speakconcerns19("en-GB"),
                            onPressedAmerican: () => speakconcerns19("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "How much money I make is none of your concern.",
                            kurdishText:
                                "چەندە پارە قازانج دەکەم ھیچ پەیوەندی پێتەوە نییە.",
                            onPressedBritish: () => speakconcerns20("en-GB"),
                            onPressedAmerican: () => speakconcerns20("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) کۆمپانیایەک یان بازرگانییەک"),
                          SentencesRow(
                            englishText:
                                "It started slowly, but the company is now a going concern (= doing business effectively).",
                            kurdishText:
                                "بە ھێواشی دەستیپێکرد، بەڵام کۆمپانیاکە لە ئێستادا بازرگانییەکی تۆکمەیە.",
                            onPressedBritish: () => speakconcerns21("en-GB"),
                            onPressedAmerican: () => speakconcerns21("en-US"),
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
- Verb: concern (derived forms: concerned, concerns, concerning)
1. Be relevant to (= refer, pertain, relate, come to, bear on, touch, touch on, have to do with)
 
2. Be on the mind of (= interest, occupy, worry)

- Noun: concern (derived forms: concerns)
1. Something that interests you because it is important or affects you
"the safety of the ship is the captain's concern"
 
2. An anxious feeling (= care, fear)
 
3. A feeling of sympathy for someone or something
"She felt strong concern for those less fortunate"
 
4. Something or someone that causes anxiety; a source of unhappiness (= worry, headache, vexation)
"New York traffic is a constant concern";
 
5. A commercial or industrial enterprise and the people who constitute it (= business, business concern, business organization, business organisation [Brit])
"a racially integrated business concern";
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 462;

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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 278;

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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 300;

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

  final String _videoId = 'BxWw8AO4ZmI';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 1594;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 1512;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 890;

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