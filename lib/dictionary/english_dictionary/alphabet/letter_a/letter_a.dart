import 'package:flutter/material.dart';

class EnglishEntryAardvark extends StatelessWidget {
  const EnglishEntryAardvark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Change this to the number of tabs you want
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Aardvark'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text(
                      'Aardvark',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height:
                            8), // Add some spacing between the title and text
                    Text(
                      'A large, nocturnal, burrowing mammal native to central and southern Africa, with a long, extensile tongue and strong claws, which feeds on ants and termites.',
                    ),
                  ],
                ),
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Image.asset(
                      'assets/images/uk_one.png', // Replace with your asset path
                      width: 32, // Adjust the width as needed
                      height: 32, // Adjust the height as needed
                    ),
                  ),
                  Tab(
                    icon: Image.asset(
                      'assets/images/kurd_one.png', // Replace with your asset path
                      width: 32, // Adjust the width as needed
                      height: 32, // Adjust the height as needed
                    ),
                  ),
                  Tab(
                    icon: Image.asset(
                      'assets/images/zeetionary_one.png', // Replace with your asset path
                      width: 32, // Adjust the width as needed
                      height: 32, // Adjust the height as needed
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                  color: const Color.fromARGB(110, 162, 239,
                      20), // Change to your desired background color
                  borderRadius: BorderRadius.circular(
                      16.0), // Adjust the radius as needed
                ),
                indicatorSize:
                    TabBarIndicatorSize.tab, // Adjust the size as needed
                indicatorPadding:
                    const EdgeInsets.all(8.0), // Adjust the padding as needed
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text('Animal 1'),
                          Text('Animal 2'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text('Animal 1'),
                          Text('Animal 2'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text('Animal 1'),
                          Text('Animal 2'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
