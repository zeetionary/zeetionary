import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjudgement extends StatefulWidget {
  const EnglishEntryjudgement({super.key});

  @override
  State<EnglishEntryjudgement> createState() => _EnglishEntryjudgementState();
}

class _EnglishEntryjudgementState extends State<EnglishEntryjudgement> {
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
- Noun: judgement (Derived forms: judgements)
1. (law) the legal document stating the reasons for a judicial decision (- opinion, legal opinion, judgment)
"judgements are usually written by a single judge";
 
2. An opinion formed by judging something (- judgment, mind, verdict)
"he was reluctant to make his judgement known";
 
3. The cognitive process of reaching a decision or drawing conclusions (- judgment, judging)
 
4. The mental ability to understand and discriminate between relations (- sagacity, sagaciousness, judgment, discernment)
 
5. The capacity to assess situations or circumstances shrewdly and to draw sound conclusions (- judgment, sound judgment, sound judgement, perspicacity)
 
6. (law) the determination by a court of competent jurisdiction on matters submitted to it (- judgment, judicial decision)
 
7. The act of judging or assessing a person or situation or event (- judgment, assessment)
"they criticized my judgement of the contestants";
""",
  );

  final String keyword = "judgement";
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
    await flutterTts.speak("""judgement""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She showed a lack of judgement when she gave Mark the job.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's not something I can give you rules for—you'll have to use your judgement.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He achieved his aim more by luck than judgement.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The accident was caused by an error of judgement on the part of the pilot.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Judgements of quality are always subjective.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He refused to make a judgement about the situation.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Who am I to pass judgement on her behaviour?""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It was, in her judgement, the wrong thing to do.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The judgment will be given tomorrow.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The court has yet to pass judgment in this case.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They are trying to get the judgement reversed.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The sacked workers won a judgement against the company.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/quI772XuCpo?t=50';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/O-6f5wQXSu8?t=510';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/mcZdTvOqmvI?t=1197';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/xi4wZJ-7ZCg?t=1340';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/9s9UXXAmlTg?t=39';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/ht7MNqZT_hU?t=590';
    const double startSecondsfive = 0;

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
                      word: """judgement""",
                      // alsoEnglishWord: "also: judgement",
                      britshText: """IpaUK: /ˈdʒʌdʒmənt/""",
                      americanText: """IpaUS: /ˈdʒʌdʒmənt/""",
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
کوردی: دادگەری، دادپرسی، دادوەری، دادکردن، شەرع‌کردن، بڕیار، ڕا، توانای بڕیاردان (ژیرانە)، بڕیاری دادگا، دادنامە،	توانایی لێک‌کردنەوە، توانایی هەڵسەنگاندن و لێکدانەوە،	ناوگژیوانی، ناوبژیوانی، دادوەری،	بۆچوون، دیتن، نێرین، باوەڕ،	سزا (ی خودایی)، بەڵا(ی ئاسمانی)، قەساوەت
"""),
// With short examples define "judgement", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) توانای بڕیاردانی درووست لە دوای ئەوەی بەوریاییەوە بیر لەوە بکەیتەوە چی بکەیت"""),
                    SentencesRow(
                      englishText:
                          """She showed a lack of judgement when she gave Mark the job.""",
                      kurdishText:
                          """توانای بڕیاردانی کەمی هەبوو کە کارەکەی دا بە مارک.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's not something I can give you rules for—you'll have to use your judgement.""",
                      kurdishText:
                          """ئەوە شتێک نییە یاسات پێبدەم بۆی ـ دەبێت بڕیاردانی خۆت بەکاربێنیت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He achieved his aim more by luck than judgement.""",
                      kurdishText:
                          """ئامانجەکەی زیاتر بە بەخت بەدەستهێنا وەک لە توانای بڕیاردان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The accident was caused by an error of judgement on the part of the pilot.""",
                      kurdishText:
                          """ڕووداوەکە ڕوویدا بە هەڵەیەکی بڕیاردان لەلایەن فڕۆکەوانەکەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) بۆچوونێک کە دەتبێت لەسەر شتێک لە دوای بیرکردنەوە بە وردی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Judgements of quality are always subjective.""",
                      kurdishText: """هەڵسەنگاندنی کوالێتی هەمیشە کەسییە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He refused to make a judgement about the situation.""",
                      kurdishText: """ڕەتیکردەوە هەڵسەنگاندن بۆ دۆخەکە بکات.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Who am I to pass judgement on her behaviour? (= to criticize it)""",
                      kurdishText: """من کێم کە بڕیار لە هەڵسووکەوتی بدەم؟""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was, in her judgement, the wrong thing to do.""",
                      kurdishText:
                          """بە هەڵەسەنگاندنی ئەو شتێکی هەڵە بوو بۆ کردن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) بڕیاری دادگا یان دادوەرێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The judgment will be given tomorrow.""",
                      kurdishText: """سبەی بڕیار دەدرێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The court has yet to pass judgment (= say what its decision is) in this case.""",
                      kurdishText:
                          """دادگاکە هێشتا لە بڕیارداندایە لەم کەیسەدا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They are trying to get the judgement reversed.""",
                      kurdishText: """هەوڵ دەدەن بڕیارەکە هەڵبوەشێننەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The sacked workers won a judgement against the company.""",
                      kurdishText:
                          """کرێکارە دەرکراوەکان بڕیاردانێکیان دژ بە کۆمپانیاکە بردەوە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
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
// end judgement