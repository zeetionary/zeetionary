import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommand extends StatelessWidget {
  // blank divider
  EnglishEntrycommand({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommand(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("command");
  }

  Future<void> speakcommands1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Begin when I give the command.");
  }

  Future<void> speakcommands2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You must obey the captain's commands.");
  }

  Future<void> speakcommands3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He issued the command to retreat.");
  }

  Future<void> speakcommands4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Police said he ignored their commands to stop.");
  }

  Future<void> speakcommands5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has been teaching her dog simple commands.");
  }

  Future<void> speakcommands6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What is the startup command for the program?");
  }

  Future<void> speakcommands7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has 1 200 men under his command.");
  }

  Future<void> speakcommands8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The police arrived and took command of the situation.");
  }

  Future<void> speakcommands9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("In 1939 he assumed command of all French naval forces.");
  }

  Future<void> speakcommands10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who is in command here?");
  }

  Future<void> speakcommands11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("For the first time in years, she felt in command of her life.");
  }

  Future<void> speakcommands12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has lost command of her senses.");
  }

  Future<void> speakcommands13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has an excellent command of French.");
  }

  Future<void> speakcommands14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Applicants will be expected to have (a) good command of English.");
  }

  Future<void> speakcommands15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He commanded his men to retreat.");
  }

  Future<void> speakcommands16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She commanded the release of the prisoners.");
  }

  Future<void> speakcommands17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The commission intervened and commanded that work on the building cease.");
  }

  Future<void> speakcommands18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In March 1942 he was appointed to command US naval forces in Europe.");
  }

  Future<void> speakcommands19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was the officer commanding the troops in the Western region.");
  }

  Future<void> speakcommands20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was able to command the respect of the class.");
  }

  Future<void> speakcommands21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The headlines commanded her attention.");
  }

  Future<void> speakcommands22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The hotel commands a fine view of the valley.");
  }

  Future<void> speakcommands23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The party was no longer able to command a majority in Parliament.");
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
                            EntryTitle(word: "command"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɑːnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommand("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmænd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommand("en-US"),
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
کوردی: دەستوور، فەرمان، فەروار،	(کۆمپیوتەر) دەستوور، فەرمان،	فەرمانداری، فەرماندەری، سەرکردایەتی،	کەرت، یەکینە، یەکە،	کاربەدەستان، فەرماندەران، سەرکردەکان،	دەسەڵات، سەردەستی، باڵادەستی، زاڵی، سواری، کۆنتڕۆڵ، چاودێری، ھێزپێ‌شکان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) فەرمانک کە بە کەسێک یان ئاژەڵێک دەکرێت"),
                          SentencesRow(
                            englishText: "Begin when I give the command.",
                            kurdishText:
                                "کە فەرمان دەکەم دەستپێ بکە.", // command",
                            onPressedBritish: () => speakcommands1("en-GB"),
                            onPressedAmerican: () => speakcommands1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You must obey the captain's commands.",
                            kurdishText: "دەبێت پابەندی فەرمانی کاپتن بیت.",
                            onPressedBritish: () => speakcommands2("en-GB"),
                            onPressedAmerican: () => speakcommands2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He issued the command to retreat.",
                            kurdishText: "فەرمانی کشانەوەی دا.",
                            onPressedBritish: () => speakcommands3("en-GB"),
                            onPressedAmerican: () => speakcommands3("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Police said he ignored their commands to stop.",
                                    kurdishText:
                                        "پۆلیس گوتی فەرمانەکانیانی بۆ وەستان پشتگوێ خست.",
                                    onPressedBritish: () =>
                                        speakcommands4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommands4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She has been teaching her dog simple commands.",
                                    kurdishText:
                                        "جەریکە فەرمانی سادە فێری سەگەکەی دەکات.",
                                    onPressedBritish: () =>
                                        speakcommands5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommands5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕێنماییەک کە بە کۆمپیوتەرێک دەدرێت"),
                          SentencesRow(
                            englishText:
                                "What is the startup command for the program?",
                            kurdishText:
                                "ڕێنمایی دەستپێکردن بۆ پڕۆگرامەکە چییە؟",
                            onPressedBritish: () => speakcommands6("en-GB"),
                            onPressedAmerican: () => speakcommands6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کۆنترۆڵ، دەسەڵات، یان فەرمانداری بەسەر دۆخێکدا یان گرووپێک لە خەڵکی"),
                          SentencesRow(
                            englishText: "He has 1 200 men under his command.",
                            englishNote: "also: He has command of 1  200 men.",
                            kurdishText: "١٢٠٠ کەسی لە ژێر فەرماندایە.",
                            onPressedBritish: () => speakcommands7("en-GB"),
                            onPressedAmerican: () => speakcommands7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The police arrived and took command of the situation.",
                            kurdishText:
                                "پۆلیس ھات و کۆنترۆڵی دۆخەکەی گرتە دەست.",
                            onPressedBritish: () => speakcommands8("en-GB"),
                            onPressedAmerican: () => speakcommands8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "In 1939 he assumed command of all French naval forces.",
                                    kurdishText:
                                        "لە ساڵی ١٩٣٩ سەرکردایەتی ھەموو ھێزی دەریایی فەرەنسای گرتە دەست.",
                                    onPressedBritish: () =>
                                        speakcommands9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommands9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Who is in command here?",
                                    kurdishText: "کێ فەرماندارە لێرە؟",
                                    onPressedBritish: () =>
                                        speakcommands10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommands10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "For the first time in years, she felt in command of her life.",
                                    kurdishText:
                                        "بۆ یەکەم جار لە چەندین ساڵدا، ھەستی کرد خاوەنی ژیانی خۆیەتی.",
                                    onPressedBritish: () =>
                                        speakcommands11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommands11("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She has lost command of her senses.",
                                    kurdishText: "دەسەڵاتی داوە بە ھەستەکانی.",
                                    onPressedBritish: () =>
                                        speakcommands12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommands12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) زانیاری لە شتێکدا"),
                          SentencesRow(
                            englishText:
                                "She has an excellent command of French.",
                            kurdishText: "زانیاری باشی زمانی فەرەنسی ھەیە.",
                            onPressedBritish: () => speakcommands13("en-GB"),
                            onPressedAmerican: () => speakcommands13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Applicants will be expected to have (a) good command of English.",
                            kurdishText:
                                "داخوازیکاران چاوەڕێی ئەوەیان لێ دەکرێت زانیاری باشی ئینگلیزییان ھەبێت.",
                            onPressedBritish: () => speakcommands14("en-GB"),
                            onPressedAmerican: () => speakcommands14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) فەرمانکردن"),
                          SentencesRow(
                            englishText: "He commanded his men to retreat.",
                            kurdishText: "فەرمانی بە پیاوەکانی کرد بکشێنەوە.",
                            onPressedBritish: () => speakcommands15("en-GB"),
                            onPressedAmerican: () => speakcommands15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She commanded the release of the prisoners.",
                            kurdishText:
                                "فەرمانی بە ئازادکردنی زیندانییەکان کرد.",
                            onPressedBritish: () => speakcommands16("en-GB"),
                            onPressedAmerican: () => speakcommands16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The commission intervened and commanded that work on the building cease.",
                            kurdishText:
                                "کۆمسیۆنەکە دەستوەردانی کرد و بڕیاری دا کارکردن لە بیناکەدا بوەستێنرێت.",
                            onPressedBritish: () => speakcommands17("en-GB"),
                            onPressedAmerican: () => speakcommands17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) سەرکردایەتی لە سوپا، ھێزی دەریایی، ھتد"),
                          SentencesRow(
                            englishText:
                                "In March 1942 he was appointed to command US naval forces in Europe.",
                            kurdishText:
                                "لە ساڵی ١٩٤٢ دیاریکرا بۆ سەرکردایەتی ھێزە دەریاییەکانی ئەمریکا لە ئەورووپا.",
                            onPressedBritish: () => speakcommands18("en-GB"),
                            onPressedAmerican: () => speakcommands18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was the officer commanding the troops in the Western region.",
                            kurdishText:
                                "ئەو ئەفسەرە بوو کە سەرکردایەتی ھێزەکانی لە ھەرێمی ڕۆژئاوا دەکرد.",
                            onPressedBritish: () => speakcommands19("en-GB"),
                            onPressedAmerican: () => speakcommands19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) وەرگرتنی شتێک بەھۆی ئەوەی شایەنیت"),
                          SentencesRow(
                            englishText:
                                "She was able to command the respect of the class.",
                            kurdishText: "توانی ڕێزی پۆلەکە بەدەست بھێنێت.",
                            onPressedBritish: () => speakcommands20("en-GB"),
                            onPressedAmerican: () => speakcommands20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The headlines commanded her attention.",
                            kurdishText: "سەردێڕەکان سەرنجیان ڕاکێشا.",
                            onPressedBritish: () => speakcommands21("en-GB"),
                            onPressedAmerican: () => speakcommands21("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) بوون لە شوێن و پێگەیەکدا کە لێیەوە شتێک ببینیت یان کۆنترۆڵی بکەیت"),
                          SentencesRow(
                            englishText:
                                "The hotel commands a fine view of the valley.",
                            kurdishText:
                                "ھوتێلەکە بەسەر دیمەنێکی جوانی دۆڵەکەدا دەڕوانێت.",
                            onPressedBritish: () => speakcommands22("en-GB"),
                            onPressedAmerican: () => speakcommands22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ھەبوونی کۆنترۆڵی شتێک؛ ھەبوونی شتێک لە بەردەستدا بۆ بەکارھێنان"),
                          SentencesRow(
                            englishText:
                                "The party was no longer able to command a majority in Parliament.",
                            kurdishText:
                                "پارتەکە چیتر نەیدەتوانی زۆرینەی لە پەرلەماندا ھەبێت.",
                            onPressedBritish: () => speakcommands23("en-GB"),
                            onPressedAmerican: () => speakcommands23("en-US"),
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
- Noun: command (derived forms: commands)
1. An authoritative direction or instruction to do something (= bid, bidding, dictation)
 
2. (military) a military unit or region under the control of a single officer
 
3. The power or authority to command
"an admiral in command"
 
4. Availability for use
"the materials at the command of the potters grew"
 
5. A position of highest authority
"the corporation has just undergone a change in command"
 
6. Great skilfulness and knowledge of some subject or activity (= control, mastery)
"a good command of French";
 
7. (computing) a line of code written as part of a computer program (= instruction, statement, program line)

- Verb: command (derived forms: commanded, commanding, commands)
1. Be in command of
"The general commanded a huge army"
 
2. Make someone do something (= require)
 
3. Demand as one's due
"This speaker commands a high fee"; "The author commands a fair hearing from his readers"
 
4. Look down on (= dominate, overlook, overtop)
"The villa commands the town";
 
5. Exercise authoritative control or power over (= control)
"Command the military forces";
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

  final String _videoId = '7yW6Ybj6tOk';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Ml1cfQnxSd0';
  final double _startSeconds = 5;

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

  final String _videoId = 'BnJ013X02b8';
  final double _startSeconds = 50;

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

  final String _videoId = 'XbXawCXKBhY';
  final double _startSeconds = 157;

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

  final String _videoId = 'xg_1UjZqMdQ';
  final double _startSeconds = 618;

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

  final String _videoId = 'IvgeLaM1wl4';
  final double _startSeconds = 6;

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

  final String _videoId = 'VrKW58MS12g';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 787;

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

  final String _videoId = 'FaNatwnARUQ';
  final double _startSeconds = 30;

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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 699;

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

  final String _videoId = 'FSHITL5oedk';
  final double _startSeconds = 809;

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

  final String _videoId = '3RkhZgRNC1k';
  final double _startSeconds = 32;

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

  final String _videoId = 'aTDG16Mh2_w';
  final double _startSeconds = 107;

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