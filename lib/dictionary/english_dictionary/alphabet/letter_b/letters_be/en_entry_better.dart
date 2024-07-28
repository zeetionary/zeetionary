import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "better" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace better - replace EnglishEntrybetter

// replace speakBetter - /ˈbetə(r)/

enum TtsState { playing }

class EnglishEntrybetter extends StatelessWidget {
// blank divider
  EnglishEntrybetter({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbetter(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("better");
  }

  Future<void> speakbetters1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're hoping for better weather tomorrow.");
  }

  Future<void> speakbetters2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is in a much better mood than usual.");
  }

  Future<void> speakbetters3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'd be better going by bus.");
  }

  Future<void> speakbetters4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It would be better for him to talk to his parents about his problems.");
  }

  Future<void> speakbetters5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters55");
  }

  Future<void> speakbetters6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's far better at science than her brother.");
  }

  Future<void> speakbetters7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a lot better today.");
  }

  Future<void> speakbetters8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His leg was getting better.");
  }

  Future<void> speakbetters9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't go back to work until you are better.");
  }

  Future<void> speakbetters10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She sings much better than I do.");
  }

  Future<void> speakbetters11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'll like her when you know her better.");
  }

  Future<void> speakbetters12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Researchers are hoping to better understand the role of this protein in human disease.");
  }

  Future<void> speakbetters13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The money could be better spent on more urgent cases.");
  }

  Future<void> speakbetters14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I expected better of him.");
  }

  Future<void> speakbetters15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He ran the 100 metres in 9.91 seconds, and I have not seen better this year.");
  }

  Future<void> speakbetters16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You shouldn't be so mean to your mother - she deserves better.");
  }

  Future<void> speakbetters17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As children, we were taught not to argue with our elders and betters.");
  }

  Future<void> speakbetters18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their success that season could not be bettered.");
  }

  Future<void> speakbetters19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Thousands of Victorian workers joined educational associations in an attempt to better themselves.");
  }

  Future<void> speakbetters20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2020");
  }

  Future<void> speakbetters21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2121");
  }

  Future<void> speakbetters22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2222");
  }

  Future<void> speakbetters23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2323");
  }

  Future<void> speakbetters24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2424");
  }

  Future<void> speakbetters25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2525");
  }

  Future<void> speakbetters26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2626");
  }

  Future<void> speakbetters27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2727");
  }

  Future<void> speakbetters28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2828");
  }

  Future<void> speakbetters29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2929");
  }

  Future<void> speakbetters30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters3030");
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
                            EntryTitle(word: "better"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbetə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbetter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbetər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbetter("en-US"),
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
کوردی: باش‌تر، چاتر، چاک‌تر، زۆرتر، زۆرینەی، زۆربەی، پتر، زیاتر، زێتر، گەورەتر، گرێوکار، گرێوباز، مەرج‌بەست، (شت یان مرۆ) باشتر، چاکتر، سەرتری، بەسەرداشکانەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ھاوەڵناو) باشتر لە شتێکی تر، شتێک کە ھێندەی شتێکی تر خراپ نییە"""),
                          SentencesRow(
                            englishText:
                                "We're hoping for better weather tomorrow.",
                            kurdishText: "ھیوا بۆ کەشوھەوایەکی باشتر دەخوازین.",
                            onPressedBritish: () => speakbetters1("en-GB"),
                            onPressedAmerican: () => speakbetters1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He is in a much better mood than usual.",
                            kurdishText:
                                "لە حەوسەلەیەکی باشترە وەک لەوەی لە کاتی ئاسایی تێیدایە.",
                            onPressedBritish: () => speakbetters2("en-GB"),
                            onPressedAmerican: () => speakbetters2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) گونجاوتر یان شیاوتر"""),
                          SentencesRow(
                            englishText: "You'd be better going by bus.",
                            kurdishText: "باشتر دەبێت بە پاس بچیت.",
                            onPressedBritish: () => speakbetters3("en-GB"),
                            onPressedAmerican: () => speakbetters3("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "It would be better for him to talk to his parents about his problems.",
                            kurdishText:
                                "باشتر دەبێت قسە لەگەڵ دایک و باوکی بکات دەربارەی کێشەکانی.",
                            onPressedBritish: () => speakbetters4("en-GB"),
                            onPressedAmerican: () => speakbetters4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) بە تواناتر"""),
                          SentencesRow(
                            englishText:
                                "She's far better at science than her brother.",
                            kurdishText: "لە زانستدا زۆر باشترە لە براکەی.",
                            onPressedBritish: () => speakbetters6("en-GB"),
                            onPressedAmerican: () => speakbetters6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) لە دۆخێکی تەندرووستی باشتر"""),
                          SentencesRow(
                            englishText: "She's a lot better today.",
                            kurdishText: "ئەمڕۆ زۆر باشترە.",
                            onPressedBritish: () => speakbetters7("en-GB"),
                            onPressedAmerican: () => speakbetters7("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "His leg was getting better.",
                            kurdishText: "لاقی باشتر دەبوو.",
                            onPressedBritish: () => speakbetters8("en-GB"),
                            onPressedAmerican: () => speakbetters8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) بە تەواوی چاکبووەوە لە نەخۆشییەک"""),
                          SentencesRow(
                            englishText:
                                "Don't go back to work until you are better.",
                            kurdishText: "مەچۆوە بۆ کار تا باش دەبیتەوە.",
                            onPressedBritish: () => speakbetters9("en-GB"),
                            onPressedAmerican: () => speakbetters9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) بەشێوەیەکی باشتر؛ بەشێوەیەک کە وەک شتێکی تر خراپ نییە"""),
                          SentencesRow(
                            englishText: "She sings much better than I do.",
                            kurdishText: "لە من باشتر گۆرانی دەڵێت.",
                            onPressedBritish: () => speakbetters10("en-GB"),
                            onPressedAmerican: () => speakbetters10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) زیاتر؛ تا ئاستێکی زۆرتر"""),
                          SentencesRow(
                            englishText:
                                "You'll like her when you know her better.",
                            kurdishText: "خۆشتدەوێت کە باشتر بیناسی.",
                            onPressedBritish: () => speakbetters11("en-GB"),
                            onPressedAmerican: () => speakbetters11("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Researchers are hoping to better understand the role of this protein in human disease.",
                            kurdishText:
                                "توێژەران ھیوا دەخوازن باشتر تێبگەن لە ئەرکی ئەم پڕۆتینە لە نەخۆشی مرۆڤدا.",
                            onPressedBritish: () => speakbetters12("en-GB"),
                            onPressedAmerican: () => speakbetters12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) بەکاردێت بۆ وتنی ئەوەی شتێک گونجاوتر یان شیاوتر دەبێت بۆ کردن"""),
                          SentencesRow(
                            englishText:
                                "The money could be better spent on more urgent cases.",
                            kurdishText:
                                "پارەکە دەکرێت خەرج بکرێت لەسەر بابەتی زەروورتر.",
                            onPressedBritish: () => speakbetters13("en-GB"),
                            onPressedAmerican: () => speakbetters13("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) شتێکی باشتر"""),
                          SentencesRow(
                            englishText:
                                "I expected better of him (= I thought he would have behaved better).",
                            kurdishText: "زیاتر لەوەم لێ چاوەڕێ دەکرد.",
                            onPressedBritish: () => speakbetters14("en-GB"),
                            onPressedAmerican: () => speakbetters14("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He ran the 100 metres in 9.91 seconds, and I have not seen better (= a faster result) this year.",
                            kurdishText:
                                "١٠٠ مەتری لە ٩,٩١ چرکەدا بڕی و و باشتر لەوەم نەدیوە ئەمساڵ.",
                            onPressedBritish: () => speakbetters15("en-GB"),
                            onPressedAmerican: () => speakbetters15("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "You shouldn't be so mean to your mother - she deserves better.",
                            kurdishText:
                                "نابێت وەھا توند بیت لەگەڵ دایکت، شایەنی باشتر لەوەیە.",
                            onPressedBritish: () => speakbetters16("en-GB"),
                            onPressedAmerican: () => speakbetters16("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) ئەو کەسانەی کە لە تۆ زیرەکتر یان گرنگترن"""),
                          SentencesRow(
                            englishText:
                                "As children, we were taught not to argue with our elders and betters.",
                            kurdishText:
                                "وەک منداڵ فێردەکرێین دەمەدەم نەکەین لەگەڵ گەورەکان و کەسانی باڵاتر لە خۆمان.",
                            onPressedBritish: () => speakbetters17("en-GB"),
                            onPressedAmerican: () => speakbetters17("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) باشتربوون لە کەسێک/شتێک"""),
                          SentencesRow(
                            englishText:
                                "Their success that season could not be bettered.",
                            kurdishText:
                                "سەرکەوتنیان لەو وەرزەدا نەدەتوانرا ببەزێندرێت.",
                            onPressedBritish: () => speakbetters18("en-GB"),
                            onPressedAmerican: () => speakbetters18("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) باشترکردنی دۆخی کۆمەڵایەتیت لە ڕێگەی کارێکی باشتر، خوێندن، ھتد"""),
                          SentencesRow(
                            englishText:
                                "Thousands of Victorian workers joined educational associations in an attempt to better themselves.",
                            kurdishText:
                                "ھەزاران کرێکاری سەردەمی شاژن ڤیکتۆریا پەیوەندییان بە کۆڕە پەروەردەییەکانەوە کرد بۆ باشترکردنی دۆخی کۆمەڵایەتییان.",
                            onPressedBritish: () => speakbetters19("en-GB"),
                            onPressedAmerican: () => speakbetters19("en-US"),
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
- Adjective: better
1. (comparative and superlative of 'well') wiser or more advantageous and hence advisable (= best)
"it would be better to speak to him";
 
2. (comparative of 'good') superior to another (of the same class or set or kind) in excellence or quality or desirability or suitability; more highly skilled than another
"You're a better man than I am, Gunga Din"; "a better coat"; "a better type of car"; "a suit with a better fit"; "a better chance of success"; "produced a better mousetrap"; "she's better in maths than in history"
 
3. (comparative of 'good') changed for the better in health or fitness
"her health is better now"; "I feel better"
 
4. More than half
"argued for the better part of an hour"

- Adverb: better
1. Comparative of 'well'; in a better or more excellent manner or more advantageously or attractively or to a greater degree etc.
"She had never sung better"; "a deed better left undone"; "better suited to the job"
 
2. From a position of superiority or authority (= best)
"I know better.";

- Noun: better (derived forms: betters)
1. Something superior in quality, condition or effect
"a change for the better"
 
2. Someone who bets (= bettor, wagerer, punter)
 
3. A superior person having claim to precedence
"the common man has been kept in his place by his betters"
 
4. The superior one of two alternatives
"chose the better of the two"

- Verb: better (derived forms: betters, bettering, bettered)
1. Surpass in excellence (= break)
"She bettered her own record";
 
2. To make better (= improve, amend, ameliorate, meliorate, mend)
 
3. Get better (= improve, ameliorate, meliorate)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '3YltYCrPZos';
  final double _startSeconds = 34;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 568;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 757;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 504;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 376;

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

  final String _videoId = 'xVQxvthAcLU';
  final double _startSeconds = 1634;

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

  final String _videoId = 'p3O6bKdPLbw';
  final double _startSeconds = 780;

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

  final String _videoId = 'mvK0qJdg2Nc';
  final double _startSeconds = 633;

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

  final String _videoId = '5pAnk9MKHzo';
  final double _startSeconds = 321;

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

  final String _videoId = 'vCKy1-nnZ3U';
  final double _startSeconds = 74;

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

  final String _videoId = '7PuWFxmSwuU';
  final double _startSeconds = 880;

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

  final String _videoId = 'Hw1X5oFPgro';
  final double _startSeconds = 564;

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

  final String _videoId = 'C9JaUR9MXGs';
  final double _startSeconds = 72;

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

// end better// TODO Implement this library.
