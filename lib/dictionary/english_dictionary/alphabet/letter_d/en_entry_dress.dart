import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydress extends StatefulWidget {
  const EnglishEntrydress({super.key});

  @override
  State<EnglishEntrydress> createState() => _EnglishEntrydressState();
}

class _EnglishEntrydressState extends State<EnglishEntrydress> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: CustomTabBarNew(
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
              const YoutubeVideos(),
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
  final String keyword = "dress";
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

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "dress");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dress");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /dres/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdress(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dress");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdress("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /dres/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdress(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dress");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdress("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdresss1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I appeared in a slinky satin dress.");
  }

  Future<void> speakdresss2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These shoes go best with my dress.");
  }

  Future<void> speakdresss3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You will look elegant in a simple black dress.");
  }

  Future<void> speakdresss4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has no dress sense.");
  }

  Future<void> speakdresss5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were allowed to wear casual dress on Fridays.");
  }

  Future<void> speakdresss6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I dressed quickly.");
  }

  Future<void> speakdresss7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Get up and get dressed!");
  }

  Future<void> speakdresss8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She dressed the children in their best clothes.");
  }

  Future<void> speakdresss9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You're old enough to dress yourself now.");
  }

  Future<void> speakdresss10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her mother always dressed them identically.");
  }

  Future<void> speakdresss11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All staff are expected to dress appropriately.");
  }

  Future<void> speakdresss12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You should dress for cold weather today.");
  }

  Future<void> speakdresss13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She always dressed entirely in black.");
  }

  Future<void> speakdresss14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Susan always dresses very elegantly.");
  }

  Future<void> speakdresss15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do they expect us to dress for dinner?");
  }

  Future<void> speakdresss16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He dresses many of Hollywood's most famous young stars.");
  }

  Future<void> speakdresss17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The nurse will dress that cut for you.");
  }

  Future<void> speakdresss18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She dressed the chicken before roasting it.");
  }

  Future<void> speakdresss19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had her hair dressed by a stylist.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: کراسی ژنانە،	جل‌وبەرگ، کنج، بەرگ، 	بەرگی میوانی یان تایبەتی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) جلێک کە یەک دەستەیە و شۆڕدەبێتەوە تاوەکو لاوەکان"),
          SentencesRow(
            englishText: "I appeared in a slinky satin dress.",
            kurdishText: "بە عەزیەیەکی پێوەچەسپی نەرمەوە دەرکەوتم.",
            onPressedBritish: () => speakdresss1("en-GB"),
            onPressedAmerican: () => speakdresss1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "These shoes go best with my dress.",
            kurdishText: "ئەم جلانە باش دەگونجێن لەگەڵ عەزیەکەم.",
            onPressedBritish: () => speakdresss2("en-GB"),
            onPressedAmerican: () => speakdresss2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You will look elegant in a simple black dress.",
            kurdishText: "کەشخە دەردەکەویت بە عەزیەیەکی سادەی ڕەشەوە.",
            onPressedBritish: () => speakdresss3("en-GB"),
            onPressedAmerican: () => speakdresss3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) جلێک لە جۆرێکی دیاریکراو"),
          SentencesRow(
            englishText:
                "He has no dress sense (= no idea of how to dress well).",
            kurdishText: "ھیچ سەلیقەی جل لەبەرکردنی نییە.",
            onPressedBritish: () => speakdresss4("en-GB"),
            onPressedAmerican: () => speakdresss4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We were allowed to wear casual dress on Fridays.",
            kurdishText:
                "ڕێگەمان پێدەدرا لە ڕۆژانی ھەینیدا جلێکی ئاسایی لەبەر بکەین.",
            onPressedBritish: () => speakdresss5("en-GB"),
            onPressedAmerican: () => speakdresss5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) لەبەرکردنی جل"),
          SentencesRow(
            englishText: "I dressed quickly.",
            kurdishText: "بەخێرایی جلم لەبەرکرد.",
            onPressedBritish: () => speakdresss6("en-GB"),
            onPressedAmerican: () => speakdresss6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Get up and get dressed!",
            kurdishText: "ھەستە و خۆت بپۆشە!",
            onPressedBritish: () => speakdresss7("en-GB"),
            onPressedAmerican: () => speakdresss7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She dressed the children in their best clothes.",
            kurdishText: "باشترین جلی لەبەری منداڵەکانی کرد.",
            onPressedBritish: () => speakdresss8("en-GB"),
            onPressedAmerican: () => speakdresss8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You're old enough to dress yourself now.",
            kurdishText: "ئێستا ھێندە گەورەیت کە خۆت جل لەبەربکەیت.",
            onPressedBritish: () => speakdresss9("en-GB"),
            onPressedAmerican: () => speakdresss9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her mother always dressed them identically.",
            kurdishText: "دایکی ھەمیشە وەک یەک جلی لەبەر دەکردن.",
            onPressedBritish: () => speakdresss10("en-GB"),
            onPressedAmerican: () => speakdresss10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) لەبەرکردنی جۆرە جلێکی دیاریکراو"),
          SentencesRow(
            englishText: "All staff are expected to dress appropriately.",
            kurdishText:
                "ھەموو ستافەکە چاوەڕوانییان لێدەکرێت بە گونجاوی جل لەبەر بکەن.",
            onPressedBritish: () => speakdresss11("en-GB"),
            onPressedAmerican: () => speakdresss11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You should dress for cold weather today.",
            kurdishText: "ئەمڕۆ دەبێت بۆ کەشی سارد خۆت بپۆشیت.",
            onPressedBritish: () => speakdresss12("en-GB"),
            onPressedAmerican: () => speakdresss12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She always dressed entirely in black.",
            kurdishText: "ھەمیشە بە تەواوی ڕەشی لەبەردەکرد.",
            onPressedBritish: () => speakdresss13("en-GB"),
            onPressedAmerican: () => speakdresss13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Susan always dresses very elegantly.",
            kurdishText: "سوزان ھەمیشە زۆر کەشخانە جل لەبەر دەکات.",
            onPressedBritish: () => speakdresss14("en-GB"),
            onPressedAmerican: () => speakdresss14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) لەبەرکردنی جلی فەرمی"),
          SentencesRow(
            englishText: "Do they expect us to dress for dinner?",
            kurdishText:
                "چاوەڕێی ئەوەمان لێدەکەن بۆ نانی ئێوارە جلی فەرمی لەبەر بکەین؟",
            onPressedBritish: () => speakdresss15("en-GB"),
            onPressedAmerican: () => speakdresss15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) دابینکردنی جل بۆ کەسێکی بەناوبانگ"),
          SentencesRow(
            englishText:
                "He dresses many of Hollywood's most famous young stars.",
            kurdishText:
                "جل بۆ زۆرێک لە ناسراوترین ئەستێرە گەنجەکانی ھۆڵیوود دابین دەکات.",
            onPressedBritish: () => speakdresss16("en-GB"),
            onPressedAmerican: () => speakdresss16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) چارەسەرکردنی برینێک یان داپۆشینی"),
          SentencesRow(
            englishText: "The nurse will dress that cut for you.",
            kurdishText: "پەرستارەکە ئاگای لە برینەکەت دەبێت.",
            onPressedBritish: () => speakdresss17("en-GB"),
            onPressedAmerican: () => speakdresss17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) ئامادەکردنی خۆراک بۆ لێنان"),
          SentencesRow(
            englishText: "She dressed the chicken before roasting it.",
            kurdishText: "مریشکەکەی کەوڵ کرد پێش برژاندنی.",
            onPressedBritish: () => speakdresss18("en-GB"),
            onPressedAmerican: () => speakdresss18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) ڕازاندنەوەی شتێک"),
          SentencesRow(
            englishText: "She had her hair dressed by a stylist.",
            kurdishText: "قژی لای ئاڕایشت‌گەرێک ڕازاندەوە.",
            onPressedBritish: () => speakdresss19("en-GB"),
            onPressedAmerican: () => speakdresss19("en-US"),
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

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: dress (derived forms: dresses, dressed, dressing)
1. Put on clothes (= get dressed)
"dress the patient"; "Can the child dress by herself?"; "we had to dress quickly";
 
2. Provide with clothes or put clothes on (= clothe, enclothe, garb, raiment [archaic], tog [informal], garment, habilitate [archaic], fit out, apparel)
"Parents must feed and dress their child";
 
3. Put a finish on
"dress the surface smooth"
 
4. Wear clothes in a certain manner or of a certain style (= dress up)
"She dresses in the latest Paris fashion"; "he dressed up in a suit and tie";
 
5. Dress or groom with elaborate care (= preen, primp, plume)
"She likes to dress when going to the opera";
 
6. Kill and prepare for market or consumption (= dress out)
"dress a turkey";
 
7. Arrange in ranks (= line up)
"dress troops";
 
8. Decorate (food), as with parsley or other ornamental foods (= trim, garnish)
 
9. Provide with decoration (= decorate)
"dress the windows";
 
10. (cooking) put a dressing on
"dress the salads"
 
11. Cultivate, tend, and cut back the growth of (= snip, clip, crop, trim, lop, prune, cut back)
"dress the plants in the garden";
 
12. Cut down rough-hewn (lumber) to standard thickness and width
 
13. Convert into leather
"dress the tanned skins"
 
14. (medicine) apply a bandage or medication to
"dress the victim's wounds"
 
15. Give a neat appearance to (= groom, curry)
"dress the horses";
 
16. Style or arrange hair attractively (= arrange, set, do, coif, coiffe, coiffure)
"dress my hair for the wedding";

- Noun: dress (derived forms: dresses)
1. A one-piece garment for a woman; has skirt and bodice (= frock)
 
2. Clothing of a distinctive style or for a particular occasion (= attire, garb)
"battle dress";
 
3. Clothing in general (= apparel, wearing apparel, clothes, gear [informal], toggery [informal])
"fastidious about his dress";

- Adjective: dress 
1، Suitable for formal occasions (= full-dress)
"a full-dress uniform"; "dress shoes";
 
2. (of an occasion) requiring formal clothes (= full-dress)
"a dress dinner"; "a full-dress ceremony";
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

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'USJAwgvHY6w';
  final double _startSeconds = 53;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = '3wiy-nW6hbI';
  final double _startSeconds = 243;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'g_qdccA9z_E';
  final double _startSeconds = 9;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = '7y1SJxEd49g';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'ND5_ZFdzwuo';
  final double _startSeconds = 109;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'p0jt4n92ZMY';
  final double _startSeconds = 268;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'BoF1RKZeJhk';
  final double _startSeconds = 115;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
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
    );
  }
}

// end WORD_WEB