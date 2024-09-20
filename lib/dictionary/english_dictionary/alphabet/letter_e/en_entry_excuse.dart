import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryexcuse extends StatefulWidget {
  const EnglishEntryexcuse({super.key});

  @override
  State<EnglishEntryexcuse> createState() => _EnglishEntryexcuseState();
}

class _EnglishEntryexcuseState extends State<EnglishEntryexcuse> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""excuse""");
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
                      word: """excuse""",
                      // alsoEnglishWord: "also: excuse",
                      britshText: """IpaUK: /ɪkˈskjuːs/""",
                      americanText: """IpaUS: /ɪkˈskjuːs/""",
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
  final String keyword = "excuse";
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
    await flutterTts.speak("""Late again! What's your excuse this time?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I tried desperately to think of a good excuse.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I know I missed the deadline, but I have an excuse.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's no excuse for such behaviour.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It's late. I'm afraid I'll have to make my excuses.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I don't want to hear any more excuses.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's just an excuse for a party.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It gave me an excuse to take the car.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He tried unsuccessfully to find an excuse to leave.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The demonstration was used as an excuse to impose martial law.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She had to find a valid excuse for leaving the room.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was a miserable excuse for a meal.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Why get involved with that pathetic excuse for a human being?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Please excuse the mess.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You must excuse my father—he's not always that rude.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had been excused for her actions.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I hope you'll excuse me for being so late.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Excuse me interrupting you.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If you'll excuse me pointing this out, I think you've made a mistake here.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Nothing can excuse such rudeness.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I could try to excuse myself, but why bother?""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """That did not excuse him for not carrying on with the matter.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She makes no attempt to excuse herself for her deeds.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She excused herself and left the meeting early.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She was excused from giving evidence because of her age.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const KurdishVocabulary(text: """
