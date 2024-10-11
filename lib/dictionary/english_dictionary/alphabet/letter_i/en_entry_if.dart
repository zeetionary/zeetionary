import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryif extends StatefulWidget {
  const EnglishEntryif({super.key});

  @override
  State<EnglishEntryif> createState() => _EnglishEntryifState();
}

class _EnglishEntryifState extends State<EnglishEntryif> {
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
- Conjunction: if
1. Introduces a conditional clause
"I will go to university if I can afford it"
 
2. Despite being
"he's nice, if rather patronizing"
 
3. Every time that (- whenever, when)
"if I call you are always engaged";
""",
  );

  final String keyword = "if";
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
    await flutterTts.speak("""if""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll only stay if you offer me more mone""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If you see him, give him this note.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If necessary I can come at once.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can stay for the weekend if you like.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If anyone calls, tell them I'm not at home.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You would know what was going on if you'd listened.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If metal gets hot it expands.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She glares at me if I go near her desk.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you know if he's married?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I wonder if I should wear a coat or not.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Listen it and see if you can remember the words.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I am sorry if I disturbed you.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I'd be grateful if you would keep it a secret.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If she has any weakness, it is her Italian.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""So what if he was late. Who cares?""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If you ask me, she's too scared to do it.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If you think about it, those children must be at school by now.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""If you remember, Mary was always fond of animals.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He's a good driver, if a little over-confident.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We'll only do it once—if at all.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If you will sit down for a few moments, I'll tell the manager you're here.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If you would care to leave your name, we'll contact you as soon as possible.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If I may make a suggestion, perhaps we could begin a little earlier next week.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hTqtGJwsJVE';
    const double startSecondsend = 492;
    const String videoIdone = '_Z0ZQT0FttM';
    const double startSecondsone = 1512;
    const String videoIdtwo = 'r8E1Hq5tktg';
    const double startSecondstwo = 137;
    const String videoIdthree = 'lrNcx2D_FZI';
    const double startSecondsthree = 16;
    const String videoIdfour = 'nITZooG6ij8';
    const double startSecondsfour = 37;
    const String videoIdfive = '3oS2JrtthHY';
    const double startSecondsfive = 105;

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
                      word: """if""",
                      // alsoEnglishWord: "also: if",
                      britshText: """IpaUK: /ɪf/""",
                      americanText: """IpaUS: /ɪf/""",
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
کوردی: ئەگەر، هەکە،	هەروەخت، هەردەم، هاتوو،	کە داخۆ، گەلۆ، بڵێی، کە ئایا،	گەرچی، ئەگەرچی،	خۆزگە، بریا، خۆزیا
"""),
// With short examples define "if", please follow LX instructions
                    const DefinitionKurdish(text: """١. (لێکدەر) ئەگەر"""),
                    SentencesRow(
                      englishText:
                          """I'll only stay if you offer me more mone""",
                      kurdishText:
                          """دەمێنمەوە تەنها ئەگەر پارەی زیاترم پێبدەیت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """If you see him, give him this note.""",
                      kurdishText: """ئەگەر بینیت، ئەم تێبینییەی پێبدە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """If necessary I can come at once.""",
                      kurdishText:
                          """ئەگەر پێویست بێت، دەتوانم دەستبەجێ بێم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can stay for the weekend if you like.""",
                      kurdishText:
                          """دەتوانین بۆ کۆتایی هەفتە بمێنیتەوە ئەگەر حەز دەکەیت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If anyone calls, tell them I'm not at home.""",
                      kurdishText:
                          """ئەگەر هەر کەسێک پەیوەندی کرد، پێی بڵێ لە ماڵەوە نیم.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You would know what was going on if you'd (= you had) listened.""",
                      kurdishText:
                          """دەتزانی چی ڕوودەدات ئەگەر گوێت بگرتبایە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (لێکدەر) کاتێک؛ هەر کاتێک"""),
                    SentencesRow(
                      englishText: """If metal gets hot it expands.""",
                      kurdishText: """ئاگر ئاسن گەرم ببێت دەکشێت.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She glares at me if I go near her desk.""",
                      kurdishText:
                          """چاوم لێ زیت دەکاتەوە ئەگەر بچمە نزیک دێسکەکە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (لێکدەر) ئایا؛ بۆ باسکردنی یەکێک لە دوو ئەگەر"""),
                    SentencesRow(
                      englishText: """Do you know if he's married?""",
                      kurdishText: """دەزانیت کە ئایا هاوسەرگیری کردووە؟""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I wonder if I should wear a coat or not.""",
                      kurdishText: """تێڕاماوم کە پاڵتۆ لەبەر بکەم یان نا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Listen it and see if you can remember the words.""",
                      kurdishText:
                          """گوێی لێبگرە و ببینە کە ئایا وشەکانت بیردێتەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (لێکدەر) لە دوای کردار و هاوەڵناو بەکاردێت کە هەست دەرببڕێت"""),
                    SentencesRow(
                      englishText: """I am sorry if I disturbed you.""",
                      kurdishText: """ببوورە گەر بێزارم کردیت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'd be grateful if you would keep it a secret.""",
                      kurdishText:
                          """سوپاسگوزار دەبم ئەگەر وەک نهێنی بیپارێزیت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (لێکدەر) بۆ گوتنی ئەوەی شتێک ڕێی تێدەچێت، بەڵام زۆر گرنگ نییە"""),
                    SentencesRow(
                      englishText:
                          """If she has any weakness, it is her Italian.""",
                      kurdishText:
                          """ئەگەر هەر لاوازییەکی هەبێت، ئەوە زمانە ئیتالییەکەیەتی.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """So what if he was late. Who cares?""",
                      kurdishText: """دەی ئەگەر درەنگ بێت، کێ گرنگە لای؟""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (لێکدەر) بۆ داواکردنی ئەوەی کەسێک گوێ لە بۆچوونت بگرێت"""),
                    SentencesRow(
                      englishText:
                          """If you ask me, she's too scared to do it.""",
                      kurdishText: """ئەگەر لە من بپرسی، زۆر ترساوە بیکات.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If you think about it, those children must be at school by now.""",
                      kurdishText:
                          """ئەگەر بیری لێ بکەیتەوە، ئەو منداڵانە دەبێت تا ئێستا لە ماڵەوە بن.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If you remember, Mary was always fond of animals.""",
                      kurdishText:
                          """ئەگەر بیرت بێتەوە، ماری هەمیشە هۆگر بە ئاژەڵان بوو.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (لێکدەر) پێش هاوەڵناو یان هاوەڵکارێک بەکاردێت بۆ ناساندنی دژبەری"""),
                    SentencesRow(
                      englishText:
                          """He's a good driver, if a little over-confident.""",
                      kurdishText:
                          """شۆفێرێکی باشە، ئەگەرچی کەمێک باوەڕی زۆر بەخۆیە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We'll only do it once—if at all.""",
                      kurdishText: """تەنها جارێک دەیکەین ـ یان هەر بیکەین.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (لێکدەر) لەگەڵ will یان would بەکاردێت تاوەکو بە ڕێزەوە داوا لە کەسێک بکەیت شتێک بکات"""),
                    SentencesRow(
                      englishText:
                          """If you will sit down for a few moments, I'll tell the manager you're here.""",
                      kurdishText:
                          """ئەگەر بۆ چەند ساتێک دابنیشیت، بە بەڕێوەبەر دەڵێم لێرەیت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If you would care to leave your name, we'll contact you as soon as possible.""",
                      kurdishText:
                          """ئەگەر ئەزیەت بکێشیت ناوت بنووسیت، هەرکە زوو بکرێت پەیوەندیت پێوە دەکەین.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (لێکدەر) لەگەڵ could، may، یان might بەکاردێت بۆ پێشنیارکردنی شتێک یان پچڕاندنی کەسێک بەڕێزەوە"""),
                    SentencesRow(
                      englishText:
                          """If I may make a suggestion, perhaps we could begin a little earlier next week.""",
                      kurdishText:
                          """ئەگەر پێشنیارێک بکەم، ڕەنگە باشتر بێت هەفتەی دواتر کەمێک زووتر دەست پێبکەین.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
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