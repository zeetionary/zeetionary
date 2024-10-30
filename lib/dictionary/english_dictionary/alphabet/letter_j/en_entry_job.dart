import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjob extends StatefulWidget {
  const EnglishEntryjob({super.key});

  @override
  State<EnglishEntryjob> createState() => _EnglishEntryjobState();
}

class _EnglishEntryjobState extends State<EnglishEntryjob> {
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
- Noun: job (Derived forms: jobs)
1. What someone normally does to earn money; a person's profession, work, or trade (- occupation, business, line of work, line)
 
2. A specific piece of work required to be done as a duty or for a specific fee (- task, chore)
"estimates of the city's loss on that job ranged as high as a million dollars"; "the job of repairing the engine took several hours";
 
3. A workplace; as in the expression 'on the job'
 
4. An object worked on; a result produced by working
"he held the job in his left hand and worked on it with his right"
 
5. The responsibility to do something
"it is their job to print the truth"
 
6. The performance of a piece of work
"she did an outstanding job as Ophelia"; "he gave it up as a bad job"
 
7. A damaging piece of work
"dry rot did the job of destroying the barn"; "the barber did a real job on my hair"
 
8. A state of difficulty that needs to be resolved (- problem, prob [informal])
"it is always a job to contact him";
 
9. A crime (especially a robbery) (- caper [informal])
"the gang pulled off a bank job in St. Louis";
 
10. (computing) a process or instance of execution of a program (- task)
 
11. (computing) a program application that may consist of several steps but is a single logical unit

- Verb: job (Derived forms: jobbed, jobbing, jobs)
1. Arranged for contracted work to be done by others (- subcontract, farm out)
 
2. Work occasionally
"As a student I jobbed during the semester breaks"
 
3. Invest at a risk (- speculate)
"I bought this house not because I want to live in it but to sell it later at a good price, so I am jobbing";
 
4. [archaic] Profit privately from public office and official business
""",
  );

  final String keyword = "job";
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
    await flutterTts.speak("""job""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I don't have a job at present.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's trying to get a job.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm thinking of applying for a new job.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She's just started a job with a travel company.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His brother's just lost his job.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Don't be late again if you want to keep your job.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've got various jobs around the house to do.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Sorting these papers out is going to be a long job.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She's taken on the job of organizing the Christmas party.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They gave me the tough job of telling applicants that they'd been rejected.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I want to get on with the job of painting my room today.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We finished the job in five hours.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He said he wouldn't do it because it wasn't his job.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's not my job to lock up!""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It's the job of the press to expose wrongdoing.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got six months for that last job he did.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The gang bungled the job and got caught.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's real wood—not one of those plastic jobs.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'qmgTn199WOE';
    const double startSecondsend = 379;
    const String videoIdone = 'Geneo4_3VbE';
    const double startSecondsone = 23;
    const String videoIdtwo = 'LUt7IAnLxdw';
    const double startSecondstwo = 725;
    const String videoIdthree = 'ib-WGAj0BQQ';
    const double startSecondsthree = 44;
    const String videoIdfour = 'PDnA3LOm-xY';
    const double startSecondsfour = 0;
    const String videoIdfive = 'H9rO5sKzOiQ';
    const double startSecondsfive = 221;

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
                      word: """job""",
                      // alsoEnglishWord: "also: job",
                      britshText: """IpaUK: /dʒɒb/""",
                      americanText: """IpaUS: /dʒɑːb/""",
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
کوردی: کار، شوول، ئیش، خەبات، بەرپرسایەتی، کار، کارکردن، کارکرد، ئەرک، پەیور، پلەوپایە، پۆست، کار، بار، دۆخ، ڕەوش، بارودۆخ، کێشە، دۆزە، پرس، مەسەلە،	کردەوەی تاوان‌کارانە بەتایبەت دزی،	بەرهەم، ئەنجام، ئاکام، کار یان شتی تەواوبوو
"""),
// With short examples define "job", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کارێک کە لە بەرامبەردا پارەیەکی بەردەوام وەردەگریت"""),
                    SentencesRow(
                      englishText: """I don't have a job at present.""",
                      kurdishText: """لە ئێستادا کارم نییە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's trying to get a job.""",
                      kurdishText: """هەوڵ دەدات کارێکی دەست بکەوێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm thinking of applying for a new job.""",
                      kurdishText:
                          """بیر لەوە دەکەمەوە داخوازی بۆ کارێک بنێرم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's just started a job with a travel company.""",
                      kurdishText:
                          """تازەگی دەستی بە کارێک کردووە لەگەڵ کۆمپانیایەکی گەشتیاری.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His brother's just lost his job.""",
                      kurdishText: """براکەی تازە کارەکەی لەدەستدا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Don't be late again if you want to keep your job.""",
                      kurdishText:
                          """دووبارە دوامەکەوە ئەگەر دەتەوێت کارەکەت بمێنێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ), // add_sentence
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەرکێکی یان کارێکی دیاریکراو کە دەتەوێت بیکەیت"""),
                    SentencesRow(
                      englishText:
                          """I've got various jobs around the house to do.""",
                      kurdishText: """ژمارەیەک کارم هەیە لە ماڵدا بیانکەم.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Sorting these papers out is going to be a long job.""",
                      kurdishText:
                          """ڕێکخستنی ئەم کاغەزانە کارێکی درێژ دەبێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's taken on the job of organizing the Christmas party.""",
                      kurdishText:
                          """ئەرکی ڕێکخستنی ئاهەنگی کریسمسی وەرگرتووە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They gave me the tough job of telling applicants that they'd been rejected.""",
                      kurdishText:
                          """ئەرکی ناخۆشی ئەوەیان پێمدا کە بە داخوازان بڵێم ڕەتکراونەتەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I want to get on with the job of painting my room today.""",
                      kurdishText:
                          """دەمەوێت ئەمڕۆ کاری بۆیەکردنی ژوورەکەم بکەم.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We finished the job in five hours.""",
                      kurdishText: """کارەکەمان لە پێنج کاتژمێر تەواو کرد.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ), // add_sentence
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) ئەرک یان بەرپرسیاریەتییەک"""),
                    SentencesRow(
                      englishText:
                          """He said he wouldn't do it because it wasn't his job.""",
                      kurdishText:
                          """گوتی نایکات چونکە بەرپرسیاریەتیی ئەو نییە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's not my job to lock up!""",
                      kurdishText: """ئەرکی من نییە بگەڕێم!""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's the job of the press to expose wrongdoing.""",
                      kurdishText:
                          """ئەوە ئەرکی میدیایە کاری چەوت بەدەربخات.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) تاوانێک، بە تایبەتی دزی"""),
                    SentencesRow(
                      englishText:
                          """He got six months for that last job he did.""",
                      kurdishText:
                          """شەش مانگی وەرگرت بۆ ئەو کۆتا تاوانەی کردی.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The gang bungled the job and got caught.""",
                      kurdishText:
                          """گرووپەکە شکستیان هێنا لە تاوانەکە و گیردران.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) جۆرێکی دیاریکراو لە شتێک"""),
                    SentencesRow(
                      englishText:
                          """It's real wood—not one of those plastic jobs.""",
                      kurdishText:
                          """ئەوە تەختەی ڕاستییە ـ نەک یەکێک لەو شتە پلاستیکییانە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
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
// end job