کوردی: بیانوو، بۆنە، بەھانە، بیانک، پەڵپ، ھەواڵە بە گەواڵە، دەساوێز، بیانووی ژیرانە،	لێبوردن‌خوازی
"""),
          const DefinitionKurdish(text: """١. (ناو) بیانوو"""),
          SentencesRow(
            englishText: """Late again! What's your excuse this time?""",
            kurdishText: """دووبارە درەنگ کەوتووی! ئەمجارە بیانووت چییە؟""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I tried desperately to think of a good excuse.""",
            kurdishText: """بێھوودە بۆ بیانوویەک دەگەڕام.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I know I missed the deadline, but I have an excuse.""",
            kurdishText: """دەتوانم دواوادەکەم پەڕداوە، بەڵام بیانووم ھەیە.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There's no excuse for such behaviour.""",
            kurdishText: """ھیچ بیانوویەک بۆ ڕەفتاری وەھا نییە.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's late. I'm afraid I'll have to make my excuses (= say I'm sorry, give my reasons and leave).""",
            kurdishText: """درەنگە. بەداخەوەم کە دەبێت بیانووەکانم بدۆزمەوە.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I don't want to hear any more excuses.""",
            kurdishText: """نامەوێت ھیچ بیانووی دیکە بدۆزمەوە.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) ھۆکارێکی گونجاو بۆ کردنی شتێک کە دەتەوێت بیکەیت بۆ مەبەستی دیکە"""),
          SentencesRow(
            englishText: """It's just an excuse for a party.""",
            kurdishText: """ئەوە تەنھا بیانووە بۆ ئاھەنگێک.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """It gave me an excuse to take the car.""",
            kurdishText: """بیانوویەکی پێدام بۆ بردنی ئۆتۆمبێلەکە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He tried unsuccessfully to find an excuse to leave.""",
            kurdishText:
                """شکستخواردووانە ھەوڵی دا بۆ دۆزینەوەی بیانوویەک بۆ ڕۆشتن.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The demonstration was used as an excuse to impose martial law.""",
            kurdishText:
                """خۆپیشاندانەکە وەک بیانوو بەکارھات بۆ سەپاندنی باری نائاسایی.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She had to find a valid excuse for leaving the room.""",
            kurdishText:
                """پێویست بوو بیانوویەکی گونجاو بدۆزێتەوە بۆ جێھێشتنی ژوورەکە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ناو) نموونەیەکی خراپی شتێک"""),
          SentencesRow(
            englishText: """It was a miserable excuse for a meal.""",
            kurdishText: """نموونەیەکی خراپی خواردن بوو.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Why get involved with that pathetic excuse for a human being?""",
            kurdishText: """بۆچی تێکەڵ دەبیت لەگەڵ ئەو مرۆڤە خراپە.""",
            englishNote:
                "This sentence is critical of someone's decision to be involved with another person.",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) بەخشینی کەسێک بۆ شتێک کە کردوویەتی"""),
          SentencesRow(
            englishText: """Please excuse the mess.""",
            kurdishText: """تکایە لە شپرزەییەکە ببوورە.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """You must excuse my father—he's not always that rude.""",
                    kurdishText:
                        """دەبێت لە باوکم خۆشبیت ـ ھەمیشە وەھا بێ‌ڕێز نییە.""",
                    onPressedBritish: () => speaksentence15("en-GB"),
                    onPressedAmerican: () => speaksentence15("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She had been excused for her actions.""",
                    kurdishText: """بۆ کردارەکانی بەخشرا بوو.""",
                    onPressedBritish: () => speaksentence16("en-GB"),
                    onPressedAmerican: () => speaksentence16("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I hope you'll excuse me for being so late.""",
                    kurdishText:
                        """ھیوادارم لێم ببووری کە ھێندە درەنگ کەوتووم.""",
                    onPressedBritish: () => speaksentence17("en-GB"),
                    onPressedAmerican: () => speaksentence17("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Excuse me interrupting you.""",
                    kurdishText: """ببوورە کە لە کاتت دەگرم.""",
                    englishNote: "Formal: Excuse my interrupting you.",
                    onPressedBritish: () => speaksentence18("en-GB"),
                    onPressedAmerican: () => speaksentence18("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """If you'll excuse me pointing this out, I think you've made a mistake here.""",
                    kurdishText:
                        """ئەگەر بمبووریت ئەمە بخەمە بەر باس، پێموایە لێرە ھەڵەیەکت کردووە.""",
                    onPressedBritish: () => speaksentence19("en-GB"),
                    onPressedAmerican: () => speaksentence19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (کردار) بیانوو ھێنانەوە"""),
          SentencesRow(
            englishText: """Nothing can excuse such rudeness.""",
            kurdishText: """ھیچ ناتوانێت بێ‌ڕێزی وەھا پۆزش بکات.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I could try to excuse myself, but why bother?""",
            kurdishText:
                """دەمتوانی پۆزش بۆ خۆم بھێنمەوە، بەڵام بۆچی ھەوڵ بدەم؟""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """That did not excuse him for not carrying on with the matter.""",
            kurdishText:
                """ئەوە نەدەبوو بە بیانوو بۆی کە بەردەوام نەبوو لەگەڵ باسەکە.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She makes no attempt to excuse herself for her deeds.""",
            kurdishText:
                """ھیچ ھەوڵێک نادات بۆ ھێنانەوەی بیانوو بۆ کارەکانی.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (کردار) ڕێگادان بە کەسێک کە بچێت؛ بەڕێزەوە گوتنی ئەوەی کە دەچیت"""),
          SentencesRow(
            englishText: """She excused herself and left the meeting early.""",
            kurdishText: """داوای ڕۆشتنی خواست و زوو چاوپێکەوتنەکەی جێھێشت.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (کردار) ڕێگادان بە کەسێک کە شتێک نەکات لەکاتێکدا بەشێوەی ئاسایی دەبێت بیکات"""),
          SentencesRow(
            englishText:
                """She was excused from giving evidence because of her age.""",
            kurdishText: """بەخشرا لە پێدانی بەڵگە بەھۆی تەمەنەکەیەوە.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
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
- Noun: excuse (derived forms: excuses)
1. A defence of some offensive behaviour or some failure to keep a promise etc. (= alibi, exculpation, self-justification)
"he kept finding excuses to stay";
 
2. A note explaining an absence
"he had to get his mother to write an excuse for him"
 
3. A poor example (= apology)
"a poor excuse for an automobile";

- Verb: excuse (derived forms: excused, excusing, excuses)
1. Accept an excuse for (= pardon)
"Please excuse my dirty hands";
 
2. Grant exemption or release to (= relieve, let off, exempt)
"Please excuse me from this class";
 
3. Serve as a reason, cause or justification of (= explain)
"Your need to sleep late does not excuse your late arrival at work";
 
4. Defend, explain, clear away, or make excuses for by reasoning (= apologize, apologise [Brit], rationalize, rationalise [Brit])
"excuse the child's seemingly crazy behaviour";
 
5. Ask for permission to be released from an engagement (= beg off)
 
6. Excuse, overlook, or make allowances for; be lenient with (= condone)
"excuse someone's behaviour";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

const String _videoIdend = '_spuxXnul0U';
const double _startSecondsend = 887;
const String _videoIdone = 'zqllxbPWKNI';
const double _startSecondsone = 622;
const String _videoIdtwo = 'D0x2dgpBDzc';
const double _startSecondstwo = 13;
const String _videoIdthree = 'r5cqa9V0mUo';
const double _startSecondsthree = 874;
const String _videoIdfour = 'iAnlaR398hs';
const double _startSecondsfour = 120;
const String _videoIdfive = 'VwPGtn9qJZ4';
const double _startSecondsfive = 69;

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