import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykeen extends StatefulWidget {
  const EnglishEntrykeen({super.key});

  @override
  State<EnglishEntrykeen> createState() => _EnglishEntrykeenState();
}

class _EnglishEntrykeenState extends State<EnglishEntrykeen> {
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
- Adjective: keen (Derived forms: keenest, keener)
1. Having a strong or impatient wish to do something (- eager)
 
2. Having or showing great excitement and interest (- enthusiastic)
 
3. Having or demonstrating ability to recognize or draw fine distinctions (- acute, discriminating, incisive, knifelike, penetrating, penetrative, piercing, sharp)
 
4. Intense or sharp (- exquisite)
"suffered keen pain";
 
5. Excellent (- bang-up [N. Amer, informal], bully [informal], corking [Brit, informal], cracking [Brit, informal], dandy, great, groovy [informal], neat, nifty [informal], not bad [informal], peachy, slap-up [informal], swell [informal], smashing [Brit, informal], old, not half bad [informal], grouse [Austral, NZ, informal], ripper [Austral, informal], lovely)
"he did a keen job";
 
6. Painful as if caused by a sharp instrument (- cutting, knifelike, piercing, stabbing, lancinate, lancinating)
"keen winds";
 
7. Having a sharp cutting edge or point
"a keen blade"

- Noun: keen (Derived forms: keens)
1. A funeral lament sung with loud wailing

- Verb: keen (Derived forms: keening, keens, keened)
1. Express grief verbally (- lament)
"we keened the death of the child";
""",
  );

  final String keyword = "keen";
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
    await flutterTts.speak("""keen""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""John was very keen to help.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her parents were keen for her to go to university.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is keen for the deal to proceed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We are keen that our school should get involved too.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I wasn't too keen on going to the party.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was always keen to hear the local gossip.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were desperately keen for information.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was a star pupil—keen, confident and bright.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They've been on a few dates together and Naomi seems really keen.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Tom's very keen on Anna.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's particularly keen on football.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sally's quite keen on the idea.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His keen mind helped him in difficult situations.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He took a keen interest in his grandson's education.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Dogs have a keen sense of smell.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was the subject of keen debate.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There is keen competition for places at the college.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company hopes its keen pricing policy will increase sales.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Villagers keen together in times of mourning.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/EjidrUoHvPs?t=803';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/dJzTse9Dsaw?t=175';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/b1reY72ktEc?t=339';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/wJa5Ch0O4BI?t=1492';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/KZbzIf_C6Y4?t=1148';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/57nZ7LaVAH0?t=357';
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
                      word: """keen""",
                      // alsoEnglishWord: "also: keen",
                      britshText: """IpaUK: /kiːn/""",
                      americanText: """IpaUS: /kiːn/""",
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
کوردی: بەتاسە، تامەزرۆ، بەپەرۆش، بەتاو، دڵبەستە،	توند، سەخت، گران، زۆر، بەهێز، تاوسەندوو،	تیژ، مووکردوو، بڕا، نووک‌تیژ، لێوارتیژ،	(بۆن و هتد) تیژ، زۆر،	هەستیار،	زووتێگەیشتوو، وریا، زیرەک، تیژ،	(پێشبڕکێ و هتد) سەخت، گران، چەتوون، توند،	(با) تەزدار، سارد، ئێسک‌بڕ،	(بریتانیا، نرخ) کەم، لە خوارێ، هەرزان
"""),
// With short examples define "keen", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) ئەوەی کە بتەوێت شتێک ڕووبدات یان شتێک بکەیت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: eager"),
                    SentencesRow(
                      englishText: """John was very keen to help.""",
                      kurdishText: """جۆن زۆر بەپەرۆش بوو بۆ یارمەتیدان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her parents were keen for her to go to university.""",
                      kurdishText:
                          """دایبابی بەپەرۆش بوون بۆی کە بچێتە زانکۆ.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He is keen for the deal to proceed.""",
                      kurdishText:
                          """بەپەرۆشە بۆ ڕێککەوتنەکە کە بۆ پێشەوە بچێت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We are keen that our school should get involved too.""",
                      kurdishText:
                          """بەپەرۆشین کە قوتابخانەکەمانیش بەژدار بێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I wasn't too keen on going to the party.""",
                      kurdishText:
                          """زۆر بەپەرۆش نەبووم سەبارەت بە چوونە ئاهەنگەکە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was always keen to hear the local gossip.""",
                      kurdishText:
                          """هەمیشە بەپەرۆشی بیستنی قسەڵۆکە خۆجێیەکان بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They were desperately keen for information.""",
                      kurdishText: """تەواو بەپەرۆش بوون بۆ زانیاری.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) هەبوونی حەزی زۆر بۆ چالاکییەک، بیرۆکەیەک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was a star pupil—keen, confident and bright.""",
                      kurdishText:
                          """خوێندکارێکی ئەستێرە بوو ـ تامەزرۆ، بەمتمانە، و زیرەک.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) حەزکردنی زۆر لە کەسێک/شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They've been on a few dates together and Naomi seems really keen.""",
                      kurdishText:
                          """لە چەند ژوانێک پێکەوە بوونە ناومی زۆر بەتامەزرۆ دیارە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Tom's very keen on Anna.""",
                      kurdishText: """تۆم زۆر شەیدای ئانایە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's particularly keen on football.""",
                      kurdishText: """زۆر حەزی بە تۆپی پێیە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Sally's quite keen on the idea.""",
                      kurdishText: """سالی تەواو وابەستەیە بە بیرۆکەکە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) زیرەک لە تێگەشتن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: sharp، acute"),
                    SentencesRow(
                      englishText:
                          """His keen mind helped him in difficult situations.""",
                      kurdishText:
                          """مێشکە زیرەکەکەی یارمەتیی دا لە دۆخە سەختەکاندا.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) بەهێز یان قووڵ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He took a keen interest in his grandson's education.""",
                      kurdishText:
                          """حەزێکی زۆری هەبوو بۆ خوێندنی کوڕەزاکەی.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) زۆر پێشکەوتوو"""),
                    const AlsoEnglishckb(word: "ھەروەھا: sharp"),
                    SentencesRow(
                      englishText: """Dogs have a keen sense of smell.""",
                      kurdishText: """سەگ هەستێکی بەهێزی بۆنکردنی هەیە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) کە خەڵکی زۆر بە بەهێزی بۆ شتێک ڕکابەری بکەن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was the subject of keen debate.""",
                      kurdishText: """بابەتێکی دیبەیتی توند بوو.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is keen competition for places at the college.""",
                      kurdishText:
                          """ڕکابەریی توند هەیە بۆ شوێنەکانی کۆلێژەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) کە بە نزمی دەهێڵدرێتەوە بۆ هێشتنەوەی ڕکابەری"""),
                    const AlsoEnglishckb(word: "ھەروەھا: competitive"),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company hopes its keen pricing policy will increase sales.""",
                      kurdishText:
                          """کۆمپانیاکە بەهیوایە نرخە کەمەکانی فرۆشتن زیاد بکات.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) درووستکردنی دەنگێکی بەرزی خەمگین کە کەسێک مردووە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Villagers keen together in times of mourning.""",
                      kurdishText: """گوندییەکان پێکەوە شیوەن دەگێڕن.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
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
// end keen