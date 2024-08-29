import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfavour extends StatefulWidget {
  const EnglishEntryfavour({super.key});

  @override
  State<EnglishEntryfavour> createState() => _EnglishEntryfavourState();
}

class _EnglishEntryfavourState extends State<EnglishEntryfavour> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""favour""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """favour""",
                      // alsoEnglishWord: "also: favour",
                      britshText: """IpaUK: /ˈfeɪvə(r)/""",
                      americanText: """IpaUS: /ˈfeɪvər/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const TabBar(
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
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

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "favour";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Could you do me a favour and pick up Sam from school today?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I would never ask for any favours from her.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I'll ask Steve to take it. He owes me a favour.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Thanks for helping me out. I'll return the favour some time.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I'm going as a favour to Ann, not because I want to.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Do yourself a favour and wear a helmet on the bike.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The suggestion to close the road has found favour with local people.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The programme has lost favour with viewers recently.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The policy is gaining favour among voters.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's not in favour with the media just now.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government looks with favour upon the report's recommendations.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her political views have not found favour in recent years.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""As an examiner, she showed no favour to any candidate.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Many countries favour a presidential system of government.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It’s a resort favoured by families with young children.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Another solution, which I strongly favour, is lower taxes for everyone.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She favours hugs over handshakes.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The treaty seems to favour the US.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My parents always favoured my older brother.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""News coverage should not favour one party over another.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The warm climate favours many types of tropical plants.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: چاکە، باشە، پیاوەتی، خاسی، سایە، قنجی،	پشتیوانی، لایەنگری،	جیاوازی‌دانان،	یارمەتی، دەس‌گرتن، دڵسۆزی، ئاوڕدانەوە، لالێدانەوە،	خۆشەویستی،	قازانج، سوود، بەھرە، مەفا،	جیاوازی، فەرق،	نیشانە، دروشم
"""),
          const DefinitionKurdish(
              text: """١. (ناو) شتێک کە دەیکەیت بۆ یارمەتیدانی کەسێک"""),
          SentencesRow(
            englishText:
                """Could you do me a favour and pick up Sam from school today?""",
            kurdishText:
                """دەتوانیت چاکەیەکم بۆ بکەیت و ئەمڕۆ سام لە قوتابخانە بھێنیتەوە؟""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I would never ask for any favours from her.""",
            kurdishText: """ھەرگیز داوای ھیچ چاکەیەکی لێ ناکەم.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I'll ask Steve to take it. He owes me a favour.""",
            kurdishText: """داوای لە ستیڤ دەکەم بیکات. چاکەیەکم قەرزارە.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Thanks for helping me out. I'll return the favour (= help you because you have helped me) some time.""",
            kurdishText: """سوپاس بۆ یارمەتیدانم. ڕۆژێک چاکەکە دەگەڕێنمەوە.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I'm going as a favour to Ann, not because I want to.""",
            kurdishText: """وەک چاکەیەک بۆ ئان دەچم، نەک ئەوەی بمەوێت.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Do yourself a favour (= help yourself) and wear a helmet on the bike.""",
            kurdishText:
                """چاکەیەک لەگەڵ خۆت بکە و کڵاوێک لەسەر پاسکیلەکە لەسەر بکە.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) پەسەندکردن یان پشتگیری شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The suggestion to close the road has found favour with (= been supported by) local people.""",
            kurdishText:
                """پێشنیاری داخستنی ڕێگاکە پشتگیری خەڵکە لۆکاڵیییەکەی بەدەستھێناوە.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The programme has lost favour with viewers recently.""",
            kurdishText: """پڕۆگرامەکە تازەگی حەزی بینەرانی لەدەستداوە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The policy is gaining favour among voters.""",
            kurdishText: """سیاسەتەکە پشتیوانی دەنگدەران بەدەست دەھێنێت.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She's not in favour with (= supported or liked by) the media just now.""",
            kurdishText: """لە ئێستادا پشتیوانی میدیای نییە.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The government looks with favour upon (= approves of) the report's recommendations.""",
            kurdishText: """حکومەت قایل دیارە بە ثێشنیارەکانی ڕاپۆرتەکە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Her political views have not found favour in recent years.""",
            kurdishText:
                """دیدە سیاسییەکانی ئەم ساڵانەی دوایی پشتیوانییان نەبووە.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) لایەنگیری؛ ئەوەی باش مامەڵە لەگەڵ کەسانێک بەشێوەیەک کە نادادییە بەرامبەر کەسانی دیکە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """As an examiner, she showed no favour to any candidate.""",
            kurdishText: """وەک پشکنەرێک، لایەنگیری ھیچ کەس نەبوو.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) بە باشتر زانینی شتێک لە شتێکی دیکە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Many countries favour a presidential system of government.""",
            kurdishText:
                """زۆر وڵات سیستەمی سەرۆکایەتی حکومەت بە باشتر دەزانن.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It’s a resort favoured by families with young children.""",
            kurdishText:
                """ھاوینە ھەوارێکە کە خێزانانی خاوەن منداڵی بچووک حەزیان پێیە.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Another solution, which I strongly favour, is lower taxes for everyone.""",
            kurdishText:
                """چارەسەرێکی دیکە، کە من تەواو پێم باشە، باجی کەمترە بۆ ھەموان.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She favours hugs over handshakes.""",
            kurdishText: """باوەشی پێ باشە وەک لە تەوقەکردن.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (کردار) لایەنگیری کردن"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The treaty seems to favour the US.""",
            kurdishText:
                """پەیماننامەکە وەھا دەردەکەوێت کە پشتگیری ئەمریکا بکات.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """My parents always favoured my older brother.""",
            kurdishText: """دایبابم ھەمیشە لایەنگیری منداڵە گەورەکانم بوون.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """News coverage should not favour one party over another.""",
            kurdishText:
                """ڕووماڵی ھەواڵ نابێت لایەنگیری پارتێک بکات دژ بە یەکێکی دیکە.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (کردار) دابینکردنی ژینگەی گونجاو بۆ گرووپێک، کەسێک، ھتد"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The warm climate favours many types of tropical plants.""",
            kurdishText:
                """ئەم ئاووھەوا گەرمە گونجاوە بۆ زۆر ڕووەکی خولگەیی.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
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
- Verb: favour (derived forms: favoured, favours, favouring)
Usage: Brit, Cdn (US: favor)
1. Promote over another (= prefer, favor [US])
"he favours his second daughter";
 
2. Consider as the favourite (= favor [US])
"The local team was favoured";
 
3. Treat gently or carefully (= favor [US])
 
4. Bestow a privilege upon (= privilege, favor [US])

- Noun: favour (derived forms: favours)
Usage: Brit, Cdn (US: favor)
1. An act of gracious kindness (= favor [US])
 
2. An advantage to the benefit of someone or something (= favor [US])
"the outcome was in his favour";
 
3. An inclination to approve (= favor [US])
"that style is in favour this season";
 
4. A feeling of favourable regard (= favor [US], grace)
 
5. Souvenir consisting of a small gift given to a guest at a party (= party favor [US], party favour [Brit, Cdn], favor [US])
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
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
    );
  }
}

const String _videoIdend = 'mp_w0xZ9XFg';
const double _startSecondsend = 135;
const String _videoIdone = '7LFkN7QGp2c';
const double _startSecondsone = 252;
const String _videoIdtwo = '1tUfxNIlnqY';
const double _startSecondstwo = 305;
const String _videoIdthree = 'GNf1MAMK6ak';
const double _startSecondsthree = 88;
const String _videoIdfour = 'gk4JFz6nnLo';
const double _startSecondsfour = 73;
const String _videoIdfive = 'QEbYo07jLoY';
const double _startSecondsfive = 504;

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