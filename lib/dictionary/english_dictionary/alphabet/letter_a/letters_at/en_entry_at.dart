import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "at" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace EnglishEntryat - replace speakAt

// replace at - /ət/, strong form  /æt/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryat extends StatelessWidget {
  // blank divider
  EnglishEntryat({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakat(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("attttttttttttttttt");
  }

  Future<void> speakat642(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They arrived late at the airport.");
  }

  Future<void> speakat643(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll be at home all morning.");
  }

  Future<void> speakat645(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been at the bank longer than anyone else.");
  }

  Future<void> speakat647(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We left at 2 o'clock.");
  }

  Future<void> speakat648(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She got married at 25.");
  }

  Future<void> speakat650(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Somebody threw paint at the prime minister.");
  }

  Future<void> speakat656(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He clutched wildly at the rope as he fell.");
  }

  Future<void> speakat658(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm good at French.");
  }

  Future<void> speakat659(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was driving at 70 mph.");
  }

  Future<void> speakat701(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Prices start at £1 000.");
  }

  Future<void> speakat703(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you read a car number plate at fifty metres?");
  }

  Future<void> speakat706(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The country is now at war.");
  }

  Future<void> speakat707(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I felt at a disadvantage.");
  }

  Future<void> speakat708(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think Mr Harris is at lunch.");
  }

  Future<void> speakat710(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The garden's at its most beautiful in June.");
  }

  Future<void> speakat712(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was delighted at the result.");
  }

  Future<void> speakat716(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They attended the dinner at the chairman's invitation.");
  }

  Future<void> speakat720(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can reach me at 009001008, extension 770.");
  }

  // Future<void> speakat(String languageCode) async {
  //   // DOPSUM: CHANGE speakAt
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attttttttttttttttt");
  // }

  // Future<void> speakat(String languageCode) async {
  //   // DOPSUM: CHANGE speakAt
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attttttttttttttttt");
  // }

  // Future<void> speakat(String languageCode) async {
  //   // DOPSUM: CHANGE speakAt
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attttttttttttttttt");
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "at"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ət/, strong form  /æt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakat("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ət/, strong form  /æt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakat("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: لە، ژ، تێ، بە، نزیک، لەنێو، تێوە، لەنێوەوەی، لەبەر، لە، لە بەردەم، لە کاتی، لە حاڵی، لە دۆخی، بەرەو، ڕوولە، لە ڕێگای، لە ڕێی، بە ھۆی، کاتی، وەختی، بە خاتری
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ئامراز) بۆ پیشاندانی شوێنی شتێک، یان ڕوودانی شوێنی شتێک"""),
                          SentencesRow(
                            englishText: "They arrived late at the airport.",
                            kurdishText: "درەنگ گەشتنە فڕۆکەخانەکە.",
                            onPressedBritish: () => speakat642("en-GB"),
                            onPressedAmerican: () => speakat642(// REPLACE: at
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "I'll be at home all morning.",
                            kurdishText: "تەواوی بەیانی لە ماڵەوە دەبم.",
                            onPressedBritish: () => speakat643("en-GB"),
                            onPressedAmerican: () => speakat643(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بۆ پیشاندانی شوێنی کارکردن یان خوێندنی کەسێک"""),
                          SentencesRow(
                            englishText:
                                "He's been at the bank longer than anyone else.",
                            kurdishText:
                                "زیاتر لە ھەر کەسێکی تر لە بانکەکە کاری کردووە.",
                            onPressedBritish: () => speakat645("en-GB"),
                            onPressedAmerican: () => speakat645(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بۆ پیشاندانی کات"""),
                          SentencesRow(
                            englishText: "We left at 2 o'clock.",
                            kurdishText: "لە کاتژمێر ٢ ڕۆشتین.",
                            onPressedBritish: () => speakat647("en-GB"),
                            onPressedAmerican: () => speakat647(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بۆ پیشاندانی تەمەنی کەسێک لە کاتی کردنی شتێک"""),
                          SentencesRow(
                            englishText: "She got married at 25.",
                            kurdishText: "لە تەمەنی ٢٥ ساڵی ھاوسەرگیری کرد.",
                            onPressedBritish: () => speakat648("en-GB"),
                            onPressedAmerican: () => speakat648(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بۆ پیشاندانی ئاراستەی شتێک"""),
                          SentencesRow(
                            englishText:
                                "Somebody threw paint at the prime minister.",
                            kurdishText: "کەسێک بۆیەی گرتە سەرۆک وەزیران.",
                            onPressedBritish: () => speakat650("en-GB"),
                            onPressedAmerican: () => speakat650(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) لە دوای کردار بەکاردێت بۆ پیشاندانی ئەوەی کەسێک ھەوڵ دەدات شتێک بکات، بەڵام سەرکەوتوو نابێت یان تەواوی ناکات"""),
                          SentencesRow(
                            englishText:
                                "He clutched wildly at the rope as he fell.",
                            kurdishText:
                                "شێتانە دەستی توند کردبوو لە حەبلەکە کە ئەو کەوت.",
                            onPressedBritish: () => speakat656("en-GB"),
                            onPressedAmerican: () => speakat656(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ئامراز) لە دوای ھاوەڵناو بەکاردێت بۆ پیشاندانی ئاست"""),
                          SentencesRow(
                            englishText: "I'm good at French.",
                            kurdishText: "لە فەرەنسی باشم.",
                            onPressedBritish: () => speakat658("en-GB"),
                            onPressedAmerican: () => speakat658(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ئامراز) بۆ پیشاندنی بڕ و خێرایی"""),
                          SentencesRow(
                            englishText: "He was driving at 70 mph.",
                            kurdishText:
                                "بەخێرایی ٧٠ میل لە کاتژمێرێکدا لێیدەخوڕی.",
                            onPressedBritish: () => speakat659("en-GB"),
                            onPressedAmerican: () => speakat659(// REPLACE: at
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Prices start at £1 000.",
                            kurdishText:
                                "نرخەکان لە ١٠٠٠ پاوەندەوە دەستپێ‌دەکەن.",
                            onPressedBritish: () => speakat701("en-GB"),
                            onPressedAmerican: () => speakat701(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ئامراز) بۆ پیشاندنی دووری و مەودا"""),
                          SentencesRow(
                            englishText:
                                "Can you read a car number plate at fifty metres?",
                            kurdishText:
                                "دەتوانی ژمارەی ئۆتۆمبێلێک لە دووری ٥٠ مەترەوە بخوێنیتەوە؟",
                            onPressedBritish: () => speakat703("en-GB"),
                            onPressedAmerican: () => speakat703(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ئامراز) بەکاردێت بۆ پیشاندنی ئەو دۆخەی کەسێک/شتێک تێیدایە، ئەوەی کەسێک دەیکات، یان ئەوەی چی ڕوودەدات"""),
                          SentencesRow(
                            englishText: "The country is now at war.",
                            kurdishText: "وڵاتەکە ئێستا لە جەنگدایە.",
                            onPressedBritish: () => speakat706("en-GB"),
                            onPressedAmerican: () => speakat706(// REPLACE: at
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "I felt at a disadvantage.",
                            kurdishText: "وام ھەستکرد لە زیاندا بم.",
                            onPressedBritish: () => speakat707("en-GB"),
                            onPressedAmerican: () => speakat707(// REPLACE: at
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "I think Mr Harris is at lunch.",
                            kurdishText:
                                "پێم‌وایە بەڕێز ھاریس لە خواردنی نیوەڕۆیە.",
                            onPressedBritish: () => speakat708("en-GB"),
                            onPressedAmerican: () => speakat708(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ئامراز) بەکاردێت بۆ پیشاندنی باشترین کاتی شتێک"""),
                          SentencesRow(
                            englishText:
                                "The garden's at its most beautiful in June.",
                            kurdishText:
                                "باخچەکە لە جوانترین کاتیدایە لە حوزەیران.",
                            onPressedBritish: () => speakat710("en-GB"),
                            onPressedAmerican: () => speakat710(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ئامراز) بەکاردێت لەگەڵ ھاوەڵناو بۆ پیشاندانی ھۆکار"""),
                          SentencesRow(
                            englishText: "She was delighted at the result.",
                            kurdishText: "دڵخۆش بوو بە ئەنجامەکە.",
                            onPressedBritish: () => speakat712("en-GB"),
                            onPressedAmerican: () => speakat712(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ئامراز) لە وەڵامی شتێکدا"""),
                          SentencesRow(
                            englishText:
                                "They attended the dinner at the chairman's invitation.",
                            kurdishText:
                                "بەژداری نانی ئێوارە بوون لەسەر بانگھێشتی بەڕێوبەر.",
                            onPressedBritish: () => speakat716("en-GB"),
                            onPressedAmerican: () => speakat716(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ئامراز) بۆ پیشاندانی ژمارە تەلەفۆن"""),
                          SentencesRow(
                            englishText:
                                "You can reach me at 009001008, extension 770.",
                            kurdishText:
                                "دەتوانیت پەیوەندیم پێوەبکەیت بە ژمارە تەلەفۆنی ٠٠٩٠٠١٠٠٨، بە کۆدی ٧٧٠.",
                            onPressedBritish: () => speakat720("en-GB"),
                            onPressedAmerican: () => speakat720(// REPLACE: at
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Preposition: at 
1. Expresses position, direction or location, or point in time
"point at the one you want"; "sleep at the hotel"; "at midnight"
 
2. Expressing a rate
"sold at £10 each"

- Noun: at (derived forms: ats)
1. 100 at equal 1 kip in Laos

- Noun: At (derived forms: Ats)
1. A highly unstable radioactive element (the heaviest of the halogen series); a decay product of uranium and thorium (= astatine, atomic number 85)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'XlHzvTEstz8';
  final double _startSeconds = 1;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'Gw5xrWJo8pw';
  final double _startSeconds = 40;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'oBcxuzdP3rs';
  final double _startSeconds = 64;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'toVfvRhWbj8';
  final double _startSeconds = 11;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'jrHz8Bti6FY';
  final double _startSeconds = 6;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'cT993ypa0_A';
  final double _startSeconds = 13;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'sAiTuitN5b8';
  final double _startSeconds = 56;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'gGILiLTenR8';
  final double _startSeconds = 20;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = '576HwhU6PMM';
  final double _startSeconds = 30;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'NQWkNXr2ujI';
  final double _startSeconds = 184;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'CbBQLoxkwhY';
  final double _startSeconds = 5;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'XXhc5UTxv5I';
  final double _startSeconds = 6;

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

// end

// end // TODO Implement this library.