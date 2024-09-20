import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfresh extends StatefulWidget {
  const EnglishEntryfresh({super.key});

  @override
  State<EnglishEntryfresh> createState() => _EnglishEntryfreshState();
}

class _EnglishEntryfreshState extends State<EnglishEntryfresh> {
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
- Adjective: fresh (derived forms: freshest, fresher)
1. Recently made, produced, or harvested
"fresh bread"; "a fresh scent"; "fresh lettuce"
 
2. (of a cycle) beginning or occurring again
"a fresh start"; "fresh ideas"
 
3. Imparting vitality and energy (= bracing, brisk, refreshing, refreshful, tonic)
"the fresh mountain air";
 
4. Original and of a kind not seen before (= new, novel)
"the computer produced a completely fresh proof of a well-known theorem";
 
5. Having recently calved and therefore able to give milk
"the cow is fresh"
 
6. With restored energy (= invigorated, refreshed, reinvigorated)
 
7. Not soured or preserved (= sweet, unfermented)
"fresh milk";
 
8. Free from impurities (= clean)
"fresh air";
 
9. Not yet used or soiled (= unused)
"a fresh shirt";
 
10. Not canned or otherwise preserved
"fresh vegetables"
 
11. Not containing or composed of salt water (= sweet)
"fresh water";
 
12. Improperly forward or bold (= impertinent, impudent, overbold, smart, saucy [informal], sassy [N. Amer, informal], wise, lippy [informal])
"don't be fresh with me";

- Adverb: fresh
1. Very recently (= newly, freshly, new)
"we are fresh out of tomatoes";
""",
  );

  final String keyword = "fresh";
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
    await flutterTts.speak("""fresh""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is this milk fresh?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Eat plenty of fresh fruit and vegetables.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Our chefs use only the freshest produce available.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Doesn't fruit taste a lot better fresh off the tree?""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Mushrooms don't stay fresh for long.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let's go and get some fresh air.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her hair smelled fresh and newly washed.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Horses should have fresh water available at all times.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Let me write it down while it's still fresh in my mind.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The war is too recent and the memories are too fresh.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The park looks wonderful under a blanket of fresh snow.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Could we order some fresh coffee?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The defence have found fresh evidence that could form the basis of an appeal.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This is the opportunity he needs to make a fresh start.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government is said to be taking a fresh look at the matter.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think it's time we tried a fresh approach.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There is a shortage of fresh water on the island.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The winds are likely to get fresher towards the end of the day.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's fresh this morning, isn't it?""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He looked fresh and neat in a clean white shirt.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The yellow paint makes the kitchen look much fresher.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Regular exercise will help you feel fresher.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The singer is fresh off a successful world tour.""");
  }

  @override
  Widget build(BuildContext context) {
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
                      word: """fresh""",
                      // alsoEnglishWord: "also: fresh",
                      britshText: """IpaUK: /freʃ/""",
                      americanText: """IpaUS: /freʃ/""",
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
کوردی: تازە، نەو، نوێ، تەڕ، تەڕوتازە، تەڕوبڕ، ئاودار، گەش‌وتازە، گوڵ‌بەدەم،	خاوێن، تەمیز، (چێشت و ئاو) تازەلێنراو، نەماوە، تازە، کۆن نییە، نابەیات،	(ئاو) شیرین، خۆش، نەسوێر، سووک،	فێنک، سارد،	(با) توند، بەقەوەت،	بەکەیف، خۆشحاڵ، بەگوڕ، بەتین،	ڕوودار، بێ‌حەیا، بێ‌شەرم،	تازەکار، خاو، نۆکار، سەرەتا، دەسپێک، ھەوەڵ
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) خواردنی تازە"""),
                    SentencesRow(
                      englishText: """Is this milk fresh?""",
                      kurdishText: """ئەم شیرە تازەیە؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Eat plenty of fresh fruit and vegetables.""",
                      kurdishText:
                          """ڕێژەیەکی زۆر لە میوە و سەوزەی تازە بخۆ.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Our chefs use only the freshest produce available.""",
                      kurdishText:
                          """چێشتلێنەرەکانمان تەنھا تازەترین بەرھەمی بەردەست بەکاردەھێنن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Doesn't fruit taste a lot better fresh off the tree?""",
                      kurdishText:
                          """میوە تامی زۆر باشتر نادات کە تازە لە دار کراوەتەوە؟""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Mushrooms don't stay fresh for long.""",
                      kurdishText:
                          """قارچک ئەوە نییە بۆ ماوەیەکی زۆر بە تازەیی بمێننەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) خۆش و پاک و خاوێن"""),
                    SentencesRow(
                      englishText:
                          """Let's go and get some fresh air (= go outside where the air is cooler).""",
                      kurdishText: """با بچین ھەندێک ھەوای پاک ھەڵبمژین.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her hair smelled fresh and newly washed.""",
                      kurdishText: """قژی بۆنی خۆشی لێدەھات.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Horses should have fresh water available at all times.""",
                      kurdishText:
                          """ئەسپ دەبێت ھەموو کات ئاوی خاوێنیان لەبەردەست بێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە تازە درووست بووە"""),
                    SentencesRow(
                      englishText:
                          """Let me write it down while it's still fresh in my mind.""",
                      kurdishText: """با بینووسم کە ھێشتا تازەیە لە ھزرمدا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The war is too recent and the memories are too fresh.""",
                      kurdishText:
                          """جەنگەکە تازەگی بوو و یدەوەرییەکان ھێشتا تازەن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The park looks wonderful under a blanket of fresh snow.""",
                      kurdishText:
                          """پارکەکە دڵڕفێن دیارە لە ژێر بەرگێک لە بەفردا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) تازە یان جیاواز بە شێوەیەک کە بۆ شتێکی تر زیاد دەکات یان جێگای دەگرێتەوە"""),
                    SentencesRow(
                      englishText: """Could we order some fresh coffee?""",
                      kurdishText: """داوای ھەندێک قاوەی تازە بکەین؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The defence have found fresh evidence that could form the basis of an appeal.""",
                      kurdishText:
                          """پارێزەران تاوانبارکراو بەڵگەی تازەیان دۆزیوەتەوە کە دەشێت ببێتە بناغەی تانەدانێک.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This is the opportunity he needs to make a fresh start (= to try something new after not being successful at something else).""",
                      kurdishText:
                          """ئەمە ئەو ھەلەیە کە پێویستییەتی بۆ دەستپێکردنێکی تازە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government is said to be taking a fresh look at the matter.""",
                      kurdishText:
                          """حکومەت دەگوترێت کە سەیرێکی تازەی بابەتەکە دەکات.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I think it's time we tried a fresh approach.""",
                      kurdishText:
                          """پێموایە کاتی تاقیکردنەوەی ڕێگایەکی تازەیە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) کە خوێی تێدا نییە"""),
                    SentencesRow(
                      englishText:
                          """There is a shortage of fresh water on the island.""",
                      kurdishText: """کەمی ئاوی سازگار ھەیە لەسەر دوورگەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) بەھێز و سارد"""),
                    SentencesRow(
                      englishText:
                          """The winds are likely to get fresher towards the end of the day.""",
                      kurdishText:
                          """بایەکان ئەگەری ھەیە توند بن بەرەو کۆتایی ڕۆژەکە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) کەشێکی تەواو سارد بە کەمێک باوە"""),
                    SentencesRow(
                      englishText: """It's fresh this morning, isn't it?""",
                      kurdishText: """ئەم بەیانییە ساردە، وانییە؟""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) کە درەوشاوە و جوان دەردەکەوێت"""),
                    SentencesRow(
                      englishText:
                          """He looked fresh and neat in a clean white shirt.""",
                      kurdishText:
                          """بە کراسێکی سپی پاکەوە پاک و خاوێن و ڕێکوپێک دەردەکەوت.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The yellow paint makes the kitchen look much fresher.""",
                      kurdishText:
                          """بۆیە زەردەکە وا دەکات چێشتخانەکە زۆر ڕێکوپێکتر دەربکەوێت.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ھاوەڵناو) پڕ لە وزە"""),
                    SentencesRow(
                      englishText:
                          """Regular exercise will help you feel fresher.""",
                      kurdishText: """ڕاھێنانی بەردەوام وا دەکات بەگوڕ بیت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ھاوەڵناو) کە تازە لە شتێکەوە ھاتووە"""),
                    SentencesRow(
                      englishText:
                          """The singer is fresh off a successful world tour.""",
                      kurdishText:
                          """گۆرانیبێژەکە تازە لە گەڕانێکی جیھانی سەرکەوتووەوە ھاتووە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    CustomRichText(
                      textBeforeLink: "١١. بڕوانە لە ",
                      linkText: "freshly",
                      textAfterLink: "",
                      onTap: () {
                        Routemaster.of(context).push("/english-fresh/freshly");
                      },
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
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
                  // YoutubeEmbeddedseven(),
                  // YoutubeEmbeddedeight(),
                  // YoutubeEmbeddednine(),
                  // YoutubeEmbeddedten(),
                  // YoutubeEmbeddedeleven(),
                  // YoutubeEmbeddedtwelve(),
                  // YoutubeEmbeddedthirteen(),
                  // YoutubeEmbeddeddfourteen(),
                  // YoutubeEmbeddedfifteen(),
                  // YoutubeEmbeddeddsixteen(),
                  // YoutubeEmbeddeddseventeen(),
                  // YoutubeEmbeddeddeighteen(),
                  // YoutubeEmbeddeddnineteen(),
                  // YoutubeEmbeddedtwenty(),
                  // YoutubeEmbeddedmulti(),
                  YoutubeEmbeddedend(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 740;
const String _videoIdone = 'j1BfO7VlIw4';
const double _startSecondsone = 1139;
const String _videoIdtwo = 'qWAagS_MANg';
const double _startSecondstwo = 409;
const String _videoIdthree = 'yjhibJ-OqxE';
const double _startSecondsthree = 353;
const String _videoIdfour = 'roCX0AfBseQ';
const double _startSecondsfour = 134;
const String _videoIdfive = 'ewLpXw6uN28';
const double _startSecondsfive = 441;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB