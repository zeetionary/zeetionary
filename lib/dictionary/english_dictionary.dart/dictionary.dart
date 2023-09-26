import 'package:flutter/material.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/english_entry_lion.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWords = [
    "dog",
    "cat",
    "elephant",
    "giraffe",
    "lion",
    "tiger",
    "zebra",
    "horse",
    "monkey",
    "dolphin",
    "kangaroo",
    "penguin",
    "bear",
    "rabbit",
    "squirrel",
    "fox",
    "koala",
    "cheetah",
    "wolf",
    "panda",
    "owl",
    "parrot",
    "peacock",
    "octopus",
    "shark",
    "crocodile",
    "alligator",
    "eagle",
    "camel",
    "rhino",
    "hippo",
    "bat",
    "chimpanzee",
    "rhinoceros",
    "gazelle",
    "ostrich",
    "lemur",
    "platypus",
    "kangaroo",
    "sloth",
    "hyena",
    "flamingo",
    "seahorse",
    "jellyfish",
    "lobster",
    "raccoon",
    "cheetah",
    "meerkat",
    "warthog",
    "puma",
    "panther",
    "walrus",
    "buffalo",
    "antelope",
    "tapir",
    "tasmanian Devil",
    "vulture",
    "hedgehog",
    "chameleon",
    "gorilla",
    "armadillo",
    "lemming",
    "mongoose",
    "puffin",
    "komodo Dragon",
    "red Panda",
    "tasmanian Tiger",
    "quokka",
    "wombat",
    "platypus",
    "dugong",
    "manatee",
    "narwhal",
    "chimpanzee",
    "kingfisher",
    "ibex",
    "sloth Bear",
    "gharial",
    "marmoset",
    "capuchin Monkey",
    "pangolin",
    "okapi",
    "tarsier",
    "fossa",
    "lemur",
    "colobus Monkey",
    "proboscis Monkey",
    "galapagos Tortoise",
    "green Sea Turtle",
    "hammerhead Shark",
    "swordfish",
    "angelfish",
    "clownfish",
    "parrotfish",
    "barracuda",
    "flounder",
    "humpback Whale",
    "killer Whale",
    "beluga Whale"
        "apple",
    "banana",
    "orange",
    "strawberry",
    "grape",
    "pineapple",
    "mango",
    "watermelon",
    "lemon",
    "lime",
    "blueberry",
    "raspberry",
    "blackberry",
    "kiwi",
    "papaya",
    "peach",
    "pear",
    "cherry",
    "plum",
    "apricot",
    "fig",
    "cranberry",
    "coconut",
    "avocado",
    "guava",
    "pomegranate",
    "passion Fruit",
    "dragon Fruit",
    "lychee",
    "mulberry",
    "nectarine",
    "tangerine",
    "clementine",
    "grapefruit",
    "cantaloupe",
    "honeydew Melon",
    "persimmon",
    "boysenberry",
    "gooseberry",
    "elderberry",
    "starfruit",
    "date",
    "quince",
    "guanabana",
    "jackfruit",
    "ackee",
    "kiwano (Horned Melon)",
    "plantain",
    "loquat",
  ];
  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allWords);
  }

  void filterWords(String query) {
    setState(() {
      filteredWords = allWords
          .where((word) => word.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    filterWords('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: filterWords,
              decoration: InputDecoration(
                labelText: 'Search here',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: clearSearch,
                ),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CardButton(
                  label: 'English',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EnglishEntryLion(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CardButton(
                  label: 'French',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EnglishEntryLion(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: EnglishDictionary(
              words: filteredWords,
              onTapWord: (wordsEnglish) {
                if (wordsEnglish == "dog") {
                  // Handle the onTap event for the word "dog" here.
                  // You can navigate to a different screen or perform any desired action.
                  // For example:
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EnglishEntryLion(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class EnglishDictionary extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;

  const EnglishDictionary({
    Key? key,
    required this.words,
    required this.onTapWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: words.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglish(
          wordsEnglish: words[index],
          onTap: () {
            onTapWord(words[index]);
          },
        );
      },
    );
  }
}

class ListTileEnglish extends StatelessWidget {
  final String wordsEnglish;
  final VoidCallback? onTap;

  const ListTileEnglish({
    Key? key,
    required this.wordsEnglish,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(wordsEnglish),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
