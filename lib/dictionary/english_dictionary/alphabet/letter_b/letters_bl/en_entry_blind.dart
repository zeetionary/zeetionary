import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// Define the word "blind" and provide five simple and short example sentences for each meaning. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blind - /blaɪnd/

enum TtsState { playing }

class EnglishEntryblind extends StatelessWidget {
  EnglishEntryblind({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblind(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("blind");
  }

  Future<void> speakblinds1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Doctors think he will go blind.");
  }

  Future<void> speakblinds2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She went blind at the age of ten.");
  }

  Future<void> speakblinds3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was born blind.");
  }

  Future<void> speakblinds4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She trains dogs for the blind.");
  }

  Future<void> speakblinds5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is blind to her husband's faults.");
  }

  Future<void> speakblinds6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They seem to be totally blind to reality.");
  }

  Future<void> speakblinds7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was blind with fury.");
  }

  Future<void> speakblinds8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was a moment of blind panic.");
  }

  Future<void> speakblinds9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The earthquake, with the blind force of nature, shook the region, leaving buildings in ruins.");
  }

  Future<void> speakblinds10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The accident happened on a blind bend.");
  }

  Future<void> speakblinds11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She is very suspicious of anyone who claims to be race-blind.");
  }

  Future<void> speakblinds12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was blinded in the explosion.");
  }

  Future<void> speakblinds13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The attackers blinded him with acid.");
  }

  Future<void> speakblinds14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His eyes were blinded by tears.");
  }

  Future<void> speakblinds15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("When she went outside she was temporarily blinded by the sun.");
  }

  Future<void> speakblinds16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His sense of loyalty blinded him to the truth.");
  }

  Future<void> speakblinds17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We shouldn't let our prejudices blind us to the facts of the situation.");
  }

  Future<void> speakblinds18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She saw a figure through the blinds.");
  }

  Future<void> speakblinds19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Pull up the blinds and let some light in.");
  }

  Future<void> speakblinds20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Navigating through the thick fog, the plane's captain steered blind, relying on radar and experience.");
  }

  Future<void> speakblinds21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2121");
  }

  Future<void> speakblinds22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2222");
  }

  Future<void> speakblinds23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2323");
  }

  Future<void> speakblinds24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2424");
  }

  Future<void> speakblinds25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2525");
  }

  Future<void> speakblinds26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2626");
  }

  Future<void> speakblinds27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2727");
  }

  Future<void> speakblinds28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2828");
  }

  Future<void> speakblinds29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds2929");
  }

  Future<void> speakblinds30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblinds3030");
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
                            EntryTitle(word: "blind"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /blaɪnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblind("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /blaɪnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblind("en-US"),
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
کوردی: کوێر، نابینا، سۆماداھاتوو، حافز، دەستەوسان، بێ‌دەسەڵات، نەتوان، بن‌بەست، بێ‌سەرەدەر، تاریک، نەخوێنراوە، گەوجانە، بێ‌ئەقڵانە، ناژیرانە، لێکەوەنەدراو، مەست، پەردەی دەڕابەیی یان کڕکڕە، شاراوە، نادیار، حەشارگە، سیپە، بۆسە
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) کوێر؛ نەبوونی توانای بینین"),
                          SentencesRow(
                            englishText: "Doctors think he will go blind.",
                            kurdishText: "دکتۆرەکان پێیان وایە کوێر دەبێت.",
                            onPressedBritish: () => speakblinds1("en-GB"),
                            onPressedAmerican: () => speakblinds1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She went blind at the age of ten.",
                            kurdishText: "لە تەمەنی ١٠ ساڵیدا بینایی لەدەستدا.",
                            onPressedBritish: () => speakblinds2("en-GB"),
                            onPressedAmerican: () => speakblinds2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She was born blind.",
                            kurdishText: "بە نابینایی لەدایکبوو.",
                            onPressedBritish: () => speakblinds3("en-GB"),
                            onPressedAmerican: () => speakblinds3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) کەسانی نابینا"),
                          SentencesRow(
                            englishText: "She trains dogs for the blind.",
                            kurdishText: "سەگ ڕادەھێنێت بۆ نابینایان.",
                            onPressedBritish: () => speakblinds4("en-GB"),
                            onPressedAmerican: () => speakblinds4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) ھەستنەکردن بە شتێک"),
                          SentencesRow(
                            englishText:
                                "She is blind to her husband's faults.",
                            kurdishText:
                                "چاوی کوێرە لە ئاستی ھەڵەکانی ھاوژینەکەی.",
                            onPressedBritish: () => speakblinds5("en-GB"),
                            onPressedAmerican: () => speakblinds5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They seem to be totally blind to reality.",
                            kurdishText: "تەواو بێ ئاگایە لە ڕاستییەکە.",
                            onPressedBritish: () => speakblinds6("en-GB"),
                            onPressedAmerican: () => speakblinds6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) شتێک کە باوەڕی پێکراوە بە بێ ھۆکار یان بە بێ لێکۆڵینەوە"),
                          SentencesRow(
                            englishText:
                                "He was blind with fury (= so angry that he could not behave reasonably).",
                            kurdishText: "چاوی کوێر بووبوو لە تووڕەییدا.",
                            onPressedBritish: () => speakblinds7("en-GB"),
                            onPressedAmerican: () => speakblinds7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "It was a moment of blind panic.",
                            kurdishText:
                                "ساتێکی تاسانی کوێرانە بوو (بە بێ ھۆ ترسان).",
                            onPressedBritish: () => speakblinds8("en-GB"),
                            onPressedAmerican: () => speakblinds8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) دۆخێک یان ڕووداوێک کە ناتوانرێت تێگەشتنی بۆ بکرێت "),
                          SentencesRow(
                            englishText:
                                "The earthquake, with the blind force of nature, shook the region, leaving buildings in ruins.",
                            kurdishText:
                                "بومەلەرزەکە بە ھێزی بێ سنووری سرووشتەوە ھەرێمەکەی ھەژاند و بیناکانی کرد بە وێرانە.",
                            onPressedBritish: () => speakblinds9("en-GB"),
                            onPressedAmerican: () => speakblinds9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) شوێنێک کە شۆفێرێک ناتوانێت بیبینێت"),
                          SentencesRow(
                            englishText:
                                "The accident happened on a blind bend.",
                            kurdishText:
                                "ڕووداوەکە لە لادانێکی ناوچەی کوێردا ڕوویدا.",
                            onPressedBritish: () => speakblinds10("en-GB"),
                            onPressedAmerican: () => speakblinds10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵناو) شتێک کە ھیچ جیاوازی لە ڕووی ئەو خاسیەتەی کە باس دەکرێت"),
                          SentencesRow(
                            englishText:
                                "She is very suspicious of anyone who claims to be race-blind.",
                            kurdishText:
                                "زۆر بە گومانە بەرامبەر ھەر کەسێک کە بانگەشەی ئەوە دەکات ڕەگەز لای گرنگ نەبێت.",
                            onPressedBritish: () => speakblinds11("en-GB"),
                            onPressedAmerican: () => speakblinds11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) کوێرکردنی کەسێک بۆ ھەمیشە"),
                          SentencesRow(
                            englishText: "She was blinded in the explosion.",
                            kurdishText: "لە تەقینەوەکەدا کوێر بوو.",
                            onPressedBritish: () => speakblinds12("en-GB"),
                            onPressedAmerican: () => speakblinds12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The attackers blinded him with acid.",
                            kurdishText: "ھێرشکارەکان بە ئەسید نابینایان کرد.",
                            onPressedBritish: () => speakblinds13("en-GB"),
                            onPressedAmerican: () => speakblinds13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) سەختکردنی توانای بینین بۆ کەسێک بۆ ماوەیەکی کاتی"),
                          SentencesRow(
                            englishText: "His eyes were blinded by tears.",
                            kurdishText: "چاوەکانی پڕبوون لە فرمێسک.",
                            onPressedBritish: () => speakblinds14("en-GB"),
                            onPressedAmerican: () => speakblinds14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "When she went outside she was temporarily blinded by the sun.",
                            kurdishText:
                                "کە لە دەرەوە بوو بۆ ماوەیەکی کاتی بینایی لەدەستدا بەھۆی خۆرەکەوە.",
                            onPressedBritish: () => speakblinds15("en-GB"),
                            onPressedAmerican: () => speakblinds15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) وا لە کەسێک بکەیت چی تر بە ڕوونی بیرنەکاتەوە یان ڕەفتار بەشێوەیەکی ئاقڵانە بکات"),
                          SentencesRow(
                            englishText:
                                "His sense of loyalty blinded him to the truth.",
                            kurdishText:
                                "ھەستی وەفاداریی کوێری کرد لا ئاستی ڕاستییەکەدا.",
                            onPressedBritish: () => speakblinds16("en-GB"),
                            onPressedAmerican: () => speakblinds16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We shouldn't let our prejudices blind us to the facts of the situation.",
                            kurdishText:
                                "نابێت ڕێگا بدەین ڕقەکانمان کوێرمان بکات لە ئاستی دۆخەکەدا.",
                            onPressedBritish: () => speakblinds17("en-GB"),
                            onPressedAmerican: () => speakblinds17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) پەردەیەک کە بەرز و نزم دەکرێتەوە بە سووڕدانی لە بەشی سەرەوەی چوارچێوەی پەنجەرەکەوە"),
                          SentencesRow(
                            englishText: "She saw a figure through the blinds.",
                            kurdishText: "کەسێکی بینی لە بەینی پەردەکەوە.",
                            onPressedBritish: () => speakblinds18("en-GB"),
                            onPressedAmerican: () => speakblinds18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Pull up the blinds and let some light in.",
                            kurdishText:
                                "پەردەکان بکەرەوە و ڕێگا بدە ھەندێک ڕۆشنایی بێتە ژوورەوە.",
                            onPressedBritish: () => speakblinds19("en-GB"),
                            onPressedAmerican: () => speakblinds19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ھاوەڵکار) بە بێ ھەبوونی توانای بینین"),
                          SentencesRow(
                            englishText:
                                "Navigating through the thick fog, the plane's captain steered blind, relying on radar and experience.",
                            kurdishText:
                                "لە دەرچوون بەناو تەمە ئەستوورەکەدا، کاپتنی فڕۆکەکە بە کوێرانە بایدەدایەوە بە پشت بەستن بە ڕادار و ئەزموونی.",
                            onPressedBritish: () => speakblinds20("en-GB"),
                            onPressedAmerican: () => speakblinds20("en-US"),
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
- Adjective: blind (derived forms: blinder, blindest)
1. Unable to see (= unsighted)
"a person is blind to the extent that he must devise alternative techniques to do efficiently those things he would do with sight if he had normal vision";
 
2. Unable or unwilling to perceive or understand
"blind to a lover's faults"; "blind to the consequences of their actions"
 
3. Not based on reason or evidence (= unreasoning)
"blind hatred"; "blind faith";
 
4. (of an experiment or test) without the participants knowing the key inputs
 
5. (Of a place or position) having little or no visibility
"a blind corner"
 
6. Closed off, blocked, closed at one end
"a blind alley"

- Noun: blind (derived forms: blinds)
1. People who have severe visual impairments, considered as a group
"he spent hours reading to the blind"
 
2. A hiding place sometimes used by hunters (especially duck hunters)
"he waited impatiently in the blind"
 
3. A protective covering that keeps things out or hinders sight (= screen)
"they had just moved in and had not put up blinds yet";
 
4. Something intended to misrepresent the true nature of an activity (= subterfuge)
"the holding company was just a blind";

- Verb: blind (derived forms: blinded, blinding, blinds)
1. Render unable to see
 
2. Make blind by putting the eyes out
"The criminals were punished and blinded"
 
3. Make dim by comparison or conceal (= dim)
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

  final String _videoId = 'CQQit01HHLY';
  final double _startSeconds = 91;

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

  final String _videoId = 'hSmNg2WGXeQ';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '--_jF4j66gA';
  final double _startSeconds = 41;

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

  final String _videoId = 'ri8RSiuXD9I';
  final double _startSeconds = 51;

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

  final String _videoId = 'DHBo7ka3YZQ';
  final double _startSeconds = 35;

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

  final String _videoId = 'OOXZb0P1tsA';
  final double _startSeconds = 14;

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

  final String _videoId = 'PW2duKZChA8';
  final double _startSeconds = 58;

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

  final String _videoId = 'zJ5yCpcfW5A';
  final double _startSeconds = 7;

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

  final String _videoId = 'W8FyilDVOoU';
  final double _startSeconds = 593;

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

  final String _videoId = 'Ii4Rbbk8zAs';
  final double _startSeconds = 542;

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

  final String _videoId = 'oSU1STltwS0';
  final double _startSeconds = 726;

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

  final String _videoId = 'HD3IBffy6Z4';
  final double _startSeconds = 341;

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

// end blind
