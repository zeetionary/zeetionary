import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylay extends StatefulWidget {
  const EnglishEntrylay({super.key});

  @override
  State<EnglishEntrylay> createState() => _EnglishEntrylayState();
}

class _EnglishEntrylayState extends State<EnglishEntrylay> {
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
- Verb: lay (Derived forms: laying, laid, lays)
1. Cause to have a certain (possibly abstract) location (- put, set, place, pose, position)
"lay your things here";
 
2. Put in a horizontal position (- put down, repose)
"lay the patient carefully onto the bed";
 
3. Prepare or position for action or operation
"lay a fire"; "lay the foundation for a new health care plan"
 
4. Produce and deposit (an egg or eggs)
"This hen doesn't lay"
 
5. Impose as a duty, burden, or punishment
"lay a responsibility on someone"
 
6. [vulgar] Have sexual intercourse (- sleep together, love, make love, sleep with, have sex, know [archaic], do it [informal], be intimate, have intercourse, lie with [archaic], bed [informal], get it on [informal])

- Noun: lay (Derived forms: lays)
1. Position or manner in which something is situated (- lie)
 
2. A narrative song with a recurrent refrain (- ballad)
 
3. A narrative poem of popular origin (- ballad)
 
4. [vulgar] Slang for sexual intercourse (- rumpy-pumpy [informal])

- Adjective: lay
1. Characteristic of those who are not members of the clergy (- laic, secular)
"the lay ministry";
 
2. Not of or from a profession
"a lay opinion as to the cause of the disease"
""",
  );

  final String keyword = "lay";
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
    await flutterTts.speak("""lay""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He laid a hand on my arm.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Relatives laid wreaths on the grave.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She laid the baby down gently on the bed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Red roses were laid at the memorial.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His mother visited the murder scene yesterday to lay flowers.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Before they started they laid newspaper on the floor.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They carefully laid a blanket over the body.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The floor was laid with newspaper.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Thirteen boats left their base to lay mines in British waters.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The foundations of the house are being laid today.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A series of short-term goals lays the foundation for long-term success.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The hens are not laying well.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Thousands of turtles drag themselves onto the beach and lay their eggs in the sand.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He asked his daughter to lay the table for dinner.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bill was laid before Parliament.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Failing to act now will merely lay the burden on future generations.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Teachers often lay a responsibility on students.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Our teacher lays great stress on good spelling.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She laid the blame for the crisis at the Prime Minister's door.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He laid stress on the importance of cooperation.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Little did he know they had laid a trap for him.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She began to lay her plans for her escape.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Bad weather can upset even the best-laid plans.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He went out hoping to get laid that night.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His book explains the theory for the lay public.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's a good lay.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/eetwPz7PHvY?t=2251';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/HCzspXQ6PDk?t=9';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/_spuxXnul0U?t=799';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/hbegYQ-rqz0?t=674';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/e09xig209cQ?t=126';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/ewLpXw6uN28?t=959';
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
                      word: """lay""",
                      // alsoEnglishWord: "also: lay",
                      britshText: """IpaUK: /leɪ/""",
                      americanText: """IpaUS: /leɪ/""",
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
کوردی: 
"""),
// With short examples define "lay", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) دانانی ک/شت لە شوێنێک"""),
                    SentencesRow(
                      englishText: """He laid a hand on my arm.""",
                      kurdishText: """دەستێکی خستە سەر باڵم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Relatives laid wreaths on the grave.""",
                      kurdishText:
                          """خزمان تاجە گوڵینەیان لەسەر گۆڕەکە دانا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She laid the baby down gently on the bed.""",
                              kurdishText:
                                  """بە لەسەرەخۆیی منداڵەکەی لەسەر جێخەوەکە دانا.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (هاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Red roses were laid at the memorial.""",
                              kurdishText:
                                  """گوڵی سوور لە ئارامگایەکە دانران.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (هاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His mother visited the murder scene yesterday to lay flowers.""",
                              kurdishText:
                                  """دایکی دوێنێ چووە شوێنی کوژرانەکە بۆ دانانی گوڵ.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) بڵاوکردنەوەی شتێک لەسەر شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Before they started they laid newspaper on the floor.""",
                      kurdishText:
                          """پێش ئەوەی دەست پێبکەن ڕۆژنامەینا لەسەر زەوییەکە ڕاخست.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They carefully laid a blanket over the body.""",
                      kurdishText:
                          """بە وریاییەوە بەتانییەکیان لەسەر جەستەکە ڕاخست.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The floor was laid with newspaper.""",
                      kurdishText: """زەوییەکە بە ڕۆژنامە داپۆشرا.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) دانانی شتێک، بە تایبەتی لەسەر زەوی، بۆ ئەوەی بەکاربێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Thirteen boats left their base to lay mines in British waters.""",
                      kurdishText:
                          """سێزدە بەلەم بنکەکەیانیان جێهێشت بۆ دانانی مین لە ئاوەکانی بەریتانیادا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The foundations of the house are being laid today.""",
                      kurdishText: """بناغەی خانووەکە ئەمڕۆ دادەنرێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A series of short-term goals lays the foundation for long-term success.""",
                      kurdishText:
                          """(خوازروی) زنجیرەیەک لە ئامانجی کورت خایەن بناغە بۆ سەرکەوتنی درێژ خایەن دادەنێن.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) کە باڵندەیەک، مێروویەک، ماسییەک، هتد هێلکە بکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The hens are not laying well (= not producing many eggs).""",
                      kurdishText: """مریشکەکان باش هێلکە ناکەن.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Thousands of turtles drag themselves onto the beach and lay their eggs in the sand.""",
                      kurdishText:
                          """هەزاران کیسەڵ خۆیان دێننە کەناراوەکە و هێلکەکانیان لە خۆڵەکە دادەنێن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ڕێکخستنی چەقۆ، چنگاڵ، دەوری، هتد لەسەر مێزێک بۆ نانخواردن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: set"),
                    SentencesRow(
                      englishText:
                          """He asked his daughter to lay the table for dinner.""",
                      kurdishText:
                          """داوای لە کچەکەی کرد مێزەکە بۆ نانی ئێوارە ڕێکبخات.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) پێشکەشکردنی پێشنیارێک، زانیاری، هتد بە کەسێک بۆ ئەوەی بیری لێ بکاتەوە یان بڕیاری لەسەر بدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The bill was laid before Parliament.""",
                      kurdishText: """پڕۆژە یاساکە خرایە پێش پەرلەمان.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) ئەوەی ک/شت بخەیتە دۆخێکەوە، بە تایبەتی کە سەخت بێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: place"),
                    SentencesRow(
                      englishText:
                          """Failing to act now will merely lay the burden on future generations.""",
                      kurdishText:
                          """ئەوەی نەتوانین ئێستا هەنگاو بنێین تەنها ئەوەیە سەختییەکە دەخاتە سەر نەوەکانی داهاتوو.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Teachers often lay a responsibility on students.""",
                      kurdishText:
                          """مامۆستایان زۆرجار بەرپرسیارییەتی دەدەن بە قوتابیان.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) لەگەڵ ناوێک بەکاردێت بۆ درووستکردنی دەستەواژەیەک کە هەمان واتای ئەو کردارەی هەیە کە پەیوەندیدارە بە ناوەکەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Our teacher lays great stress on good spelling (= stresses it strongly).""",
                      kurdishText:
                          """مامۆستاکەمان جەختی زۆر دەکاتەوە لە ڕێنووس.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She laid the blame for the crisis at the Prime Minister's door.""",
                      kurdishText:
                          """خەتای قەیرانەکەی خستە گەردنی سەرۆک وەزیران.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He laid stress on the importance of cooperation.""",
                      kurdishText: """جەختیکردەوە لەسەر گرنگیی هاوئاهەنگی.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) ئامادەکردنی شتێک بە وردی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Little did he know they had laid a trap for him.""",
                      kurdishText: """ئەوەی نەزانی کە تەڵەی بۆی ناوەتەوە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She began to lay her plans for her escape.""",
                      kurdishText: """دەستیکرد بەوەی پلانی هەڵهاتنی دابنێت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (هاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Bad weather can upset even the best-laid plans.""",
                      kurdishText:
                          """کەشووهەوای خراپ دەکرێت تەنانەت باشترین پلانە ئامادەکراوەکانیش تێکبدات.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) هەبوونی سێکس لەگەڵ کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He went out hoping to get laid that night.""",
                      kurdishText:
                          """چووە دەرەوە بە هیوای ئەوەی ئەو شەوە سێکسێک بکات.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (هاوەڵناو) نەبوونی زانیاری پسپۆڕانە یان شارەزایی لەسەر بابەتێکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His book explains the theory for the lay public.""",
                      kurdishText:
                          """کتێبەکەی بیردۆزەکە بۆ خەڵکە عەوامەکە ڕووندەکاتەوە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ناو) ئەو کەسەی سێکسی لەگەڵ دەکەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's a good lay (= sex with her is enjoyable).""",
                      kurdishText: """شەوخەوێکی باشە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
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
// end lay