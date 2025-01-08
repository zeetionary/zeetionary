import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryany extends StatefulWidget {
  const EnglishEntryany({super.key});

  @override
  State<EnglishEntryany> createState() => _EnglishEntryanyState();
}

class _EnglishEntryanyState extends State<EnglishEntryany> {
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
- Adverb: any 
1. To any degree or extent
"it isn't any better"

-Adjective: any 
1. One, some, every or all without specification; entity, elective existential pronoun; quantifier, elective existential (= whatever, whatsoever)
"give me any peaches you don't want"; "not any milk is left"; "any child would know that"; "pick any card"; "any day now"; "cars can be rented at almost any airport"; "at twilight or any other time"; "beyond any doubt"; "need any help we can get";
""",
  );
// 188888880002200

  final String keyword = "any";
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
    await flutterTts.speak("""any""");
  }

  Future<void> speakany812(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I didn't eat any meat.");
  }

  Future<void> speakany814(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can't go out without any shoes.");
  }

  Future<void> speakany815(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He forbids any talking in class.");
  }

  Future<void> speakany817(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Take any book you like.");
  }

  Future<void> speakany819(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Any teacher will tell you that students learn at different rates.");
  }

  Future<void> speakany821(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It isn't just any day—it's my birthday!");
  }

  Future<void> speakany944(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We need some more paint; there isn't any left.");
  }

  Future<void> speakany947(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll take any you don't want.");
  }

  Future<void> speakany951(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He wasn't any good at French.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '21Z4RIOFhMA';
    const double startSecondsend = 752;
    const String videoIdone = 'hFZFjoX2cGg';
    const double startSecondsone = 276;
    const String videoIdtwo = 'a_TSR_v07m0';
    const double startSecondstwo = 322;
    const String videoIdthree = 'VrKW58MS12g';
    const double startSecondsthree = 761;
    const String videoIdfour = 'PUvp9fmAAAY';
    const double startSecondsfour = 720;
    const String videoIdfive = 'DPZzrlFCD_I';
    const double startSecondsfive = 455;
    // final String _videoId = 'hS2x1zl4rn0';
    // final double _startSeconds = 139;
    // final String _videoId = 'qsobCAGiuRU';
    // final double _startSeconds = 251;
    // final String _videoId = '_spuxXnul0U';
    // final double _startSeconds = 281;
    // final String _videoId = 'Kou7ur5xt_4';
    // final double _startSeconds = 412;
    // final String _videoId = 'W4mmfzFazoI';
    // final double _startSeconds = 221;
    // final String _videoId = '8HEfIJlcFbs';
    // final double _startSeconds = 547;

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
                      word: """any""",
                      // alsoEnglishWord: "also: any",
                      britshText: """IpaUK: /ˈeni/""",
                      americanText: """IpaUS: /ˈeni/""",
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
کوردی: ھیچ‌چەشنە، ھیچ‌کەس، ھیچ‌کەسێ، ھەرکەس، ھەموو کەس، ھەرکەسێ، ھیچ‌یەک، ھەر، ھەریەک، ھەرکام، ئیدی، ئیتر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (دیارخەر) بۆ پیشاندانی بڕ لەگەڵ ناوی نەژمێردراو یان کۆ لە ڕستەی نەرێ و پرسیاری، لە دوای if و whether، یان لە دوای ھەندێک کردارەوە، بۆ نموونە prevent و ban و forbid"""),
                    SentencesRow(
                      englishText: "I didn't eat any meat.",
                      kurdishText: "ھیچ گۆشتم نەخوارد.",
                      onPressedBritish: () => speakany812("en-GB"),
                      onPressedAmerican: () => speakany812("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "You can't go out without any shoes.",
                      kurdishText: "ناتوانی بێ ھیچ پێڵاوێک بچیتە دەرەوە.",
                      onPressedBritish: () => speakany814("en-GB"),
                      onPressedAmerican: () => speakany814("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "He forbids any talking in class.",
                      kurdishText:
                          "ھەموو جۆرە قسەکردنێک لە پۆلدا قەدەغە دەکات.",
                      onPressedBritish: () => speakany815("en-GB"),
                      onPressedAmerican: () => speakany815("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (دیارخەر) لەگەڵ ناوی ژمێردراوی تاک بەکاردێت بۆ ئاماژە بە یەکێک لە کۆمەڵێک کاتێک گرنگ نییە کەمەیان بێت"""),
                    SentencesRow(
                      englishText: "Take any book you like.",
                      kurdishText: "ھەر کتێبێکت دەوێت بیبە.",
                      onPressedBritish: () => speakany817("en-GB"),
                      onPressedAmerican: () => speakany817("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Any teacher will tell you that students learn at different rates.",
                      kurdishText:
                          "ھەموو مامۆستایەک پێت دەڵێت قوتابیان بەخێرایی جیاواز فێردەبن.",
                      onPressedBritish: () => speakany819("en-GB"),
                      onPressedAmerican: () => speakany819("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (دیارخەر) پیشاندانی ئەوەی شتێک گرنگە"""),
                    SentencesRow(
                      englishText: "It isn't just any day—it's my birthday!",
                      kurdishText:
                          "ئەمڕۆ ھەر ڕۆژێکی وا ئاسایی نییە، لەدایکبوونی منە!",
                      onPressedBritish: () => speakany821("en-GB"),
                      onPressedAmerican: () => speakany821("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (جێناو) بەکاردەھێنرێت لە ڕستەی نەرێ و پرسیاری، لە دوای if و whether بۆ ئاماژەکردن بە بڕ یان ژمارە"""),
                    SentencesRow(
                      englishText:
                          "We need some more paint; there isn't any left.",
                      kurdishText:
                          "پێویستیمان بە ھەندێکی تر بۆیەیە؛ ھیچ نەماوە.",
                      onPressedBritish: () => speakany944("en-GB"),
                      onPressedAmerican: () => speakany944("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (جێناو) یەکێک یان زیاتر لە ژمارەیەک شت یان خەڵک کە گرنگ نییە"""),
                    SentencesRow(
                      englishText: "I'll take any you don't want.",
                      kurdishText: "ئەوەیان دەبەم کە ناتەوێ.",
                      onPressedBritish: () => speakany947("en-GB"),
                      onPressedAmerican: () => speakany947("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (جێناو) بەکاردێت بۆ جەختکردنەوە لە ھاوەڵناوێک یان ھاوەڵکارێک لە ڕستەی نەرێ و پرسیاری، بە واتای 'بە ھیچ شێوەیەک'"""),
                    SentencesRow(
                      englishText: "He wasn't any good at French.",
                      kurdishText: "ھیچ لە فەرەنسی باش نەبوو.",
                      onPressedBritish: () => speakany951("en-GB"),
                      onPressedAmerican: () => speakany951("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
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
