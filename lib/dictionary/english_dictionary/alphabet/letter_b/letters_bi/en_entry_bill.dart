import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bill" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace bill - replace EnglishEntrybill

// replace speakBill - /bɪl/

enum TtsState { playing }

class EnglishEntrybill extends StatelessWidget {
// blank divider
  EnglishEntrybill({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbill(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bill");
  }

  Future<void> speakbills1(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She always pays her bills on time.");
  }

  Future<void> speakbills2(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bills are piling up.");
  }

  Future<void> speakbills3(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bill came to £120.");
  }

  Future<void> speakbills4(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The waiter brought the bill to their table.");
  }

  Future<void> speakbills5(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I found a ten-dollar bill on the floor.");
  }

  Future<void> speakbills6(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Congress passed the energy bill last month.");
  }

  Future<void> speakbills7(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There were lots of big names on the bill.");
  }

  Future<void> speakbills8(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They prohibitted posting any bills to the walls of the building.");
  }

  Future<void> speakbills9(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The hawk used its sharp bill to tear at its prey.");
  }

  Future<void> speakbills10(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please bill me for the books.");
  }

  Future<void> speakbills11(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You will be billed monthly for the service.");
  }

  Future<void> speakbills12(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was billed as the new Tom Cruise.");
  }

  Future<void> speakbills13(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was billed to speak on ‘Feminism and third world countries’.");
  }

  Future<void> speakbills14(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills1414");
  }

  Future<void> speakbills15(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills1515");
  }

  Future<void> speakbills16(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills1616");
  }

  Future<void> speakbills17(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills1717");
  }

  Future<void> speakbills18(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills1818");
  }

  Future<void> speakbills19(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills1919");
  }

  Future<void> speakbills20(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2020");
  }

  Future<void> speakbills21(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2121");
  }

  Future<void> speakbills22(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2222");
  }

  Future<void> speakbills23(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2323");
  }

  Future<void> speakbills24(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2424");
  }

  Future<void> speakbills25(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2525");
  }

  Future<void> speakbills26(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2626");
  }

  Future<void> speakbills27(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2727");
  }

  Future<void> speakbills28(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2828");
  }

  Future<void> speakbills29(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills2929");
  }

  Future<void> speakbills30(String languageCode) async {
    // DOPSUM: CHANGE speakBill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBills3030");
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
                            EntryTitle(word: "bill"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɪl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbill("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɪl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbill("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: لیست، ڕیزک، فاکتۆر، لیستە، پوستێر، پلاکارد، بەرنامە، ئاگاداری، سەرنجە، تێبینی، دانەزانین، ھایداری، جاڕ، بڵاوک، داخویانی، بەرنووس، پێش‌نووس، پارەی کاغزی، بیل (بەرات، سفتە یان حەواڵە)، دەستوورنامە، بڕوانامە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) دۆکیومێنت کە پیشانی دەدات چەندە قەرزاری بۆ کەلوپەل و خزمەتگوزاری"""),
                          SentencesRow(
                            englishText: "She always pays her bills on time.",
                            kurdishText:
                                "ھەموو کات پارەی پسوولەکانی لە کاتی خۆیدا دەداتەوە.",
                            onPressedBritish: () => speakbills1("en-GB"),
                            onPressedAmerican: () => speakbills1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The bills are piling up (= there are more and more that have still not been paid).",
                            kurdishText: "پسوولەکان خەریکە کەڵەکە دەبن.",
                            onPressedBritish: () => speakbills2("en-GB"),
                            onPressedAmerican: () => speakbills2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) کاغەزێک لە چێشتخانە کە پیشانی دەدات دەبێت چەند پارە بدەیت بۆ خواردن و خواردنەوە """),
                          SentencesRow(
                            englishText: "The bill came to £120.",
                            kurdishText: "پسووڵەکە گەشت بە ١٢٠ پاوەند.",
                            onPressedBritish: () => speakbills3("en-GB"),
                            onPressedAmerican: () => speakbills3("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The waiter brought the bill to their table.",
                            kurdishText:
                                "گارسۆنەکە پسووڵەکەی ھێنا بۆ سەر مێزەکەیان.",
                            onPressedBritish: () => speakbills4("en-GB"),
                            onPressedAmerican: () => speakbills4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) پارەی کاغەز """),
                          SentencesRow(
                            englishText:
                                "I found a ten-dollar bill on the floor.",
                            kurdishText:
                                "پارەیەکی ١٠ دۆلاریم لەسەر زەوییەکە دۆزییەوە.",
                            onPressedBritish: () => speakbills5("en-GB"),
                            onPressedAmerican: () => speakbills5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پڕۆژە یاسایەک کە پێشکەشی پەرلەمان دەکرێت بۆ ئەوەی گەنگەشە بکرێت کە ئاخۆ بکرێت بە یاسا"""),
                          SentencesRow(
                            englishText:
                                "Congress passed the energy bill last month.",
                            kurdishText:
                                "کۆنگرێس پڕۆژە یاسای وزەی مانگی ڕابردوو پەسەندکرد.",
                            onPressedBritish: () => speakbills6("en-GB"),
                            onPressedAmerican: () => speakbills6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) نمایشێک لە شانۆ"""),
                          SentencesRow(
                            englishText:
                                "There were lots of big names (= famous people) on the bill.",
                            kurdishText:
                                "ژمارەیەک کەسی بەناوبانگ نمایشیان ھەبوو.",
                            onPressedBritish: () => speakbills7("en-GB"),
                            onPressedAmerican: () => speakbills7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) پۆستەرێکی ڕیکلام"""),
                          SentencesRow(
                            englishText:
                                "They prohibitted sticking any bills to the walls of the building.",
                            kurdishText:
                                "لکاندنی ھەموو پۆستەرێکیان قەدەغەکردبوو بە لەسەر دیوارەکانی بیناکە.",
                            onPressedBritish: () => speakbills8("en-GB"),
                            onPressedAmerican: () => speakbills8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) دەنووکی باڵندە"""),
                          SentencesRow(
                            englishText:
                                "The hawk used its sharp bill to tear at its prey.",
                            kurdishText:
                                "ھەڵۆکە دەنووکە تیژەکەی بەکارھێنا بۆ لەتکردنی نێچیرەکەی.",
                            onPressedBritish: () => speakbills9("en-GB"),
                            onPressedAmerican: () => speakbills9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) ناردنی پسوولەیەک بۆ کەسێک"""),
                          SentencesRow(
                            englishText: "Please bill me for the books.",
                            kurdishText: "تکایە پسوولەی کتێبەکانم بۆ بنێرە.",
                            onPressedBritish: () => speakbills10("en-GB"),
                            onPressedAmerican: () => speakbills10("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "You will be billed monthly for the service.",
                            kurdishText:
                                "بۆ خزمەتگوزارییەکە مانگانە پارەت لێ وەردەگیرێت.",
                            onPressedBritish: () => speakbills11("en-GB"),
                            onPressedAmerican: () => speakbills11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) وێناکردن یان بانگەشە کردن بۆ کەسێک بە شێوەیەک"""),
                          SentencesRow(
                            englishText: "He was billed as the new Tom Cruise.",
                            kurdishText: "وەک تۆم کرووزی نوێ ناوزەندکرا.",
                            onPressedBritish: () => speakbills12("en-GB"),
                            onPressedAmerican: () => speakbills12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) بانگەشە کردنی ئەوەی کەسێک شتێک دەکات"""),
                          SentencesRow(
                            englishText:
                                "She was billed to speak on ‘Feminism and third world countries’.",
                            kurdishText:
                                "ڕیکلامی بۆ کرا کە قسەدەکات لەسەر 'فێمینیزم و وڵاتانی جیھانی سێیەم'.",
                            onPressedBritish: () => speakbills13("en-GB"),
                            onPressedAmerican: () => speakbills13("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        YoutubeEmbeddedthirteen(),
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
- Noun: bill (derived forms: bills)
1. An itemized statement of money owed for goods shipped or services rendered (= account, invoice)
"he paid his bill and left";
 
2. [N. Amer] A piece of paper money (especially one issued by a central bank) (= note, government note [US], bank bill, banker's bill [N. Amer], bank note, banknote, Federal Reserve note [US], greenback [US, informal])
"he peeled off five one-thousand-zloty bills";

3. (law) a statute in draft before it becomes law (= measure)
"they held a public hearing on the bill";

4. [Brit] The bill in a restaurant (= check [N. Amer], chit, tab [N. Amer, informal])
 
5. The entertainment offered at a public presentation
 
6. An advertisement (usually printed on a page or in a leaflet) intended for wide distribution (= circular, handbill, broadside, broadsheet, flier, flyer, throwaway)
"he mailed the bill to all subscribers";

7. A sign posted in a public place as an advertisement (= poster, posting, placard, notice, card)
"a bill advertised the coming attractions";

8. A list of particulars (as a playbill or bill of fare)
 
9. A cutting tool with a sharp edge (= billhook)
"he used a bill to prune branches off of the tree";
 
10. A brim that projects to the front to shade the eyes (= peak, eyeshade, visor, vizor)
"he pulled down the bill of his cap and trudged ahead";
 
11. Horny projecting mouth of a bird (= beak, neb, nib, pecker)

- Verb: bill (derived forms: bills, billing, billed)
1. Demand payment (= charge)
"We were billed for 4 nights in the hotel, although we stayed only 3 nights";
 
2. Advertise especially by posters or placards
"He was billed as the greatest tenor since Caruso"
 
3. Publicize or announce by placards (= placard)

- Noun: Bill
Usage: Brit, informal
1. The force of policemen and officers (= police, police force, constabulary, law, polis [UK, dialect, informal], fuzz [informal], the fuzz [informal], boys in blue [informal], Old Bill [Brit, informal])
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 464;

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

  final String _videoId = 'AtI7g6ax7rI';
  final double _startSeconds = 550;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 517;

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

  final String _videoId = 'YRhqMWUH2Ig';
  final double _startSeconds = 1080;

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

  final String _videoId = 'ooDW1RmLYQ4';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '-cPdImejxEQ';
  final double _startSeconds = 161;

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

  final String _videoId = 'Xy7rEIj1Slg';
  final double _startSeconds = 57;

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

  final String _videoId = 'nYRefC7E9gU';
  final double _startSeconds = 295;

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

  final String _videoId = 'xym3ucTo6Vc';
  final double _startSeconds = 656;

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

  final String _videoId = 'Wehsz38P74g';
  final double _startSeconds = 586;

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

  final String _videoId = 'Xdaj7MY1N9M';
  final double _startSeconds = 207;

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

  final String _videoId = 'gzF7aHxk4Y4';
  final double _startSeconds = 4523;

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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'Q0uXGQu55GM';
  final double _startSeconds = 40;

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

// end bill// TODO Implement this library.
