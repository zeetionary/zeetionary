import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bad" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bad - replace EnglishEntrybad

// replace speakBad - /bæd/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntrybad extends StatelessWidget {
  // blank divider
  EnglishEntrybad({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbad(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bad");
  }

  Future<void> speakbads1(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have some bad news for you, I'm afraid.");
  }

  Future<void> speakbads2(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("War is always a bad thing.");
  }

  Future<void> speakbads3(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I thought it was a very bad article.");
  }

  Future<void> speakbads4(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was a very bad winter that year.");
  }

  Future<void> speakbads5(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I know that this is a bad time to ask for help.");
  }

  Future<void> speakbads6(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I will not tolerate this bad behaviour.");
  }

  Future<void> speakbads7(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you been a bad boy?");
  }

  Future<void> speakbads8(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're a bad liar!");
  }

  Future<void> speakbads9(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's a bad loser.");
  }

  Future<void> speakbads10(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Those shoes are bad for her feet.");
  }

  Future<void> speakbads11(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've got a bad back.");
  }

  Future<void> speakbads12(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put the meat in the fridge so it doesn't go bad.");
  }

  Future<void> speakbads13(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It put me in a bad mood for the rest of the day.");
  }

  Future<void> speakbads14(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She felt pretty bad about leaving him.");
  }

  Future<void> speakbads15(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm afraid I'm feeling pretty bad.");
  }

  Future<void> speakbads16(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She wanted it real bad.");
  }

  Future<void> speakbads17(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You will always have the bad as well as the good in the world.");
  }

  Future<void> speakbads18(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads1818");
  }

  Future<void> speakbads19(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads1919");
  }

  Future<void> speakbads20(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2020");
  }

  Future<void> speakbads21(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2121");
  }

  Future<void> speakbads22(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2222");
  }

  Future<void> speakbads23(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2323");
  }

  Future<void> speakbads24(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2424");
  }

  Future<void> speakbads25(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2525");
  }

  Future<void> speakbads26(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2626");
  }

  Future<void> speakbads27(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2727");
  }

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
                            EntryTitle(
                                word: "bad"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bæd/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakbad("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bæd/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakbad("en-US"),
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
کوردی: خراپ، بەد، بەو، دژ، نەباش، چەپ، ناحەز، ناپەسند، ناشیرین، کرێت، ناخۆش، ترسناک، کەم، ناتەواو، بەش‌نەکردوو، لاواز، گەنیو، پیس، ڕزیو، موزیڕ، بەوەی، خراپ، بەزەڕ، بەزیان، سەخت، توند، ناشی، نالەبار، نابار، ھەڵەشە، ھاروھاج، بەدفەڕ، شلوق، لاسار، شەیتان، نەگونجاو، بێجێ، پڕگرفت، پرئاستەنگ، ھەڵە، شاشی، چەوت، نادروست، بەئێش، بەژان، نەخۆش، ناساخ، ناسا، بێ‌نرخ، قەڵب، ھیچ‌نەکردوو، ساختە، چروک، بەکارنەھاتوو (کۆین)، خراپ، شپرزە، زۆر، خراپی
"""),
                          const DefinitionKurdish(
                              text: """١. (ھاوەڵناو) ناخۆش و پڕ لە کیشە"""),
                          SentencesRow(
                            englishText:
                                "I have some bad news for you, I'm afraid.",
                            kurdishText:
                                "بەداخەوەم ھەندێک ھەواڵی ناخۆشم پێیە بۆت.",
                            onPressedBritish: () => speakbads1("en-GB"),
                            onPressedAmerican: () => speakbads1(// REPLACE: bad
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "War is always a bad thing.",
                            kurdishText: "جەنگ ھەمیشە شتێکی خراپە.",
                            onPressedBritish: () => speakbads2("en-GB"),
                            onPressedAmerican: () => speakbads2(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) لە ئاستێکی خراپ"""),
                          SentencesRow(
                            englishText: "I thought it was a very bad article.",
                            kurdishText: "وامبیرکردەوە وتارێکی زۆر خراپ بێت.",
                            onPressedBritish: () => speakbads3("en-GB"),
                            onPressedAmerican: () => speakbads3(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) تا ئاستێکی زۆر"""),
                          SentencesRow(
                            englishText: "It was a very bad winter that year.",
                            kurdishText: "ئەو ساڵە زستانێکی زۆر دژوار بوو.",
                            onPressedBritish: () => speakbads4("en-GB"),
                            onPressedAmerican: () => speakbads4(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) نەگونجاو"""),
                          SentencesRow(
                            englishText:
                                "I know that this is a bad time to ask for help.",
                            kurdishText:
                                "ئەزانم کاتێکی نەگونجاوە بۆ داواکردنی یارمەتی.",
                            onPressedBritish: () => speakbads5("en-GB"),
                            onPressedAmerican: () => speakbads5(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) پەسەندنەکراو"""),
                          SentencesRow(
                            englishText:
                                "I will not tolerate this bad behaviour.",
                            kurdishText: "بەرگەی ئەم ڕەفتارە نابەجێیە ناگرم.",
                            onPressedBritish: () => speakbads6("en-GB"),
                            onPressedAmerican: () => speakbads6(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) منداڵێک کە خراپ ڕەفتار دەکات"""),
                          SentencesRow(
                            englishText: "Have you been a bad boy?",
                            kurdishText: "منداڵێکی ھاروھاج بوویت؟",
                            onPressedBritish: () => speakbads7("en-GB"),
                            onPressedAmerican: () => speakbads7(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵناو) کردنی شتێک بەشێوەیەکی خراپ"""),
                          SentencesRow(
                            englishText: "You're a bad liar!",
                            kurdishText: "درۆزنێکی باش نیت (دیارە درۆ دەکەیت).",
                            onPressedBritish: () => speakbads8("en-GB"),
                            onPressedAmerican: () => speakbads8(// REPLACE: bad
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He's a bad loser (= he complains when he loses a game).",
                            kurdishText:
                                "دۆڕاوێکی خراپی (شکست پەسەند ناکەیت و ناڕەزایی دەردەبڕی).",
                            onPressedBritish: () => speakbads9("en-GB"),
                            onPressedAmerican: () => speakbads9(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) زیانبەخش"""),
                          SentencesRow(
                            englishText: "Those shoes are bad for her feet.",
                            kurdishText: "ئەو پێڵاوانە خراپن بۆ قاچی.",
                            onPressedBritish: () => speakbads10("en-GB"),
                            onPressedAmerican: () => speakbads10(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵناو) ئازاربەخش"""),
                          SentencesRow(
                            englishText: "I've got a bad back.",
                            kurdishText: "پشت‌ئێشەیەکی بەئازارم ھەیە.",
                            onPressedBritish: () => speakbads11("en-GB"),
                            onPressedAmerican: () => speakbads11(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵناو) خواردنی خراپ بوو"""),
                          SentencesRow(
                            englishText:
                                "Put the meat in the fridge so it doesn't go bad.",
                            kurdishText:
                                "گۆشت بخەرە ساردکەرەوەکەوە بۆ ئەوەی خراپ نەبێت.",
                            onPressedBritish: () => speakbads12("en-GB"),
                            onPressedAmerican: () => speakbads12(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵناو) بێزار یان تووڕە"""),
                          SentencesRow(
                            englishText:
                                "It put me in a bad mood for the rest of the day.",
                            kurdishText:
                                "بۆ تەواوی ڕۆژەکە خستمیە حەوسەلەیەکی خراپەوە.",
                            onPressedBritish: () => speakbads13("en-GB"),
                            onPressedAmerican: () => speakbads13(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ھاوەڵناو) ھەستکردن بە تاوانباری یان داخ بۆ شتێک"""),
                          SentencesRow(
                            englishText:
                                "She felt pretty bad about leaving him.",
                            kurdishText: "ھەستی بە داخ کرد بۆ جێھێشتنی.",
                            onPressedBritish: () => speakbads14("en-GB"),
                            onPressedAmerican: () => speakbads14(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵناو) ھەستکردن بە نەخۆشی، یان وا دەرکەوتن"""),
                          SentencesRow(
                            englishText: "I'm afraid I'm feeling pretty bad.",
                            kurdishText:
                                "بەداخەوەم کە ھەست بە نەخۆشییەکی زۆر دەکەم.",
                            onPressedBritish: () => speakbads15("en-GB"),
                            onPressedAmerican: () => speakbads15(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) بۆ جەختکردنەوە"""),
                          SentencesRow(
                            englishText: "She wanted it real bad.",
                            kurdishText: "زۆر بە خراپی دەیویست.",
                            onPressedBritish: () => speakbads16("en-GB"),
                            onPressedAmerican: () => speakbads16(// REPLACE: bad
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ناو) خەڵکی خراپ"""),
                          SentencesRow(
                            englishText:
                                "You will always have the bad as well as the good in the world.",
                            kurdishText:
                                "ھەمیشە خەڵکی خراپ و باش لە جیھاندا دەبن.",
                            onPressedBritish: () => speakbads17("en-GB"),
                            onPressedAmerican: () => speakbads17(// REPLACE: bad
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
- Adjective: bad (derived forms: worst, worse)
1. Having undesirable or negative qualities
"a bad report card"; "his sloppy appearance made a bad impression"; "a bad little boy"; "clothes in bad shape"; "a bad cut"; "bad luck"; "the news was very bad"; "the reviews were bad"; "the pay is bad"; "it was a bad light for reading"; "the movie was a bad choice"
 
2. Feeling or expressing regret or sorrow or a sense of loss over something done or undone (= regretful, sorry)
"he felt bad about breaking the vase";
 
3. Serious or severe (= big)
"a bad headache"; "had a bad shock"; "a bad earthquake"; "a bad storm";
 
4. Feeling physical discomfort or pain ('tough' is occasionally used colloquially for 'bad') (= tough)
"my throat feels bad"; "she felt bad all over";
 
5. (of foodstuffs) not in an edible or usable condition (= spoiled, spoilt)
"bad meat";
 
6. Not capable of being collected (= uncollectible)
"a bad debt";
 
7. Below average in quality or performance
"a bad chess player"; "a bad recital"
 
8. (linguistics) nonstandard
"so-called bad grammar"
 
9. Not financially safe or secure (= risky, high-risk, speculative)
"a bad investment";
 
10. Physically unsound or diseased (= unfit, unsound)
"has a bad back"; "a bad heart"; "bad teeth";
 
11. Capable of harming
"bad air"; "smoking is bad for you"
 
12. Characterized by wickedness or immorality
"led a very bad life"
 
13. Reproduced fraudulently (= forged)
"like a bad penny...";
 
14. Not working properly (= defective)
"a bad telephone connection";

- Noun: bad (derived forms: bads)
1. That which is below standard or expectations as of ethics or decency (= badness)
"take the bad with the good";

- Adverb: bad
1. With great intensity ('bad' is a nonstandard variant for 'badly') (= badly)
"it hurts bad"; "we need water bad";
 
2. Very much; strongly (= badly)
"he wants a bicycle so bad he can taste it";
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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 266;

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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 184;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 8;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 402;

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

  final String _videoId = '1roy4o4tqQM';
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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 826;

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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 473;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1432;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 692;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'BxWw8AO4ZmI';
  final double _startSeconds = 239;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'k3aAl92_VDE';
  final double _startSeconds = 67;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'JkE8TOZmHC4';
  final double _startSeconds = 139;

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

// end

// end bad // TODO Implement this library.
