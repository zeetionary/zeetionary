import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinsurance extends StatefulWidget {
  const EnglishEntryinsurance({super.key});

  @override
  State<EnglishEntryinsurance> createState() => _EnglishEntryinsuranceState();
}

class _EnglishEntryinsuranceState extends State<EnglishEntryinsurance> {
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
- Noun: insurance (Derived forms: insurances)
1. Promise of reimbursement in the case of loss; paid to people or companies so concerned about hazards that they have made prepayments to an insurance company
 
2. Written contract or certificate of insurance (- policy, insurance policy)
"you should have read the small print on your insurance";
 
3. Protection against future loss (- indemnity)
""",
  );

  final String keyword = "insurance";
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
    await flutterTts.speak("""insurance""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Private insurance accounts for about 35 per cent of healthcare in the US.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Ask advice from an insurance broker.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The insurance plan will provide substantial cash benefits to your family in case of your death.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You could have claimed the cost of the hotel room from your insurance.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The policy included insurance against cancellation or curtailment of the holiday.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The insurance policy covers sudden death or disablement.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Check the list of exclusions in the insurance policy.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She gave false information to the insurance company.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's working for an insurance company.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This insurance provides indemnity against legal costs and damages.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""When her husband died, she received £50 000 in insurance.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The insurance will pay for the damage.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """At that time people had large families as an insurance against some children dying.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'SrDEtSlqJC4';
    const double startSecondsend = 403;
    const String videoIdone = 'cfwuadOlyz0';
    const double startSecondsone = 450;
    const String videoIdtwo = 'LLmsekLy_yI';
    const double startSecondstwo = 76;
    const String videoIdthree = 'zX5TrXxnx7k';
    const double startSecondsthree = 10;
    const String videoIdfour = 'i7ILviehDvw';
    const double startSecondsfour = 0;
    const String videoIdfive = '-m0Qh8fv0i0';
    const double startSecondsfive = 244;

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
                      word: """insurance""",
                      // alsoEnglishWord: "also: insurance",
                      britshText: """IpaUK: /ɪnˈʃʊərəns/,  /ɪnˈʃɔːrəns/""",
                      americanText: """IpaUS: /ɪnˈʃʊrəns/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "insurance", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ڕێکەوتنێک لەگەڵ کۆمپانیایەک کە بڕە پارەیەکی دیاریکراویان بەردەوام پێ دەدەین و لەبەرامبەردا ئەوان خەرجییەکانی دابین دەکەن، بۆ نموونە ئەگەر بمریت یان نەخۆش بیت، یان کە شتێک بشکێنیت"""),
                    SentencesRow(
                      englishText:
                          """Private insurance accounts for about 35 per cent of healthcare in the US.""",
                      kurdishText:
                          """بیمەی تایبەتی ڕێژەی ٣٥٪ ــی کەرتی تەندرووستی ئەمریکا پێکدێنێت.""",
                      englishNote:
                          """This means that approximately 35% of healthcare services in the US are paid for through private insurance companies, rather than government programs or out-of-pocket payments, showing the significant role of private insurance in the country's healthcare system.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The insurance plan will provide substantial cash benefits to your family in case of your death.""",
                      kurdishText:
                          "ڕێککەوتنی بیمەکە پارەیەکی زۆری کاش لەخۆدەگرێت بۆ خێزانەکەت لە حاڵەتی مردنت.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The insurance policy covers sudden death or disablement.""",
                      kurdishText:
                          "ڕێکەوتنی بیمەکە مردنی لەناکاو و کەمئەندامبوون لەخۆدەگرێت.",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Check the list of exclusions in the insurance policy.""",
                      kurdishText:
                          """سەیری لیستی لەخۆنەگتنەکان بکە لە سیاسەتی بیمەکە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This insurance provides indemnity against legal costs and damages.""",
                      kurdishText:
                          """ئەم بیمەیە بەڵێنی قەرەبوو دەدات دژ بە خەرجی یاسایی و زیان.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) کاری پێدانی بیمە"""),
                    SentencesRow(
                      englishText: """Ask advice from an insurance broker.""",
                      kurdishText: "داوای ڕاوێژ بکە لە دەڵاڵێکی بیمەوە.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's working for an insurance company.""",
                      kurdishText: """بۆ کۆمپانیایەکی بیمە کار دەکات.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She gave false information to the insurance company.""",
                      kurdishText: """زانیاریی ھەڵەی دا بە کۆمپانیای بیمەکە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو پارەیەی کە دەدرێت بە کۆمپانیای بیمە یان وەردەگیرێت"""),
                    SentencesRow(
                      englishText:
                          """When her husband died, she received £50 000 in insurance.""",
                      kurdishText:
                          """کە پیاوەکەی مرد، ٥٠٠٠٠ پاوەندی وەک بیمە وەرگرت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The insurance will pay for the damage.""",
                      kurdishText: """پارەی بیمەکە تێچووی زیانەکە دەدات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You could have claimed the cost of the hotel room from your insurance.""",
                      kurdishText:
                          "دەتتوانی لە بیمەکەت داوای کرێی ژووری ھوتێلەکەت بکردایە.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) شتێک کە دەیکەیت بۆ پاراستنی خۆت لە شتێکی خراپ لە داهاتوودا"""),
                    SentencesRow(
                      englishText:
                          """At that time people had large families as an insurance against some children dying.""",
                      kurdishText:
                          """لەو کاتەدا خەڵکی خێزانی گەورەی دەبوو بۆ دڵنیایی لەوەی چەند منداڵێک بمرن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
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
// end insurance
