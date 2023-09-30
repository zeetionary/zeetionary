import 'package:flutter/material.dart';
import 'package:zeetionary/home/screens/home_screen.dart';

// class HistoryScreenMain extends StatelessWidget {
//   const HistoryScreenMain({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HistoryScreen(),
//     );
//   }
// }

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<String> searchHistory = []; // Store search history

  TextEditingController searchController = TextEditingController();
  String currentSearch = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ZeetionaryAppbar(),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Enter a word',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      currentSearch = searchController.text;
                      searchHistory.add(currentSearch); // Add to history
                      searchController.clear();
                    });
                  },
                ),
              ),
            ),
          ),
          const Text(
            'Search History:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchHistory.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchHistory[index]),
                  onTap: () {
                    // Implement the logic to search for the selected history item
                    // You can use the searchHistory[index] value for searching.
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                searchHistory.clear(); // Clear history
              });
            },
            child: const Text('Clear History'),
          ),
        ],
      ),
    );
  }
}
