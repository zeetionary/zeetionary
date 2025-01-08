import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryand extends StatefulWidget {
  const EnglishEntryand({super.key});

  @override
  State<EnglishEntryand> createState() => _EnglishEntryandState();
}

class _EnglishEntryandState extends State<EnglishEntryand> {
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
- Conjunction: and 
1. Used to connect words, clauses or sentences; used to indicate that the following thing is also included, or add an additional point
"eggs, chips and bacon"
 
2. In order to; used instead of "to", especially after try, come, go
"I'll try and do that before tomorrow"
 
3. Used to indicate causation or something that follows
"do that and I'll scream"

- Preposition: and 
1. With the addition of; increased by (= plus)
"one and one is two";
""",
  );
// 188888880002200

  final String keyword = "and";
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
    await flutterTts.speak("""and""");
  }

  Future<void> speakand15005(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sue and I left early.");
  }

  Future<void> speakand5044(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She came in and took her coat off.");
  }

  Future<void> speakand2205(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Go and get me a pen please.");
  }

  Future<void> speakand0258(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("‘We talked for hours.’ ‘And what did you decide?’");
  }

  Future<void> speakand8854(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Miss another class and you'll fail.");
  }

  Future<void> speakand5560(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What's 47 and 16?");
  }

  Future<void> speakand22410(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The pain got worse and worse.");
  }

  Future<void> speakand5570(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I like city life but there are cities and cities.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ML8IL77gQ3k';
    const double startSecondsend = 50;
    const String videoIdone = 'njn6krU3tQ8';
    const double startSecondsone = 13;
    const String videoIdtwo = 'LDP08F3op80';
    const double startSecondstwo = 6;
    const String videoIdthree = 'Btu0O47u3rY';
    const double startSecondsthree = 1;
    const String videoIdfour = '2ihOXaU0I8o';
    const double startSecondsfour = 12;
    const String videoIdfive = 'z7JU0BoX0nQ';
    const double startSecondsfive = 22;
    // final String _videoId = 'sSdMX8AWurI';
    // final double _startSeconds = 7;
    // final String _videoId = 'kNw8V_Fkw28';
    // final double _startSeconds = 87;
    // final String _videoId = '_spuxXnul0U';
    // final double _startSeconds = 29;
    // final String _videoId = 'wmiIUN-7qhE';
    // final double _startSeconds = 25;
    // final String _videoId = '4J0xFUyz1nw';
    // final double _startSeconds = 183;
    // final String _videoId = 'Zi4LMpSDccc';
    // final double _startSeconds = 69;

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
                      word: """and""",
                      // alsoEnglishWord: "also: and",
                      britshText:
                          """IpaUK: /ənd/, /ən/, /n/, strong form  /ænd/""",
                      americanText:
                          """IpaUS: /ənd/, /ən/, /n/, strong form  /ænd/""",
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
کوردی: و، وە، لەگەڵ، تا، ھەتا، کە، ھەروەھا
"""),
                    const DefinitionKurdish(text: """١. (لێکدەر) و"""),
                    SentencesRow(
                      englishText: "Sue and I left early.",
                      kurdishText: "من و سوو زوو ڕۆشتین.",
                      onPressedBritish: () => speakand15005("en-GB"),
                      onPressedAmerican: () => speakand15005("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (لێکدەر) دواتر، لە دوای شتێک"""),
                    SentencesRow(
                      englishText: "She came in and took her coat off.",
                      kurdishText: "ھاتە ژوورەوە و پاڵتاوەکەی داکەند.",
                      onPressedBritish: () => speakand5044("en-GB"),
                      onPressedAmerican: () => speakand5044("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (لێکدەر) لە دوای ھەندێک کردار بەکاردێت بەمەبەستی پیشاندانی ھۆکاری ئەنجام‌دانی کردارەکە"""),
                    SentencesRow(
                      englishText: "Go and get me a pen please.",
                      kurdishText: "تکایە بچۆ و پێنووسێکم بۆ بێنە.",
                      onPressedBritish: () => speakand2205("en-GB"),
                      onPressedAmerican: () => speakand2205("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (لێکدەر) بەکاردێت بۆ ناساندنی لێدوانێک یان پرسیارێک"""),
                    SentencesRow(
                      englishText:
                          "‘We talked for hours.’ ‘And what did you decide?’",
                      kurdishText:
                          "«بۆ چەندین کاتژمێر گفتوگۆمان کرد.» «ئەی چی بڕیارێکتان دا؟»",
                      onPressedBritish: () => speakand0258("en-GB"),
                      onPressedAmerican: () => speakand0258("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (لێکدەر) بۆ پیشاندانی ئەنجام"""),
                    SentencesRow(
                      englishText: "Miss another class and you'll fail.",
                      kurdishText: "یەک وانەی تر نەیەی دەرناچیت.",
                      onPressedBritish: () => speakand8854("en-GB"),
                      onPressedAmerican: () => speakand8854("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (لێکدەر) کۆ؛ لە کۆکردنەوەدا بو وتنی ژمارەیەک زیادبکرێت بۆ ژمارەیەکی تر"""),
                    SentencesRow(
                      englishText: "What's 47 and 16?",
                      kurdishText: "٤٧ کۆی ١٦ چەند دەکات؟",
                      onPressedBritish: () => speakand5560("en-GB"),
                      onPressedAmerican: () => speakand5560("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (لێکدەر) لەگەڵ وشەی دووبارەدا بەکاردێت بۆ پیشاندانی دووبارەبوونەوە و بەردەوامی"""),
                    SentencesRow(
                      englishText: "The pain got worse and worse.",
                      kurdishText: "ئازارەکە خراپتر و خراپتر بوو.",
                      onPressedBritish: () => speakand22410("en-GB"),
                      onPressedAmerican: () => speakand22410("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (لێکدەر) لەگەڵ وشەی دووبارەدا بەکاردێت وتنی ئەوەی دوو شت دەکرێت یەک خاسیەتیان ھەبێت بەڵام زۆر جیاواز بن"""),
                    SentencesRow(
                      englishText:
                          "I like city life but there are cities and cities.",
                      kurdishText:
                          "حەزم لە ژیانی شارە، بەڵام شار ھەیە و شاری تریش ھەیە.",
                      onPressedBritish: () => speakand5570("en-GB"),
                      onPressedAmerican: () => speakand5570("en-US"),
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

// end WORD_WEB


