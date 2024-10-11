import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimpression extends StatefulWidget {
  const EnglishEntryimpression({super.key});

  @override
  State<EnglishEntryimpression> createState() => _EnglishEntryimpressionState();
}

class _EnglishEntryimpressionState extends State<EnglishEntryimpression> {
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
- Noun: impression (Derived forms: impressions)
1. A vague idea in which some confidence is placed (- feeling, belief, notion, opinion)
"his impression of her was favourable";
 
2. An outward appearance (- effect)
"he made a good impression"; "I wanted to create an impression of success";
 
3. A clear and telling mental image (- mental picture, picture)
"the events left a permanent impression in his mind";
 
4. A concavity in a surface produced by pressing (- depression, imprint)
"he left the impression of his fingers in the soft mud";
 
5. A symbol that is the result of printing or engraving (- stamp)
"he put his impression on the envelope";
 
6. (printing) all the copies of a work printed at one time (- printing)
"they ran off an initial impression of 2000 copies";
 
7. (dentistry) an imprint of the teeth and gums in wax or plaster
"the dentist took an impression for use in preparing an inlay"
 
8. An impressionistic portrayal of a person
"he did a funny impression of a politician"
 
9. The act of pressing one thing on or into the surface of another
"he watched the impression of the seal on the hot wax"
""",
  );

  final String keyword = "impression";
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
    await flutterTts.speak("""impression""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My first impression of him was favourable.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She gives the impression of being very busy.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I did not get the impression that they were unhappy about the situation.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I had the impression that it was all done in a hurry.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""My impression is that there are still a lot of problems.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had the impression that someone was dogging her steps.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He seems to be under the erroneous impression that she is in love with him.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She made a favourable impression on his parents.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I get the impression that he is bored with his job.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He had the strong impression that someone was watching him.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You'll have to play better than that if you really want to make an impression.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His trip to India made a strong impression on him.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My words made no impression on her.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This is an artist's impression of the new stadium.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He did an impression of the prime minister.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Clever lighting creates an impression of space in a room.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The dentist made an impression of his teeth.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '544DTGHIBM0';
    const double startSecondsend = 606;
    const String videoIdone = 'nRafaCcfrcI';
    const double startSecondsone = 75;
    const String videoIdtwo = 'rRymSi8SmqA';
    const double startSecondstwo = 807;
    const String videoIdthree = 'lGSOWwUvJiU';
    const double startSecondsthree = 1614;
    const String videoIdfour = 'YRhqMWUH2Ig';
    const double startSecondsfour = 862;
    const String videoIdfive = 'N4kvtt2T_6Y';
    const double startSecondsfive = 399;

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
                      word: """impression""",
                      // alsoEnglishWord: "also: impression",
                      britshText: """IpaUK: /ɪmˈpreʃn/""",
                      americanText: """IpaUS: /ɪmˈpreʃn/""",
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
کوردی: باندۆر، شوێن، نیشانە، شەقڵ، مۆرک،	کاریگەری، کارتێ‌کردن، کارلێ‌کردن،	هەست،	بۆچوون، دیتن، بیرۆکە،	چاپ، ژمارەی ئەو کۆپی‌یانەی کە بە جارێ لە چاپ دێنەدەرێ،	دەمەلاسکێ، لاسایی،	نیشانەکردن، دیاری‌کردن
"""),
// With short examples define "impression", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بیرۆکەیەک، هەستێک، یان بۆچوونێک کە لەسەر ک/شت بۆت دێت، یان ئەو کەسە/شتە پێت دەدات"""),
                    SentencesRow(
                      englishText:
                          """My first impression of him was favourable.""",
                      kurdishText: """یەکەم هاتنەبەرچاویم باش بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She gives the impression of being very busy.""",
                      kurdishText:
                          """ئەو هاتنەبەرچاوەی هەیە کە زۆر سەرقاڵ بێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I did not get the impression that they were unhappy about the situation.""",
                      kurdishText:
                          """ئەو هەستەم بۆ درووست نەبوو کە ناڕەحەت بوون بە دۆخەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I had the impression that it was all done in a hurry.""",
                      kurdishText:
                          """ئەو هەستەم هەبوو کە هەمووی بە خێرایی کرابوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My impression is that there are still a lot of problems.""",
                      kurdishText: """تێگەشتنم ئەوە بوو هێشتا کێشەی زۆر هەن.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had the impression that someone was dogging her steps.""",
                      kurdishText:
                          "ئەو ھەستەی ھەبوو کە کەسێک بە شوێن ھەنگاوەکانیەتی.",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He seems to be under the erroneous impression that she is in love with him.""",
                      kurdishText:
                          """وادیاربوو لەژێر ئەو تێگەشتنە ھەڵەیە بێت کە ئەو لە خۆشەویستیدایە لەگەڵی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I get the impression that he is bored with his job.""",
                      kurdishText:
                          """ئەو تێگەشتنەم ھەیە کە لە کارەکەیدا بێزارە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had the strong impression that someone was watching him.""",
                      kurdishText:
                          """ئەو ھەستە بەھێزەی ھەبوو کە کەسێک سەیری دەکات.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو کاریگەرییەی کە ئەزموونێک یان کەسێک هەیەتی لەسەر ک/شت"""),
                    SentencesRow(
                      englishText:
                          """You'll have to play better than that if you really want to make an impression (= to make people admire you).""",
                      kurdishText:
                          """دەبێت باشتر لەوە یاری بکەیت ئەگەر بتەوێت جێپەنجەت دابنێیت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His trip to India made a strong impression on him.""",
                      kurdishText:
                          """گەشتەکەی بۆ هندستان کاریگەریی بەهێزی لەسەری هەبوو.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """My words made no impression on her.""",
                      kurdishText: """قسەکانم هیچ کاریگەرییان نەبوو لەسەری.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She made a favourable impression on his parents.""",
                      kurdishText: """وێنایەکی جوانی لای دایبابی درووستکرد.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) وێنەکێشانێک کە ئەوە پیشان دەدات کە کەسێک چۆنە یان شوێنێک یان بینایەک چۆن دەبێت لە دهاتوودا"""),
                    SentencesRow(
                      englishText:
                          """This is an artist's impression of the new stadium.""",
                      kurdishText:
                          """ئەمە وێنەکێشانی هونەرمەندێکە بۆ یاریگاکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) لاساییکردنەوەی پێکەنیناوی یان زیرەکانەی شێوازی ڕەفتار یان قسەکردنی کەسێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: impersonation"),
                    SentencesRow(
                      englishText:
                          """He did an impression of the prime minister.""",
                      kurdishText: """لاساییکردنەوەیەکی سەرۆک وەزیرانی کرد.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) دەرکەوتنێک کە دەکرێت هەڵە بێت"""),
                    SentencesRow(
                      englishText:
                          """Clever lighting creates an impression of space in a room.""",
                      kurdishText:
                          """ڕووناکی زیرەکانە وێنای بۆشایی لە ژوورەکە درووست دەکات.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) خاڵێک کە جێدەمێنێت کاتێک شتێک توند دەنووسێنرێت بە شتێکەوە"""),
                    SentencesRow(
                      englishText:
                          """The dentist made an impression of his teeth.""",
                      kurdishText:
                          """پزیشکە ددانەکە لەبەرگرتنەوەیەکی ددانی درووستکرد.""",
                      englishNote:
                          """This means that the dentist created a mold or cast of his teeth, usually using a soft material that hardens. This impression is used to create dental appliances, crowns, or other treatments, allowing for an accurate fit based on the shape of his teeth.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
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