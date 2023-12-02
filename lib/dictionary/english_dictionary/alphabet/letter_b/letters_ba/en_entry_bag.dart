import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "bag" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bag - replace EnglishEntrybag

// replace speakBag - /bæɡ/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntrybag extends StatelessWidget {
// blank divider
  EnglishEntrybag({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBag(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bag"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags1(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was carrying a heavy bag of groceries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags2(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She tipped out the contents of her bag."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags3(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I packed my bags and left for the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags4(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She ate a bag of chips."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags5(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was considering cosmetic surgery to deal with the bags under her eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags6(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Silly old bag!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags7(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We got a good bag today."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags8(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Get in! There's bags of room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags9(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fruit is washed, sorted and bagged at the farm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags10(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We bagged ten fish in two hours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags11(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Harkin bagged two goals in last night's win."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags12(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sally had managed to bag the two best seats."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags13(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Stop bagging her (out) - she's doing her best."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags14(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They decided to bag the trip because they were short of cash."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags15(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBags1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags16(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBags1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBags17(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBags1717"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                                word: "bag"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bæɡ/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakBag(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bæɡ"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakBag(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: const [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                ],
                indicator: BoxDecoration(
                  color: Pallete.tabsbackgroundColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(4.0),
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
                          const DefinitionKurdish(text: """
کوردی: جانتا، ھەمانە، توورەکە، ھەگبە، کیس، کیسە، جزدان، ساک، کیف، جەواڵ، ھۆڕ؟، خورج، تیوەرە، تێڕ، دەلق، پاکەت، بڕی جێ‌بوونەوە، ڕاو، نێچیرەوانی, بڕ یان ژمارەیەکی زۆر، ماس، با (ژێرچاو، بێ‌خەوی یا لەبەر پیری)

١. (ناو) شتێک کە لە پارچە، پلاستیک، یان کاغەز درووستکراوە و بەکاردێت بۆ ھەڵگرتنی شت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was carrying a heavy bag of groceries."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "توورەکەیەکی قورس لە میوەی ھەڵگرتبوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags1(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She tipped out the contents of her bag (= handbag)."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "شتومەکەکانی ناو جانتاکەی بەتاڵکرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags2(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) جانتایەکی گەورە کە بەکاردێت بۆ تێخستنی جلوبەرگ لەکاتی گەشتکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I packed my bags and left for the airport."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "جانتاکانم کۆکردەوە و بەڕێکەوتم بۆ فڕۆکەخانەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags3(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئەو بڕەی کە لە جانتایەک، کیسەیەک، ھتد جێی دەبێتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She ate a bag of chips."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "کیسەیەک جبسی خوارد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags4(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ڕێژەیەکی زۆر لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Get in! There's bags of room."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "وەرە ژوورەوە، جێگەیەکی زۆر ھەیە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags8(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پارچە گۆشتی ژێر چاو بەھۆی کەمخەوی یان پیری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She was considering cosmetic surgery to deal with the bags under her eyes."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بیری لە نەشتەرگەری جوانکاری دەکردەوە بۆ چارەسەری گۆشتی زیادەی ژێر چاوانی."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags5(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) وشەیەکی نەشیاو بۆ ژنێکی پیر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Silly old bag!"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "پیرەژنی دەبەنگ!"),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags6(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) تەواوی ئەو باڵندانە یان ئاژەڵانەی کە پێکەوە ڕاودەکرێن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We got a good bag today."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ئەمڕۆ ڕاوێکی باشمان کرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags7(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) دانانی شت لەناو جانتا، کیسە، ھتد"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The fruit is washed, sorted and bagged at the farm."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "میوەکان شۆردراون، جتاکراونەتەوە، و لە کیسەکراون لە کێڵگەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags9(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) گرتن یان کوشتنی ئاژەڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We bagged ten fish in two hours."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دە ماسیمان لە دوو کاتژمێردا گرت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags10(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) تۆمارکردنی گۆڵ، خاڵ، ھتد"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Harkin bagged two goals in last night's win."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھارکین لە بردنەوەکەی دوێنێ شەودا دوو گۆڵی تۆمارکرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags11(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) بەدەستھێنانی شتێک پێش کەسێکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Sally had managed to bag the two best seats."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "سالی دوو باشترین جێگەی گرتبوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags12(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) لۆمەکردنی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Stop bagging her (out) - she's doing her best."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "واز لە لۆمەکردنی بێنە، ھەموو ھەوڵی خۆی دەدا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags13(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بڕیاردان لەسەر نەکردنی شتێک چونکە پێت وایە سەرکەوتوو نابێت، یان پێت وایە باشترە دوای بخەیت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They decided to bag the trip because they were short of cash."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بڕیاریان دا گەشتەکە نەکەن چونکە پارەی کاشیان کەم لەبەردەست بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBags14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBags14(// REPLACE: bag
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
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
                    // YoutubeEmbeddedfourteen(),
                    // YoutubeEmbeddedfifteen(),
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

// DOPSUM: ENGLISH MEANING

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishMeaningConst(
            text: """
- Noun: bag (derived forms: bags)
1. A flexible container with a single opening
"he stuffed his laundry into a large bag"
 
2. The quantity of game taken in a particular period (usually by one person)
"his bag included two deer"
 
3. A place that the runner must touch before scoring (= base)
"he scrambled to get back to the bag";
 
4. A container used for carrying money and small personal items or accessories (especially by women) (= handbag, pocketbook, purse)
"she reached into her bag and found a comb";
 
5. The quantity that a bag will hold (= bagful)
"he ate a large bag of popcorn";
 
6. A portable rectangular container for carrying clothes (= traveling bag [US], travelling bag, grip, suitcase)
"he carried his small bag onto the plane with him";
 
7. [informal] An ugly or ill-tempered woman (= old bag [informal])
"he was romancing the old bag for her money";
 
8. Mammary gland of bovids (cows and sheep and goats) (= udder)
 
9. [informal] An activity that you like or at which you are superior (= dish [informal])
"his bag now is learning to play golf";

- Verb: bag (derived forms: bagging, bagged, bags)
1. Put into a bag
"The supermarket clerk bagged the groceries"
 
2. Make first claim on something; take possession of (= bagsy [UK])
 
3. (hunting) capture or kill, as in hunting
"bag a few pheasants"
 
4. Hang loosely, like an empty bag
 
5. Bulge out; form a bulge outward, or be so full as to appear to bulge (= bulge)
 
6. [informal] Take unlawfully (= pocket)
 
7. [Austral, informal] Criticize sarcastically
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "FnpGmCuk-u0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 169, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "BXraT177uMY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "h02NI8jCtKk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 567, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "5EJQQPKHtJw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 4, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = "EokXA_g7-5Y";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 27, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = "lRrS5FgJ2aI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 319, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = "4flqVgcFO9E";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "MhUb6zhFVww";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 15, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = "fKRUJNEbK5s";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 14, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = "pF0VcRL0rxw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "Oq61TxejZ5g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 30, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "-HyHZsa79LU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 299, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddedthirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
// autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddedthirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end bag // TODO Implement this library.
