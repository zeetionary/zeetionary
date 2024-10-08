// end after
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryafter extends StatefulWidget {
  const EnglishEntryafter({super.key});

  @override
  State<EnglishEntryafter> createState() => _EnglishEntryafterState();
}

class _EnglishEntryafterState extends State<EnglishEntryafter> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Preposition: after
1. Subsequently to; at a later time than
"I went for a walk after dinner"
 
2. In pursuit of
"run after him"
 
3. Inquiring into
"ask after her health"
 
4. Next in position, sequence or rank
"in the alphabet, B is after A"
 
5. In allusion to, in imitation of; following or referencing
"named after his grandfather"
 
6. As a result of (= following)
"she was sacked after her argument with the boss";
 
7. Coming at a later time or previous position (= following, behind)
"he finished the race after me"; "he leaves a trail of destruction after him";

- Adverb: after
1. Happening at a time subsequent to a reference time (= subsequently, later, afterwards, afterward, later on, since)
"two hours after that";

2. Behind or in the rear
"and Jill came tumbling after"

- Adjective: after 
1. Located farther aft

- Conjunction: after 
1. In the following period of time
"I went home after the match finished"
""",
  );
// 188888880002200

  final String keyword = "after";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""after""");
  }

  Future<void> speakafter157(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We'll leave after lunch.");
  }

  Future<void> speakafter2499(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("After winning the prize she became famous overnight.");
  }

  Future<void> speakafter4888(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your name comes after mine in the list.");
  }

  Future<void> speakafter4666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's the tallest, after Richard.");
  }

  Future<void> speakafter7928(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Shut the door after you.");
  }

  Future<void> speakafter4855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It was pleasantly cool in the house after the heat outside.");
  }

  Future<void> speakafter5622(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll never forgive him after what he said.");
  }

  Future<void> speakafter96771(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I can't believe she'd do that, not after all I've done for her.");
  }

  Future<void> speakafter152888(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've told you time after time not to do that.");
  }

  Future<void> speakafter1255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The police are after him.");
  }

  Future<void> speakafter945111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She asked after you.");
  }

  Future<void> speakafter459322(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We named the baby Ena after her grandmother.");
  }

  Future<void> speakaft2566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll call you after I've spoken to them.");
  }

  Future<void> speakafte499352(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Several years after they'd split up they met again by chance in Paris.");
  }

  Future<void> speakafte98332(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I could come next week, or the week after.");
  }

  Future<void> speakafter5355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In after years we never heard from him");
  }

  @override
  Widget build(BuildContext context) {
    const String videoId0 = 'IZ_SFbaysHk';
    const double startSeconds0 = 31;
    const String videoId1 = 'LHOYkT6SoqA';
    const double startSeconds1 = 19;
    const String videoId2 = '0eVTk_2zcaA';
    const double startSeconds2 = 281;
    const String videoId3 = 'eG3mgqxoU20';
    const double startSeconds3 = 94;
    const String videoId4 = 'UOIFBKB4mIE';
    const double startSeconds4 = 263;
    const String videoId5 = '5aYZcYb9VDg';
    const double startSeconds5 = 357;
    // const String videoId = 'VPMfvzdZ5TA';
    // const double startSeconds = 338;
    // const String videoId = 'FVELA7GyMxg';
    // const double startSeconds = 1254;
    // const String videoId = 'ihtmFAv-CKU';
    // const double startSeconds = 23;
    // const String videoId = 'KU6Gk0iQHI4';
    // const double startSeconds = 29;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """after""",
                      // alsoEnglishWord: "also: after",
                      britshText: """IpaUK: /ˈɑːftə(r)/""",
                      americanText: """IpaUS: /ˈɑːftər/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const KurdishVocabulary(text: """
کوردی: دوای، پاش، دوای ئەوەی کە، لە پاش، پاش ئەوەی کە، سەرەڕای، لەگەڵ ئەوەش (کە)، بە شێوازی، بەشێوەی، بە شوێن، بەدوو، بە دوای، لە پەی، پشتەسەر، پاشین، پاش، دواوە، دادێ، بەپێی، بەگوێرەی
"""),
                    const DefinitionKurdish(
                        text: """١. (ئامراز) لە دوای شتێک"""),
                    SentencesRow(
                      englishText: "We'll leave after lunch.",
                      kurdishText: "لە دوای نانی نیوەڕۆ دەچین.",
                      onPressedBritish: () => speakafter157("en-GB"),
                      onPressedAmerican: () => speakafter157("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "After winning the prize she became famous overnight.",
                      kurdishText:
                          "لە دوای بردنەوەی خەڵاتەکە لە شەو و ڕۆژێکدا بەناوبانگ بوو.",
                      onPressedBritish: () => speakafter2499("en-GB"),
                      onPressedAmerican: () => speakafter2499("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) لە دوای کەسێک/شتێکەوە لە ڕیزبەندییەکدا"""),
                    SentencesRow(
                      englishText: "Your name comes after mine in the list.",
                      kurdishText: "ناوت لە دوای ھی منەوەیە لە لیستەکەدا.",
                      onPressedBritish: () => speakafter4888("en-GB"),
                      onPressedAmerican: () => speakafter4888("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "He's the tallest, after Richard.",
                      kurdishText: "لە دوای ڕیچارد ئەو بەرزترینە.",
                      onPressedBritish: () => speakafter4666("en-GB"),
                      onPressedAmerican: () => speakafter4666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) لە دوای کەسێکی ڕۆشتوو"""),
                    SentencesRow(
                      englishText: "Shut the door after you.",
                      kurdishText: "دەرگاکە بگرە لە دوای خۆت.",
                      onPressedBritish: () => speakafter7928("en-GB"),
                      onPressedAmerican: () => speakafter7928("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ئامراز) بەراورد بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "It was pleasantly cool in the house after the heat outside.",
                      kurdishText:
                          "لە ماڵەوە فێنک و خۆش بوو بەراورد بە گەرماکەی دەرەوە.",
                      onPressedBritish: () => speakafter4855("en-GB"),
                      onPressedAmerican: () => speakafter4855("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ئامراز) لە ئەنجامی شتێک کە ڕوویداوە"""),
                    SentencesRow(
                      englishText: "I'll never forgive him after what he said.",
                      kurdishText: "ھەرگیز لێی خۆشنابم لە دوای ئەوەی وتی.",
                      onPressedBritish: () => speakafter5622("en-GB"),
                      onPressedAmerican: () => speakafter5622("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (ئامراز) سەرەڕای شتێک کە ڕوویداوە"""),
                    SentencesRow(
                      englishText:
                          "I can't believe she'd do that, not after all I've done for her.",
                      kurdishText:
                          "باوەڕناکەم ئەوەی کرد، سەرەڕای ئەو ھەموو شتەی بۆم کردە.",
                      onPressedBritish: () => speakafter96771("en-GB"),
                      onPressedAmerican: () => speakafter96771("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (ئامراز) بەکاردێت بۆ وتنی ئەوەی شتێک زۆر یان بەبەردەوامی ڕوویداوە"""),
                    SentencesRow(
                      englishText:
                          "I've told you time after time not to do that.",
                      kurdishText: "دووبارە و دووبارە پێم وتووی ئەوە نەکەیت.",
                      onPressedBritish: () => speakafter152888("en-GB"),
                      onPressedAmerican: () => speakafter152888("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (ئامراز) ھەوڵدان بۆ گرتنی کەسێک/شتێک"""),
                    SentencesRow(
                      englishText: "The police are after him.",
                      kurdishText: "پۆلیس بەدوایەتی.",
                      onPressedBritish: () => speakafter1255("en-GB"),
                      onPressedAmerican: () => speakafter1255("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٩. (ئامراز) دەربارەی کەسێک"""),
                    SentencesRow(
                      englishText: "She asked after you (= how you were).",
                      kurdishText: "ھەواڵی پرسیت.",
                      onPressedBritish: () => speakafter945111("en-GB"),
                      onPressedAmerican: () => speakafter945111("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
١٠. (ئامراز) ناونانی کەسێک بەناوی کەسێکی ترەوە"""),
                    SentencesRow(
                      englishText:
                          "We named the baby Ena after her grandmother.",
                      kurdishText: "منداڵەکەمان بەناوی داپیرەیەوە ناونا ئێنا.",
                      onPressedBritish: () => speakafter459322("en-GB"),
                      onPressedAmerican: () => speakafter459322("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
١١. (لێکدەر) لە دوای ڕوودانی شتێک"""),
                    SentencesRow(
                      englishText: "I'll call you after I've spoken to them.",
                      kurdishText:
                          "پەیوەندیت پێوە دەکەم لە دوای ئەوەی قسەیان لەگەڵ دەکەم.",
                      onPressedBritish: () => speakaft2566("en-GB"),
                      onPressedAmerican: () => speakaft2566("en-US"),
                    ),
                    const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Several years after they'd split up they met again by chance in Paris.",
                      kurdishText:
                          "چەند ساڵێک دوای ئەوەی جیابوونەوە، بە شانس یەکیان لە پاریس دیتەوە.",
                      onPressedBritish: () => speakafte499352("en-GB"),
                      onPressedAmerican: () => speakafte499352("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
١٢. (ھاوەڵکار) لە دوای کاتێک"""),
                    SentencesRow(
                      englishText: "I could come next week, or the week after.",
                      kurdishText: "ھەفتەی دواتر دێم، یان ھەفتەی دوای ئەوە.",
                      onPressedBritish: () => speakafte98332("en-GB"),
                      onPressedAmerican: () => speakafte98332("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
١٣. (ھاوەڵناو) لە دوای کاتێک"""),
                    SentencesRow(
                      englishText: "In after years we never heard from him.",
                      kurdishText: "ساڵانی دواتر ھیچمان لێ نەبیست.",
                      onPressedBritish: () => speakafter5355("en-GB"),
                      onPressedAmerican: () => speakafter5355("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId0),
                    videoId: videoId0,
                    startSeconds: startSeconds0,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId1),
                    videoId: videoId1,
                    startSeconds: startSeconds1,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId2),
                    videoId: videoId2,
                    startSeconds: startSeconds2,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId3),
                    videoId: videoId3,
                    startSeconds: startSeconds3,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId4),
                    videoId: videoId4,
                    startSeconds: startSeconds4,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId5),
                    videoId: videoId5,
                    startSeconds: startSeconds5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB
