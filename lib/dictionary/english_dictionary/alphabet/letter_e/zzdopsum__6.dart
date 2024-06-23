import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydopsum1 extends StatefulWidget {
  const EnglishEntrydopsum1({super.key});

  @override
  State<EnglishEntrydopsum1> createState() => _EnglishEntrydopsum1State();
}

class _EnglishEntrydopsum1State extends State<EnglishEntrydopsum1> {
  @override
  void initState() {
    super.initState();
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
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
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
  final String keyword = "dopsum1";
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
  EntryAndIPA({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdopsum1(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dopsum1"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: EntryPageColumn(
        word: "dopsum1",
        // alsoEnglishWord: "also: dopsum1",
        britshText: "IpaUK: haʊʊʊʊʊʊʊ4",
        americanText: "IpaUS: haʊʊʊʊʊʊʊ4",
        onPressedBritish: () => speakdopsum1("en-GB"),
        onPressedAmerican: () => speakdopsum1("en-US"),
      ),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdopsum1s1(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("// speakdopsum1s100000000000000000000000000000000");
  }

  Future<void> speakdopsum1s2(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s200");
  }

  Future<void> speakdopsum1s3(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s300");
  }

  Future<void> speakdopsum1s4(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s400");
  }

  Future<void> speakdopsum1s5(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s500");
  }

  Future<void> speakdopsum1s6(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s600");
  }

  Future<void> speakdopsum1s7(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s700");
  }

  Future<void> speakdopsum1s8(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s800");
  }

  Future<void> speakdopsum1s9(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s900");
  }

  Future<void> speakdopsum1s10(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s_1000");
  }

  Future<void> speakdopsum1s11(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1100");
  }

  Future<void> speakdopsum1s12(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1200");
  }

  Future<void> speakdopsum1s13(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1300");
  }

  Future<void> speakdopsum1s14(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1400");
  }

  Future<void> speakdopsum1s15(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1500");
  }

  Future<void> speakdopsum1s16(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1600");
  }

  Future<void> speakdopsum1s17(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1700");
  }

  Future<void> speakdopsum1s18(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1800");
  }

  Future<void> speakdopsum1s19(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1900");
  }

  Future<void> speakdopsum1s20(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s_2000");
  }

  Future<void> speakdopsum1s21(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s2100");
  }

  Future<void> speakdopsum1s22(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s2200");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: 
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) پێنناسە"""),
          SentencesRow(
            englishText:
                """// speakdopsum1s100000000000000000000000000000000""",
            kurdishText: """رستە_رستە_رستە_رستە.""", // dopsum1
            onPressedBritish: () => speakdopsum1s1("en-GB"),
            onPressedAmerican: () => speakdopsum1s1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s2("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s2("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s3("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s3("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s4("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s4("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s5("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s5("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s6("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s6("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s7("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s7("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s8("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s8("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s9("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s9("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s_1000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s10("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s10("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s11("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s11("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s12("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s12("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s13("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s13("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s14("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s14("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s15("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s15("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s16("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s16("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s17("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s17("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s18("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s18("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s1900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s19("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s19("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s_2000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s20("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s20("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s21("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s21("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s22("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s22("en-US" ""),
          // ),
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

speakdopsum1 EnglishEntrydopsum1 dopsum1
WORD_WEB dopsum1 dopsum1 dopsum1
haʊʊʊʊʊʊʊ4
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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

// eeeeeeeeeeeeeeeeeeeeeeeeee  ەەەەەەەەەەەەەەەەەەەەەەە

// new design was done for: abridgement

// search for CustomTabBar

// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider

// vvvvvvvvvvvvvvvvvvvvvvvvvvv

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  const YoutubeEmbeddeddsixteen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  const YoutubeEmbeddeddseventeen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  const YoutubeEmbeddeddeighteen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  const YoutubeEmbeddeddnineteen({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwenty extends StatelessWidget {
  const YoutubeEmbeddedtwenty({super.key});

  final String _videoId = 'PUT_VIDEO_ID';
  final double _startSeconds = 000;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// mmmmmmmmmmmmmmmmmmmmmmm

// divider
// divider
// divider
// divider
// divider
// divider

class YoutubeEmbeddedmulti extends StatelessWidget {
  YoutubeEmbeddedmulti({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllertwo = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllerthree = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllerfour = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllerfive = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            YouTubeContainerDesignNew(controller: _controller),
            YouTubeContainerDesignNew(controller: _controllertwo),
            YouTubeContainerDesignNew(controller: _controllerthree),
            YouTubeContainerDesignNew(controller: _controllerfour),
            YouTubeContainerDesignNew(controller: _controllerfive),
          ],
        ),
      ),
    );
  }
}

// tttttttttttttttttttttttttttttttttttttttttttttt  تتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت

  // Future<void> speakdopsum1s23(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2300");
  // }

  // Future<void> speakdopsum1s24(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2400");
  // }

  // Future<void> speakdopsum1s25(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2500");
  // }

  // Future<void> speakdopsum1s26(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2600");
  // }

  // Future<void> speakdopsum1s27(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2700");
  // }

  // Future<void> speakdopsum1s28(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2800");
  // }

  // Future<void> speakdopsum1s29(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s2900");
  // }

  // Future<void> speakdopsum1s30(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s_3000");
  // }

  // Future<void> speakdopsum1s31(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3100");
  // }

  // Future<void> speakdopsum1s32(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3200");
  // }

  // Future<void> speakdopsum1s33(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3300");
  // }

  // Future<void> speakdopsum1s34(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3400");
  // }

  // Future<void> speakdopsum1s35(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3500");
  // }

  // Future<void> speakdopsum1s36(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3600");
  // }

  // Future<void> speakdopsum1s37(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3700");
  // }

  // Future<void> speakdopsum1s38(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3800");
  // }

  // Future<void> speakdopsum1s39(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s3900");
  // }

  // Future<void> speakdopsum1s40(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s_4000");
  // }

  // Future<void> speakdopsum1s41(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4100");
  // }

  // Future<void> speakdopsum1s42(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4200");
  // }

  // Future<void> speakdopsum1s43(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4300");
  // }

  // Future<void> speakdopsum1s44(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4400");
  // }

  // Future<void> speakdopsum1s45(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4500");
  // }

  // Future<void> speakdopsum1s46(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4600");
  // }

  // Future<void> speakdopsum1s47(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4700");
  // }

  // Future<void> speakdopsum1s48(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4800");
  // }

  // Future<void> speakdopsum1s49(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s4900");
  // }

  // Future<void> speakdopsum1s50(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s_6000");
  // }

  // Future<void> speakdopsum1s51(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5100");
  // }

  // Future<void> speakdopsum1s52(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5200");
  // }

  // Future<void> speakdopsum1s53(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5300");
  // }

  // Future<void> speakdopsum1s54(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5400");
  // }

  // Future<void> speakdopsum1s55(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5500");
  // }

  // Future<void> speakdopsum1s56(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5600");
  // }

  // Future<void> speakdopsum1s57(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5700");
  // }

  // Future<void> speakdopsum1s58(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5800");
  // }

  // Future<void> speakdopsum1s59(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s5900");
  // }

  // Future<void> speakdopsum1s60(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6000");
  // }

  // Future<void> speakdopsum1s61(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6100");
  // }

  // Future<void> speakdopsum1s62(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6200");
  // }

  // Future<void> speakdopsum1s63(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6300");
  // }

  // Future<void> speakdopsum1s64(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6400");
  // }

  // Future<void> speakdopsum1s65(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6500");
  // }

  // Future<void> speakdopsum1s66(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6600");
  // }

  // Future<void> speakdopsum1s67(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6700");
  // }

  // Future<void> speakdopsum1s68(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6800");
  // }

  // Future<void> speakdopsum1s69(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s6900");
  // }

  // Future<void> speakdopsum1s70(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s_7000");
  // }

  // Future<void> speakdopsum1s71(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7100");
  // }

  // Future<void> speakdopsum1s72(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7200");
  // }

  // Future<void> speakdopsum1s73(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7300");
  // }

  // Future<void> speakdopsum1s74(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7400");
  // }

  // Future<void> speakdopsum1s75(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7500");
  // }

  // Future<void> speakdopsum1s76(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7600");
  // }

  // Future<void> speakdopsum1s77(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7700");
  // }

  // Future<void> speakdopsum1s78(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7800");
  // }

  // Future<void> speakdopsum1s79(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s7900");
  // }

  // Future<void> speakdopsum1s80(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8000");
  // }

  // Future<void> speakdopsum1s81(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8100");
  // }

  // Future<void> speakdopsum1s82(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8200");
  // }

  // Future<void> speakdopsum1s83(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8300");
  // }

  // Future<void> speakdopsum1s84(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8400");
  // }

  // Future<void> speakdopsum1s85(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8500");
  // }

  // Future<void> speakdopsum1s86(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8600");
  // }

  // Future<void> speakdopsum1s87(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8700");
  // }

  // Future<void> speakdopsum1s88(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8800");
  // }

  // Future<void> speakdopsum1s89(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s8900");
  // }

  // Future<void> speakdopsum1s90(String languageCode) async {
  //   // DOPSUM: CHANGE speakdopsum1
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("speakdopsum1s9000");
  // }














  // rrrrrrrrrrrrrrrrrrrrrrrrrrrr ررررررررررررررررررررررررر

  
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s23("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s23("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s24("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s24("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s25("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s25("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s26("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s26("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s27("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s27("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s28("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s28("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s2900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s29("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s29("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s_3000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s30("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s30("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s31("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s31("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s32("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s32("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s33("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s33("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s34("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s34("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s35("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s35("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s36("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s36("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s37("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s37("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s38("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s38("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s3900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s39("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s39("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s_4000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s40("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s40("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s41("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s41("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s42("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s42("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s43("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s43("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s44("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s44("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s45("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s45("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s46("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s46("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s47("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s47("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s48("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s48("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s4900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s49("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s49("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s_6000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s50("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s50("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s51("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s51("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s52("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s52("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s53("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s53("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s54("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s54("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s55("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s55("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s56("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s56("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s57("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s57("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s58("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s58("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s5900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s59("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s59("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s60("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s60("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s61("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s61("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s62("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s62("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s63("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s63("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s64("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s64("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s65("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s65("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s66("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s66("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s67("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s67("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s68("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s68("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s6900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s69("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s69("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s_7000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s70("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s70("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s71("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s71("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s72("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s72("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s73("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s73("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s74("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s74("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s75("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s75("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s76("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s76("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s77("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s77("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s78("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s78("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s7900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s79("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s79("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s8000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s80("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s80("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s8100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s81("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s81("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s8200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s82("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s82("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s8300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s83("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s83("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakdopsum1s8400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakdopsum1s84("en-GB" ""),
          //   onPressedAmerican: () => speakdopsum1s84("en-US" ""),
          // ),