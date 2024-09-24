import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhorse extends StatefulWidget {
  const EnglishEntryhorse({super.key});

  @override
  State<EnglishEntryhorse> createState() => _EnglishEntryhorseState();
}

class _EnglishEntryhorseState extends State<EnglishEntryhorse> {
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
- Noun: horse (Derived forms: horses)
1. Solid-hoofed herbivorous quadruped domesticated since prehistoric times (- Equus caballus)
 
2. A padded gymnastic apparatus on legs (- gymnastic horse)
 
3. (military) troops trained to fight on horseback (- cavalry, horse cavalry)
"500 horse led the attack";
 
4. A framework for holding wood that is being sawed (- sawhorse, sawbuck [N. Amer], buck)
 
5. (chess) a chessman shaped to resemble the head of a horse; can move two squares horizontally and one vertically (or vice versa) (- knight)

- Verb: horse (Derived forms: horsing, horses, horsed)
1. Provide with a horse or horses
""",
  );

  final String keyword = "horse";
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
    await flutterTts.speak("""horse""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He mounted his horse and rode off.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""All horses are animals, but not all animals are horses.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These bones come from an animal that is the ancestor of the modern horse.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rider has to halt the horse in the arena.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The circus featured a performance by a bareback rider who executed daring stunts on a horse.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The farmer spread fresh bedding in the stalls for the horses.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The rider controlled the horse's movement with the bit.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The zebra is a wild African horse with black and white stripes.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The plane swooped down low and the horses bolted.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The horse bowled past the finish line in a gallop.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The horse tried to break free from its stable.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Polly saddled and bridled her favourite horse.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse bucked wildly.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse and cart belongs to a bygone era.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Travelers in the 19th century depended on a caravan of horses for long journeys.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse champed eagerly on the fresh hay.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the distance, the clatter of horses' hoofs signaled the arrival of the royal procession.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She coaxed the horse into coming a little closer.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A crowd of men on horses carrying spears came charging down the road.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The disease is very common in young horses.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A mule is the product of a horse crossed with a donkey.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The terrified horse galloped off.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He galloped his horse home.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My horse suddenly broke into a gallop.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Diane urged her horse into a gallop.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Most people when confronted with a horse will pat it.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Horse-drawn conveyances were an integral part of daily life in the 19th century.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The horse's contrariness made it difficult to train.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Everybody thinks horse racing is crook anyway.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The whip cracked over the horses' heads.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horses were quietly cropping the grass.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A mule is a cross between a horse and a donkey.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The injured horse had to be destroyed.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's illegal to drug horses before a race.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The enclosure for the horses was spacious.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The horse evacuated its bowels all over the path.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Some horses become excited when they're in traffic.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Horses need to be exercised regularly.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Two of the horses collapsed with exhaustion.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was killed in a fall from a horse.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Which horse do you fancy in the next race?""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They stocked up on winter feed for the horses.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He crafted a bronze figure of a horse for the exhibition.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The horse was flicking flies away with its tail.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Horses should have fresh water available at all times.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse was clearly out of form.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He loaded the wagon with fodder for the horses.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Auntie Paula likes to have a bit of a flutter on the horses.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She has compiled a glossary of horse-riding terms.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The gestation period of a horse is about eleven months.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A furlong is used in horse racing.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her horse seemed rather frisky.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The lion's claws had gouged a wound in the horse's side.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The lion's claws had gouged a wound in the horse's side.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Riders displayed their horsemanship skills in the gymkhana.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horses are all well fed and groomed.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rider has to halt the horse in the arena.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse was wearing a leather halter.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The sight of horses in harness hauling timber was common a hundred years ago.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The wagons were hauled by horses.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She patted the horse's glossy black haunch.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The favourite won by a short head.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A horse-drawn hearse took the coffin from the house to the church.""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The rider struggled to calm the high-spirited horse.""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their new horse is very highly strung.""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse reared up on its hind legs.""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The horse tossed its head and stamped its hooves nervously.""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He lost a lot of money on the horses.""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6900""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_7000""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7100""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7200""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7300""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7400""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7500""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7600""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7700""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7800""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7900""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_8000""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8100""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8200""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8300""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8400""");
  }

  Future<void> speaksentence85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8500""");
  }

  Future<void> speaksentence86(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8600""");
  }

  Future<void> speaksentence87(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8700""");
  }

  Future<void> speaksentence88(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8800""");
  }

  Future<void> speaksentence89(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8900""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_9000""");
  }

  Future<void> speaksentence91(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9100""");
  }

  Future<void> speaksentence92(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9200""");
  }

  Future<void> speaksentence93(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9300""");
  }

  Future<void> speaksentence94(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9400""");
  }

  Future<void> speaksentence95(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9500""");
  }

  Future<void> speaksentence96(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9600""");
  }

  Future<void> speaksentence97(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9700""");
  }

  Future<void> speaksentence98(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9800""");
  }

  Future<void> speaksentence99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9900""");
  }

  Future<void> speaksentence100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence__10000""");
  }

  Future<void> speaksentence101(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10100""");
  }

  Future<void> speaksentence102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10200""");
  }

  Future<void> speaksentence103(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10300""");
  }

  Future<void> speaksentence104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10400""");
  }

  Future<void> speaksentence105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10500""");
  }

  Future<void> speaksentence106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10600""");
  }

  Future<void> speaksentence107(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10700""");
  }

  Future<void> speaksentence108(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10800""");
  }

  Future<void> speaksentence109(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10900""");
  }

  Future<void> speaksentence110(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11000""");
  }

  Future<void> speaksentence111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11100""");
  }

  Future<void> speaksentence112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11200""");
  }

  Future<void> speaksentence113(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11300""");
  }

  Future<void> speaksentence114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11400""");
  }

  Future<void> speaksentence115(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11500""");
  }

  Future<void> speaksentence116(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11600""");
  }

  Future<void> speaksentence117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11700""");
  }

  Future<void> speaksentence118(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11800""");
  }

  Future<void> speaksentence119(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11900""");
  }

  Future<void> speaksentence120(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_12000""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'https://youtu.be/rPe4yziWiOg?t=';
    const double startSecondsend = 000000000000000000000000000370;
    const String videoIdone = 'https://youtu.be/_spuxXnul0U?t=';
    const double startSecondsone = 000000000000000000000000000186;
    const String videoIdtwo = 'https://youtu.be/gFuEoxh5hd4?t=';
    const double startSecondstwo = 0000000000000000000000000001261;
    const String videoIdthree = 'https://youtu.be/JVZMcBoEhT4?t=';
    const double startSecondsthree = 00000000000000000000000000019;
    const String videoIdfour = 'https://youtu.be/smgwK6I57PI?t=';
    const double startSecondsfour = 00000000000000000000000000049;
    const String videoIdfive = 'https://youtu.be/N3IV7ZJkmj0?t=';
    const double startSecondsfive = 000000000000000000000000000276;

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
                      word: """horse""",
                      // alsoEnglishWord: "also: horse",
                      britshText: """IpaUK: /hɔːs/""",
                      americanText: """IpaUS: /hɔːrs/""",
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
// With short examples define "horse", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ناو) ئەسپ"""),
                    SentencesRow(
                      englishText: """He mounted his horse and rode off.""",
                      kurdishText: """سەرکەوتە سەر ئەسپەکەی و چوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """All horses are animals, but not all animals are horses.""",
                              kurdishText:
                                  "ھەموو ئەسپێک ئاژەڵە، بەڵام ھەموو ئاژەڵێک ئەسپ نییە.",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """These bones come from an animal that is the ancestor of the modern horse.""",
                              kurdishText:
                                  "ئەم ئێسکانە ھی ئاژەڵێکن کە باوانی ئەسپی ئێستایە.",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The rider has to halt the horse in the arena.""",
                              kurdishText:
                                  "سوارەکە دەبێت ئەسپەکە لە گۆڕەپانەکەدا بوەستێنێت.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The circus featured a performance by a bareback rider who executed daring stunts on a horse.""",
                              kurdishText:
                                  "سێرکەکە نمایشێکی لۆخەگرت لەلایەن سوارچاکێکی بێ‌زینەوە کە ژمارەیەک کاری شانۆیی ئەنجامدا لەسەر ئەسپێک.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The farmer spread fresh bedding in the stalls for the horses.""",
                              kurdishText:
                                  "ئاژەڵدارەکە پوشوپەڵاشی تازەی بڵاوکردەوە لە تەویلەی ئەسپەکان.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The rider controlled the horse's movement with the bit.""",
                              kurdishText:
                                  "سوارەکە کۆنترۆڵی جوڵەی ئەسپەکەی دەکرد بە لەغاوەکە.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The zebra is a wild African horse with black and white stripes.""",
                              kurdishText:
                                  "کەرەکێوی ئەسپێکی کێویی ئەفریقییە بە خەتی ڕەش و سپییەوە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The plane swooped down low and the horses bolted.""",
                              kurdishText:
                                  "فڕۆکەکە نزمبووەوە و ئەسپەکان ھەڵھاتن.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse bowled past the finish line in a gallop.""",
                              kurdishText:
                                  "ئەسپەکە بە غاردان بە ھێڵی بردنەوەدا تێپەڕی.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse tried to break free from its stable.""",
                              kurdishText:
                                  "ئەسپەکە ھەوڵیدا لە تەویلەکە ھەڵبێت.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Polly saddled and bridled her favourite horse.""",
                              kurdishText:
                                  "پۆڵی زین و ھەوساری لە ئەسپی دڵخوازی پۆشی.",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """The horse bucked wildly.""",
                              kurdishText: "ئەسپەکە شێتانە بازی دا.",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse and cart belongs to a bygone era.""",
                              kurdishText:
                                  "ئەسپ و عارەبانە سەر بە سەردەمی کۆنە.",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Travelers in the 19th century depended on a caravan of horses for long journeys.""",
                              kurdishText:
                                  "گەشتیاران لە سەدەی ١٩ دا پشتیان بە عەرەبانەی ئەسپ دەبەست بۆ گەشتی ماوە دەرێژ.",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse champed eagerly on the fresh hay.""",
                              kurdishText:
                                  "ئەسپەکە کاوێژی دەکرد لە وێنجە تازەکەدا.",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """In the distance, the clatter of horses' hoofs signaled the arrival of the royal procession.""",
                              kurdishText:
                                  "لە دوورەوە دەنگی سمی ئەسپەکان نیشانەی گەشتنی قافڵەی شاھانەیی بوو.",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She coaxed the horse into coming a little closer.""",
                              kurdishText:
                                  "ئەسپەکەی قایلکرد کەمێک نزیک ببێتەوە.",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A crowd of men on horses carrying spears came charging down the road.""",
                              kurdishText:
                                  "ژمارەیەک پیاو لەسەر ئەسپ و ھەڵگرتنی ڕمەوە بە ڕێگاکەدا ھێرشیان کرد.",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The disease is very common in young horses.""",
                              kurdishText:
                                  "ئەم نەخۆشییە زۆر باوە لەناو بەچکە ئەسپدا.",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A mule is the product of a horse crossed with a donkey.""",
                              kurdishText:
                                  "ھێستر بەرھەمی جووتکردنی ئەسپە لەگەڵ گوێدرێژدا.",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The terrified horse galloped off.""",
                              kurdishText: """ئەسپە ترساوەکە غاری دا و ڕۆشت.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He galloped his horse home.""",
                              kurdishText: """ئەسپەکەیی بۆ مالەوە غاردا.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """My horse suddenly broke into a gallop.""",
                              kurdishText: """ئەسپەکەم لەناکاو کەوتە غاردان.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Diane urged her horse into a gallop.""",
                              kurdishText: """دایان ئەسپەکەی خستە غاردان.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Most people when confronted with a horse will pat it.""",
                              kurdishText:
                                  "زۆر کەس کە ڕووبەڕووی ئەسپێک دەبنەوە دەستی پێدا دێنن.",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Horse-drawn conveyances were an integral part of daily life in the 19th century.""",
                              kurdishText:
                                  "گوێزەرەوە ئەسپیەکان بەشێوەکی گرنگی ژیانی ڕۆژانە بوون لە سەدەی ١٩ ـدا.",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse's contrariness made it difficult to train.""",
                              kurdishText:
                                  "لاساریی ئەسپەکە ڕاھێنانی سەخت کردبوو.",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Everybody thinks horse racing is crook anyway.""",
                              kurdishText:
                                  "ھەرچۆنێک بێت ھەمووان وابیردەکەنەوە پێشبڕکێی ئەسپسواری خراپە.",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The whip cracked over the horses' heads.""",
                              kurdishText:
                                  "قامچییەکە لەسەر سەری ئەسپەکە شریقەی دەھات.",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horses were quietly cropping the grass.""",
                              kurdishText:
                                  "ئەسپەکان بە ھێمنی لە ناو سەوزەگیاکەدا دەلەوەڕین.",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A mule is a cross between a horse and a donkey.""",
                              kurdishText: "ھێستر دووڕەگەی ئەسپ و گوێدرێژە.",
                              onPressedBritish: () => speaksentence32("en-GB"),
                              onPressedAmerican: () => speaksentence32("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The injured horse had to be destroyed.""",
                              kurdishText: "ئەسپە بریندارەکە دەبوو بکوژرێت.",
                              onPressedBritish: () => speaksentence33("en-GB"),
                              onPressedAmerican: () => speaksentence33("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's illegal to drug horses before a race.""",
                              kurdishText:
                                  "نایاساییە دەرمان بدەیت بە ئەسپ پێش پێشبڕکێ.",
                              onPressedBritish: () => speaksentence34("en-GB"),
                              onPressedAmerican: () => speaksentence34("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The enclosure for the horses was spacious.""",
                              kurdishText: """حەساری ئەسپەکان فراوان بوو.""",
                              onPressedBritish: () => speaksentence35("en-GB"),
                              onPressedAmerican: () => speaksentence35("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse evacuated its bowels all over the path.""",
                              kurdishText:
                                  """ئەسپەکە بەسەر ھەموو ڕێگاکەدا ڕیخۆڵەکانی بەتاڵ کردەوە.""",
                              onPressedBritish: () => speaksentence36("en-GB"),
                              onPressedAmerican: () => speaksentence36("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Some horses become excited when they're in traffic.""",
                              kurdishText:
                                  """ھەندێک ئەسپ دەشڵەژێن کە لە ھاتووچۆدان.""",
                              onPressedBritish: () => speaksentence37("en-GB"),
                              onPressedAmerican: () => speaksentence37("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Horses need to be exercised regularly.""",
                              kurdishText:
                                  """ئەسپ دەبێت زوو زوو ڕاھێنانی پێ بکرێت.""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Two of the horses collapsed with exhaustion.""",
                              kurdishText:
                                  """دوو لە ئەسپەکان لە مادوویەتیدا کەوتن بە زەویدا.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She was killed in a fall from a horse.""",
                              kurdishText:
                                  """لە کەوتنێکیدا بەسەر ئەسپەوە گیانی لەدەست دا.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Which horse do you fancy in the next race?""",
                              kurdishText:
                                  """مەرج لەسەر کام ئەسپ دەکەیت لە پێشبڕکێی داھاتوو؟""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They stocked up on winter feed for the horses.""",
                              kurdishText:
                                  """ئالیکی زستانیان بۆ ئەسپەکان ھەڵگرت.""",
                              onPressedBritish: () => speaksentence42("en-GB"),
                              onPressedAmerican: () => speaksentence42("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He crafted a bronze figure of a horse for the exhibition.""",
                              kurdishText:
                                  """پەیکەرێکی برۆنزی ئەسپێکی درووستکرد بۆ پێشانگاکە.""",
                              onPressedBritish: () => speaksentence43("en-GB"),
                              onPressedAmerican: () => speaksentence43("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse was flicking flies away with its tail.""",
                              kurdishText: """ئەسپەکە مێشی ڕاو دەنا بە کلکی.""",
                              onPressedBritish: () => speaksentence44("en-GB"),
                              onPressedAmerican: () => speaksentence44("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Horses should have fresh water available at all times.""",
                              kurdishText:
                                  """ئەسپ دەبێت ھەموو کات ئاوی خاوێنیان لەبەردەست بێت.""",
                              onPressedBritish: () => speaksentence45("en-GB"),
                              onPressedAmerican: () => speaksentence45("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse was clearly out of form.""",
                              kurdishText:
                                  """ئەسپەکە بەڕوونی لە شێوەی ڕێکدا نەبوو.""",
                              onPressedBritish: () => speaksentence46("en-GB"),
                              onPressedAmerican: () => speaksentence46("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He loaded the wagon with fodder for the horses.""",
                              kurdishText:
                                  """ئەڕابەکەی بارکرد لە ئالیک بۆ ئەسپەکان.""",
                              onPressedBritish: () => speaksentence47("en-GB"),
                              onPressedAmerican: () => speaksentence47("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Auntie Paula likes to have a bit of a flutter on the horses.""",
                              kurdishText:
                                  """پوورە پاوڵا حەز دەکات کەمێک گرەو لەسەر ئەسپەکان بکات.""",
                              onPressedBritish: () => speaksentence48("en-GB"),
                              onPressedAmerican: () => speaksentence48("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She has compiled a glossary of horse-riding terms.""",
                              kurdishText:
                                  """فەرھەنگۆکێکی دەستەواژەکانی ئەسپسواری کۆکردووەتەوە.""",
                              onPressedBritish: () => speaksentence49("en-GB"),
                              onPressedAmerican: () => speaksentence49("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The gestation period of a horse is about eleven months.""",
                              kurdishText:
                                  """ماوەی سکپڕی ئەسپ نزیکەی ١١ مانگە.""",
                              onPressedBritish: () => speaksentence50("en-GB"),
                              onPressedAmerican: () => speaksentence50("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A furlong is used in horse racing.""",
                              kurdishText:
                                  """فێرلۆنگ لە پێشبڕکێی ئەسپسواری بەکاردێت.""",
                              onPressedBritish: () => speaksentence51("en-GB"),
                              onPressedAmerican: () => speaksentence51("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her horse seemed rather frisky.""",
                              kurdishText: """ئەسپەکەی کەمێک بزێو دیاربوو.""",
                              onPressedBritish: () => speaksentence52("en-GB"),
                              onPressedAmerican: () => speaksentence52("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The lion's claws had gouged a wound in the horse's side.""",
                              kurdishText:
                                  """چڕنووکەکانی شێرەکە برینێکیان کردە لای ئەسپەکە.""",
                              onPressedBritish: () => speaksentence53("en-GB"),
                              onPressedAmerican: () => speaksentence53("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The lion's claws had gouged a wound in the horse's side.""",
                              kurdishText:
                                  """چڕنووکەکانی شێرەکە برینێکیان کردە لای ئەسپەکە.""",
                              onPressedBritish: () => speaksentence54("en-GB"),
                              onPressedAmerican: () => speaksentence54("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Riders displayed their horsemanship skills in the gymkhana.""",
                              kurdishText:
                                  """سوارەکان توانای ئەسپسوارییان لە ڕکابەرییەکە پیشان دا.""",
                              onPressedBritish: () => speaksentence55("en-GB"),
                              onPressedAmerican: () => speaksentence55("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horses are all well fed and groomed.""",
                              kurdishText:
                                  """ئەسپەکان ھەموویان خواردنی باشێان پێدراوە و پاککراونەتەوە.""",
                              onPressedBritish: () => speaksentence56("en-GB"),
                              onPressedAmerican: () => speaksentence56("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The rider has to halt the horse in the arena.""",
                              kurdishText:
                                  "سوارەکە دەبێت ئەسپەکە لە گۆڕەپانەکەدا بوەستێنێت.",
                              onPressedBritish: () => speaksentence57("en-GB"),
                              onPressedAmerican: () => speaksentence57("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse was wearing a leather halter.""",
                              kurdishText:
                                  """ئەسپەکە ڕەشۆیەکی چەرمی لێ‌بەسترابوو.""",
                              onPressedBritish: () => speaksentence58("en-GB"),
                              onPressedAmerican: () => speaksentence58("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The sight of horses in harness hauling timber was common a hundred years ago.""",
                              kurdishText:
                                  """دیمەنی ئەسپ بە کەمەربەندەوە کە دار ڕابکێشن باو بوو سەد ساڵ پێش ئێستا.""",
                              onPressedBritish: () => speaksentence59("en-GB"),
                              onPressedAmerican: () => speaksentence59("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The wagons were hauled by horses.""",
                              kurdishText: """عەرابەکان بە ئەسپ ڕادەکێشران.""",
                              onPressedBritish: () => speaksentence60("en-GB"),
                              onPressedAmerican: () => speaksentence60("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She patted the horse's glossy black haunch.""",
                              kurdishText:
                                  """کێشای بە سمتی ڕەش و بریقەداری ئەسپەکەدا.""",
                              onPressedBritish: () => speaksentence61("en-GB"),
                              onPressedAmerican: () => speaksentence61("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The favourite won by a short head (= a distance slightly less than the length of a horse's head).""",
                              kurdishText:
                                  """پاڵێوراوەکە بە جیاوازی کەمتر لە سەری ئەسپەکە بردییەوە.""",
                              onPressedBritish: () => speaksentence62("en-GB"),
                              onPressedAmerican: () => speaksentence62("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A horse-drawn hearse took the coffin from the house to the church.""",
                              kurdishText:
                                  """کەژاوەیەکی ڕاکێشراو بە ئەسپ تابووتەکەی لە ماڵەوە بۆ کڵێساکە برد.""",
                              onPressedBritish: () => speaksentence63("en-GB"),
                              onPressedAmerican: () => speaksentence63("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The rider struggled to calm the high-spirited horse.""",
                              kurdishText:
                                  """سوارەکە تەقەڵای بوو لەگەڵ ئارامکردنەوەی ئەسپە چالاکەکە.""",
                              onPressedBritish: () => speaksentence64("en-GB"),
                              onPressedAmerican: () => speaksentence64("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Their new horse is very highly strung.""",
                              kurdishText: """ئەسپە تازەکەیان زۆر هەستیارە.""",
                              onPressedBritish: () => speaksentence65("en-GB"),
                              onPressedAmerican: () => speaksentence65("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse reared up on its hind legs.""",
                              kurdishText:
                                  """ئەسپەکە هەستایە سەر لاقەکانی دواوەی.""",
                              onPressedBritish: () => speaksentence66("en-GB"),
                              onPressedAmerican: () => speaksentence66("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The horse tossed its head and stamped its hooves nervously.""",
                              kurdishText: """رستە_رستە_رستە_رستە.""",
                              onPressedBritish: () => speaksentence67("en-GB"),
                              onPressedAmerican: () => speaksentence67("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) پێشبڕکێی ئەسپسواری"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He lost a lot of money on the horses (= by gambling on races).""",
                      kurdishText: """پارەی زۆری لەدەستدا لە ئەسپسواریدا.""",
                      onPressedBritish: () => speaksentence68("en-GB"),
                      onPressedAmerican: () => speaksentence68("en-US"),
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