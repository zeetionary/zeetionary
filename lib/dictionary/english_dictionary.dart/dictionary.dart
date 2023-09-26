import 'package:flutter/material.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>(); // Make public.

  final List<String> allFruits = ['Apple', 'Banana', 'Orange'];
  List<String> filteredFruits = [];
  final TextEditingController _searchController =
      TextEditingController(); // Add TextEditingController

  @override
  void initState() {
    super.initState();
    // Initially, display all fruits.
    filteredFruits = List.from(allFruits);
  }

  // Make filterFruits() private again.
  void filterFruits(String query) {
    setState(() {
      filteredFruits = allFruits
          .where((fruit) => fruit.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    filterFruits('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey, // Set the GlobalKey for the Scaffold
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController, // Use TextEditingController
              onChanged: filterFruits, // Call filterFruits when text changes
              decoration: InputDecoration(
                labelText: 'Search here',
                prefixIcon: const Icon(Icons.search), // Search icon as a prefix
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear), // "X" icon to clear the query
                  onPressed: clearSearch, // Call clearSearch when tapped
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
                    // Redirect to the GrammarScreen
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const GrammarScreen(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CardButton(
                  label: 'French',
                  onPressed: () {
                    // Redirect to the GrammarScreen
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const GrammarScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: FruitList(
              key: GlobalKey(), // Adding a GlobalKey
              fruits: filteredFruits,
              onTapFruit: (fruitName) {
                // Handle the onTap event for the fruit name here.
                // You can navigate to a screen that displays
                // English and French meanings for the selected fruit.
                // Example:
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => FruitMeaningScreen(fruitName: fruitName),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose(); // Dispose of the TextEditingController
    super.dispose();
  }
}

class FruitList extends StatelessWidget {
  final List<String> fruits;
  final Function(String) onTapFruit;

  const FruitList({Key? key, required this.fruits, required this.onTapFruit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglish(
          key: ValueKey(fruits[index]), // Unique key based on fruit name
          fruitName: fruits[index],
          onTap: () {
            // Call the onTapFruit function to handle the tap event.
            onTapFruit(fruits[index]);
          },
        );
      },
    );
  }
}

class ListTileEnglish extends StatelessWidget {
  final String fruitName;
  final VoidCallback? onTap;

  const ListTileEnglish({Key? key, required this.fruitName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key, // Use the provided key
        title: Text(fruitName),
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
      height: 50, // Adjust the height as needed
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16), // Adjust the font size
            ),
          ),
        ),
      ),
    );
  }
}
