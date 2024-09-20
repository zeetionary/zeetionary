import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// Define the word "before" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace speakBefore - /bɪˈfɔː(r)/

enum TtsState { playing }

class EnglishEntrybefore extends StatelessWidget {
  EnglishEntrybefore({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbefore(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("before");
  }

  Future<void> speakbefores1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The year before last he won a gold medal, and the year before that he won a silver.");
  }

  Future<void> speakbefores2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's lived there since before the war.");
  }

  Future<void> speakbefores3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He arrived before me.");
  }

  Future<void> speakbefores4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She became a lawyer as her father had before her.");
  }

  Future<void> speakbefores5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your name is before mine on the list.");
  }

  Future<void> speakbefores6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He puts his work before everything.");
  }

  Future<void> speakbefores7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They knelt before the throne.");
  }

  Future<void> speakbefores8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Before you is a list of the points we have to discuss.");
  }

  Future<void> speakbefores9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The task before us is a daunting one.");
  }

  Future<void> speakbefores10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The whole summer lay before me.");
  }

  Future<void> speakbefores11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was brought before the judge.");
  }

  Future<void> speakbefores12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She said it before witnesses.");
  }

  Future<void> speakbefores13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They retreated before the enemy.");
  }

  Future<void> speakbefores14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do it before you forget.");
  }

  Future<void> speakbefores15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Did she leave a message before she went?");
  }

  Future<void> speakbefores16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Before I made a decision, I thought carefully about it.");
  }

  Future<void> speakbefores17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It may be many years before the situation improves.");
  }

  Future<void> speakbefores18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was some time before I realized the truth.");
  }

  Future<void> speakbefores19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Put that away before it gets broken.");
  }

  Future<void> speakbefores20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'd die before I apologized!");
  }

  Future<void> speakbefores21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You should have told me so before.");
  }

  Future<void> speakbefores22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It had been fine the week before.");
  }

  Future<void> speakbefores23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I think we've met before.");
  }

  Future<void> speakbefores24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores2424");
  }

  Future<void> speakbefores25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores2525");
  }

  Future<void> speakbefores26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores2626");
  }

  Future<void> speakbefores27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores2727");
  }

  Future<void> speakbefores28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores2828");
  }

  Future<void> speakbefores29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores2929");
  }

  Future<void> speakbefores30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBefores3030");
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
                            EntryTitle(word: "before"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɪˈfɔː(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbefore("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɪˈfɔːr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbefore("en-US"),
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
کوردی: پێشتر، پێشوو، پێشەکی، لەوەپێش، لەپێش، بەر، لە پێشاندا، لەپێشا، پێشدا، بەرلە، لەمەوبەر، زووتر، پێش لەوەی کە، پێش ئەوەی کە، بەر لەوەی کە، پێشتر لە، لە پێشتر، پێش، لە بەردەم، باشتر لە، ھەتا، تا
"""),
                          const DefinitionKurdish(
                              text: """١. (ئامراز) پێش کەسێک/شتێک"""),
                          SentencesRow(
                            englishText:
                                "The year before last he won a gold medal, and the year before that he won a silver.",
                            kurdishText:
                                "ساڵی پێش ساڵی پار مەدالیای ئاڵتوونی بردەوە، و ساڵی پێش ئەوەش دانەیەکی زیوی بردەوە.",
                            onPressedBritish: () => speakbefores1("en-GB"),
                            onPressedAmerican: () => speakbefores1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She's lived there since before the war.",
                            kurdishText: "لەوێ ژیاوە لە پێش جەنگەکەوە.",
                            onPressedBritish: () => speakbefores2("en-GB"),
                            onPressedAmerican: () => speakbefores2("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "He arrived before me.",
                            kurdishText: "پێش من گەشت.",
                            onPressedBritish: () => speakbefores3("en-GB"),
                            onPressedAmerican: () => speakbefores3("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She became a lawyer as her father had before her.",
                            kurdishText:
                                "بوو بە پارێزەر ھەروەک چۆن باوکی پێشووتر بووبوو.",
                            onPressedBritish: () => speakbefores4("en-GB"),
                            onPressedAmerican: () => speakbefores4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بەکاردێت بۆ وتنی ئەوەی کەسێک/شتێک لە پێش کەسێک/شتێکە لە ڕیزبەندییەک یان ڕێکخستنێک"""),
                          SentencesRow(
                            englishText:
                                "Your name is before mine on the list.",
                            kurdishText: "ناوت لە پێش ھی منە لە لیستەکەدا.",
                            onPressedBritish: () => speakbefores5("en-GB"),
                            onPressedAmerican: () => speakbefores5("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He puts his work before everything (= regards it as more important than anything else).",
                            kurdishText: "کارەکەی لە پێش ھەموو شت دادەنا.",
                            onPressedBritish: () => speakbefores6("en-GB"),
                            onPressedAmerican: () => speakbefores6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بەکاردێت بۆ وتنی ئەوەی کەسێک/شتێک لە جێگەیەکە کە لە پێش کەسێک/شتێکە"""),
                          SentencesRow(
                            englishText: "They knelt before the throne.",
                            kurdishText: "لە پێش تەختی شاھانە چەمانەوە.",
                            onPressedBritish: () => speakbefores7("en-GB"),
                            onPressedAmerican: () => speakbefores7("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Before you is a list of the points we have to discuss.",
                            kurdishText:
                                "ئەوەی لە پێشتە لیستێکی ئەو خاڵانەیە کە ھەمانە بۆ باسکردن (دەبێت باسی بکەین).",
                            onPressedBritish: () => speakbefores8("en-GB"),
                            onPressedAmerican: () => speakbefores8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بەکاردێت بۆ وتنی ئەوەی شتێک ڕووبەڕووی کەسێک دەبێتەوە لە داھاتوودا"""),
                          SentencesRow(
                            englishText:
                                "The task before us is a daunting one.",
                            kurdishText: "ئەو ئەرکەی لە پێشمانە دەمترسێنێت.",
                            onPressedBritish: () => speakbefores9("en-GB"),
                            onPressedAmerican: () => speakbefores9("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "The whole summer lay before me.",
                            kurdishText: "تەواوی ھاوین لە پێشم چاوەڕێیە.",
                            onPressedBritish: () => speakbefores10("en-GB"),
                            onPressedAmerican: () => speakbefores10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) لەپێش کەسێکدا کە گوێ دەگرێت یان تەماشا دەکات"""),
                          SentencesRow(
                            englishText: "He was brought before the judge.",
                            kurdishText: "ھێنرایە پێش دادوەر.",
                            onPressedBritish: () => speakbefores11("en-GB"),
                            onPressedAmerican: () => speakbefores11("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "She said it before witnesses.",
                            kurdishText: "لەپێش شایەتەکان وتی.",
                            onPressedBritish: () => speakbefores12("en-GB"),
                            onPressedAmerican: () => speakbefores12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) بۆ وتنی ئەوەی چۆن کەسێک ڕەفتاری کرد کە ڕووبەڕووی کەسێک/شتێک دەبێتەوە"""),
                          SentencesRow(
                            englishText: "They retreated before the enemy.",
                            kurdishText: "لە پێش دوژمن کشانەوە.",
                            onPressedBritish: () => speakbefores13("en-GB"),
                            onPressedAmerican: () => speakbefores13("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (لێکدەر) پێش کاتێک"""),
                          SentencesRow(
                            englishText: "Do it before you forget.",
                            kurdishText: "بیکە پێش ئەوەی بیرت بچێت.",
                            onPressedBritish: () => speakbefores14("en-GB"),
                            onPressedAmerican: () => speakbefores14("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Did she leave a message before she went?",
                            kurdishText: "ھیچ پەیامێکی ھەبوو پێش ئەوەی بچێت؟",
                            onPressedBritish: () => speakbefores15("en-GB"),
                            onPressedAmerican: () => speakbefores15("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Before I made a decision, I thought carefully about it.",
                            kurdishText:
                                "پێش ئەوەی بڕیار بدەم، بە وریاییەوە بیرم لێ‌کردەوە.",
                            onPressedBritish: () => speakbefores16("en-GB"),
                            onPressedAmerican: () => speakbefores16("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (لێکدەر) تا کاتێک"""),
                          SentencesRow(
                            englishText:
                                "It may be many years before the situation improves.",
                            kurdishText:
                                "ڕەنگە ساڵانێکی زۆری پێ بچێت تا دۆخەکە باش ببێت.",
                            onPressedBritish: () => speakbefores17("en-GB"),
                            onPressedAmerican: () => speakbefores17("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "It was some time before I realized the truth.",
                            kurdishText:
                                "ھەندێک کاتی پێچوو تا بە ڕاستییەکەم زانی.",
                            onPressedBritish: () => speakbefores18("en-GB"),
                            onPressedAmerican: () => speakbefores18("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (لێکدەر) بۆ ئاگادارکردنەوە یان ھەڕەشە لە کەسێک کە شتێکی خراپ ڕوودەدات"""),
                          SentencesRow(
                            englishText: "Put that away before it gets broken.",
                            kurdishText: "دووری بخەوە ئەگەرنا دەشکێت.",
                            onPressedBritish: () => speakbefores19("en-GB"),
                            onPressedAmerican: () => speakbefores19("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (لێکدەر) لە جیاتی"""),
                          SentencesRow(
                            englishText: "I'd die before I apologized!",
                            kurdishText:
                                "دەمرم لە جیاتی ئەوەی داوای لێبووردن بکەم (مردن باشترە لە داوای لێبووردن)!",
                            onPressedBritish: () => speakbefores20("en-GB"),
                            onPressedAmerican: () => speakbefores20("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) پێشتر؛ پێش کاتێک"""),
                          SentencesRow(
                            englishText: "You should have told me so before.",
                            kurdishText: "دەبوو ئەوەت پێشتر پێ بوتمایە.",
                            onPressedBritish: () => speakbefores21("en-GB"),
                            onPressedAmerican: () => speakbefores21("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "It had been fine the week before (= the previous week).",
                            kurdishText: "ھەفتەی پێشوو کێشەی نەبوو.",
                            onPressedBritish: () => speakbefores22("en-GB"),
                            onPressedAmerican: () => speakbefores22("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "I think we've met before.",
                            kurdishText: "پێم‌وایە پێشووتر یەکمان دیوە.",
                            onPressedBritish: () => speakbefores23("en-GB"),
                            onPressedAmerican: () => speakbefores23("en-US"),
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
                        YoutubeEmbeddeddnineteen(),
                        YoutubeEmbeddedtwenty(),
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
- Adverb: before
1. Earlier in time; previously (= earlier)
"I had known her before"; "as I said before"; "he called me the day before but your call had come even earlier";
 
2. At or in the front (= ahead, in front)
"with the cross of Jesus marching on before";

- Preposition: before
1. Earlier than in time
"before 2 o'clock"
 
2. In front of; in sight of
"before the judge"

- Conjunction: before
1. Earlier in time than (= ere [literary])
"see my son before I die";
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

  final String _videoId = 'Y2T_rIZ4Pho';
  final double _startSeconds = 48;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 483;

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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 179;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 37;

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

  final String _videoId = 'DTvS9lvRxZ8';
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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 21;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 435;

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

  final String _videoId = 'FHJ3CMWnVxY';
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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 414;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 54;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 190;

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

  final String _videoId = '_GFkHA5EZdE';
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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 129;

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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'rNg17MVDsFk';
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'Gw38xQTbX6E';
  final double _startSeconds = 821;

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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  const YoutubeEmbeddeddsixteen({super.key});

  final String _videoId = 'Fq89qTu9SCQ';
  final double _startSeconds = 145;

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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  const YoutubeEmbeddeddseventeen({super.key});

  final String _videoId = 'ZmkHQ9zNm8k';
  final double _startSeconds = 18;

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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  const YoutubeEmbeddeddeighteen({super.key});

  final String _videoId = '2bZjBHE5Opk';
  final double _startSeconds = 241;

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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  const YoutubeEmbeddeddnineteen({super.key});

  final String _videoId = '0oLWuS4ZI80';
  final double _startSeconds = 21;

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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  const YoutubeEmbeddedtwenty({super.key});

  final String _videoId = 'fNh_GyRbJDA';
  final double _startSeconds = 259;

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

// end before
