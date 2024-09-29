import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// Define the word "book" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace book -  /bʊk/

enum TtsState { playing }

class EnglishEntrybook extends StatelessWidget {
  EnglishEntrybook({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbook(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("book");
  }

  Future<void> speakbooks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His desk was covered with piles of books.");
  }

  Future<void> speakbooks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her name was inscribed in the book.");
  }

  Future<void> speakbooks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you read any good books recently?");
  }

  Future<void> speakbooks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has a new book out.");
  }

  Future<void> speakbooks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you read the latest book by J K Rowling?");
  }

  Future<void> speakbooks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I took a book with me to read on the plane.");
  }

  Future<void> speakbooks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The book is dedicated to his mother.");
  }

  Future<void> speakbooks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There's nothing like curling up with a mug of tea and a good book.");
  }

  Future<void> speakbooks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The book has received some terrible reviews.");
  }

  Future<void> speakbooks10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He writes all his expenses in a little book he carries with him.");
  }

  Future<void> speakbooks11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She flipped through her recipe book for inspiration.");
  }

  Future<void> speakbooks12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You need to go over the books again; there’s a mistake somewhere.");
  }

  Future<void> speakbooks13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The first book of the Bible is Genesis.");
  }

  Future<void> speakbooks14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She booked a flight to Chicago.");
  }

  Future<void> speakbooks15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He booked tickets for his trip to New York.");
  }

  Future<void> speakbooks16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've booked you on the 10 o'clock flight.");
  }

  Future<void> speakbooks17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you booked the band for the party yet?");
  }

  Future<void> speakbooks18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Several well-known authors have been booked to speak at the event.");
  }

  Future<void> speakbooks19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was booked for possession of cocaine.");
  }

  Future<void> speakbooks20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2020");
  }

  Future<void> speakbooks21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2121");
  }

  Future<void> speakbooks22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2222");
  }

  Future<void> speakbooks23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2323");
  }

  Future<void> speakbooks24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2424");
  }

  Future<void> speakbooks25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2525");
  }

  Future<void> speakbooks26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2626");
  }

  Future<void> speakbooks27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2727");
  }

  Future<void> speakbooks28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2828");
  }

  Future<void> speakbooks29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks2929");
  }

  Future<void> speakbooks30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbooks3030");
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
                            EntryTitle(word: "book"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK:  /bʊk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbook("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS:  /bʊk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbook("en-US"),
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
کوردی: کتێب، پەڕتووک، نامە، پەڕاو، دەفتەر، تێنووس، دەفتەرچە، بەرگ، بەش، پشک، ئاڵبۆم، ژمارەنامەی تەلەفون، کتێبی پیرۆز، سیفر، کتێب، سێفر (= بەشێ لە کتێبی پیرۆز)، حساب، بەرپرسایەتی، حسابەکان، ھەژماران، ھەژمارەکان
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) کتێب؛ ژمارەیەک پەڕە کە لە ناو بەرگێکدا کۆکراونەتەوە و بۆ ئەوەی ھەڵیان بدەیتەوە و بیانخوێنیتەوە"""),
                          SentencesRow(
                            englishText:
                                "His desk was covered with piles of books.",
                            kurdishText: "مێزەکەی داپۆشرابوو بە چینێک لە کتێب.",
                            onPressedBritish: () => speakbooks1("en-GB"),
                            onPressedAmerican: () => speakbooks1("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I took a book with me to read on the plane.",
                                    kurdishText:
                                        "کتێبێکم لەگەڵ خۆم برد بۆ خوێندنەوە لەسەر فڕۆکەکە.",
                                    onPressedBritish: () =>
                                        speakbooks6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbooks6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Her name was inscribed in the book.",
                                    kurdishText:
                                        "ناوی لەسەر کتێبەکە ھەڵکۆڵدرابوو.",
                                    onPressedBritish: () =>
                                        speakbooks2("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbooks2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کتێێک کە بڵاوکراوەتەوە بە کاغەز یان بە ئەلیکترۆنی"),
                          SentencesRow(
                            englishText:
                                "Have you read any good books recently?",
                            kurdishText:
                                "بەم نزیکانە ھیچ کتێبێکی خۆشت خوێندووتەوە؟",
                            onPressedBritish: () => speakbooks3("en-GB"),
                            onPressedAmerican: () => speakbooks3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He has a new book out (= published).",
                            kurdishText: "کتێبێکی تازەی بڵاوکردووەتەوە.",
                            onPressedBritish: () => speakbooks4("en-GB"),
                            onPressedAmerican: () => speakbooks4("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Have you read the latest book by J. K. Rowling?",
                                    kurdishText:
                                        "تازەترین کتێبی جەی کەی ڕۆولینگت خوێندووتەوە؟",
                                    onPressedBritish: () =>
                                        speakbooks5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbooks5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The book is dedicated to his mother.",
                                    kurdishText:
                                        "کتێبەکە پێشکەشکراوە بە دایکی.",
                                    onPressedBritish: () =>
                                        speakbooks7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbooks7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "There's nothing like curling up with a mug of tea and a good book.",
                                    kurdishText:
                                        "ھیچ وەک ئەوە نییە پاڵبدەیتەوە لەگەڵ گڵاسێک چا و کتێبێکی باش.",
                                    onPressedBritish: () =>
                                        speakbooks8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbooks8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The book has received some terrible reviews.",
                                    kurdishText:
                                        "کتێبەکە ھەندێک پاشخوردی خراپی وەرگرتووە.",
                                    onPressedBritish: () =>
                                        speakbooks9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbooks9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ژمارەیەک پەڕە کە پێکەوە لە بەرگێک دان و تێیاندا دەنووسرێت"),
                          SentencesRow(
                            englishText:
                                "He writes all his expenses in a little book he carries with him.",
                            kurdishText:
                                "تەواوی خەرجییەکانی لە دەفتەرێکی بچووکدا دەنووسێت کە لەگەڵ خۆی بۆ ھەموو شوێنێک ھەڵیدەگرێت.",
                            onPressedBritish: () => speakbooks10("en-GB"),
                            onPressedAmerican: () => speakbooks10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمەڵە شتێک کە وەک کتێبێک پێکەوە لکێنراون"),
                          SentencesRow(
                            englishText:
                                "She flipped through her recipe book for inspiration.",
                            kurdishText:
                                "کتێبی ڕەچەتەکەی ھەڵدایەوە بۆ ئیلھام وەرگرتن.",
                            onPressedBritish: () => speakbooks11("en-GB"),
                            onPressedAmerican: () => speakbooks11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) تۆماری دارایی کۆمپانیایەک"),
                          SentencesRow(
                            englishText:
                                "You need to go over the books again; there’s a mistake somewhere.",
                            kurdishText:
                                "دەبێت دووبارە پێداچوونەوە بە تۆمارەکان بکەیتەوە، ھەڵەیەک لە شوێنێک ھەیە.",
                            onPressedBritish: () => speakbooks12("en-GB"),
                            onPressedAmerican: () => speakbooks12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) بەشێکی کتێبێکی گەورە"),
                          SentencesRow(
                            englishText:
                                "The first book of the Bible is Genesis.",
                            kurdishText: "یەکەم بەشی ئینجیل جێنەسیسە.",
                            onPressedBritish: () => speakbooks13("en-GB"),
                            onPressedAmerican: () => speakbooks13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ڕێکخستنی بەروارێک بۆ ھەبوون یان بەکارھێنانی شتێک لە داھاتوودا"),
                          SentencesRow(
                            englishText: "She booked a flight to Chicago.",
                            kurdishText: "گەشتێکی بۆ شیکاگۆ حجز کرد.",
                            onPressedBritish: () => speakbooks14("en-GB"),
                            onPressedAmerican: () => speakbooks14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He booked tickets for his trip to New York.",
                            kurdishText:
                                "بلیتی ئامادەکرد بۆ گەشتەکەی بۆ نیویۆرک.",
                            onPressedBritish: () => speakbooks15("en-GB"),
                            onPressedAmerican: () => speakbooks15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) گرتنی جێگەیەک بۆ کەسێک لەسەر فڕۆکەیەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "I've booked you on the 10 o'clock flight.",
                            kurdishText:
                                "جێگەم بۆ گرتووی لەسەر گەشتی کاتژمێر ١٠.",
                            onPressedBritish: () => speakbooks16("en-GB"),
                            onPressedAmerican: () => speakbooks16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) گرتنی کاتێک بۆ گۆرانیبێژێک، ھتد بۆ نمایشکردن لە کاتێکی دیاریکراودا"),
                          SentencesRow(
                            englishText:
                                "Have you booked the band for the party yet?",
                            kurdishText:
                                "باندەکەت گرتووە بۆ ئاھەنگەکە تا ئێستا؟",
                            onPressedBritish: () => speakbooks17("en-GB"),
                            onPressedAmerican: () => speakbooks17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Several well-known authors have been booked to speak at the event.",
                            kurdishText:
                                "ژمارەیەک نووسەری ناسراو بانگھێشتکراون بۆ قسەکردن لە بۆنەکە.",
                            onPressedBritish: () => speakbooks18("en-GB"),
                            onPressedAmerican: () => speakbooks18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) نووسینی ناو و ناونیشانی کەسێک بەھۆی ئەوەی تاوانێکی کردووە"),
                          SentencesRow(
                            englishText:
                                "He was booked for possession of cocaine.",
                            kurdishText:
                                "خرایە لیستی ئەو کەسانەی کۆکاینیان ھەیە.",
                            onPressedBritish: () => speakbooks19("en-GB"),
                            onPressedAmerican: () => speakbooks19("en-US"),
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
                        YoutubeEmbeddedthirteen(),
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
                        YoutubeEmbeddeddsixteen(),
                        YoutubeEmbeddeddseventeen(),
                        YoutubeEmbeddeddeighteen(),
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
- Noun: book (derived forms: books)
1. A written work or composition that has been published (printed on pages bound together)
"I am reading a good book on economics"
 
2. A number of pages bound together (regarded as a physical object) (= volume)
"he used a large book as a doorstop";

3. A compilation of the known facts regarding something or someone (= record, record book)
"his name is in all the record books"; "Al Smith used to say, 'Let's look at the record book'";
 
4. A written version of a play or other dramatic composition; used in preparing for a performance (= script, playscript)
 
5. A record in which commercial accounts are recorded (= ledger, leger, account book, book of account)
"they got a subpoena to examine our books";

6. (card game) a collection of playing cards satisfying the rules of a card game
 
7. A collection of rules or prescribed standards on the basis of which decisions are made (= rule book)
"they run things by the book around here";

8. A major division of a long written composition
"the book of Isaiah"
 
9. A number of sheets (ticket or stamps etc.) bound together on one edge
"he bought a book of stamps"
 
10. A record of bets placed and winnings paid out

- Verb: book (derived forms: booked, booking, books)
1. Engage for a performance
"Her agent had booked her for several concerts in Tokyo"
 
2. Arrange for and reserve (something for someone else) in advance (= reserve, hold)
"The agent booked tickets to the show for the whole family";

3. Record a charge in a police register
"The policeman booked her when she tried to solicit a man"
 
4. Register in a hotel booker
 
5. (sports) issue a caution for foul play

- Noun: Book
1. The Christian holy book (= Bible, Christian Bible, Good Book, Holy Scripture, Holy Writ, Scripture, Word of God, Word)
"he went to carry the Book to the heathen";
 
2. The sacred writings of Islam revealed by God to the prophet Muhammad during his life at Mecca and Medina (= Koran, Quran, al-Qur'an)
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
  final double _startSeconds = 750;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 358;

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

  final String _videoId = 'QEbYo07jLoY';
  final double _startSeconds = 4;

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

  final String _videoId = 'dhgEpr87Yac';
  final double _startSeconds = 182;

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

  final String _videoId = '0RA_B5p2JYg';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'S_V4CdP6aLA';
  final double _startSeconds = 33;

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

  final String _videoId = 'Q1xKcRrn_i4';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '66aG5P0kQpU';
  final double _startSeconds = 64;

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

  final String _videoId = 'qEV9qoup2mQ';
  final double _startSeconds = 111;

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

  final String _videoId = 'Zbow21FKJS4';
  final double _startSeconds = 246;

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

  final String _videoId = 'e9U7vbp-CD4';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'WJXSFu64G4c';
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'W8FyilDVOoU';
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = '3SuT2prhW2Q';
  final double _startSeconds = 101;

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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'iOjen8i7KUI';
  final double _startSeconds = 405;

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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  const YoutubeEmbeddeddsixteen({super.key});

  final String _videoId = 'OZlNZyasroo';
  final double _startSeconds = 3864;

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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  const YoutubeEmbeddeddseventeen({super.key});

  final String _videoId = 'MqQuDLFYpiY';
  final double _startSeconds = 1196;

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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  const YoutubeEmbeddeddeighteen({super.key});

  final String _videoId = 'wvv3Y2NkR3w';
  final double _startSeconds = 298;

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

// end book
