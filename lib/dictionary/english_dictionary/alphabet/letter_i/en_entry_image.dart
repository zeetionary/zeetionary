import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimage extends StatefulWidget {
  const EnglishEntryimage({super.key});

  @override
  State<EnglishEntryimage> createState() => _EnglishEntryimageState();
}

class _EnglishEntryimageState extends State<EnglishEntryimage> {
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
- Noun: image (Derived forms: images)
1. An iconic mental representation (- mental image)
"her imagination forced images upon her too awful to contemplate";
 
2. (Jungian psychology) a personal facade that one presents to the world (- persona)
"a public image is as fragile as Humpty Dumpty";
 
3. A visual representation (of an object, scene, person or abstraction) produced on a surface (- picture, icon, ikon)
"a movie is a series of images projected so rapidly that the eye integrates them";
 
4. A standard, typical or perfect example (- prototype, paradigm, epitome)
"he provided America with an image of the good father";
 
5. Language used in a figurative or nonliteral sense (- trope, figure of speech, figure)
 
6. Someone who closely resembles a famous person (especially an actor) (- double, look-alike)
"she's the very image of her mother";
 
7. (mathematics) the set of values of the dependent variable for which a function is defined (- range, range of a function)
"the image of f(x) = ximage2 is the set of all non-negative real numbers if the domain of the function is the set of all real numbers";
 
8. The general impression that something (a person, organization or product) presents to the public
"although her popular image was contrived it served to inspire music and pageantry"; "the company tried to project an altruistic image"
 
9. A representation of a person (especially in the form of sculpture) (- effigy, simulacrum)
"the emperor's tomb had his image carved in stone";
 
10. (computing) an exact copy, e.g. a file that contains a copy of an entire disk drive

- Verb: image (Derived forms: imaged, images, imaging)
1. Render visible, as by means of MRI
 
2. Imagine; conceive of; see in one's mind (- visualize, visualise [Brit], envision, project, fancy, see, figure, picture)
""",
  );

  final String keyword = "image";
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
    await flutterTts.speak("""image""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Most simple leaflets will include text and images.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We already have more than 22  000 digital images on file.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Images of deer and hunters decorate the cave walls.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Consider the images of war that fill the pages of our newspapers.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He stared at his own image reflected in the water.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Click on the image for a larger version.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Slowly, an image began to appear on the screen.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Police will study the images from CCTV cameras.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His public image is very different from the real person.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The advertisements are intended to improve the company's image.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Image is very important in the music world.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The campaign aims to create a new image for the city.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I had a mental image of what she would look like.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She started to recall images from her past.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hFZFjoX2cGg';
    const double startSecondsend = 417;
    const String videoIdone = 'juK9c8zgUvU';
    const double startSecondsone = 123;
    const String videoIdtwo = 'G3JZ4uMu4YQ';
    const double startSecondstwo = 105;
    const String videoIdthree = 'smiboZL4JEo';
    const double startSecondsthree = 735;
    const String videoIdfour = 'NsZGb6gIeDg';
    const double startSecondsfour = 0;
    const String videoIdfive = 'UuGpm01SPcA';
    const double startSecondsfive = 304;

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
                      word: """image""",
                      // alsoEnglishWord: "also: image",
                      britshText: """IpaUK: /ˈɪmɪdʒ/""",
                      americanText: """IpaUS: /ˈɪmɪdʒ/""",
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
کوردی: پەیکەر، کۆتەڵ،	بت،	وێنە، کێشراوە، نیگار،	لف، هاوتا، تا،	خوازە، مەجاز، ئیماژ،	ئابڕوو، ئابوور، بایەخ،	وێچواندن، شوبهاندن،	هێما، نموونە، سەمبۆل،	هزر، بیرۆکە،	وازانین، بۆچوون، پێ‌وابوون، خەیاڵ،	کۆپی، ڕوونووس
"""),
// With short examples define "image", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) وێنەیەک یان پەیکەرێک کە ک/شت پیشان دەدات"""),
                    SentencesRow(
                      englishText:
                          """Most simple leaflets will include text and images.""",
                      kurdishText:
                          """زۆر نامیلکەی سادە و نووسین و وێنە لەخۆدەگرن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We already have more than 22  000 digital images on file.""",
                      kurdishText:
                          """پێشوەختە سەروو ٢٢٠٠٠ وێنەی دیجیتاڵیمان بە فایل هەیە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Images of deer and hunters decorate the cave walls.""",
                      kurdishText:
                          """وێنەی ئاسک و ڕاوکەران کێشراون لەسەر دیواری ئەشکەوتەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Consider the images of war that fill the pages of our newspapers.""",
                      kurdishText:
                          """بیر لەو وێنانەی جەنگ بکە کە پەڕەکانی ڕۆژنامەکانمان دەتەنن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) وێنەی ک/شت کە لە ئاوێنەیەکەوە، کامێرایەک، یان لەسەر تەلەفیزیۆن، کۆمپیوتەر، موبایل، هتد دەبینرێت"""),
                    SentencesRow(
                      englishText:
                          """He stared at his own image reflected in the water.""",
                      kurdishText:
                          """دەیڕوانی لە وێنەی خۆی کە لە ئاوەکەدا دەدرایەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Click on the image for a larger version.""",
                      kurdishText:
                          """گرتە لە وێنەکە بکە بۆ وەشانێکی گەورەتر.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Slowly, an image began to appear on the screen.""",
                      kurdishText:
                          """بە هێواشی، وێنەیەک دەستی کرد بە دەرکەوتن لەسەر شاشەکە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Police will study the images from CCTV cameras.""",
                      kurdishText:
                          """پۆلیس سەیری وێنەکانی کامێراکانی چاودێری دەکات.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) وێنای کەسێک لە پێش چاوی خەڵکی"""),
                    SentencesRow(
                      englishText:
                          """His public image is very different from the real person.""",
                      kurdishText:
                          """وێنا گشتییەکەی زۆر جیاوازە لە کەسایەتییە ڕاستەقینەکەی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The advertisements are intended to improve the company's image.""",
                      kurdishText:
                          """بانگەشەکان ئامانجیانە وێنای کۆمپانیاکە باش بکەن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Image is very important in the music world.""",
                      kurdishText: """وێنا زۆر گرنگە لە جیهانی میوزیکدا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The campaign aims to create a new image for the city.""",
                      kurdishText:
                          """کەمپینەکە ئامانجیەتی وێنایەکی تازە بۆ شارەکە بۆ درووست بکات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) وێنەیەک کە لە مێشکتدا هەتە بۆ ئەوەی ک/شت چۆنە"""),
                    SentencesRow(
                      englishText:
                          """I had a mental image of what she would look like.""",
                      kurdishText: """وێنەیەکی خەیاڵیم هەبوو کە چۆنە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She started to recall images from her past.""",
                      kurdishText:
                          """دەستی کرد بەوەی خەیاڵی ڕابردووی بیربێتەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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