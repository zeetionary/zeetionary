import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "blow" and for each meaning provide five example sentences that consist of 10-words or less. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blow - /bləʊ/

enum TtsState { playing }

class EnglishEntryblow extends StatelessWidget {
// blank divider
  EnglishEntryblow({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblow(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blow");
  }

  Future<void> speakblows1(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're not blowing hard enough!");
  }

  Future<void> speakblows2(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The policeman asked me to blow into the breathalyser.");
  }

  Future<void> speakblows3(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He drew on his cigarette and blew out a stream of smoke.");
  }

  Future<void> speakblows4(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The birds were singing and a warm wind was blowing.");
  }

  Future<void> speakblows5(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A cold wind blew from the east.");
  }

  Future<void> speakblows6(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My hat blew off.");
  }

  Future<void> speakblows7(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She blew the dust off the book.");
  }

  Future<void> speakblows8(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The referee blew his whistle.");
  }

  Future<void> speakblows9(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She grabbed a tissue and loudly blew her nose.");
  }

  Future<void> speakblows10(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As I finished my speech, she blew me a kiss from the audience.");
  }

  Future<void> speakblows11(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She blew bubbles with a bubble wand.");
  }

  Future<void> speakblows12(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car spun out of control when a tyre blew.");
  }

  Future<void> speakblows13(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The safe had been blown by the thieves.");
  }

  Future<void> speakblows14(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("One mistake could blow your cover.");
  }

  Future<void> speakblows15(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He inherited over a million dollars and blew it all on drink and gambling.");
  }

  Future<void> speakblows16(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She blew her chances by arriving late for the interview.");
  }

  Future<void> speakblows17(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Blow it! We've missed the bus.");
  }

  Future<void> speakblows18(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm blowed if I'm going to let him treat you like that.");
  }

  Future<void> speakblows19(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's blow this place.");
  }

  Future<void> speakblows20(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The two men were exchanging blows.");
  }

  Future<void> speakblows21(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He landed a blow on Jim's nose.");
  }

  Future<void> speakblows22(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Losing his job came as a terrible blow to him.");
  }

  Future<void> speakblows23(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was a shattering blow to her pride.");
  }

  Future<void> speakblows24(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The news came as a bitter blow to the staff.");
  }

  Future<void> speakblows25(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Try to put the candles out in one blow.");
  }

  Future<void> speakblows26(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Give your nose a good blow.");
  }

  Future<void> speakblows27(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Blow! I completely forgot it.");
  }

  Future<void> speakblows28(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblows2828");
  }

  Future<void> speakblows29(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblows2929");
  }

  Future<void> speakblows30(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblows3030");
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
                            EntryTitle(word: "blow"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bləʊ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblow("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bləʊ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblow("en-US"),
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
کوردی: ھەڵکردن، ھاتن (با)، وەشان، با، فوو، ھوو، (لووت) فن، ھن، لێدان، ژەندن، گەرای مێش، ھەواخۆری، گیابەنگ، مەریوانە، گوڵەلێوە،لێدان، تەق، گورز، جەزرەبە، کارەسات، دومات، ناڕەحەتی، ئاپۆر، گرگاشە، مەینەتی، نەھامەتی، بەڵا، گوڵ‌کردن، پشکوتن، سەروبەندی خونچەکردن، دەمەترەک(بوون)
"""),
                          const DefinitionKurdish(text: "١. (کردار) فووکردن"),
                          SentencesRow(
                            englishText: "You're not blowing hard enough!",
                            kurdishText: "زۆر خێرا فوو ناکەیت!",
                            onPressedBritish: () => speakblows1("en-GB"),
                            onPressedAmerican: () => speakblows1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The policeman asked me to blow into the breathalyser.",
                            kurdishText:
                                "پۆلیسەکە داوای لێ‌کردم فوو بکەم بە ئەلکھول‌پێوەکە.",
                            onPressedBritish: () => speakblows2("en-GB"),
                            onPressedAmerican: () => speakblows2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He drew on his cigarette and blew out a stream of smoke.",
                            kurdishText:
                                "قومێکی لە جگەرەکەی دا و دووکەڵەکەی کرد بە ھەوادا.",
                            onPressedBritish: () => speakblows3("en-GB"),
                            onPressedAmerican: () => speakblows3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) جوڵانی با"),
                          SentencesRow(
                            englishText:
                                "The birds were singing and a warm wind was blowing.",
                            kurdishText:
                                "باڵندەکان دەیان چریکاند و بایەکی گەرم ھەڵیکردبوو.",
                            onPressedBritish: () => speakblows4("en-GB"),
                            onPressedAmerican: () => speakblows4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "A cold wind blew from the east.",
                            kurdishText: "بایەکی سارد لە ڕۆژھەڵاتەوە ھەڵیکرد.",
                            onPressedBritish: () => speakblows5("en-GB"),
                            onPressedAmerican: () => speakblows5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) جوڵان بە با، ھەناسەی کەسێک، ھتد"),
                          SentencesRow(
                            englishText: "My hat blew off.",
                            kurdishText: "کڵاوەکەم با بردی.",
                            onPressedBritish: () => speakblows6("en-GB"),
                            onPressedAmerican: () => speakblows6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She blew the dust off the book.",
                            kurdishText:
                                "فووی کرد بە تۆزەکەدا و لە کتێبەکەی کردەوە.",
                            onPressedBritish: () => speakblows7("en-GB"),
                            onPressedAmerican: () => speakblows7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) لێدانی فیکەیەک یان ئامێرێکی میوزیکی بە فووکردن پێیدا"),
                          SentencesRow(
                            englishText: "The referee blew his whistle.",
                            kurdishText: "ناوبژیوانەکە فیکەکەی لێدا.",
                            onPressedBritish: () => speakblows8("en-GB"),
                            onPressedAmerican: () => speakblows8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) پاککردنەوەی لووتت بە تێپەڕاندنی ھەوا پێیدا بۆ دەرەوە بۆ ناو کلێنسێک یان دەستەسڕێک"),
                          SentencesRow(
                            englishText:
                                "She grabbed a tissue and loudly blew her nose.",
                            kurdishText:
                                "کلێنسێکی ڕاکێشا و بە دەنگی بەرز مشەی کرد.",
                            onPressedBritish: () => speakblows9("en-GB"),
                            onPressedAmerican: () => speakblows9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ماچکردنی دەستت و نیشاندانی وەک ئەوەی بە فووکردن دەینێری بۆ کەسێک"),
                          SentencesRow(
                            englishText:
                                "As I finished my speech, she blew me a kiss from the audience.",
                            kurdishText:
                                "کە وتارەکەمم تەواوکرد، ماچێکی بۆ ھاویشتم لەناو جەماوەرەکەوە.",
                            onPressedBritish: () => speakblows10("en-GB"),
                            onPressedAmerican: () => speakblows10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) درووستکردن یان پێدانی شێوە بە فووکردن"),
                          SentencesRow(
                            englishText: "She blew bubbles with a bubble wand.",
                            kurdishText: "بڵقی درووستدەکرد بە دارکەفێک.",
                            onPressedBritish: () => speakblows11("en-GB"),
                            onPressedAmerican: () => speakblows11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) تایە تەقین"),
                          SentencesRow(
                            englishText:
                                "The car spun out of control when a tyre blew.",
                            kurdishText:
                                "ئۆتۆمبێلەکە سووڕا و لە کۆنترۆڵ دەرچوو کە تایەیەکی تەقی.",
                            onPressedBritish: () => speakblows12("en-GB"),
                            onPressedAmerican: () => speakblows12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) کردنەوەی شتێک بە تەقەمەنی"),
                          SentencesRow(
                            englishText:
                                "The safe had been blown by the thieves.",
                            kurdishText: "قاسەکە شکێندرابوو لەلایەن دزەکانەوە.",
                            onPressedBritish: () => speakblows13("en-GB"),
                            onPressedAmerican: () => speakblows13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) ئاشکراکردنی نھێنی"),
                          SentencesRow(
                            englishText:
                                "One mistake could blow your cover (= make your real name, job, intentions, etc. known).",
                            kurdishText: "یەک ھەڵە ڕەنگە ناسنامەت ئاشکرا بکات.",
                            onPressedBritish: () => speakblows14("en-GB"),
                            onPressedAmerican: () => speakblows14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) بەھەدەردانی ژمارەیەکی زۆر پارە لە شتێکدا"),
                          SentencesRow(
                            englishText:
                                "He inherited over a million dollars and blew it all on drink and gambling.",
                            kurdishText:
                                "سەروو یەک ملیۆن دۆلاری بە میراتی بۆ جێما و ھەمووی لە خواردنەوە و قوماردا بەھەدەردا.",
                            onPressedBritish: () => speakblows15("en-GB"),
                            onPressedAmerican: () => speakblows15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) لەدەستدانی ھەلێک"),
                          SentencesRow(
                            englishText:
                                "She blew her chances by arriving late for the interview.",
                            kurdishText:
                                "ھەلەکانی لەدەستدا بە فرەنگ گەشتن بە چاوپێکەوتنەکە.",
                            onPressedBritish: () => speakblows16("en-GB"),
                            onPressedAmerican: () => speakblows16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) بەکاردێت بۆ پیشاندانی ئەوەی بێزار یان سەرسامی، یان ئەوەی شتێکت لا گرنگ نییە"),
                          SentencesRow(
                            englishText: "Blow it! We've missed the bus.",
                            kurdishText: "دەستی شکاوم! پاسەکەمان لەدەستدا.",
                            onPressedBritish: () => speakblows17("en-GB"),
                            onPressedAmerican: () => speakblows17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I'm blowed if I'm going to (= I certainly will not) let him treat you like that.",
                            kurdishText:
                                "ھەڵبەتە مردووم ئەگەر بھێڵم وەھا مامەڵەت لەگەڵ بکات.",
                            onPressedBritish: () => speakblows18("en-GB"),
                            onPressedAmerican: () => speakblows18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (کردار) جێھێشتنی شوێنێک لەناکاو"),
                          SentencesRow(
                            englishText: "Let's blow this place.",
                            kurdishText: "با بۆی دەرچین لەم شوێنە.",
                            onPressedBritish: () => speakblows19("en-GB"),
                            onPressedAmerican: () => speakblows19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ناو) لێدانێکی بەھێز بە دەست، چەک، ھتد"),
                          SentencesRow(
                            englishText: "The two men were exchanging blows.",
                            kurdishText: "دوو پیاوەکە یەکتریان دەکووتا.",
                            onPressedBritish: () => speakblows20("en-GB"),
                            onPressedAmerican: () => speakblows20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He landed a blow on Jim's nose.",
                            kurdishText: "کێشای بە لوتی جیمدا.",
                            onPressedBritish: () => speakblows21("en-GB"),
                            onPressedAmerican: () => speakblows21("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ناو) ڕووداوێکی لەناکاو کە زیانی دەبێت بۆ کەسێک/شتێک"),
                          SentencesRow(
                            englishText:
                                "Losing his job came as a terrible blow to him.",
                            kurdishText:
                                "لەدەستدانی کارەکەی گورزێکی خراپ بوو بۆی.",
                            onPressedBritish: () => speakblows22("en-GB"),
                            onPressedAmerican: () => speakblows22("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It was a shattering blow to her pride.",
                            kurdishText:
                                "گورزێکی کەمەرشکێن بوو بۆ لووت‌بەرزییەکەی.",
                            onPressedBritish: () => speakblows23("en-GB"),
                            onPressedAmerican: () => speakblows23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The news came as a bitter blow to the staff.",
                            kurdishText:
                                "ھەواڵەکە وەک گورزێکی تاڵ بوو بۆ ستافەکە.",
                            onPressedBritish: () => speakblows24("en-GB"),
                            onPressedAmerican: () => speakblows24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٧. (ناو) فووکردن"),
                          SentencesRow(
                            englishText:
                                "Try to put the candles out in one blow.",
                            kurdishText:
                                "ھەوڵ بدە مۆمەکان بە یەک فوو بکوژێنیتەوە.",
                            onPressedBritish: () => speakblows25("en-GB"),
                            onPressedAmerican: () => speakblows25("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Give your nose a good blow (= clear it completely).",
                            kurdishText: "مشەمشێک بکە بە لووتت.",
                            onPressedBritish: () => speakblows26("en-GB"),
                            onPressedAmerican: () => speakblows26("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (سەرسوڕمان) بۆ پیشاندانی بێزاری سەبارەت بە شتێک"),
                          SentencesRow(
                            englishText: "Blow! I completely forgot it.",
                            kurdishText: "دەستی شکاوم! بە تەواوی بیرم چوو.",
                            onPressedBritish: () => speakblows27("en-GB"),
                            onPressedAmerican: () => speakblows27("en-US"),
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
- Noun: blow (derived forms: blows)
1. A powerful stroke with the fist or a weapon
"a blow on the head"
 
2. An impact (as from a collision) (= bump)
"the blow threw him off the bicycle";
 
3. An unfortunate happening that hinders or impedes; something that is thwarting or frustrating (= reverse, reversal, setback, black eye)
 
4. An unpleasant or disappointing surprise (= shock)
"it came as a blow to learn that he was injured";
 
5. A strong current of air (= gust, blast)
"the tree was bent almost double by the blow";
 
6. Forceful exhalation through the nose or mouth (= puff)
"he gave his nose a loud blow";

7. [slang] A street name for cocaine (= coke [slang], nose candy [slang], snow [slang], C [slang])

- Verb: blow (derived forms: blown, blew, blows, blowing)
1. Exhale hard
"blow on the soup to cool it down"
 
2. Be blowing or storming
"The wind blew from the West"
 
3. Free of obstruction by blowing air through
"blow one's nose"
 
4. Be in motion due to some air or water current (= float, drift, be adrift)
"The leaves were blowing in the wind";

5. Make a sound as if blown
"The whistle blew"
 
6. Shape by blowing
"Blow a glass vase"
 
7. [informal] Be inadequate or objectionable (= suck [informal])
"this blows!";

8. Make a mess of, destroy or ruin (= botch, bodge [Brit, informal], bumble, fumble, botch up, muff [informal], flub [N. Amer, informal], screw up [informal], spoil, muck up [informal], bungle, fluff [informal], bobble [N. Amer], mishandle, louse up [informal], foul up, mess up, butcher, goof up [informal], cock up [Brit, informal], balls up [informal], make a hash of [informal])
"I blew the dinner and we had to eat out";
 
9. [informal] Spend thoughtlessly; throw away (= waste, squander)
"He blew his inheritance on his insincere friends";
 
10. [informal] Spend lavishly or wastefully on
"He blew a lot of money on his new home theatre"
 
11. Sound by having air expelled through a tube
"The trumpets blew"
 
12. Play or sound a wind instrument
"She blew the horn"
 
13. [vulgar] Provide sexual gratification through oral stimulation (= fellate, go down on)
 
14. Cause air to go in, on, or through
"Blow my hair dry"
 
15. Cause to move by means of an air current
"The wind blew the leaves around in the yard"
 
16. Spout moist air from the blowhole
"The whales blew"
 
17. [informal] Leave; informal or rude (= shove off [informal], shove along [informal])
"Blow now!"; "let's blow this place";
 
18. Deposit eggs (of insects)
"certain insects are said to blow"
 
19. Cause to be revealed and jeopardized
"The story blew their cover"
 
20. Show off, esp. with exaggeration (= boast, tout, swash [archaic], shoot a line [informal], brag, gas [informal], bluster, vaunt, gasconade [archaic], skite [Austral, NZ, informal])
 
21. Allow to regain its breath
"blow a horse"
 
22. Melt, break, or become otherwise unusable (= blow out, burn out)
"The lightbulbs blew out"; "The fuse blew";
 
23. Burst suddenly
"The tire blew"; "We blew a tire"
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

  final String _videoId = 'GDMel6oO2fU';
  final double _startSeconds = 23;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 1022;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 226;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 558;

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

  final String _videoId = 'JqDf1X2eIbE';
  final double _startSeconds = 405;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 44;

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

  final String _videoId = '03VAIrkmrD0';
  final double _startSeconds = 19;

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

  final String _videoId = 'IVRS7xWo9ik';
  final double _startSeconds = 544;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1388;

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

  final String _videoId = 'uSTdUqgIdyk';
  final double _startSeconds = 497;

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

  final String _videoId = 'XtNni2wLFR4';
  final double _startSeconds = 205;

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

  final String _videoId = 'qD6bPNZRRbQ';
  final double _startSeconds = 98;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end blow
