// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// crosswords
//
//
//

class SentenceDatabase {
  static final SentenceDatabase instance = SentenceDatabase._init();

  static Database? _database;
  List<Map<String, dynamic>> sentences = [];

  SentenceDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('sentences.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    const englishTextType = 'TEXT NOT NULL';
    const frenchTextType = 'TEXT NOT NULL';

    await db.execute('''
    CREATE TABLE sentences ( 
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      english $englishTextType,
      french $frenchTextType
      )
    ''');
  }

  Future<void> initialize() async {
    // Check if the database is already populated
    if (sentences.isEmpty) {
      await insertSentence('Hello, how are you?', 'سڵاو، چۆنیت');
      await insertSentence('Good morning', 'بەیانیت باش.');
      await insertSentence(
          "Good morning! Is this a great day to start the week?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey there! What's on your agenda today?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! It's nice to see you again.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi! How are things going with you?", "کوردی_کوردی_کوردی");
      await insertSentence("What's up? Long time no see!", "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's good to see you! How have you been?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you do? Pleased to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Top of the morning to you! Are you ready for a busy day?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Afternoon everyone! I hope you're all having a wonderful day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey there! Welcome back! Did you have a nice break?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good evening! May I interest you in a cup of coffee?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alright, mate! How's it going?", "کوردی_کوردی_کوردی");
      await insertSentence("Morning! Did you sleep well?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello! How can I help you today?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's new? Anything exciting happening?", "کوردی_کوردی_کوردی");
      await insertSentence("Good evening, sir/madam. How may I assist you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi again! Did you find everything you were looking for?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey there! Fancy seeing you here!", "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's a pleasure to meet you! I've heard a lot about you.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good morning, sunshine! Ready to conquer the day?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Well met! Are you prepared for today's challenges?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greetings! How can I be of service?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Top of the evening to you! What brings you out tonight?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello! Welcome aboard! How can I make your journey pleasant?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, I'm Sarah, nice to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, my name is Alex, what's yours?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, I'm Emily, it's a pleasure to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, I'm David, how do you do?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greetings, I go by Lily, pleased to make your acquaintance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, my name's Daniel, great to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence("Hello, you can call me Sophia, nice to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hey there, I'm Michael, delighted to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, I'm Olivia, it's nice to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence("Good day, my name is Ethan, pleased to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, the name's Ava, nice to make your acquaintance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, you can call me Benjamin, it's great to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hey, I go by Chloe, it's a pleasure to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, I'm Noah, it's nice to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, my name is Mia, it's a pleasure to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greetings, I'm Jacob, how do you do?", "کوردی_کوردی_کوردی");
      await insertSentence("Hey, I'm Isabella, nice to make your acquaintance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Every morning, I brush my teeth to keep them clean and healthy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I eat breakfast to give me energy for the day ahead.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "After breakfast, I put on my clothes to get ready for school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I pack my backpack with my books and pencils before leaving for school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "At school, I learn new things like math, reading, and science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play with my friends during recess and lunchtime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "After school, I do my homework to finish it before dinner.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help set the table for dinner with my family.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We eat dinner together and talk about our day.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Before bed, I take a bath and put on my pajamas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I read a story with my parents before going to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I close my eyes and drift off to dreamland, ready for a new day tomorrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I wake up in the morning and stretch my arms and legs.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I yawn and rub my eyes before getting out of bed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I wash my face with water to wake myself up.", "کوردی_کوردی_کوردی");
      await insertSentence("I choose my clothes for the day from my wardrobe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I put on my socks and shoes before heading downstairs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I greet my family with a smile and say 'Good morning'.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I sit at the table and eat breakfast with my family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I pour cereal into my bowl and add milk.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I sip orange juice slowly, enjoying its tangy taste.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I munch on toast with butter and jam.", "کوردی_کوردی_کوردی");
      await insertSentence("I laugh at my sister's joke as we eat together.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I pack my backpack with my books and homework.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? Nice weather we're having today.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'll take a large coffee, please, with room for milk.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gotta catch the subway; it's always crowded during rush hour.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can you believe the traffic on the FDR Drive?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sorry, I'm running late for a meeting uptown.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's grab lunch at that new deli around the corner.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I need to swing by the bank on my lunch break.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rent in this city is ridiculously high, isn't it?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting friends for dinner in Greenwich Village tonight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I love strolling through Central Park on weekends, so relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you catch the latest exhibit at MoMA?", "کوردی_کوردی_کوردی");
      await insertSentence("Ugh, I forgot my umbrella again, and it's raining.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you tried the bagels from that bodega on the corner?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Excuse me, do you have a minute to answer a survey?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm craving some authentic New York-style pizza right now.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's check out that new rooftop bar in Brooklyn tonight.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I need to do laundry; my hamper's overflowing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm feeling a bit under the weather today, might stay in.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you seen Hamilton yet? It's supposed to be amazing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I've been binge-watching this new series on Netflix lately.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I should really get back into my yoga routine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Could you pass me the MetroCard? Mine's out of funds.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I've got tickets to a Broadway show next weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sorry, I can't make it to happy hour tonight.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm on a strict budget this month, gotta watch my spending.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm trying out this new vegan restaurant for lunch today.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's grab a cab; I'm too tired to walk.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the farmers' market in Union Square tomorrow?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'll be out of town next weekend, visiting family upstate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you tried that new matcha place in SoHo?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm thinking of taking a day trip to Coney Island soon.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I can't decide between the salmon or the steak for dinner.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wow, this city never sleeps, there's always something happening.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm feeling so drained after that long subway commute.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to renew my gym membership; it's been months.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending a gallery opening in Chelsea this evening.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's go see the sunset from the Brooklyn Bridge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm so glad spring is finally here; the city looks beautiful.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the street fair happening in the Village?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to return these library books before they're overdue.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the gym to work off that big brunch.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can you recommend a good dry cleaner in the neighborhood?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I love walking through the West Village; it's so charming.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I've been meaning to try that new workout class everyone's talking about.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the bakery to pick up some fresh baguettes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'll be out of town for the long weekend, heading to the Hamptons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's take a stroll along the High Line this afternoon.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sorry, I can't make it to the party tonight; I have a deadline.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the drugstore to pick up some cold medicine.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm meeting a client for lunch at Le Bernardin.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to stop by the post office to mail these packages.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's catch a matinee at the theater this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the gym to get in a quick workout.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting friends for brunch at my favorite spot in Williamsburg.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm heading to the Bronx Zoo with my family this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to schedule a dentist appointment for next week.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the market to pick up some fresh produce.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting a friend for drinks at a speakeasy downtown.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the tailor to pick up my alterations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to call the landlord about the leaky faucet.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the pet store to buy food for my cat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting coworkers for happy hour at a rooftop bar.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I need to book a reservation for dinner tonight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm heading to the gym to meet with my personal trainer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the park to meet friends for a picnic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting a date for drinks at a trendy cocktail bar.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the museum to see the new exhibit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm heading to the bookstore to pick up a new novel.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the salon to get a haircut.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting my book club for coffee at a local café.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the library to study for my exam.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the movie theater to see the latest blockbuster.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm heading to the bakery to buy a birthday cake.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting a friend for lunch at a sushi restaurant.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the gym to do some cardio.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the grocery store to buy ingredients for dinner.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm heading to the beach to catch some sun.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting coworkers for a team-building activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to the hardware store to buy some tools.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm heading to the farmers' market to buy organic produce.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting friends for brunch at a bottomless mimosa spot.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the pharmacy to pick up a prescription.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm meeting a friend for dinner at a trendy new restaurant.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the barbershop to get a shave.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm heading to the mall to do some shopping.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the theater to see a play.", "کوردی_کوردی_کوردی");
      await insertSentence("I'm meeting coworkers for a brainstorming session.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the coffee shop to get a latte.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, everyone! Let's get started with today's lesson.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please take out your textbooks and turn to page 50.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Does anyone have any questions about the homework assignment?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to raise your hand before speaking, please.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's review the material we covered yesterday before moving on.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Great job on your presentations yesterday; I was impressed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to submit your essays by the end of the week.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please pass your homework assignments to the front of the class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work on these math problems together as a group.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Take a few minutes to review your notes before the quiz.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can summarize the main points of the reading for us?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Don't forget about the upcoming field trip next week.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Keep up the good work, and don't be afraid to ask for help.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to use proper citation format for your research papers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's have a respectful discussion about the topic at hand.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Your participation in class discussions is greatly appreciated.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please put away your phones and focus on the lesson.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Congratulations to those who made the honor roll this semester.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's practice our vocabulary words with a quick quiz.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to proofread your essays before turning them in.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can explain the difference between mitosis and meiosis?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Take a moment to reflect on what you've learned so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Remember to show your work on the math problems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's try to think critically about the text we're reading.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Don't hesitate to come see me during office hours if you need extra help.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please keep the classroom clean and tidy at all times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Take your time on the exam and read each question carefully.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to respect your classmates' opinions during discussions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work on improving our writing skills this semester.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can tell me the significance of the Battle of Gettysburg?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to bring your textbooks to class tomorrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's do a quick review of the material before the test.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Keep up the good work, and don't give up when things get tough.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to use evidence to support your arguments in essays.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can give an example of a simile from the reading?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Take a break if you're feeling overwhelmed; self-care is important.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's have a debate on the pros and cons of social media.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to study your vocabulary words for the quiz tomorrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please don't interrupt when someone else is speaking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work on our public speaking skills with a class presentation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Take a moment to appreciate how far you've come this semester.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can explain the scientific method to the class?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please turn off your cell phones and put them away during class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's practice active listening during today's lecture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to cite your sources properly in your research papers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Who can define the term 'manifest destiny' for us?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's brainstorm ideas for our next class project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to get a good night's sleep before the exam.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please be respectful of your classmates' personal space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's take a few minutes to meditate and relax before starting class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to check your email for important announcements.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Who can tell me the main causes of the Civil War?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Take a moment to reflect on your goals for this semester.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please don't hesitate to ask for clarification if something is unclear.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work on improving our grammar and punctuation skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to proofread your work before submitting it.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can summarize the plot of the novel we're reading?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's have a group discussion about the themes of the play.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to bring your materials to class every day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please be respectful of others' opinions, even if you disagree.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's try to stay focused and engaged during class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to take breaks and stretch if you're feeling tired.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Who can identify the main characters in the story?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to review your notes before the final exam.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please don't forget to turn in your permission slips for the field trip.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's take a moment to appreciate the diversity in our classroom.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to be kind to yourself and others.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can explain the concept of photosynthesis to the class?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to eat a healthy breakfast before coming to school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please raise your hand if you need help with anything.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's try to make the most of our time together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to stay organized and manage your time effectively.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who can tell me the capital of France?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, how are you feeling today?", "کوردی_کوردی_کوردی");
      await insertSentence("Let's discuss your symptoms and medical history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please undress and I'll be with you shortly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's start by checking your blood pressure and heart rate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'd like to perform a physical examination; please lie down.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can you describe the pain you're experiencing in more detail?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We may need to run some tests to determine the cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'll need to take some blood samples for analysis.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm going to listen to your lungs and heart now.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you experienced any recent changes in your health?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay hydrated and get plenty of rest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss some lifestyle changes that may improve your health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to prescribe some medication to help alleviate your symptoms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please take these antibiotics as directed and follow up with me in a week.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's schedule a follow-up appointment to monitor your progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'd like to refer you to a specialist for further evaluation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay proactive about your health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm here to answer any questions or concerns you may have.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to take your medication with food to avoid stomach upset.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss some dietary changes that may benefit you.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Make sure to get plenty of exercise and fresh air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to write you a prescription for physical therapy.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's go over the results of your tests together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I recommend getting an annual flu shot to protect yourself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please avoid smoking and limit your alcohol intake.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to recommend some relaxation techniques to help manage stress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'd like to refer you to a nutritionist to help with meal planning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to get enough sleep each night for optimal health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to recommend a few supplements to support your immune system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Please let me know if you experience any side effects from the medication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to prioritize self-care and listen to your body.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work together to create a personalized treatment plan for you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to refer you to a physical therapist for further evaluation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to take breaks and practice deep breathing exercises throughout the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to prescribe a stronger pain medication to help manage your symptoms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay consistent with your medication regimen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss some coping strategies for dealing with chronic pain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to recommend some stretches to help alleviate muscle tension.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'd like to refer you to a counselor to help with emotional support.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to stay hydrated and avoid caffeine before bedtime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to write you a prescription for a sleep aid to help with insomnia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's schedule a follow-up appointment to monitor your progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I recommend keeping a symptom journal to track your progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to take your medication at the same time every day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss some alternative treatment options that may be beneficial.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to refer you to a specialist for further evaluation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay proactive about your health and well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to schedule regular check-ups with your primary care physician.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm here to support you every step of the way.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to take breaks and practice mindfulness throughout the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to recommend a few supplements to support your immune system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss some lifestyle changes that may improve your symptoms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'd like to refer you to a physical therapist for further evaluation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to get plenty of rest and avoid strenuous activities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to prescribe a stronger medication to help manage your pain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay consistent with your treatment plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work together to create a personalized plan that works for you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I recommend scheduling regular massages to help alleviate muscle tension.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to prioritize self-care and listen to your body's needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to refer you to a specialist for further evaluation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss some relaxation techniques to help manage stress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Make sure to get enough sleep each night for optimal health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to recommend a few supplements to support your overall well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay proactive about your health and wellness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's schedule a follow-up appointment to monitor your progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I recommend scheduling regular check-ups with your primary care physician.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remember to take breaks and practice deep breathing exercises throughout the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to write you a prescription for a stronger medication to help manage your symptoms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay consistent with your medication regimen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work together to create a treatment plan that meets your needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm here to support you every step of the way.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, class! Are we ready to learn about history?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Today, we're going to talk about dinosaurs and what they ate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's start by looking at some pictures of different dinosaurs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can anyone tell me the name of this dinosaur?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's learn about the first people who lived on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These are called cavemen or cavewomen; they lived in caves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's pretend we're cavemen and draw on the walls with chalk.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's learn about ancient Egypt and the pyramids.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you know the pyramids are over 4,000 years old?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's build our own pyramids with blocks and see how tall we can make them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's talk about knights and castles in the medieval times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Knights wore armor to protect themselves in battles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's pretend to be knights and march around the classroom.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's learn about famous explorers who sailed the seas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Christopher Columbus discovered America over 500 years ago.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's make paper boats and pretend to sail across the ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's talk about the pioneers who traveled west in covered wagons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They settled in new lands and built towns and schools.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's build our own covered wagons out of cardboard boxes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Finally, let's learn about famous leaders like Abraham Lincoln.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abraham Lincoln was the president who ended slavery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's make top hats and pretend to give speeches like Lincoln.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Great job, class! You're all history experts now.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, class! Today, we're diving into the fascinating world of geography.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's start by discussing the difference between physical and human geography.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical geography explores Earth's natural features like mountains, rivers, and climates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Human geography focuses on how people interact with their environment, including population, culture, and economics.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Can anyone name the seven continents of the world?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's talk about the major oceans and seas that surround them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you know that the Pacific Ocean is the largest and deepest ocean on Earth?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's explore different types of maps, such as political, physical, and thematic maps.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Maps are essential tools for understanding our world's landscapes and features.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's discuss latitude and longitude lines and how they help us locate places on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Latitude measures distance north and south of the equator, while longitude measures east and west of the Prime Meridian.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's examine the concept of regions and how they're defined by physical, cultural, or economic characteristics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "For example, the Amazon Rainforest is a distinct region known for its biodiversity and lush vegetation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's delve into the topic of climate and how it influences the distribution of plants, animals, and people.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore different climate zones like tropical, temperate, and polar regions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discuss the impact of human activities on the environment, such as deforestation, pollution, and urbanization.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geography plays a crucial role in understanding and addressing global environmental issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's examine the concept of globalization and its effects on trade, migration, and cultural exchange.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advancements in transportation and communication have connected people and economies around the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's take a virtual tour of different countries and explore their physical and cultural landscapes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about iconic landmarks, historical sites, and diverse cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Finally, let's discuss the importance of geographic literacy in today's interconnected world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding geography helps us make informed decisions about environmental conservation, economic development, and social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Great job, class! Keep exploring the world around you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Welcome back to class, everyone! Let's continue our exploration of school subjects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Today, we're delving into the fascinating world of literature and language arts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's analyze classic works of literature and explore their themes, characters, and symbolism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can anyone identify different literary genres like fiction, poetry, and drama?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's dive into grammar and learn about parts of speech like nouns, verbs, and adjectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll practice writing sentences and paragraphs to improve our communication skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of mathematics and explore its various branches like algebra, geometry, and calculus.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mathematics is the language of patterns and relationships; let's unlock its mysteries together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's solve equations, calculate geometric shapes, and explore mathematical concepts through real-world applications.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's embark on a scientific voyage and discover the wonders of biology, chemistry, and physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore the building blocks of life, chemical reactions, and the laws of motion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's conduct experiments, make observations, and unleash our curiosity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's immerse ourselves in the world of history and social studies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll journey through time, exploring ancient civilizations, world wars, and modern-day geopolitics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's analyze primary sources, examine historical events, and learn from the lessons of the past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's journey into the realm of geography and study Earth's landscapes, climates, and cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore continents, oceans, and regions, uncovering the interconnectedness of our planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's explore the vibrant world of art and music.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll study famous artists, composers, and artistic movements, unleashing our creativity through various mediums.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's experiment with different techniques, styles, and musical instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's delve into the world of physical education and health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about the importance of exercise, nutrition, and mental well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's stay active, eat healthy, and prioritize self-care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of technology and computer science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore coding, digital literacy, and the impact of technology on society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's develop our problem-solving skills and embrace the digital age.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's venture into the world of foreign languages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn to communicate in different languages, explore diverse cultures, and broaden our horizons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's practice speaking, reading, and writing in our chosen language.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's explore the world of business and economics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about supply and demand, entrepreneurship, and financial literacy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's develop our critical thinking skills and prepare for the world of work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's journey into the realm of psychology and sociology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore the human mind, behavior, and social interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's examine psychological theories, conduct experiments, and analyze social phenomena.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's dive into the world of environmental science and sustainability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about ecosystems, climate change, and conservation efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's explore ways to protect our planet and create a sustainable future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of philosophy and ethics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore fundamental questions about existence, morality, and the meaning of life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's engage in thoughtful discussions and ponder life's big questions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's delve into the world of engineering and technology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore innovations in robotics, renewable energy, and aerospace.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's design, build, and innovate for a better tomorrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of culinary arts and nutrition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about food preparation, cooking techniques, and the importance of a balanced diet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's experiment with different recipes and flavors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's explore the world of journalism and media studies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about news reporting, media ethics, and the power of storytelling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's analyze media messages and become critical consumers of information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of law and political science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore the principles of justice, governance, and human rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's study the Constitution, debate current events, and advocate for change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's delve into the world of astronomy and space exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about celestial bodies, galaxies, and the mysteries of the universe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's gaze at the stars, ponder the cosmos, and dream of interstellar travel.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of anthropology and archaeology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore human origins, cultures, and ancient civilizations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's dig into the past, uncovering artifacts and unraveling history's mysteries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's explore the world of fashion design and textiles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about clothing construction, fashion trends, and the art of expression through style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's sketch, sew, and create our own fashion statements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of theater and performing arts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore the magic of stagecraft, acting techniques, and the power of storytelling through drama.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's rehearse, perform, and bring characters to life on stage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's delve into the world of education and pedagogy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about teaching methodologies, learning theories, and the art of instruction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's inspire, motivate, and empower future generations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of sports management and athletics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore sports psychology, coaching strategies, and the business of sports.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's train, compete, and strive for excellence on and off the field.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's explore the world of medicine and healthcare.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about the human body, disease prevention, and patient care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's study anatomy, conduct medical research, and work towards a healthier world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of literature and creative writing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore the power of words, storytelling techniques, and the art of expression through writing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's write poems, stories, and essays that captivate and inspire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Now, let's delve into the world of mathematics and computer science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll explore mathematical concepts, algorithms, and the beauty of problem-solving.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's program, calculate, and innovate for a brighter future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Next, let's journey into the realm of environmental science and sustainability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We'll learn about ecosystems, climate change, and the importance of conservation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, everyone! Let's start our study session.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'll meet you all at the library after lunch.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you finish the reading for our seminar tomorrow?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's grab a table in the common room to work on our group project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Who's presenting our research findings at the conference next week?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm feeling a bit overwhelmed with all these assignments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you heard about the lecture series happening on campus?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's organize a study group for the midterm exam.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to schedule a meeting with my advisor to discuss my thesis.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the guest lecture on political science tonight?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you see the announcement about the internship fair?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a meeting with my professor during office hours.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's grab coffee at the student cafe before class.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Have you visited the art museum on campus yet?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's reserve a study room at the library for our group.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm looking for volunteer opportunities in the community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can you help me with this math problem?", "کوردی_کوردی_کوردی");
      await insertSentence("Let's review our notes from last week's lecture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm thinking of auditing a class in the psychology department.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Are you attending the networking event tonight?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's join the debate club; they have a meeting on Wednesday.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm feeling stressed about the upcoming exams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's go for a run around the campus track.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the student protest happening tomorrow?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to finish my application for the summer research program.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's meet at the student center after class.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you checked out the new exhibit at the science museum?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm going to the career services office to update my resume.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's sign up for the photography workshop next weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a meeting with my study group at the library.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the poetry reading tonight?", "کوردی_کوردی_کوردی");
      await insertSentence("I need to buy a new textbook for my history class.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's organize a fundraiser for the local charity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending a lecture on climate change this afternoon.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you seen the latest issue of the student newspaper?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm applying for a research grant for my thesis project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's go to the gym for a workout session.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the scholarship opportunities for international students?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to renew my student ID card at the administration office.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's attend the film screening at the student theater.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a meeting with my academic advisor tomorrow morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the career fair next week?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to schedule a meeting with my group for our presentation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's join the environmental club; they have a meeting on Thursday.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending a seminar on public policy this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you checked out the new study lounge in the dorm?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to finalize my course schedule for next semester.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's go to the bookstore to buy some school supplies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a panel discussion on campus diversity.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's meet at the campus quad for a picnic lunch.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the lecture series on artificial intelligence?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering at the local homeless shelter this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's attend the theater production at the student center.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a meeting with my research advisor this afternoon.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the astronomy club meeting tonight?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to submit my application for the study abroad program.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's go to the library to reserve a study room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending a workshop on academic writing skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you checked out the latest issue of the literary magazine?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to buy tickets for the orchestra concert next week.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's organize a fundraiser for the student scholarship fund.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a panel discussion on campus sustainability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's meet at the student lounge for a group discussion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the internship opportunities at the local hospital?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering at the animal shelter this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's attend the poetry slam at the student cafe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a meeting with my thesis advisor tomorrow morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the coding workshop tonight?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to submit my research paper for publication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's go to the campus bookstore to buy some textbooks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a seminar on human rights this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you checked out the latest issue of the science journal?",
          "کوردی_کوردی_کوردی");
      await insertSentence("I need to buy a new laptop for my coding class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's organize a study group for the upcoming exams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending a lecture on quantum physics this afternoon.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's meet at the student center for a group study session.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the internship opportunities at the tech company?",
          "کوردی_کوردی_کوردی");
      await insertSentence("I'm volunteering at the food bank this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's attend the jazz concert at the student theater.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a meeting with my research group tomorrow morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you going to the robotics club meeting tonight?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I need to submit my application for the entrepreneurship program.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's go to the campus gym for a workout session.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a panel discussion on campus diversity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, fellow Democrats! Let's make this week count.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have a lot of important issues to address this week.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's focus on spreading awareness about our party's values and principles.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Are you attending the town hall meeting tonight?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's make sure everyone is registered to vote.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm calling my representatives to advocate for progressive policies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to stay united and work towards common goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you see the latest policy proposal from our party leaders?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering for a local campaign this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's engage with voters on social media to promote our candidates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the fundraiser for our local candidate on Friday.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We need to mobilize our grassroots supporters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you read the latest article about our party's platform?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm donating to our party's campaign fund this month.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's reach out to undecided voters and share our vision for the future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a phone bank to encourage voter turnout.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to fight for social justice and equality for all.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the rally for environmental protection next week?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm canvassing door-to-door to talk to voters about our candidates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's support progressive candidates at all levels of government.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to stand up against discrimination and bigotry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the debate watch party at our local Democratic club.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's promote policies that prioritize working families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm writing letters to the editor to highlight important issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to protect reproductive rights and women's healthcare.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you see the latest polling data for our candidates?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm hosting a voter registration drive in my community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work to protect voting rights and combat voter suppression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering to drive voters to the polls on Election Day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to invest in education and affordable healthcare.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you attend the training session on campaign organizing?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm organizing a community forum to discuss economic inequality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's push for criminal justice reform and police accountability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the LGBTQ+ rights rally this weekend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to fight for fair wages and workers' rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a letter-writing campaign to elected officials.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's support candidates who prioritize climate action and clean energy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm organizing a fundraiser for immigrant rights advocacy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to hold corporations accountable for their actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you see the latest ad from our party's campaign?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a march for racial justice next Saturday.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's advocate for comprehensive immigration reform.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the healthcare town hall to discuss Medicare for All.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to protect and expand access to affordable housing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm calling on Congress to pass common-sense gun safety legislation.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's fight for voting rights for all Americans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a community clean-up event this Sunday.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to support policies that address income inequality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the rally for climate action at the state capitol?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the virtual fundraiser for our party's candidates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's promote policies that support small businesses and entrepreneurship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm hosting a meet-and-greet with our local candidates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to ensure access to quality education for every child.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you see the latest endorsement for our party's candidates?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering to help seniors with mail-in voting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's advocate for affordable childcare and paid family leave.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the protest against police brutality on Friday.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We need to fight for fair and equitable taxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you read the latest op-ed from our party leaders?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm organizing a phone bank to contact undecided voters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's support policies that protect the rights of workers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the virtual town hall on climate change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to advocate for criminal justice reform and ending mass incarceration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the rally for reproductive rights next week?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering to help register voters at the farmers' market.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's push for policies that address systemic racism and inequality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a virtual panel discussion on immigration reform.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to support candidates who will fight for affordable healthcare.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you attend the training session on grassroots organizing?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm hosting a fundraiser for our party's candidates at my home.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's work to protect and expand access to voting for marginalized communities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the training session on voter outreach strategies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to push back against efforts to suppress the vote.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you see the latest campaign ad from our party's candidates?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm volunteering to help with get-out-the-vote efforts on Election Day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's support progressive candidates who will fight for working families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm attending the virtual rally for racial justice and police reform.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to mobilize our supporters and get out the vote.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the protest against cuts to social services?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I'm participating in a letter-writing campaign to elected officials.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I double-check to make sure I have everything I need.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I zip up my backpack and sling it over my shoulder.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I say goodbye to my family and head out the door.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I walk to the bus stop with my friends.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We chat and laugh while we wait for the bus.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I wave to the bus driver as I climb aboard.", "کوردی_کوردی_کوردی");
      await insertSentence("I find a seat and sit down, ready for the ride.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I look out the window and watch the world go by.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I arrive at school and join my classmates in the playground.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We run and play games until the bell rings.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We line up outside our classroom and wait for our teacher.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We greet our teacher with smiles and 'Good mornings'.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We take our seats and get ready for the day's lessons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I listen carefully as the teacher explains the math lesson.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I raise my hand and answer a question correctly.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I feel proud of myself for knowing the answer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I work on my reading assignment quietly at my desk.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I ask my teacher for help when I don't understand something.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I finish my work early and help a classmate with theirs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I join my friends for recess and play tag.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We run around the playground and laugh.", "کوردی_کوردی_کوردی");
      await insertSentence("I eat my lunch with my friends at our usual spot.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We trade snacks and share stories from home.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "After lunch, we have art class and get messy with paint.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I mix colors together to create a beautiful masterpiece.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I clean up my paintbrush and wash my hands.", "کوردی_کوردی_کوردی");
      await insertSentence("We go back to our classroom for science class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I conduct an experiment with my lab partner.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We observe the results and write them down in our notebooks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bell rings, signaling the end of the school day.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I pack up my things and say goodbye to my friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I board the bus and wave to my classmates.", "کوردی_کوردی_کوردی");
      await insertSentence("I arrive home and find a snack waiting for me.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I sit at the kitchen table and do my homework.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I solve math problems and write a story for English class.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I take a break to play with my toys for a while.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I build a tower with blocks and knock it down with a crash.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help set the table for dinner with my family.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We sit down together and say grace before eating.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We pass around dishes of food and fill our plates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I take a bite of mashed potatoes and savor the flavor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I listen to my parents talk about their day at work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I tell them about my day at school and the fun I had.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We laugh and joke around as we eat.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "After dinner, I help clear the table and wash the dishes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I dry the plates and stack them neatly in the cupboard.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I brush my teeth before bed to keep them clean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I put on my pajamas and climb into bed.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I snuggle under the covers and close my eyes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "My parents tuck me in and kiss me goodnight.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I drift off to sleep, dreaming sweet dreams.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "My mom and dad take care of me and love me very much.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a grandma and grandpa who tell me stories and give me hugs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My aunt and uncle play games with me and make me laugh.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I have a cousin who is my best friend and we do everything together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My sister and I share toys and secrets with each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I play superheroes and go on adventures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I love my family because they are always there for me.",
          "کوردی_کوردی_کوردی");
      await insertSentence("My mom cooks delicious meals for us every day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My dad helps me with my homework when I don't understand.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I give my grandma a big hug when she comes to visit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa with his garden by watering the plants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My aunt takes me to the park and pushes me on the swings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I love going to my uncle's house because he has a cool pet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I laugh and play with my cousin at family gatherings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My sister reads bedtime stories to me before I go to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I build forts with blankets and pillows.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures for my mom and dad to hang on the fridge.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help my grandma bake cookies in the kitchen.",
          "کوردی_کوردی_کوردی");
      await insertSentence("My grandpa tells me jokes that make me giggle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I give my aunt a high-five when she does something awesome.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play catch with my uncle in the backyard.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I share my toys with my cousin and we play together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My sister and I have secret handshakes that we made up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I have pillow fights on lazy Sundays.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I cuddle with my mom and dad when we watch movies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I visit my grandma and grandpa on weekends and we have picnics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures for my aunt and uncle to hang in their house.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help my grandpa fix things around the house.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cookies with my grandma and we eat them warm from the oven.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play board games with my cousin and we take turns winning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I tell my sister about my day at school and she listens to me.",
          "کوردی_کوردی_کوردی");
      await insertSentence("My brother and I ride bikes together in the park.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make cards for my mom and dad on their birthdays.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I hug my grandma tightly when it's time for her to leave.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help my grandpa plant flowers in the garden.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I laugh at my aunt's jokes and she tickles me.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play soccer with my uncle and he teaches me new tricks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I share my snacks with my cousin and we have a picnic.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help my sister pick out her clothes for school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I share a room and tell each other stories at night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures of my family and hang them on my wall.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I give my mom a bouquet of flowers for Mother's Day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make a card for my dad and tell him he's the best dad ever.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I visit my grandma and grandpa and we go for walks in the park.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cookies with my aunt and we decorate them with frosting.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I help my grandpa paint the fence in his backyard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play hide-and-seek with my cousin and we laugh when we get found.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make a scrapbook with my sister filled with our favorite memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I play tag in the backyard and race each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I cuddle with my mom and dad on the couch and watch TV.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I visit my grandma and grandpa and we play board games together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cupcakes with my aunt and we share them with the family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa rake leaves in the yard and jump in the pile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play dress-up with my cousin and we pretend to be princesses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make friendship bracelets with my sister and we wear them every day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I build a fort out of blankets and pillows in the living room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures of my family and put them on the fridge for everyone to see.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cookies with my grandma and we give them to our neighbors as gifts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa wash his car in the driveway and spray him with the hose.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play tag with my aunt and we run around the backyard laughing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my uncle fix his bike and we go for a ride together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I share my snacks with my cousin and we have a picnic in the backyard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my sister clean her room and we find lost toys under the bed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I play superheroes in the backyard and save the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I cuddle with my mom and dad on the couch and listen to them read stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I visit my grandma and grandpa and we make crafts together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cupcakes with my aunt and we decorate them with sprinkles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa water his plants in the garden and we talk about nature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play tag with my cousin and we chase each other around the house.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make friendship bracelets with my sister and we give them to our friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I build a fort out of pillows and blankets in the living room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures of my family and hang them on the walls in my room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cookies with my grandma and we give them to our neighbors as a surprise.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa wash his car in the driveway and we make it sparkle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play hide-and-seek with my aunt and we giggle when we find each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my uncle fix his bike and we ride around the neighborhood together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I share my snacks with my cousin and we have a picnic in the park.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my sister clean her room and we find treasures hidden in the closet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I play superheroes in the backyard and save the world from villains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I cuddle with my mom and dad on the couch and listen to them tell stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I visit my grandma and grandpa and we make homemade ice cream together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cupcakes with my aunt and we decorate them with frosting and sprinkles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa plant flowers in the garden and we watch them grow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play tag with my cousin and we race around the yard until we're out of breath.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make friendship bracelets with my sister and we give them to our best friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I build a fort out of pillows and blankets in the basement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures of my family and make a scrapbook of our favorite memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cookies with my grandma and we share them with our neighbors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa wash his car in the driveway and we laugh as we get wet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play hide-and-seek with my aunt and we hide behind the curtains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my uncle fix his bike and we ride to the park together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I share my snacks with my cousin and we have a picnic on the beach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my sister clean her room and we find lost toys under the bed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I play superheroes in the backyard and fight imaginary villains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I cuddle with my mom and dad on the couch and listen to them sing songs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I visit my grandma and grandpa and we make homemade pizza together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cupcakes with my aunt and we decorate them with icing and candy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa plant flowers in the garden and we water them together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play tag with my cousin and we run around the park laughing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I make friendship bracelets with my sister and we wear them everywhere.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My brother and I build a fort out of blankets and pillows in the living room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I draw pictures of my family and make a special album to keep them in.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I bake cookies with my grandma and we give them to our friends as gifts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I help my grandpa wash his car in the driveway and we make it shine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I play hide-and-seek with my aunt and we hide in the closet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elephants have long trunks they use to spray water and pick up things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lions roar loudly to talk to other lions and show they're strong.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Butterflies start as caterpillars and turn into beautiful, colorful butterflies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins are super smart animals that love to swim and play in the ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Birds have wings so they can fly high up in the sky and sing songs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kittens love to chase after yarn and snuggle up for a cozy nap.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Puppies wag their tails when they're happy and love to play fetch.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Giraffes have long necks so they can reach leaves high up in the trees.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pandas eat bamboo all day and have big, black patches around their eyes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tigers have orange fur with black stripes to help them hide in the jungle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kangaroos hop around on their strong legs and carry their babies in pouches.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monkeys swing from branch to branch in the trees and eat bananas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales are huge animals that live in the ocean and sing beautiful songs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Owls have big eyes to see in the dark and catch mice for dinner.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frogs jump and hop around in ponds and make loud croaking sounds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snakes slither on the ground and use their tongues to smell things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins waddle on ice and swim fast in the cold ocean waters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bears hibernate in caves during the winter and wake up hungry in spring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rabbits hop around fields and eat carrots with their long ears standing up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals swim in the ocean and sunbathe on rocks by the shore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks have sharp teeth and fins to swim fast in the deep blue sea.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deer have antlers on their heads and leap gracefully through the forest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Foxes have bushy tails and red fur, and they're clever hunters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squirrels climb trees and store nuts in their cheeks for later.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Horses gallop across fields with their long, flowing manes in the wind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Octopuses have eight arms and squirt ink to escape from predators.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elephants have big ears they flap to keep themselves cool in hot weather.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lions live in groups called prides and hunt together for food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Butterflies lay eggs on plants, and when they hatch, caterpillars come out.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins leap out of the water and do flips to show off.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Birds build nests in trees and sing sweet songs to attract mates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kittens purr when they're happy and knead with their paws when they're relaxed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Puppies chase their tails in circles and bark to get attention.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Giraffes have long tongues they use to grab leaves from high branches.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pandas roll around in bamboo forests and play with each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tigers have sharp claws to catch prey and stripes to blend into the grass.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kangaroos can hop really fast and kick with their powerful legs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monkeys swing from vines and groom each other to show affection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales jump out of the water and slap their tails on the surface.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Owls hoot at night and fly silently through the forest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frogs leap from lily pad to lily pad and catch insects with their tongues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snakes shed their skin as they grow and use their tongues to smell the air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins huddle together to keep warm in icy temperatures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bears catch fish with their paws and munch on berries in the forest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rabbits twitch their noses and hop away from danger.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals balance balls on their noses and clap their flippers together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks have rows of sharp teeth and can smell blood from miles away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deer prance through fields and hide in tall grass when they're scared.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Foxes hunt at night and have dens where they raise their babies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squirrels bury nuts in the ground and dig them up later.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Horses neigh loudly and gallop across open plains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Octopuses change color to camouflage with their surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elephants splash in muddy water and give themselves baths with their trunks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lions cubs play-fight with each other to practice hunting skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Butterflies flutter their wings and sip nectar from flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins make clicking sounds to talk to each other underwater.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Birds build nests out of twigs, leaves, and feathers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kittens pounce on toys and chase after laser pointers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Puppies chew on bones and wag their tails when they're excited.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Giraffes sleep standing up and only need a few hours of sleep each day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pandas somersault down hills and munch on bamboo shoots.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tigers prowl through the jungle and have a roar that can be heard from miles away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kangaroos have pouches where they carry their babies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monkeys swing from tree to tree and groom each other to show affection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales breach out of the water and splash back down with a big splash.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Owls hunt mice and insects at night and sleep during the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frogs croak loudly to attract mates during mating season.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snakes shed their skin as they grow and use their tongues to smell their surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins toboggan on their bellies and slide into the water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bears hibernate in dens during the winter and wake up in the spring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rabbits twitch their noses and hop away from danger.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals balance balls on their noses and clap their flippers together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks have rows of sharp teeth and can smell blood from miles away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deer prance through fields and hide in tall grass when they're scared.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Foxes hunt at night and have dens where they raise their babies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squirrels bury nuts in the ground and dig them up later.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Horses neigh loudly and gallop across open plains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Octopuses change color to camouflage with their surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elephants splash in muddy water and give themselves baths with their trunks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lions cubs play-fight with each other to practice hunting skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Butterflies flutter their wings and sip nectar from flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins make clicking sounds to talk to each other underwater.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Birds build nests out of twigs, leaves, and feathers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kittens pounce on toys and chase after laser pointers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Puppies chew on bones and wag their tails when they're excited.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Giraffes sleep standing up and only need a few hours of sleep each day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pandas somersault down hills and munch on bamboo shoots.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tigers prowl through the jungle and have a roar that can be heard from miles away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kangaroos have pouches where they carry their babies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monkeys swing from tree to tree and groom each other to show affection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales breach out of the water and splash back down with a big splash.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Owls hunt mice and insects at night and sleep during the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frogs croak loudly to attract mates during mating season.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snakes shed their skin as they grow and use their tongues to smell their surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins toboggan on their bellies and slide into the water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bears hibernate in dens during the winter and wake up in the spring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rabbits twitch their noses and hop away from danger.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals balance balls on their noses and clap their flippers together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks have rows of sharp teeth and can smell blood from miles away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teachers help kids learn new things and play fun games.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doctors take care of people when they're sick or hurt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Firefighters put out fires and rescue people from danger.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Police officers keep our neighborhoods safe and help people in need.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Farmers grow fruits and vegetables and take care of animals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chefs cook delicious food in restaurants and bakeries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Construction workers build houses, roads, and bridges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bus drivers take people to school, work, and other places.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Veterinarians take care of animals when they're sick or hurt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scientists study bugs, plants, and stars to learn new things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Librarians help people find books and read exciting stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artists draw pictures, paint murals, and make sculptures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Musicians play instruments and sing songs for people to enjoy.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Mechanics fix cars, trucks, and other machines.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Actors perform in movies, plays, and TV shows.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Waiters and waitresses serve food and drinks in restaurants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dentists keep our teeth clean and healthy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electricians fix lights, wires, and other electrical things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mail carriers deliver letters and packages to our homes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nurses help doctors and take care of patients in hospitals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Garbage collectors pick up trash and keep our streets clean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Flight attendants help people on airplanes and serve snacks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Plumbers fix sinks, toilets, and pipes in our homes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bankers help people with their money and give out loans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Photographers take pictures of people, animals, and places.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Secretaries answer phones, type letters, and schedule meetings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engineers design buildings, machines, and computers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authors write books, poems, and stories for us to read.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salespeople help customers find what they need in stores.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Janitors clean floors, windows, and bathrooms in buildings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cooks make meals in restaurants, hotels, and cafeterias.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Barbers and hairdressers cut hair and style it in fun ways.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bus drivers take kids to school and bring them home safely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gardeners plant flowers, bushes, and trees in parks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lawyers help people with legal problems and go to court.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Painters make walls, buildings, and pictures look beautiful.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Plumbers fix leaks and keep our sinks and toilets working.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Farmers grow food like vegetables, fruits, and grains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Truck drivers deliver goods like toys, clothes, and food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scientists study animals, plants, and the earth to learn new things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vets take care of animals like dogs, cats, and birds when they're sick.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Actors pretend to be different people in movies, plays, and TV shows.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chefs cook yummy food like pizza, pasta, and cupcakes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Builders make houses, schools, and other buildings with bricks and cement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teachers help kids learn math, reading, and science in school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Police officers catch bad guys and keep our streets safe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Firefighters put out fires and rescue people from burning buildings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doctors help us feel better when we're sick or hurt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Librarians help us find books about dinosaurs, dragons, and space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artists draw pictures of animals, flowers, and people.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Musicians play guitars, drums, and pianos and sing songs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mechanics fix cars, trucks, and motorcycles when they're broken.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Bus drivers take us to the park, zoo, and museum.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dentists check our teeth and make sure they're clean and healthy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electricians fix lights, TVs, and computers when they stop working.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mail carriers deliver letters and packages to our houses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nurses help doctors and take care of us when we're in the hospital.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Garbage collectors pick up trash from our bins and take it away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Flight attendants help us on airplanes and give us snacks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Plumbers fix sinks, toilets, and showers when they're broken.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bankers help us save money and take out loans when we need them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Photographers take pictures of our families, pets, and friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Secretaries answer phones, send emails, and organize files.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Engineers design buildings, bridges, and tunnels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authors write books about dragons, robots, and superheroes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salespeople help us find toys, clothes, and games in stores.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Janitors clean our schools, offices, and libraries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cooks make pancakes, burgers, and tacos in restaurants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Barbers and hairdressers cut our hair and make it look nice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bus drivers take us to school and bring us home safely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gardeners plant flowers, trees, and bushes in our parks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lawyers help people with their problems and go to court.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Painters make our houses, schools, and buildings look pretty.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Plumbers fix leaks and make sure our water works properly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Farmers grow corn, carrots, and apples on their farms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Truck drivers deliver packages, furniture, and groceries to stores.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scientists study animals, plants, and the earth to learn new things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vets take care of animals like dogs, cats, and birds when they're sick.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Actors pretend to be different people in movies, plays, and TV shows.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chefs cook yummy food like pizza, pasta, and cupcakes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Builders make houses, schools, and other buildings with bricks and cement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teachers help kids learn math, reading, and science in school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Police officers catch bad guys and keep our streets safe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Firefighters put out fires and rescue people from burning buildings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doctors help us feel better when we're sick or hurt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Librarians help us find books about dinosaurs, dragons, and space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artists draw pictures of animals, flowers, and people.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Musicians play guitars, drums, and pianos and sing songs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mechanics fix cars, trucks, and motorcycles when they're broken.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Bus drivers take us to the park, zoo, and museum.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dentists check our teeth and make sure they're clean and healthy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electricians fix lights, TVs, and computers when they stop working.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mail carriers deliver letters and packages to our houses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nurses help doctors and take care of us when we're in the hospital.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Garbage collectors pick up trash from our bins and take it away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Flight attendants help us on airplanes and give us snacks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Plumbers fix sinks, toilets, and showers when they're broken.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bankers help us save money and take out loans when we need them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Photographers take pictures of our families, pets, and friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Secretaries answer phones, send emails, and organize files.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Engineers design buildings, bridges, and tunnels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authors write books about dragons, robots, and superheroes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salespeople help us find toys, clothes, and games in stores.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Janitors clean our schools, offices, and libraries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cooks make pancakes, burgers, and tacos in restaurants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Barbers and hairdressers cut our hair and make it look nice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bus drivers take us to school and bring us home safely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gardeners plant flowers, trees, and bushes in our parks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lawyers help people with their problems and go to court.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Painters make our houses, schools, and buildings look pretty.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Plumbers fix leaks and make sure our water works properly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scientists study the stars, planets, and galaxies in space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robots can do tasks like cleaning, cooking, and even talking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Computers help us play games, do homework, and talk to friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Magnets stick to metal things like fridge doors and paperclips.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cameras take pictures of people, animals, and places.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Telephones let us talk to people far away using our voices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Microscopes help us see tiny things like cells and bugs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Telescopes make faraway things like stars and planets look closer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "GPS helps us find our way using maps and satellites.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Batteries give power to things like toys, phones, and cars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electricity flows through wires and lights up our homes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Airplanes fly high in the sky and take us on trips.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Televisions show us movies, shows, and news.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Satellites orbit the Earth and help us with things like weather.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet lets us look up information, play games, and watch videos.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drones can fly high in the air and take pictures and videos.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Solar panels collect sunlight and turn it into electricity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tablets let us read books, play games, and draw pictures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "DNA is like a blueprint that tells our bodies how to grow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hydrogen cars use a special gas instead of gasoline to run.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtual reality lets us feel like we're in a different place.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "X-rays help doctors see inside our bodies to find broken bones.",
          "کوردی_کوردی_کوردی");
      await insertSentence("3D printers can make toys, tools, and even food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence helps computers learn and make decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rockets blast off into space and carry astronauts to other planets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biodegradable means something can break down and not harm the environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nanotechnology is about making tiny things that are too small to see.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smartphones can do lots of things like take pictures, play music, and send messages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "DNA testing helps us learn about our family history and where we come from.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial limbs help people who have lost arms or legs still do things like walk and grab.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Augmented reality lets us see things that aren't really there, like dinosaurs in our living room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biometrics use things like fingerprints and eye scans to identify people.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet of Things lets us connect things like lights, thermostats, and cameras to the internet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-driving cars can drive themselves without a person needing to steer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space probes travel far into space to explore planets and gather information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genetic engineering changes the DNA of plants and animals to make them better.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hydroponics grows plants without soil by using water with nutrients instead.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "3D movies look like they're popping out of the screen and into our laps.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtual assistants like Siri and Alexa can answer questions and do tasks for us.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blockchain keeps track of things like money transactions and online voting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "CRISPR lets scientists edit genes to change things like diseases and traits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prosthetics are artificial body parts that help people move and do things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing uses tiny particles to do calculations super fast.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space stations orbit the Earth and let astronauts live and work in space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biotechnology uses living things like cells and bacteria to make new products.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neural networks are like computer brains that can learn and think.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geoengineering tries to change the Earth's climate to stop global warming.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brain-computer interfaces let us control things with just our thoughts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gene therapy uses genes to treat and prevent diseases.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hybrid cars use a mix of gasoline and electricity to run.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space shuttles launch into space and bring astronauts back to Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cloning makes copies of animals and plants to study and save them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet safety means being careful online and not sharing personal information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial organs like hearts and kidneys can be made to replace ones that don't work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wireless charging lets us charge our phones and other devices without plugging them in.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Antibiotics help our bodies fight off infections and sicknesses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Satellite internet provides internet access in remote areas using satellites in space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtual classrooms let students learn online from anywhere in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "CRISPR lets scientists edit genes to change things like diseases and traits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prosthetics are artificial body parts that help people move and do things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing uses tiny particles to do calculations super fast.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space stations orbit the Earth and let astronauts live and work in space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biotechnology uses living things like cells and bacteria to make new products.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neural networks are like computer brains that can learn and think.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geoengineering tries to change the Earth's climate to stop global warming.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brain-computer interfaces let us control things with just our thoughts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gene therapy uses genes to treat and prevent diseases.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hybrid cars use a mix of gasoline and electricity to run.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space shuttles launch into space and bring astronauts back to Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cloning makes copies of animals and plants to study and save them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet safety means being careful online and not sharing personal information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial organs like hearts and kidneys can be made to replace ones that don't work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wireless charging lets us charge our phones and other devices without plugging them in.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Antibiotics help our bodies fight off infections and sicknesses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Satellite internet provides internet access in remote areas using satellites in space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtual classrooms let students learn online from anywhere in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kindergarten is a fun place where we learn and play.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We draw pictures, sing songs, and make new friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Our teacher reads us stories and helps us learn letters and numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We play with blocks, puzzles, and toys in the classroom.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have snack time where we eat delicious treats and drink juice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "At recess, we run, jump, and play games outside with our friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have nap time where we rest and recharge our energy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about colors, shapes, and animals during circle time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "In kindergarten, we learn how to share and take turns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We listen to music and dance to the rhythm during music class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "At school, we have art class where we paint and create masterpieces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We practice writing our names and drawing pictures with crayons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Our teacher helps us learn to count and do simple math.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about plants, animals, and the world around us in science class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have show and tell where we bring something special from home to share.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We play with playdough and make shapes and sculptures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about different cultures and traditions during social studies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have story time where our teacher reads us books and fairy tales.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have gym class where we run, jump, and play sports.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about being kind and helping others in class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "At school, we celebrate holidays and have parties with our friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have field trips where we go to museums, parks, and zoos.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about the weather and seasons during science class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have dress-up days where we wear costumes and pretend to be different characters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have snack time where we eat fruits, veggies, and sandwiches.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about different countries and their flags during geography.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have music class where we sing songs and play instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have a playground where we swing, slide, and climb.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn about the alphabet and phonics to help us read.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have library time where we pick out books to read and take home.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have math class where we learn about numbers and counting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have computer class where we learn to use the keyboard and mouse.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have cooking class where we make snacks and treats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have storytime where we listen to our teacher read books.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have recess where we play games and run around outside.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have art class where we paint, draw, and make crafts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have circle time where we talk about our feelings and share stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have music class where we sing songs and play instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have gym class where we run, jump, and play sports.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have math class where we learn about numbers and shapes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have science class where we learn about plants and animals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have library time where we read books and check out new ones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have snack time where we eat fruits, veggies, and crackers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have nap time where we rest and relax on our mats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have show and tell where we share something special with our friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have recess where we play on the playground and swing on the swings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have art class where we paint, color, and make crafts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have music class where we sing songs and play instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have gym class where we do exercises and play games.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have math class where we count, add, and subtract.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have science class where we learn about the planets and stars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have library time where we read books and listen to stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have snack time where we eat snacks and drink juice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have nap time where we rest and sleep on our mats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have show and tell where we share toys and objects with our friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have recess where we play tag, jump rope, and climb on the jungle gym.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have art class where we paint, draw, and make sculptures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have music class where we sing songs and play musical instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have gym class where we run, jump, and play sports.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have math class where we count, add, and subtract numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have science class where we learn about animals, plants, and the weather.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have library time where we read books and listen to stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have snack time where we eat fruits, veggies, and crackers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have nap time where we rest and sleep on our mats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have show and tell where we share our favorite toys and objects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have recess where we play on the swings, slides, and jungle gym.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have art class where we paint, draw, and make crafts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have music class where we sing songs and play musical instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have gym class where we run, jump, and play games.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have math class where we count, add, and subtract numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have science class where we learn about animals, plants, and the environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have library time where we read books and listen to stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have snack time where we eat fruits, veggies, and cookies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have nap time where we rest and relax on our mats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have show and tell where we share our favorite toys and objects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have recess where we play on the swings, slides, and monkey bars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have art class where we paint, draw, and make collages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We have music class where we sing songs and play musical instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The cat is fluffy and soft.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is hot and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is beautiful and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is delicious and sweet.", "کوردی_کوردی_کوردی");
      await insertSentence("The dog is big and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The sky is blue and clear.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bear is strong and furry.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is colorful and magical.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The book is interesting and fun.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is pretty and delicate.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence("The snow is cold and white.", "کوردی_کوردی_کوردی");
      await insertSentence("The baby is cute and cuddly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The elephant is huge and gray.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and deep.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bird is small and chirpy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and rocky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ice cream is cold and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is small and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The lion is fierce and majestic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and small.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and round.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fish is small and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and old.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snake is long and slithery.", "کوردی_کوردی_کوردی");
      await insertSentence("The apple is red and juicy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bed is soft and comfortable.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The turtle is slow and steady.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ball is round and bouncy.", "کوردی_کوردی_کوردی");
      await insertSentence("The clock is old and rusty.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and cheesy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is bright and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is scary and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The sky is clear and blue.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The lion is strong and brave.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flowers are pretty and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The snow is cold and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence("The cake is yummy and sweet.", "کوردی_کوردی_کوردی");
      await insertSentence("The bear is big and brown.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat is cute and cuddly.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is loyal and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is bright and warm.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and blue.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is delicate and beautiful.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is colorful and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fragrant and pretty.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and bright.", "کوردی_کوردی_کوردی");
      await insertSentence("The apple is red and juicy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fish is small and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The elephant is big and gray.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and soft.", "کوردی_کوردی_کوردی");
      await insertSentence("The clock is old and dusty.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and cheesy.", "کوردی_کوردی_کوردی");
      await insertSentence("The snake is long and slimy.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat is fluffy and soft.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is hot and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is beautiful and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is delicious and sweet.", "کوردی_کوردی_کوردی");
      await insertSentence("The dog is big and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The sky is blue and clear.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bear is strong and furry.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is colorful and magical.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The book is interesting and fun.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is pretty and delicate.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence("The snow is cold and white.", "کوردی_کوردی_کوردی");
      await insertSentence("The baby is cute and cuddly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The elephant is huge and gray.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and deep.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bird is small and chirpy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and rocky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ice cream is cold and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is small and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The lion is fierce and majestic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and small.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and round.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fish is small and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bird is colorful and chirpy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The lion is fierce and brave.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ice cream is cold and delicious.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is pretty and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The elephant is big and gray.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is beautiful and delicate.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is hot and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is colorful and magical.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat is fluffy and soft.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is loyal and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The snake is long and slimy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is cute and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and round.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and rocky.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and blue.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fish is small and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The apple is red and juicy.", "کوردی_کوردی_کوردی");
      await insertSentence("The cake is sweet and yummy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bear is strong and furry.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence("The clock is old and dusty.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and cheesy.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence("The baby is cute and cuddly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and pretty.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is graceful and delicate.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is warm and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is colorful and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is scary and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moon is bright and round.", "کوردی_کوردی_کوردی");
      await insertSentence("The fish is small and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is soft and warm.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cat is fluffy and playful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is friendly and loyal.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snake is long and slithery.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is small and furry.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and snowy.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and deep.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun is bright and shining.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is sweet and delicious.", "کوردی_کوردی_کوردی");
      await insertSentence("The bear is big and furry.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and sleek.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clock is old and ticking.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The baby is small and adorable.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is delicate and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is warm and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is bright and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fish is small and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat is fluffy and soft.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is loyal and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The snake is long and slimy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is cute and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and rocky.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and blue.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is hot and shining.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is colorful and magical.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is scary and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and round.", "کوردی_کوردی_کوردی");
      await insertSentence("The fish is small and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is soft and warm.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cat is fluffy and playful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is friendly and loyal.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snake is long and slithery.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is small and furry.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and snowy.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and deep.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun is bright and shining.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is sweet and delicious.", "کوردی_کوردی_کوردی");
      await insertSentence("The bear is big and furry.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and sleek.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clock is old and ticking.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The baby is small and adorable.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is delicate and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is warm and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is bright and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fish is small and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat is fluffy and soft.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is loyal and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The snake is long and slimy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is cute and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and rocky.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and blue.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is hot and shining.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is sweet and delicious.", "کوردی_کوردی_کوردی");
      await insertSentence("The bear is big and furry.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and sleek.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clock is old and ticking.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The baby is small and adorable.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is delicate and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is warm and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is bright and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and bright.", "کوردی_کوردی_کوردی");
      await insertSentence("The fish is small and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is soft and warm.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cat is fluffy and playful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is friendly and loyal.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snake is long and slithery.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is small and furry.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and snowy.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and deep.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun is bright and shining.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is sweet and delicious.", "کوردی_کوردی_کوردی");
      await insertSentence("The bear is big and furry.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and sleek.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clock is old and ticking.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The baby is small and adorable.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is delicate and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is warm and bright.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rainbow is bright and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider is creepy and hairy.", "کوردی_کوردی_کوردی");
      await insertSentence("The moon is big and bright.", "کوردی_کوردی_کوردی");
      await insertSentence("The fish is small and shiny.", "کوردی_کوردی_کوردی");
      await insertSentence("The tree is tall and green.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The blanket is warm and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat is fluffy and soft.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog is loyal and friendly.", "کوردی_کوردی_کوردی");
      await insertSentence("The snake is long and slimy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit is cute and fluffy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mountain is tall and rocky.", "کوردی_کوردی_کوردی");
      await insertSentence("The ocean is vast and blue.", "کوردی_کوردی_کوردی");
      await insertSentence("The sun is hot and shining.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cake is sweet and delicious.", "کوردی_کوردی_کوردی");
      await insertSentence("The bear is big and furry.", "کوردی_کوردی_کوردی");
      await insertSentence("The car is fast and sleek.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clock is old and ticking.", "کوردی_کوردی_کوردی");
      await insertSentence("The pizza is hot and tasty.", "کوردی_کوردی_کوردی");
      await insertSentence("The house is big and cozy.", "کوردی_کوردی_کوردی");
      await insertSentence("The book is thick and heavy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The baby is small and adorable.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flower is fresh and fragrant.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly is delicate and colorful.", "کوردی_کوردی_کوردی");
      await insertSentence("The cat sleeps on the couch.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dog barks at the mailman.", "کوردی_کوردی_کوردی");
      await insertSentence("The bird sings in the tree.", "کوردی_کوردی_کوردی");
      await insertSentence("The fish swims in the pond.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly flies in the garden.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rabbit hops in the field.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The horse runs in the meadow.", "کوردی_کوردی_کوردی");
      await insertSentence("The cow mooes in the barn.", "کوردی_کوردی_کوردی");
      await insertSentence("The pig oinks in the mud.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The chicken clucks in the coop.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The lion roars in the jungle.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The elephant trumpets in the zoo.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bear growls in the forest.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snake hisses in the grass.", "کوردی_کوردی_کوردی");
      await insertSentence("The frog croaks by the pond.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee buzzes around the flowers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider crawls on the wall.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The turtle crawls on the ground.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The monkey swings in the trees.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The squirrel climbs up the tree.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mouse scurries across the floor.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sheep grazes in the pasture.", "کوردی_کوردی_کوردی");
      await insertSentence("The duck quacks in the pond.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The goat bleats in the field.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The kangaroo hops in the outback.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The penguin waddles on the ice.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The polar bear swims in the Arctic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dolphin jumps in the ocean.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The whale splashes in the sea.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crocodile snaps its jaws.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tiger prowls in the jungle.", "کوردی_کوردی_کوردی");
      await insertSentence("The gorilla beats its chest.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cheetah sprints across the savannah.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The zebra gallops on the grassland.", "کوردی_کوردی_کوردی");
      await insertSentence("The fox hunts in the forest.", "کوردی_کوردی_کوردی");
      await insertSentence("The owl hoots in the night.", "کوردی_کوردی_کوردی");
      await insertSentence("The eagle soars in the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The seagull flies over the beach.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The pelican dives into the water.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The heron wades in the marsh.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The flamingo stands on one leg.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The parrot squawks in the cage.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The toucan perches in the tree.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hummingbird hovers near the flowers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ladybug crawls on the leaf.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dragonfly darts through the air.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly flutters its wings.", "کوردی_کوردی_کوردی");
      await insertSentence("The ant marches in a line.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The grasshopper jumps in the grass.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The beetle scuttles on the ground.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The caterpillar munches on a leaf.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snail slithers across the garden.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm wriggles in the dirt.", "کوردی_کوردی_کوردی");
      await insertSentence("The spider spins a web.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly buzzes around the room.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mosquito bites and buzzes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth flutters around the light.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee pollinates the flowers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly emerges from its chrysalis.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The caterpillar transforms into a butterfly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snail leaves a trail of slime.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm burrows into the soil.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider catches insects in its web.", "کوردی_کوردی_کوردی");
      await insertSentence("The fly lands on the window.", "کوردی_کوردی_کوردی");
      await insertSentence("The mosquito sucks blood.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth is attracted to the flame.", "کوردی_کوردی_کوردی");
      await insertSentence("The bee gathers nectar.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly lays eggs on a leaf.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The caterpillar eats voraciously.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snail retreats into its shell.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm wriggles underground.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider spins silk threads.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly irritates with its buzzing.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mosquito spreads disease.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth flutters towards the light.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee communicates through dance.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly flits from flower to flower.", "کوردی_کوردی_کوردی");
      await insertSentence("The caterpillar munches its way through leaves.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The snail moves slowly, leaving a trail behind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm tunnels through the soil.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider weaves intricate webs.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly lands on surfaces, spreading germs.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mosquito bites, leaving itchy welts.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth is attracted to bright lights.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee collects pollen from flowers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly lays eggs on leaves.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The caterpillar transforms into a chrysalis.", "کوردی_کوردی_کوردی");
      await insertSentence("The snail retreats into its shell for protection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm burrows deeper into the ground.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider waits patiently in its web.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly buzzes annoyingly around food.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mosquito buzzes and bites.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth flutters around the lamp.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee buzzes as it gathers nectar.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly flutters gracefully among the flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The caterpillar munches contentedly on a leaf.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The snail moves slowly along the garden path.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm wriggles through the damp soil.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider spins a web to catch its prey.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly buzzes around the picnic table.", "کوردی_کوردی_کوردی");
      await insertSentence("The mosquito bites and leaves behind itchy bumps.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth is drawn to the porch light.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee buzzes from flower to flower, collecting pollen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly lays eggs on the underside of a leaf.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The caterpillar munches on fresh green leaves.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The snail retreats into its shell when threatened.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm burrows deeper into the earth.", "کوردی_کوردی_کوردی");
      await insertSentence("The spider spins a delicate web to catch insects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly buzzes annoyingly around the kitchen.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mosquito bites and leaves behind red, itchy welts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth flutters near the porch light.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee buzzes around the garden, pollinating flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly sips nectar from brightly colored blooms.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The caterpillar munches on juicy green leaves.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The snail retreats into its shell when scared.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm wriggles through the rich soil.", "کوردی_کوردی_کوردی");
      await insertSentence("The spider spins a sticky web to catch its prey.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The fly buzzes noisily around the garbage can.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mosquito bites and spreads disease.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The moth is attracted to the porch light.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bee buzzes from flower to flower, gathering pollen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The butterfly flutters gracefully among the blossoms.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The caterpillar munches on fresh, green leaves.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The snail retreats into its shell for protection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm burrows deeper into the moist earth.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The spider spins a web to catch insects.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly buzzes around the ripe fruit.", "کوردی_کوردی_کوردی");
      await insertSentence("The mosquito bites and leaves behind itchy bumps.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The moth is drawn to the porch light at night.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The bee buzzes as it gathers nectar from flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The butterfly flutters gently among the petals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The caterpillar munches on tender leaves.", "کوردی_کوردی_کوردی");
      await insertSentence("The snail retreats into its shell when startled.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worm burrows deeper into the soft soil.", "کوردی_کوردی_کوردی");
      await insertSentence("The spider spins a sticky web to catch its prey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fly buzzes annoyingly around the picnic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, I'm Liam, pleased to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, my name's Amelia, nice to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning, you can call me William, it's a pleasure to meet you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greetings, I go by Harper, great to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, I'm Elijah, delighted to make your acquaintance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, I'm Charlotte, pleased to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence("Hi, how are you doing today?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your name and where are you from?", "کوردی_کوردی_کوردی");
      await insertSentence("Did you have a good weekend?", "کوردی_کوردی_کوردی");
      await insertSentence("What did you do yesterday?", "کوردی_کوردی_کوردی");
      await insertSentence("How's the weather outside?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you have any plans for tonight?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Can you recommend a good restaurant nearby?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What are your hobbies and interests?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you seen any good movies lately?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you need any help with that?", "کوردی_کوردی_کوردی");

      await insertSentence("Where do you work?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you have any siblings?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What kind of music do you like?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you traveled to any interesting places?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you like reading books?", "کوردی_کوردی_کوردی");
      await insertSentence("What’s your favorite food?", "کوردی_کوردی_کوردی");
      await insertSentence("How was your day at work?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you enjoy cooking?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you been to any concerts recently?", "کوردی_کوردی_کوردی");
      await insertSentence("What's your favorite sport?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like playing video games?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you tried any new restaurants lately?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What’s your favorite holiday?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you have any pets?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What kind of movies do you enjoy?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever been to a foreign country?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like going to the beach?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What do you usually do on weekends?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever gone hiking?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite TV show?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you prefer tea or coffee?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever attended a live sports game?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite way to relax?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you like gardening?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever taken a cooking class?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite type of dessert?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you play any musical instruments?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever gone camping?", "کوردی_کوردی_کوردی");
      await insertSentence("Hello, how are you today? It's good to see you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! Did you sleep well last night?", "کوردی_کوردی_کوردی");
      await insertSentence("Hey there, long time no see! How have you been?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, it's nice to meet you. I'm glad we could finally connect.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good afternoon! I hope you're having a great day.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hey, what's up? How's everything going with you?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hello, it's a pleasure to make your acquaintance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how's your day going so far? Anything exciting happening?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good evening! I hope you had a wonderful day.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how have you been? It's been ages since we last talked.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, I trust you're doing well. What's new in your life?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, it's great to see you again after so long.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, what's going on? How have things been with you lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's so nice to see your smiling face.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how's everything going in your world?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you have a fantastic day ahead.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hey, long time no chat! How have you been keeping?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's lovely to see you. How have you been feeling?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how are you doing today? Is everything alright?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! I hope you're having a wonderful day so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how are things going? It's been a while since we caught up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, how have you been? I've missed our conversations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, it's good to see you again. How's life treating you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good evening! I hope your day has been filled with joy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, what's up? How have you been since we last spoke?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's nice to see you. How's everything going for you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how have you been keeping? I've been thinking about you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you woke up feeling refreshed and ready for the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? I hope everything is going smoothly for you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's great to see you again. How have you been lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how have you been? It's been too long since our last chat.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good afternoon! I hope you're having a lovely day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's life treating you? It's been a minute since we caught up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's wonderful to see you. How have you been feeling lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how are you today? I hope you're doing well.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good evening! I hope you had a productive day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's everything going? It's been a while since we last spoke.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's nice to see you. How's everything been with you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how are you doing today? I hope you're in good spirits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you have a fantastic day ahead of you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? I hope everything is going according to plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's good to see you again. How have you been keeping?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how have you been? It's been too long since we last talked.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! I hope you're having a great day so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's life treating you? I hope everything is going well.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's wonderful to see you. How have you been lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hi, how are you today? I hope you're doing well.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good evening! I hope you had a productive day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's everything going? It's been a while since we last caught up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's nice to see you. How's everything been with you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how are you doing today? I hope you're in good spirits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you have a fantastic day ahead of you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? I hope everything is going according to plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's good to see you again. How have you been keeping?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how have you been? It's been too long since we last spoke.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! I hope you're having a great day so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's life treating you? I hope everything is going well.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's wonderful to see you. How have you been lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hi, how are you today? I hope you're doing well.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good evening! I hope you had a productive day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's everything going? It's been a while since we last caught up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's nice to see you. How's everything been with you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how are you doing today? I hope you're in good spirits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you have a fantastic day ahead of you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? I hope everything is going according to plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's good to see you again. How have you been keeping?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how have you been? It's been too long since we last spoke.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! I hope you're having a great day so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's life treating you? I hope everything is going well.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's wonderful to see you. How have you been lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hi, how are you today? I hope you're doing well.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good evening! I hope you had a productive day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's everything going? It's been a while since we last caught up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's nice to see you. How's everything been with you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how are you doing today? I hope you're in good spirits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you have a fantastic day ahead of you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? I hope everything is going according to plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's good to see you again. How have you been keeping?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how have you been? It's been too long since we last spoke.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! I hope you're having a great day so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's life treating you? I hope everything is going well.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's wonderful to see you. How have you been lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hi, how are you today? I hope you're doing well.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good evening! I hope you had a productive day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's everything going? It's been a while since we last caught up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's nice to see you. How's everything been with you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi, how are you doing today? I hope you're in good spirits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good morning! I hope you have a fantastic day ahead of you.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's it going? I hope everything is going according to plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's good to see you again. How have you been keeping?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hi there, how have you been? It's been too long since we last spoke.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good afternoon! I hope you're having a great day so far.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's life treating you? I hope everything is going well.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, it's wonderful to see you. How have you been lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hi, how are you today? I hope you're doing well.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Good evening! I hope you had a productive day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hey, how's everything going? It's been a while since we last caught",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Friendship is a bond based on mutual trust and understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Familial relationships are built on shared history and unconditional love.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Romantic relationships involve emotional intimacy and mutual affection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Professional relationships are formed in the workplace and based on mutual respect and collaboration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Platonic relationships are non-romantic and often characterized by deep friendship and companionship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parent-child relationships are unique and involve guidance, support, and unconditional love.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sibling relationships are dynamic and can vary from close bonds to occasional conflicts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Long-distance relationships require strong communication and trust to thrive.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acquaintanceships are casual relationships based on shared interests or activities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Online relationships can develop through social media or online communities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Open relationships involve consensual non-monogamy and communication about boundaries and expectations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Toxic relationships are harmful and may involve manipulation, abuse, or control.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Workplace relationships can range from professional collaborations to friendships with colleagues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Casual relationships are non-committal and may involve dating or hooking up without expectations of a long-term commitment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Interpersonal relationships are connections between individuals that influence thoughts, feelings, and behaviors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Codependent relationships involve an unhealthy reliance on each other for emotional or psychological needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Intimate relationships involve emotional vulnerability, trust, and a deep connection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Healthy relationships are characterized by mutual respect, communication, and support.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unrequited love occurs when one person's feelings are not reciprocated by the other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Arranged marriages are unions where families choose partners for their children based on cultural or social factors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marriages involve legal and emotional commitments between partners.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parenting partnerships involve co-parenting responsibilities between separated or divorced individuals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Professional partnerships are collaborations between individuals or organizations to achieve common goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Polyamorous relationships involve consensual romantic or sexual relationships with multiple partners.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Long-term relationships require commitment, compromise, and effort to maintain over time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Casual friendships are low-key connections based on shared interests or activities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Close friendships involve deep emotional bonds and shared experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dysfunctional relationships are characterized by unhealthy patterns of behavior, communication, or interaction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unconditional love is a type of relationship where acceptance and support are given without conditions or expectations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abusive relationships involve patterns of behavior that seek to control or harm the other person.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Committed relationships involve exclusivity and long-term plans for the future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emotionally distant relationships lack intimacy and connection between partners.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Interracial relationships involve partners from different racial or ethnic backgrounds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Transactional relationships are based on exchanges of goods, services, or favors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empathetic relationships involve understanding and sharing the emotions of others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rebound relationships occur shortly after the end of a previous relationship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Independent relationships prioritize individual autonomy and self-expression within the partnership.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unhealthy relationships may involve emotional manipulation, gaslighting, or coercive control.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Friendships with benefits involve a combination of friendship and casual sexual activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Peer relationships are connections between individuals of similar age or social status.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supportive relationships provide encouragement, validation, and assistance during difficult times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unstable relationships are marked by inconsistency, unpredictability, or volatility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Work relationships involve interactions with colleagues, supervisors, or subordinates in a professional setting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Toxic friendships can be emotionally draining and detrimental to one's well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unconditional support is a hallmark of healthy relationships, where individuals feel accepted and valued for who they are.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Conflict resolution skills are important for maintaining healthy relationships and resolving disagreements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Interpersonal boundaries are essential for maintaining healthy relationships and respecting individual autonomy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mutual understanding and empathy are key components of successful relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Communication is crucial for building and maintaining strong relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trust is the foundation of all healthy relationships, providing a sense of security and safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Compromise is essential for resolving conflicts and finding mutually satisfactory solutions in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Respect for each other's differences and individuality is vital for healthy relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quality time spent together strengthens bonds and fosters connection in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Expressing gratitude and appreciation strengthens relationships and fosters a sense of closeness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Forgiveness is essential for repairing relationships and moving forward after conflicts or betrayals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Boundaries help maintain a sense of balance and prevent resentment in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empathy allows individuals to understand and validate each other's emotions, fostering connection in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Shared values and goals provide a sense of purpose and direction in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Affection and physical intimacy are important for maintaining emotional connection and closeness in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting each other's personal growth and development strengthens relationships and fosters individual fulfillment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Active listening is essential for understanding and empathizing with each other's perspectives in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Transparency and honesty build trust and foster open communication in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Commitment is essential for building a strong foundation and longevity in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Resilience allows couples to navigate challenges and setbacks together, strengthening their relationship over time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authenticity and vulnerability foster intimacy and deep connection in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Shared experiences and memories create a sense of belonging and solidarity in relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Flexibility and adaptability help couples navigate changes and transitions in their relationship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mathematics is the study of numbers, quantity, structure, and space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Algebra is a branch of mathematics that deals with symbols and the rules for manipulating those symbols.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geometry is the study of shapes, sizes, and properties of space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Calculus is a branch of mathematics that deals with rates of change and accumulation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trigonometry is the study of the relationships between the angles and sides of triangles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Statistics is the science of collecting, analyzing, interpreting, and presenting data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Probability is the branch of mathematics that deals with the likelihood of events occurring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physics is the study of matter, energy, motion, and the fundamental forces of nature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chemistry is the study of the composition, structure, properties, and reactions of matter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biology is the science of life and living organisms, including their structure, function, growth, evolution, distribution, and taxonomy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Astronomy is the study of celestial objects such as stars, planets, comets, and galaxies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geology is the study of the Earth's structure, composition, and processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Environmental science is the study of the interactions between the physical, chemical, and biological components of the environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ecology is the study of the relationships between organisms and their environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Botany is the study of plants, including their structure, growth, reproduction, and evolution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Zoology is the study of animals, including their behavior, physiology, and classification.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genetics is the study of genes, heredity, and genetic variation in organisms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cell biology is the study of cells, their structure, function, and interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Microbiology is the study of microorganisms, including bacteria, viruses, fungi, and protists.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neuroscience is the study of the nervous system, including the brain, spinal cord, and peripheral nerves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biochemistry is the study of the chemical processes and substances that occur within living organisms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical chemistry is the study of the physical properties and behavior of chemical systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Organic chemistry is the study of the structure, properties, composition, reactions, and synthesis of organic compounds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Inorganic chemistry is the study of inorganic compounds, which do not contain carbon-hydrogen bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Analytical chemistry is the study of the composition of matter and the development of methods to determine the identity and quantity of substances.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum mechanics is the branch of physics that deals with the behavior of particles at the atomic and subatomic levels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Relativity is the branch of physics that deals with the relationship between space and time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thermodynamics is the study of heat and energy transfer in physical systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electromagnetism is the study of the electromagnetic force, which includes electricity, magnetism, and light.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kinematics is the branch of mechanics that deals with the motion of objects without considering the forces that cause the motion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dynamics is the branch of mechanics that deals with the motion of objects and the forces that cause the motion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fluid dynamics is the study of the behavior of fluids (liquids and gases) in motion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Optics is the study of light and its interaction with matter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acoustics is the study of sound and its production, transmission, and effects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Material science is the study of the properties and applications of materials, including metals, ceramics, polymers, and composites.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Computer science is the study of algorithms, data structures, programming languages, and computer systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cryptography is the study of techniques for secure communication in the presence of third parties.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence is the branch of computer science that deals with the simulation of intelligent behavior in computers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robotics is the interdisciplinary field that combines computer science, engineering, and other disciplines to design and build robots.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Machine learning is a subset of artificial intelligence that focuses on the development of algorithms that allow computers to learn from and make predictions based on data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Data science is an interdisciplinary field that combines statistics, machine learning, computer science, and domain knowledge to analyze and interpret complex data sets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chemical engineering is the branch of engineering that applies principles of chemistry, physics, mathematics, and economics to design, operate, and optimize chemical processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Civil engineering is the branch of engineering that deals with the design, construction, and maintenance of infrastructure projects such as buildings, roads, bridges, and dams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mechanical engineering is the branch of engineering that deals with the design, analysis, and manufacturing of mechanical systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electrical engineering is the branch of engineering that deals with the study and application of electricity, electronics, and electromagnetism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Computer engineering is the branch of engineering that combines principles of computer science and electrical engineering to design, develop, and maintain computer hardware and software.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biomedical engineering is the branch of engineering that applies principles of engineering and biology to develop solutions for healthcare and medical problems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Environmental engineering is the branch of engineering that focuses on the protection and improvement of the environment through the development of sustainable technologies and practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genetic engineering is the manipulation of an organism's genes using biotechnology to produce desirable traits or eliminate undesirable ones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nanotechnology is the manipulation of matter on an atomic, molecular, and supramolecular scale to create materials, devices, and systems with novel properties and functions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Renewable energy is energy derived from natural sources that are replenished on a human timescale, such as sunlight, wind, and water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Climate science is the study of the Earth's climate system, including its components, processes, and variability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geographic information science is the study of geographic information systems (GIS), spatial analysis, and remote sensing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remote sensing is the acquisition of information about an object or phenomenon without making physical contact with it, typically using satellites or aircraft.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oceanography is the study of the ocean, including its physical, chemical, biological, and geological characteristics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Atmospheric science is the study of the Earth's atmosphere and its interactions with other components of the Earth system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addition is combining two or more numbers to find their total.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subtraction is taking one number away from another to find the difference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Multiplication is repeated addition or combining equal groups.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Division is splitting a number into equal parts or groups.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fractions represent parts of a whole or a ratio of two numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Decimals are numbers written with a decimal point to represent parts of a whole.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Percentages represent parts of 100, often used to express proportions or comparisons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prime numbers are numbers greater than 1 that have only two factors: 1 and themselves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Factors are numbers that can be multiplied together to get another number.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Multiples are the result of multiplying a number by an integer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Even numbers are divisible by 2, while odd numbers are not.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Place value is the value of a digit based on its position in a number.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Order of operations is the rules that dictate the sequence in which mathematical operations should be performed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exponents represent repeated multiplication of the same number.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Square numbers are the result of multiplying a number by itself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Square roots are the inverse operation of squaring a number.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cube numbers are the result of multiplying a number by itself twice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cube roots are the inverse operation of cubing a number.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rounding is approximating a number to a certain place value.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Estimation is finding an approximate value of a quantity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Absolute value is the distance of a number from zero on the number line.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ratio is a comparison of two quantities using division.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Proportion is an equation that states two ratios are equal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Average, or mean, is the sum of a set of numbers divided by the count of numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Median is the middle value of a set of numbers when they are arranged in order.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mode is the value that appears most frequently in a set of numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Range is the difference between the largest and smallest values in a set of numbers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geometry is the branch of mathematics that deals with shapes, sizes, and properties of space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Perimeter is the distance around the outside of a two-dimensional shape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Area is the measure of the surface enclosed by a shape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volume is the measure of the space occupied by a three-dimensional shape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Circumference is the distance around the edge of a circle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Angles are the space between two intersecting lines or surfaces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Triangles are three-sided polygons with three angles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quadrilaterals are four-sided polygons with four angles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Circles are two-dimensional shapes with a curved boundary.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rectangles have four sides with opposite sides equal and all angles are right angles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squares are rectangles with all sides equal and all angles are right angles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parallelograms have opposite sides equal and parallel.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trapezoids have one pair of parallel sides.", "کوردی_کوردی_کوردی");
      await insertSentence("Polygons are closed shapes with straight sides.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pythagorean theorem states that in a right triangle, the square of the length of the hypotenuse is equal to the sum of the squares of the lengths of the other two sides.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coordinate geometry uses pairs of numbers called coordinates to represent points on a plane.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Transformations are changes in the position, size, or orientation of a shape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Symmetry is a property of shapes that have corresponding parts that match exactly when folded or turned.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Congruent figures are identical in shape and size.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Similar figures have the same shape but may have different sizes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Probability is the likelihood of an event occurring, expressed as a fraction, decimal, or percentage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Data analysis involves collecting, organizing, and interpreting data to make conclusions or predictions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like painting or drawing?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite subject to talk about?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever been to a theme park?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you enjoy dancing?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite way to exercise?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you like shopping?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever volunteered somewhere?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite type of weather?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you enjoy going to museums?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever ridden a horse?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like watching documentaries?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite board game?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you enjoy baking?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever been skiing?", "کوردی_کوردی_کوردی");
      await insertSentence("What's your favorite season?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you like doing puzzles?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever tried yoga?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite type of animal?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like attending festivals?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever been on a road trip?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite type of flower?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you enjoy taking photographs?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever been to a zoo?", "کوردی_کوردی_کوردی");
      await insertSentence("What's your favorite city?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like learning new languages?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever met a celebrity?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite type of cuisine?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you enjoy listening to podcasts?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever been on a cruise?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite childhood memory?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like going to the theater?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever won a contest?", "کوردی_کوردی_کوردی");
      await insertSentence("What's your favorite book?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you enjoy going for walks?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever flown in a helicopter?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite thing to cook?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you like playing cards?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever taken a road trip?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite ice cream flavor?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you enjoy going to the gym?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever been to a desert?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What's your favorite type of drink?", "کوردی_کوردی_کوردی");
      await insertSentence("Do you like going to parks?", "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever tried surfing?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever seen a wild deer in the forest?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lions are known as the kings of the jungle.", "کوردی_کوردی_کوردی");
      await insertSentence("Birdwatching is a relaxing way to enjoy nature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you know how to identify different bird species?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elephants are the largest land animals in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Wolves live and hunt in packs for better survival.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you know that dolphins are highly intelligent creatures?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Owls are nocturnal and hunt mainly at night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kangaroos are native to Australia and can jump very high.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever seen a bear in the wild?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tigers are solitary animals that prefer to live alone.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Eagles have excellent eyesight and can spot prey from afar.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snakes can be found in many different environments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever been to a wildlife sanctuary?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jellyfish have existed for millions of years in the oceans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frogs go through a metamorphosis from tadpoles to adults.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beavers are known for building dams in rivers and streams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Giraffes have long necks to reach leaves on tall trees.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins are birds that cannot fly but are excellent swimmers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you know that cheetahs are the fastest land animals?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Octopuses are very intelligent and can solve complex problems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Zebras have unique black and white striped patterns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea turtles return to the same beach to lay their eggs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rhinos have thick skin and one or two horns on their heads.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever seen a bald eagle soaring high in the sky?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coyotes are adaptable and can live in various environments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales are the largest animals to have ever lived on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bats are the only mammals capable of sustained flight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gorillas are closely related to humans and live in social groups.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Salmon swim upstream to their birthplace to spawn.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you know how to identify animal tracks in the wilderness?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Foxes are clever and have excellent hunting skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mountain goats have adapted to live on steep, rocky cliffs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parrots are known for their bright colors and ability to mimic sounds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever seen a moose in the wild?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snow leopards are elusive and live in high mountain ranges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Raccoons are nocturnal and known for their distinctive masks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Antelope are fast runners and can evade predators with ease.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks have been around for hundreds of millions of years.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sloths are incredibly slow-moving animals that live in trees.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bees play a crucial role in pollinating many plants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ospreys are fish-eating birds of prey with excellent diving skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hummingbirds can hover in place and fly backward.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monarch butterflies migrate thousands of miles every year.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meerkats live in large social groups and have a sentry system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Polar bears are adapted to live in the cold Arctic environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wolves communicate with each other through howling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crocodiles have powerful jaws and live in freshwater habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orangutans are highly intelligent primates found in rainforests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prairie dogs live in complex underground burrow systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cougars are also known as mountain lions or pumas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Peacocks are famous for their vibrant, colorful tail feathers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Komodo dragons are the largest lizards in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Walruses have long tusks and live in Arctic waters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geckos have specialized toe pads for climbing walls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals are marine mammals that are excellent swimmers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beetles are the most diverse group of insects on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ocelots are small wild cats with distinctive spotted fur.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dung beetles play an important role in recycling nutrients.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Flamingos get their pink color from their diet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pandas primarily eat bamboo and live in mountainous regions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vultures are scavengers that play a crucial role in ecosystems.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hyenas have strong jaws and are skilled hunters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elk are large deer found in forests and grasslands.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Gazelles are known for their agility and speed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leopards are excellent climbers and often rest in trees.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wombats are burrowing marsupials native to Australia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Skunks are known for their distinctive black and white coloring and smell.",
          "کوردی_کوردی_کوردی");
      await insertSentence("I am happy to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence("He has a new car.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They go to the gym every morning.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She does her homework before dinner.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We make breakfast together every Sunday.", "کوردی_کوردی_کوردی");
      await insertSentence("I can speak three languages.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He says he will come to the party.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They know the answer to the question.", "کوردی_کوردی_کوردی");
      await insertSentence("She thinks it's a good idea.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We see the mountains from our window.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I am ready to start the project.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He has a lot of experience in this field.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They go to the park every weekend.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She does her chores every evening.", "کوردی_کوردی_کوردی");
      await insertSentence("We make delicious cakes for special occasions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I can play the guitar very well.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He says he will call you later.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They know a lot about history.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She thinks deeply about her decisions.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We see a beautiful sunset every evening.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I want to travel the world someday.", "کوردی_کوردی_کوردی");
      await insertSentence("He uses his phone for work.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They find new places to explore.", "کوردی_کوردی_کوردی");
      await insertSentence("She gives great advice.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We tell stories around the campfire.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I work from home three days a week.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He calls his parents every Sunday.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They try to eat healthy food.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She asks a lot of questions in class.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need more time to finish the project.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I feel happy when I listen to music.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He becomes a better writer with practice.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They leave for vacation tomorrow.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She puts her keys on the table.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We mean to improve our services.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I keep a journal of my thoughts.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lets his dog run in the yard.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They begin their day with a workout.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She helps her neighbors with groceries.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We talk about our plans for the future.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I turn off the lights before going to bed.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He starts a new job next week.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They show their artwork at the gallery.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She plays the piano beautifully.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We run every morning to stay fit.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I move to a new city next month.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He likes to read science fiction novels.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They live in a small village.", "کوردی_کوردی_کوردی");
      await insertSentence("She holds her baby gently.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We bring snacks to the meeting.", "کوردی_کوردی_کوردی");
      await insertSentence("I write emails every day.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They stand in line for tickets.", "کوردی_کوردی_کوردی");
      await insertSentence("She loses her keys often.", "کوردی_کوردی_کوردی");
      await insertSentence("We pay our bills online.", "کوردی_کوردی_کوردی");
      await insertSentence("I meet new people at work.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He includes everyone in the discussion.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They continue to study for the exam.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She sets the table for dinner.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We learn something new every day.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I change my password regularly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He leads the team effectively.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They understand the instructions clearly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She watches TV in the evening.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We follow the rules carefully.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I stop at the store on my way home.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He creates beautiful art pieces.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They read a book together every night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She spends her weekends with family.", "کوردی_کوردی_کوردی");
      await insertSentence("We grow our own vegetables.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I open the windows for fresh air.", "کوردی_کوردی_کوردی");
      await insertSentence("He walks to work every day.", "کوردی_کوردی_کوردی");
      await insertSentence("They win the game easily.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She teaches math to high school students.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We offer our help to those in need.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I remember my first day of school.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He buys groceries on Saturdays.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They choose the best option available.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She explains the lesson clearly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We develop new skills through practice.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I love spending time with my friends.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He hates being late for appointments.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They drive to the beach every summer.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She sleeps early to wake up refreshed.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He sells fresh fruit at the market.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They play soccer in the park.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She reads a novel before bed.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We watch the news every evening.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I study for my exams diligently.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He listens to music while working.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They cook dinner together every night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She drinks coffee every morning.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We visit our grandparents on weekends.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I travel to new places every year.", "کوردی_کوردی_کوردی");
      await insertSentence("He drives to work every day.", "کوردی_کوردی_کوردی");
      await insertSentence("They sing in the choir.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She dances beautifully on stage.", "کوردی_کوردی_کوردی");
      await insertSentence("We exercise to stay healthy.", "کوردی_کوردی_کوردی");
      await insertSentence("I shop for clothes online.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He paints landscapes in his free time.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They clean their house every weekend.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She bakes cookies for her friends.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We plant flowers in our garden.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I swim in the lake during summer.", "کوردی_کوردی_کوردی");
      await insertSentence("He cycles to the office.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They jog around the neighborhood.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She draws portraits as a hobby.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We climb mountains every vacation.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I fish at the lake on weekends.", "کوردی_کوردی_کوردی");
      await insertSentence("He hunts deer in the fall.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They camp in the forest every summer.", "کوردی_کوردی_کوردی");
      await insertSentence("She kayaks down the river.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We surf at the beach every year.", "کوردی_کوردی_کوردی");
      await insertSentence("I skate at the local rink.", "کوردی_کوردی_کوردی");
      await insertSentence("He skis in the mountains.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They snowboard during the winter.", "کوردی_کوردی_کوردی");
      await insertSentence("She sails in the ocean.", "کوردی_کوردی_کوردی");
      await insertSentence("We play chess on rainy days.", "کوردی_کوردی_کوردی");
      await insertSentence("I golf on weekends.", "کوردی_کوردی_کوردی");
      await insertSentence("He boxes at the gym.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "They wrestle in competitions.", "کوردی_کوردی_کوردی");
      await insertSentence("She fences in tournaments.", "کوردی_کوردی_کوردی");
      await insertSentence("We run marathons every year.", "کوردی_کوردی_کوردی");
      await insertSentence("I hike trails in the summer.", "کوردی_کوردی_کوردی");
      await insertSentence("He rows on the river.", "کوردی_کوردی_کوردی");
      await insertSentence("They skydive for thrill.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs dig holes in the backyard.", "کوردی_کوردی_کوردی");
      await insertSentence("Ducks dive into the pond.", "کوردی_کوردی_کوردی");
      await insertSentence("Dragons dance in the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins dive deep underwater.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deer dart through the forest.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs roar in the jungle.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers explore the coral reef.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Desert animals dig burrows for shelter.", "کوردی_کوردی_کوردی");
      await insertSentence("Ducks drift along the river.", "کوردی_کوردی_کوردی");
      await insertSentence("Detectives search for clues.", "کوردی_کوردی_کوردی");
      await insertSentence("Dancers twirl on stage.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drums beat rhythmically in the band.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers discover treasure in shipwrecks.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs stomp through the prehistoric landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drivers navigate busy streets.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doctors treat patients in hospitals.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers imagine fantastic worlds.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs dominate the ancient world.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dragons breathe fire in fairy tales.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Detectives solve mysteries with logic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins leap out of the water.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers perform graceful moves.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers swim with colorful fish.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks paddle across the pond.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drivers steer their cars carefully.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Designers create beautiful artwork.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks quack loudly in the pond.", "کوردی_کوردی_کوردی");
      await insertSentence("Dogs bark at strangers.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs roam the earth.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Detectives interrogate suspects.", "کوردی_کوردی_کوردی");
      await insertSentence("Dolphins communicate with clicks and whistles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers rehearse for their big performance.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers explore underwater caves.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks waddle along the shore.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dragons soar through the clouds.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs hatch from eggs.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drivers honk their horns in traffic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers imagine endless possibilities.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers descend into the ocean depths.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks flutter their wings in the water.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs roar ferociously in the wild.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers glide across the dance floor.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs chase after squirrels in the park.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Detectives follow clues to solve mysteries.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins swim gracefully in the sea.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs lumber through dense forests.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drivers navigate through winding roads.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers create fantastical stories.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers explore coral reefs teeming with life.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks paddle serenely on the pond.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs ruled the earth millions of years ago.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers move to the rhythm of the music.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs fetch sticks at the park.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers imagine flying through the stars.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs trample through dense jungles.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Designers sketch out new ideas.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers discover ancient artifacts on the ocean floor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks quack as they splash in the water.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs lay eggs in nests.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers perform intricate routines on stage.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs wag their tails happily.", "کوردی_کوردی_کوردی");
      await insertSentence("Divers surface after exploring underwater caves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers envision a better world.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs roamed the earth long ago.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers photograph colorful coral reefs.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers pirouette gracefully on stage.", "کوردی_کوردی_کوردی");
      await insertSentence("Dogs howl at the moon.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers wish upon shooting stars.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs thrived in prehistoric times.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers swim alongside majestic whales.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers leap gracefully through the air.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks paddle lazily in the pond.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs vanished from the earth.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers sleep soundly in their beds.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers plunge into the crystal-clear waters.", "کوردی_کوردی_کوردی");
      await insertSentence("Dancers perform in front of a cheering audience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks quack loudly as they fly overhead.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs hunted for prey in packs.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers doodle in their notebooks.", "کوردی_کوردی_کوردی");
      await insertSentence("Divers explore underwater caves with flashlights.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Dancers practice their routines in the studio.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs evolved into birds.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs drool while waiting for treats.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs disappeared mysteriously from the earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers resurface after exploring the depths.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers imagine themselves as superheroes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers sway to the music in a gentle breeze.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks paddle peacefully in the calm waters.", "کوردی_کوردی_کوردی");
      await insertSentence("Dinosaurs hunted for food in the dense forests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers daydream about faraway places.", "کوردی_کوردی_کوردی");
      await insertSentence("Divers explore sunken ships on the ocean floor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers twirl in colorful costumes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs dig up buried bones in the yard.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs thrashed their tails to defend themselves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreamers drift off into a world of dreams.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers rehearse their routines tirelessly.", "کوردی_کوردی_کوردی");
      await insertSentence("Ducks dive beneath the surface to search for food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinosaurs roared loudly to communicate with each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divers discover hidden treasures in underwater caves.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Dreamers doodle in their notebooks during class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancers perform elaborate routines on stage.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrating their victory, the children dance happily in the park.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The horse dashes through the fields, kicking up dust.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She declares her love for him in front of everyone.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bravely, the knights defend the castle from the invading army.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The demolition crew demolishes the old building to make way for a new skyscraper.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They depolish the old paint from the walls before applying a fresh coat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "With precision, he dequashes his opponent with a powerful serve.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Like shadows, the climbers descend the mountain as the sun sets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quickly, the postman despatches the letters to their respective addresses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "With each failure, his confidence diminishes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She dishes out servings of hot soup to the hungry guests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dispatcher sends emergency services to the accident scene.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The detective distinguishes the genuine artifact from the fake.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adventurous, the diver dives into the crystal-clear waters to explore the coral reef.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Playfully, she drenches her friends with water from the hose.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elegantly, he dresses in his finest suit for the job interview.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The boat drifts aimlessly on the calm lake.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thirstily, the traveler drinks from the clear stream.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They disestablish the outdated policies to implement new ones.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Efficiently, she washes the dishes after dinner.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The king's decision to disparage his loyal subjects angers them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The boss dismisses the lazy employee from the company.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gracefully, passengers disembark from the cruise ship onto the exotic island.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They disfurnish the house before putting it up for sale.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dictator disenfranchises certain groups to maintain power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The government disestablishes the state religion to promote equality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He disgraces his family name with his scandalous behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She disinclines from attending the party due to illness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Angered by her decision, the wealthy parents disinherit their son for marrying against their wishes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Slowly, over time, the old bridge disintegrates due to neglect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bulldozer dislodges rocks from the construction site.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her harsh words disparage his efforts, demoralizing him.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The manager dismisses the idea as impractical.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Passengers disembark from the cruise ship onto the exotic island.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They disfurnish the house before putting it up for sale.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dictator disenfranchises certain groups to maintain power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The government disestablishes the state religion to promote equality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He disgraces his family name with his scandalous behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She disinclines from attending the party due to illness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Over time, the old bridge disintegrates due to neglect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bulldozer dislodges rocks from the construction site.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her harsh words disparage his efforts, demoralizing him.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The manager dismisses the idea as impractical.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Passengers disembark from the cruise ship onto the exotic island.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They disfurnish the house before putting it up for sale.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dictator disenfranchises certain groups to maintain power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The government disestablishes the state religion to promote equality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He disgraces his family name with his scandalous behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She disinclines from attending the party due to illness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Over time, the old bridge disintegrates due to neglect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bulldozer dislodges rocks from the construction site.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her harsh words disparage his efforts, demoralizing him.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The manager dismisses the idea as impractical.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Passengers disembark from the cruise ship onto the exotic island.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They disfurnish the house before putting it up for sale.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dictator disenfranchises certain groups to maintain power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The government disestablishes the state religion to promote equality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He disgraces his family name with his scandalous behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She disinclines from attending the party due to illness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Over time, the old bridge disintegrates due to neglect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bulldozer dislodges rocks from the construction site.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her harsh words disparage his efforts, demoralizing him.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The manager dismisses the idea as impractical.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Despite the rain, they went out for a walk.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Different people have different tastes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "During the summer, we often go swimming.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dad always tells the best bedtime stories.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Don't forget to bring your umbrella with you.", "کوردی_کوردی_کوردی");
      await insertSentence("Driving through the countryside is so relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "David loves to play basketball after school.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinner is ready, come and get it!", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Did you hear about the new movie coming out?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Despite the challenges, they never gave up.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs make excellent companions for people.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancing in the rain is so much fun!", "کوردی_کوردی_کوردی");
      await insertSentence("Did you know that dolphins are very intelligent?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreaming about the future is exciting.", "کوردی_کوردی_کوردی");
      await insertSentence("Drawing pictures is one of my favorite hobbies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancing with friends makes me happy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dark chocolate is my favorite kind of candy.", "کوردی_کوردی_کوردی");
      await insertSentence("Decorating the house for holidays is enjoyable.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Diving into a good book is a great way to relax.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Drinking warm tea on a cold day is comforting.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Dogs are loyal pets that bring joy to families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discovering new places is an adventure.", "کوردی_کوردی_کوردی");
      await insertSentence("Driving to the beach is a fun summer activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreaming of faraway places is exciting.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancing under the stars is romantic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doing yoga helps to relax the mind and body.", "کوردی_کوردی_کوردی");
      await insertSentence("Doodling on paper is a fun way to pass the time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs are known for their keen sense of smell.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diving into the ocean is exhilarating.", "کوردی_کوردی_کوردی");
      await insertSentence("Digging in the garden is hard work but rewarding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doodling in a notebook can spark creativity.", "کوردی_کوردی_کوردی");
      await insertSentence("Drinking water is important for staying hydrated.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Decorating the Christmas tree is a festive tradition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressing up in costumes is fun on Halloween.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreaming about the future helps to set goals.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doing chores around the house helps to keep it clean.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Dancing to your favorite music is a great workout.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drawing pictures of animals is fun for kids.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs are faithful companions who offer unconditional love.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Diving into a pool on a hot day is refreshing.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Doing puzzles is a fun way to exercise your brain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreaming of traveling the world is exciting.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancing in the rain is a simple pleasure.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dining out at restaurants is a treat.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Driving with the windows down is freeing.", "کوردی_کوردی_کوردی");
      await insertSentence("Dogs are furry friends who bring joy to our lives.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Discovering new hobbies is a rewarding experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diving into a good book is a relaxing escape.", "کوردی_کوردی_کوردی");
      await insertSentence("Doodling in a sketchbook is a creative outlet.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Drinking hot cocoa warms you up on a cold day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs are playful creatures who love to run and fetch.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Dreaming of success motivates you to work hard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doing yoga in the morning sets a positive tone for the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Dancing to your favorite song lifts your spirits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drawing pictures of nature is peaceful.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs are loyal companions who offer comfort and support.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diving into a refreshing pool on a hot day is invigorating.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Discovering new talents is an exciting journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doodling in a notebook is a fun way to pass the time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Splashing in puddles makes children giggle with delight.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sweeping the floor keeps our house clean and tidy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Singing loudly in the car is a fun road trip activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Skipping rope in the park is great exercise for kids.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Shopping for groceries is a weekly chore for many families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squishing sand between your toes feels wonderful at the beach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stirring the soup in the pot helps it to cook evenly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snuggling with a warm blanket is comforting on a cold night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sliding down the slide at the playground is thrilling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Splishing and splashing in the bathtub makes bath time fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Smiling at strangers can brighten someone's day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squeezing lemons to make lemonade is refreshing on a hot day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Switching off the lights before bed helps you sleep better.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Shushing noisy neighbors politely can resolve conflicts peacefully.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sailing on a boat across the ocean is an adventure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Solving puzzles together as a family strengthens bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Savoring a delicious meal with loved ones is priceless.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharpening pencils before class ensures they write smoothly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swooshing down the ski slope is exhilarating.", "کوردی_کوردی_کوردی");
      await insertSentence("Slurping spaghetti noodles can be messy but fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spinning around in circles until you get dizzy is amusing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sighing with contentment after a long day is satisfying.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stomping through piles of leaves in the fall is enjoyable.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Strumming a guitar by the campfire is relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sketching in a notebook allows creativity to flow freely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sniffing flowers in the garden fills the air with fragrance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swishing mouthwash after brushing your teeth keeps them clean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squishing playdough between your fingers is therapeutic.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Scooping ice cream into a cone is a sweet treat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snacking on popcorn while watching movies is a tradition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Splattering paint on a canvas creates beautiful art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Slapping high-fives with friends is a gesture of celebration.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Scratching an itch relieves discomfort instantly.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Splurging on a fancy dinner is a special occasion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sizzling bacon in the pan smells delicious.", "کوردی_کوردی_کوردی");
      await insertSentence("Surfing waves at the beach is an exciting sport.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snapping photos of memorable moments captures memories forever.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sinking into a soft bed after a long day is pure bliss.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Skimming stones across the water is a favorite pastime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Savoring the flavors of homemade cookies is delightful.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Shooing away pesky flies keeps the picnic peaceful.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snapping fingers to the beat of a catchy tune is fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squinting in the bright sunlight shields your eyes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scrubbing dishes after dinner helps to keep the kitchen clean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sliding down snow-covered hills on a sled is exhilarating.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stirring hot chocolate with a candy cane adds a festive touch.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sneezing into a tissue prevents spreading germs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snuggling up with a good book is a cozy way to spend an evening.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Strolling through the park on a sunny day is relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Solving a challenging puzzle feels rewarding.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Savoring the last bite of a delicious meal is satisfying.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Slipping on ice can be dangerous, so walk carefully.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sprinkling salt on freshly popped popcorn enhances the flavor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scribbling with colorful markers sparks creativity in kids.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squishing mud between your toes feels squelchy and cool.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sipping lemonade on the porch is refreshing on a hot day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squawking seagulls can be heard along the shoreline.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swishing mouthwash around your mouth freshens your breath.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Babbling brooks flow peacefully through the forest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bashing piñatas at birthday parties is so much fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Brushing your teeth before bed keeps them healthy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blushing with embarrassment, she quickly looked away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bottling up emotions can lead to stress and anxiety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blasting music at full volume can disturb neighbors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Building sandcastles at the beach is a classic activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banishing negative thoughts can improve mental well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bundling up in warm blankets on a cold night is cozy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brandishing swords in a play fight can be dangerous.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bowling strikes at the alley is a satisfying achievement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bouncing on a trampoline is an exhilarating experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Blasting bubbles with bubble gum is entertaining.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banishing bad habits requires determination and effort.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bleaching clothes in the sun helps to remove stains.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Browsing through old photographs brings back memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balancing on one foot is a test of stability.", "کوردی_کوردی_کوردی");
      await insertSentence("Binging on junk food can lead to health problems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brandishing a flashlight in the dark illuminates the path.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blushing with embarrassment, she tried to hide her face.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blasting a horn in traffic is impolite and disruptive.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brushing hair before bed prevents tangles in the morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beaming with pride, he accepted the award.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bundling up in warm clothes protects against the cold.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bouncing balls against the wall is a noisy activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Balancing books on your head improves posture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bowling balls down the alley requires skill and precision.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Blasting music at a party gets everyone dancing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Building forts out of blankets is a favorite childhood pastime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banishing negative thoughts is key to a positive mindset.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blushing with embarrassment, she stuttered out an apology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bottling up emotions can lead to outbursts of anger.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Browsing through old books in the library is nostalgic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blasting bubbles with soap makes them shimmer in the sunlight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Babbling brooks provide a soothing soundtrack to nature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brushing teeth before bed removes plaque and prevents cavities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beaming with joy, she hugged her loved ones tightly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bundling up in warm scarves and gloves protects against the cold.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balancing acts in circus performances require agility and focus.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bouncing balls against the ground creates a rhythmic pattern.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blushing with embarrassment, he tried to explain himself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blasting a whistle to signal the end of playtime is a familiar sound.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Building relationships with others takes time and effort.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Browsing through old photographs brings back fond memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banishing negativity from your life leads to a happier existence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beaming with pride, she watched her children succeed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bottling up emotions can have negative effects on mental health.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Balancing on one foot strengthens the leg muscles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bouncing on a trampoline is a great way to burn energy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brushing hair before bed prevents knots and tangles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bundling up in warm blankets on a chilly evening is comforting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blushing with embarrassment, she tried to hide her face.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blasting bubbles with bubble gum is a fun pastime for kids.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banishing bad habits requires determination and perseverance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Building sandcastles at the beach is a favorite summer activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Browsing through old photographs brings back cherished memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beaming with pride, she watched her children graduate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balancing on a tightrope requires focus and concentration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bouncing balls against the wall is a noisy but enjoyable activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blasting music at full volume can disturb the peace and quiet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admiring the sunset from the beach is breathtaking.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Arriving early for the concert ensures good seats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applauding the performers at the end of the show is polite.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending a yoga class helps to relax the mind and body.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjusting the thermostat keeps the room at a comfortable temperature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Analyzing data is an important part of scientific research.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Awakening to the sound of birds chirping is refreshing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applying sunscreen before going outside prevents sunburn.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Answering questions in class shows engagement and understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Asking for help when needed is a sign of strength, not weakness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advancing in your career requires dedication and hard work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aspiring to greatness motivates people to achieve their goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Assuming responsibility for your actions is a mark of maturity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciating nature's beauty is a source of inspiration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adorning the walls with artwork adds personality to a room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aligning your values with your actions leads to fulfillment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acquiring new skills expands your knowledge and abilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adopting a positive attitude can improve your outlook on life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accomplishing goals gives a sense of satisfaction and pride.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Arranging flowers in a vase brightens up the room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adding spices to your cooking enhances the flavor of dishes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledging others' contributions fosters a sense of teamwork.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for causes you believe in can create positive change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Absorbing knowledge from books broadens your understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Asserting yourself in a respectful manner ensures your voice is heard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciating the little things in life brings joy and contentment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amassing wealth does not guarantee happiness.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Altering your perspective can lead to new insights and opportunities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anticipating the future can be both exciting and nerve-wracking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attaching a leash to your dog keeps them safe on walks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjusting your sails allows you to navigate through life's challenges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledging your mistakes is the first step towards growth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accompanying a friend in need shows compassion and support.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Analyzing your strengths and weaknesses helps you grow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anticipating the arrival of a loved one fills you with excitement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Assuring someone of your support can provide comfort in difficult times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Arranging a bouquet of flowers brightens up any room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applying for a job requires careful preparation and presentation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Asking questions helps to deepen your understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abstaining from negative habits promotes overall well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Agreeing to compromise is essential for healthy relationships.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adopting a pet from a shelter saves a life and brings joy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applying makeup enhances your natural beauty.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admiring a beautiful painting evokes emotions and inspires creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accelerating your efforts can lead to quicker results.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accessing information online has revolutionized how we learn.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for equal rights promotes social justice.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Alleviating someone's pain is an act of kindness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accommodating others' needs fosters cooperation and harmony.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Asserting your boundaries is important for self-care.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Acquiring new skills opens doors to opportunity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advancing technology has transformed the way we live.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Arranging furniture in a room creates a sense of space and comfort.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anticipating the arrival of spring fills the air with excitement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Approaching challenges with a positive mindset leads to solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjusting your attitude can change your outlook on life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciating nature's beauty brings a sense of peace and tranquility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acquiring knowledge through reading enriches the mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Assisting others in need builds a sense of community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for environmental conservation protects our planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Determined to succeed, she worked hard every day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in her finest attire, she entered the ballroom.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched from the rain, he hurried inside for shelter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Decorated with twinkling lights, the tree stood tall.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Distressed by the news, she sought comfort from a friend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Delayed by traffic, he arrived at the meeting late.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Denied access to the building, they waited patiently outside.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to improve, he practiced diligently every day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dreaded by many, the dentist appointment loomed ahead.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Delighted by the surprise, she hugged her loved ones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to overcome obstacles, she faced challenges head-on.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deposited in the bank, the money was safe and secure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in matching outfits, they posed for a family photo.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dedicated to his craft, he spent hours perfecting his art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to finish the race, she pushed herself to the limit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doused with water, the flames were finally extinguished.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Disappointed by the outcome, he vowed to try again.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dazed by the accident, she struggled to comprehend what had happened.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Depressed by the loss, she sought solace in her memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discarded by the roadside, the old furniture was picked up by the garbage truck.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Designed with care, the building stood as a testament to architectural ingenuity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in sweat, he collapsed onto the ground, exhausted.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Decorated with flowers, the room looked festive and inviting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in costume, she attended the masquerade ball.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to find the truth, he embarked on a journey of discovery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dazzled by the lights, she gazed in awe at the city skyline.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Decorated with ribbons, the gift looked beautiful.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched from the downpour, she hurried inside the cafe for shelter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Devastated by the news, she sought comfort from her friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to make a change, he started a new fitness regime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in sunlight, the garden bloomed with flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Driven by passion, he pursued his dreams with unwavering determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in his Sunday best, he attended church with his family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to succeed, she faced every challenge with courage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drowned in sorrow, he struggled to find hope.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in black, she attended the funeral with a heavy heart.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to learn, she studied late into the night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Distracted by the noise, he struggled to concentrate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in tears, she sought comfort from her loved ones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to win, she trained tirelessly for the competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in her wedding gown, she walked down the aisle with grace.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Drowned in debt, he struggled to make ends meet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dazzled by the display, she watched the fireworks with wonder.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in sweat, he crossed the finish line with a sense of accomplishment.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Determined to succeed, she refused to give up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Distracted by his thoughts, he failed to notice the time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in his finest, he attended the gala event with pride.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dazed by the bright lights, she stumbled into the room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to find the truth, he pursued the investigation with fervor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in rain, they sought shelter under a nearby tree.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in her favorite outfit, she felt confident and happy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to succeed, she worked tirelessly towards her goal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drowned in sorrow, she struggled to find a way out.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in his uniform, he stood proudly at attention.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to overcome her fears, she faced each challenge head-on.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dazzled by the city lights, he marveled at the skyline.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in sweat, he collapsed on the ground, exhausted.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to make a difference, she volunteered her time to help others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Distracted by the noise, he found it difficult to concentrate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in his pajamas, he climbed into bed and fell asleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to succeed, she refused to let anything stand in her way.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drowned in debt, he struggled to keep his head above water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drenched in rain, they huddled together under the umbrella.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dressed in her wedding gown, she walked down the aisle with confidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determined to find the culprit, he searched every inch of the room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dazzled by the bright lights, she wandered through the city streets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She scuba dives in tropical waters.", "کوردی_کوردی_کوردی");
      await insertSentence("We ride horses on the ranch.", "کوردی_کوردی_کوردی");
      await insertSentence("I hunt for bargains.", "کوردی_کوردی_کوردی");
      await insertSentence("He runs a marathon annually.", "کوردی_کوردی_کوردی");
      await insertSentence("They skate in the park.", "کوردی_کوردی_کوردی");
      await insertSentence("She sails across the lake.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "We row together every weekend.", "کوردی_کوردی_کوردی");
      await insertSentence("I jog every morning.", "کوردی_کوردی_کوردی");
      await insertSentence("He climbs rocks for fun.", "کوردی_کوردی_کوردی");
      await insertSentence("They box in the ring.", "کوردی_کوردی_کوردی");
      await insertSentence("She dances every Friday.", "کوردی_کوردی_کوردی");
      await insertSentence("We sing in the choir.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "I paint landscapes in my studio.", "کوردی_کوردی_کوردی");
      await insertSentence("He sculpts with clay.", "کوردی_کوردی_کوردی");
      await insertSentence("They draw cartoons.", "کوردی_کوردی_کوردی");
      await insertSentence("She writes poetry.", "کوردی_کوردی_کوردی");
      await insertSentence("We read mysteries.", "کوردی_کوردی_کوردی");
      await insertSentence("I cook Italian dishes.", "کوردی_کوردی_کوردی");
      await insertSentence("He bakes bread weekly.", "کوردی_کوردی_کوردی");
      await insertSentence("They grill on weekends.", "کوردی_کوردی_کوردی");
      await insertSentence("She boils vegetables.", "کوردی_کوردی_کوردی");
      await insertSentence("We fry chicken sometimes.", "کوردی_کوردی_کوردی");
      await insertSentence("I steam dumplings.", "کوردی_کوردی_کوردی");
      await insertSentence("He simmers sauces.", "کوردی_کوردی_کوردی");
      await insertSentence("They roast coffee beans.", "کوردی_کوردی_کوردی");
      await insertSentence("She braises meat.", "کوردی_کوردی_کوردی");
      await insertSentence("We blanch vegetables.", "کوردی_کوردی_کوردی");
      await insertSentence("I poach eggs.", "کوردی_کوردی_کوردی");
      await insertSentence("He sautés mushrooms.", "کوردی_کوردی_کوردی");
      await insertSentence("They caramelize onions.", "کوردی_کوردی_کوردی");
      await insertSentence("She chills desserts.", "کوردی_کوردی_کوردی");
      await insertSentence("We blend smoothies.", "کوردی_کوردی_کوردی");
      await insertSentence("I marinate chicken.", "کوردی_کوردی_کوردی");
      await insertSentence("He flambés dishes.", "کوردی_کوردی_کوردی");
      await insertSentence("They pickle cucumbers.", "کوردی_کوردی_کوردی");
      await insertSentence("She preserves fruits.", "کوردی_کوردی_کوردی");
      await insertSentence("We brew tea.", "کوردی_کوردی_کوردی");
      await insertSentence("I squeeze oranges.", "کوردی_کوردی_کوردی");
      await insertSentence("He serves dinner.", "کوردی_کوردی_کوردی");
      await insertSentence("They set the table.", "کوردی_کوردی_کوردی");
      await insertSentence("She clears the dishes.", "کوردی_کوردی_کوردی");
      await insertSentence("We wash the dishes.", "کوردی_کوردی_کوردی");
      await insertSentence("I dry the plates.", "کوردی_کوردی_کوردی");
      await insertSentence("He mops the floor.", "کوردی_کوردی_کوردی");
      await insertSentence("They sweep daily.", "کوردی_کوردی_کوردی");
      await insertSentence("She dusts furniture.", "کوردی_کوردی_کوردی");
      await insertSentence("We vacuum the carpets.", "کوردی_کوردی_کوردی");
      await insertSentence("I scrub the sink.", "کوردی_کوردی_کوردی");
      await insertSentence("He polishes shoes.", "کوردی_کوردی_کوردی");
      await insertSentence("They organize bookshelves.", "کوردی_کوردی_کوردی");
      await insertSentence("She sorts laundry.", "کوردی_کوردی_کوردی");
      await insertSentence("We fold clothes.", "کوردی_کوردی_کوردی");
      await insertSentence("I iron shirts.", "کوردی_کوردی_کوردی");
      await insertSentence("He hangs coats.", "کوردی_کوردی_کوردی");
      await insertSentence("They tidy up rooms.", "کوردی_کوردی_کوردی");
      await insertSentence("She renovates her home.", "کوردی_کوردی_کوردی");
      await insertSentence("We decorate for holidays.", "کوردی_کوردی_کوردی");
      await insertSentence("I repair appliances.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The happy children played in the park.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She received a beautiful bouquet of flowers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The big dog chased after the ball.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lives in a small apartment in the city.", "کوردی_کوردی_کوردی");
      await insertSentence("The old man sat on the bench, feeding pigeons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She wore a red dress to the party.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The young couple walked hand in hand along the beach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They live in a nice neighborhood with friendly neighbors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tall trees provided shade on a hot day.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "It was a dark and stormy night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had a lovely singing voice.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cold wind sent shivers down their spines.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He wore a blue suit to the job interview.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hot coffee warmed her hands on a chilly morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright stars twinkled in the night sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She bought a new car last week.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The green grass tickled their bare feet.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sweet aroma of freshly baked cookies filled the kitchen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had a strong grip when he shook hands.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clean room sparkled after she finished tidying up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt safe and secure in her home.", "کوردی_کوردی_کوردی");
      await insertSentence("The soft pillow provided comfort as she slept.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hard work paid off in the end.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fast car sped down the highway.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The slow traffic made them late for the appointment.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The quiet library was a peaceful place to study.",
          "کوردی_کوردی_کوردی");
      await insertSentence("They enjoyed a peaceful evening by the fireplace.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The noisy neighbors kept them awake at night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had a patient demeanor when dealing with difficult situations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The busy streets were crowded with people.", "کوردی_کوردی_کوردی");
      await insertSentence("The empty room felt lonely without any furniture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The full moon illuminated the night sky.", "کوردی_کوردی_کوردی");
      await insertSentence("The hot sun beat down on them during the hike.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had a cool attitude even under pressure.", "کوردی_کوردی_کوردی");
      await insertSentence("The warm sunrays felt comforting on their skin.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright colors of the flowers brought joy to her heart.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The old book had been passed down through generations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The heavy rain poured down from the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The light breeze rustled through the leaves.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dark clouds signaled an impending storm.", "کوردی_کوردی_کوردی");
      await insertSentence("She had an expensive watch.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cheap knockoff broke after a few uses.", "کوردی_کوردی_کوردی");
      await insertSentence("She had a fancy dinner at a five-star restaurant.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The plain white walls needed some artwork.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rich aroma of coffee filled the room.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The poor beggar asked for spare change.", "کوردی_کوردی_کوردی");
      await insertSentence("The bright sun illuminated the clear blue sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cold winter air made her shiver.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hot summer sun beat down relentlessly.", "کوردی_کوردی_کوردی");
      await insertSentence("The dry desert landscape stretched out for miles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The wet rain soaked through their clothes.", "کوردی_کوردی_کوردی");
      await insertSentence("The pleasant aroma of flowers filled the garden.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The unpleasant smell of garbage lingered in the air.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The comfortable chair was perfect for relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The uncomfortable mattress made it difficult to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hard ground was uncomfortable to sit on.", "کوردی_کوردی_کوردی");
      await insertSentence("The soft blanket kept them warm on cold nights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tasty meal satisfied their hunger.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tasteless food lacked flavor.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright sun warmed their skin.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dim light made it difficult to see.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The light rain fell gently from the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The heavy rain poured down in torrents.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright smile lit up her face.", "کوردی_کوردی_کوردی");
      await insertSentence("The dull knife struggled to cut through the steak.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sharp blade sliced through the bread effortlessly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The warm sun melted the snow on the ground.", "کوردی_کوردی_کوردی");
      await insertSentence("The cool breeze provided relief from the heat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The foul smell made them gag.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fresh scent of flowers filled the room.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rotten fruit had to be thrown away.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clear water sparkled in the sunlight.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cloudy sky threatened rain.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The empty room echoed with their laughter.", "کوردی_کوردی_کوردی");
      await insertSentence("The crowded streets were bustling with activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The stale bread was no longer edible.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crisp air signaled the arrival of fall.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The muddy boots left tracks on the floor.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The soggy ground squished beneath their feet.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dry heat made it difficult to breathe.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The icy wind sent chills down their spines.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The frosty air bit at their exposed skin.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The foggy morning obscured their view.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clear sky was dotted with stars.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The overcast sky cast a gloomy shadow over the landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright sun warmed their faces.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gloomy weather matched their mood.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The damp ground squished beneath their feet.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mild breeze rustled through the leaves.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The severe storm caused widespread damage.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gentle rain pattered against the window.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The harsh sunlight made them squint.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The muggy air made it difficult to breathe.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dry desert stretched out for miles.", "کوردی_کوردی_کوردی");
      await insertSentence("The lush vegetation provided shelter for wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The sparse landscape was devoid of vegetation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rugged terrain made hiking difficult.", "کوردی_کوردی_کوردی");
      await insertSentence("The smooth surface of the lake reflected the sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rough waves crashed against the shore.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The calm waters of the lake were perfect for swimming.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The children played joyfully in the park.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She received a beautiful bouquet of flowers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The big dog eagerly chased after the ball.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lives in a small apartment in the city.", "کوردی_کوردی_کوردی");
      await insertSentence("The old man sat on the bench, feeding pigeons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She wore a vibrant dress to the party.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The young couple strolled hand in hand along the beach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They reside in a pleasant neighborhood with amiable neighbors.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The tall trees provided shade on a scorching day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It was a dark and stormy night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She possessed a melodious singing voice.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cold wind sent shivers down their spines.", "کوردی_کوردی_کوردی");
      await insertSentence("He dressed in a sharp suit for the job interview.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hot coffee warmed her hands on a chilly morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright stars adorned the night sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She purchased a new car last week.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The green grass tickled their bare feet.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sweet aroma of freshly baked cookies filled the kitchen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had a firm grip when he shook hands.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The clean room sparkled after she finished tidying up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt secure in her cozy home.", "کوردی_کوردی_کوردی");
      await insertSentence("The soft pillow provided comfort as she slept.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hard work paid off in the end.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fast car sped down the highway.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The slow traffic made them late for the appointment.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The quiet library was a peaceful place to study.",
          "کوردی_کوردی_کوردی");
      await insertSentence("They enjoyed a serene evening by the fireplace.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The noisy neighbors disturbed their sleep at night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She remained patient when dealing with difficult situations.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The bustling streets were crowded with people.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The empty room felt lonely without any furniture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The full moon illuminated the night sky.", "کوردی_کوردی_کوردی");
      await insertSentence("The hot sun beat down on them during the hike.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She maintained a calm attitude even under pressure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The warm sunrays caressed their skin.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant colors of the flowers brought joy to her heart.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The old book had been passed down through generations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The heavy rain poured down from the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The light breeze gently rustled through the leaves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dark clouds indicated an impending storm.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She owned an expensive watch.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cheap knockoff broke after a few uses.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She enjoyed a lavish dinner at a five-star restaurant.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The plain white walls needed some artwork.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rich aroma of coffee permeated the room.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The destitute beggar asked for spare change.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright sun illuminated the azure sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cold winter air made her shiver.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The hot summer sun beat down relentlessly.", "کوردی_کوردی_کوردی");
      await insertSentence("The dry desert landscape stretched out for miles.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The pouring rain soaked through their clothes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The pleasant scent of flowers enveloped the garden.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The unpleasant odor of garbage permeated the air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The comfortable chair provided solace for relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The uncomfortable mattress made it difficult to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The firm ground was uncomfortable to sit on.", "کوردی_کوردی_کوردی");
      await insertSentence("The plush blanket kept them warm on cold nights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The delectable meal satisfied their hunger.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bland food lacked flavor.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bright sun warmed their skin.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dim light obscured their vision.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gentle rain fell softly from the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The heavy rain poured down relentlessly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cheerful smile lit up her face.", "کوردی_کوردی_کوردی");
      await insertSentence("The dull knife struggled to cut through the steak.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sharp blade sliced through the bread effortlessly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The warm sun melted the snow on the ground.", "کوردی_کوردی_کوردی");
      await insertSentence("The cool breeze provided relief from the heat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The putrid smell made them gag.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fresh scent of flowers wafted through the room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rotten fruit had to be thrown away.", "کوردی_کوردی_کوردی");
      await insertSentence("The crystal-clear water sparkled in the sunlight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cloudy sky threatened rain.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The empty room resounded with their laughter.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling streets teemed with activity.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The stale bread was no longer edible.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crisp air heralded the arrival of fall.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The muddy boots left imprints on the floor.", "کوردی_کوردی_کوردی");
      await insertSentence("The sodden ground squelched beneath their feet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The arid heat made it hard to breathe.", "کوردی_کوردی_کوردی");
      await insertSentence("The biting wind sent chills down their spines.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The icy air nipped at their exposed skin.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The foggy morning obscured their view.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cloudless sky twinkled with stars.", "کوردی_کوردی_کوردی");
      await insertSentence("The overcast sky cast a shadow over the landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The warm sun beamed down on their faces.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bleak weather mirrored their mood.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The damp ground squelched beneath their feet.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gentle breeze rustled through the leaves.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The fierce storm wreaked havoc.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The soft rain pattered against the window.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The harsh sunlight made them squint.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The humid air made it hard to breathe.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dry desert stretched out endlessly.", "کوردی_کوردی_کوردی");
      await insertSentence("The lush vegetation provided shelter for wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The barren landscape lacked vegetation.", "کوردی_کوردی_کوردی");
      await insertSentence("The rugged terrain posed challenges for hiking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The glassy lake mirrored the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crashing waves pounded against the shore.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tranquil waters of the lake beckoned for a swim.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sunsets paint the sky in hues of orange and pink.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Books offer an escape to fantastical worlds.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The aroma of freshly baked bread fills the kitchen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Laughter echoes through the halls, filling hearts with joy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze whispers through the trees.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stars twinkle like diamonds in the night sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of waves crashing against the shore is soothing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Children play games, their laughter filling the air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Raindrops pitter-patter on the windowpane.", "کوردی_کوردی_کوردی");
      await insertSentence("A cozy fireplace warms the room on a cold night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Flowers bloom, adding color to the garden.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mountains stand tall, majestic against the horizon.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A cup of hot cocoa is the perfect comfort on a winter's day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of a baby's laughter is contagious.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Time seems to stand still when lost in a good book.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rustling of leaves in the wind is music to the ears.",
          "کوردی_کوردی_کوردی");
      await insertSentence("A hug from a loved one is like a warm embrace.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Memories are treasures to be cherished forever.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scent of fresh coffee awakens the senses.", "کوردی_کوردی_کوردی");
      await insertSentence("Kindness has the power to brighten someone's day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clouds drift lazily across the sky.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The first snowfall transforms the world into a winter wonderland.",
          "کوردی_کوردی_کوردی");
      await insertSentence("A smile can light up even the darkest of days.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music has the ability to uplift and inspire.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of sand between your toes is invigorating.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A walk in nature rejuvenates the soul.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of birds singing heralds the arrival of spring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stars shine brightly, guiding travelers through the night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle rain cleanses the earth, bringing new life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Friendship is a bond that withstands the test of time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scent of fresh-cut grass is the epitome of summer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A good night's sleep rejuvenates the body and mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The sound of a baby's first giggle is pure magic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artistic expression allows the soul to soar.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "A warm embrace can convey more than words ever could.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The smell of rain on dry earth is intoxicating.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Starry nights inspire dreams of adventure.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunshine warms the skin and lifts the spirit.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "A homemade meal cooked with love nourishes the soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kindness costs nothing but means everything.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of waves crashing against the shore is hypnotic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A good deed brings warmth to the heart.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Books are windows to other worlds.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rainbows paint the sky with vibrant colors.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze carries the scent of flowers.", "کوردی_کوردی_کوردی");
      await insertSentence("Sharing a meal with loved ones strengthens bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of children's laughter is pure joy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gratitude turns what we have into enough.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of a crackling fire is comforting.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "A kind word can change someone's entire day.", "کوردی_کوردی_کوردی");
      await insertSentence("Cherished memories are treasures of the heart.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Stars twinkle like fairy lights in the night sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Love is the most powerful force in the universe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A warm hug can heal a wounded soul.", "کوردی_کوردی_کوردی");
      await insertSentence("Sunshine brings warmth and light to the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The smell of fresh rain is invigorating.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whispers of the wind carry secrets of the universe.",
          "کوردی_کوردی_کوردی");
      await insertSentence("A smile is the universal language of kindness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of a waterfall is both calming and invigorating.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Rainbows are nature's way of painting the sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Time spent with loved ones is never wasted.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nature's beauty is a source of endless inspiration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Friendship is the greatest gift of all.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music has the power to heal and uplift.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of waves lapping against the shore is soothing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kindness is a language that the deaf can hear and the blind can see.",
          "کوردی_کوردی_کوردی");
      await insertSentence("A heartfelt apology has the power to mend fences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of birds chirping heralds the arrival of spring.",
          "کوردی_کوردی_کوردی");
      await insertSentence("A warm cup of tea soothes the soul on a cold day.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Laughter is the best medicine for a weary soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunshine on my shoulders makes me happy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of rain tapping on the window is comforting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clouds come floating into my life, no longer to carry rain or usher storm, but to add color to my sunset sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Autumn leaves crunch beneath my feet as I walk through the park.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The smell of freshly cut grass brings back memories of childhood.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stars shine brightest on the darkest nights.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "A soft blanket of snow covers the ground, turning the world into a winter wonderland.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of laughter fills the room, lifting spirits and bringing joy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunrise paints the sky in shades of pink and gold, signaling the start of a new day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Waterfalls cascade down mountainsides, their roar echoing through the valley.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The smell of fresh-baked cookies fills the kitchen, tempting even the strongest willpower.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze rustles through the leaves, carrying with it the promise of a new season.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sound of a crackling fire is the perfect accompaniment to a cozy night in.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thunder rumbles in the distance, a harbinger of the coming storm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fields of wildflowers stretch as far as the eye can see, a riot of color",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Good day, the name's James, nice to meet you.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hello, you can call me Abigail, it's great to meet you",
          "کوردی_کوردی_کوردی");
      await insertSentence("How are you feeling today? Are you doing alright?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Is everything okay? How have you been feeling lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I hope you're well. How's your health been recently?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you in good health? How's everything going for you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How have you been? Are you feeling healthy and happy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Is everything alright with you? How's life treating you?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are you holding up? Have you been feeling well?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Are you feeling okay? How's your energy and mood?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your well-being? Are you managing to stay healthy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling well? Have you been taking care of yourself?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Is everything going smoothly? How are you feeling generally?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's life been treating you? Are you feeling good overall?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling alright? How's your physical and mental state?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are you doing? Have you been feeling happy and healthy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Is everything okay with you? How have you been feeling?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling good? How's your emotional well-being lately?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your health? Are you experiencing any discomfort or pain?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your day been? Are you feeling positive and energetic?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling happy? How's your mental health these days?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are things going for you? Have you been feeling well?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your mood? Are you feeling upbeat and positive?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Is everything fine? How's your overall health and happiness?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's life treating you? Are you staying healthy and happy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling well? How's your physical condition these days?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's everything? Are you feeling good physically and emotionally?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your energy level? Are you feeling strong and healthy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling better? How's your recovery progressing?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are you? Have you been feeling well and content?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your day been? Are you feeling relaxed and comfortable?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you okay? How's your well-being and state of mind?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's everything going? Are you feeling well and happy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your health holding up? Are you feeling strong?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are you feeling physically? Have you been taking care of yourself?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your mood been? Are you feeling positive and optimistic?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling alright? How's your general state of health?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's everything with you? Are you feeling good overall?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are you today? Have you been feeling well and happy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your well-being? Are you feeling healthy and strong?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your emotional state? Have you been feeling stable and content?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling well? How's your physical health these days?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are things? Are you feeling positive and motivated?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your day going? Are you feeling well-rested and refreshed?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling alright? How's your energy and vitality?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your mood today? Are you feeling cheerful and optimistic?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's everything been? Are you feeling healthy and happy?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How are you doing? Have you been feeling well and balanced?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your well-being? Are you managing to stay positive?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you feeling okay? How's your physical and mental state?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your health? Are you experiencing any issues or concerns?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your day been? Are you feeling peaceful and content?",
          "کوردی_کوردی_کوردی");
      await insertSentence("What do you do for work? Can you tell me about it?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Where do you work? What's your job like?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tell me about your job. What do you do there?", "کوردی_کوردی_کوردی");
      await insertSentence("How's work been? Are you enjoying what you do?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What field do you work in? Is it challenging?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you like your job? What's the best part?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you studying? What's your major?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's school going? Are you learning a lot?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "What are you studying? Is it interesting?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tell me about your studies. What do you hope to achieve?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you working or studying? How do you balance them?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's your workload? Is it manageable?", "کوردی_کوردی_کوردی");
      await insertSentence("What's a typical day like for you at work/school?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you have any career goals? What are they?", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you working on any interesting projects right now?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How's the work environment? Is it friendly?", "کوردی_کوردی_کوردی");
      await insertSentence("What made you choose this field of work/study?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you had any interesting experiences at work/school?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What skills are you developing through your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are you involved in any extracurricular activities related to your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you have any tips for someone starting in your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence("How do you stay motivated in your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are there any challenges you face in your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever considered furthering your studies or changing careers?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you see your career progressing in the future?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What do you think are the most important qualities for success in your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are there any mentors or role models who have influenced your career/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you approach problem-solving in your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever had to overcome a significant challenge in your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you have any favorite subjects or aspects of your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What advice would you give to someone considering a career/study path similar to yours?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you think your work/studies contribute to society or your community?",
          "کوردی_کوردی_کوردی");
      await insertSentence("Have you ever considered working/studying abroad?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are there any trends or developments in your field that you find particularly exciting?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you stay updated with the latest developments in your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you have any favorite books or resources related to your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What role do you think technology plays in your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever collaborated with others on a project at work/school?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you manage your time effectively between work/studies and other commitments?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What do you think sets your work/studies apart from others in your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Are there any ethical considerations in your work/studies that you find important?",
          "کوردی_کوردی_کوردی");
      await insertSentence("How do you handle stress in your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Have you ever had to make a difficult decision related to your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "What motivates you to continue learning and growing in your field?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you think your work/studies impact your personal growth and development?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Do you have any plans for further education or professional development?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "How do you think your work/studies will evolve in the future?",
          "کوردی_کوردی_کوردی");
      await insertSentence("What do you enjoy most about your work/studies?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The aroma of sizzling garlic and herbs wafted from the kitchen, making my stomach rumble.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant green farmers market displayed plump strawberries, glistening eggplants, and ruby red tomatoes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following her grandmother's recipe, she meticulously folded delicate layers of flaky pastry and juicy apples.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Carefully balancing his chopsticks, he dipped the glistening dumplings into the savory soy sauce.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tangy sourdough bread, crusty and golden brown, paired perfectly with the creamy goat cheese.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aromatic spices like turmeric, cumin, and coriander danced in the bubbling pot of fragrant curry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The chef meticulously plated the dish, drizzling balsamic reduction over the pan-seared scallops.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bakery window displayed an array of decadent pastries – flaky croissants, glistening fruit tarts, and fluffy cinnamon buns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tangy vinaigrette brought out the sweetness of the roasted beets and the earthy flavor of the goat cheese.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant green tea ceremony involved whisking the frothy matcha into a delicate jade green beverage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hermit crabs scurried across the sandy beach, their shells overflowing with plump mussels and juicy clams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cast-iron skillet sizzled as she poured in the batter, creating fluffy golden brown pancakes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling street food market offered a kaleidoscope of flavors – savory grilled skewers, spicy noodle soups, and sweet mango sticky rice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sushi chef expertly sliced glistening tuna and salmon, arranging them on a bed of fluffy white rice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crisp autumn air carried the sweet scent of ripe apples and the smoky aroma of bonfires roasting marshmallows.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant coral reef teemed with life – colorful fish nibbled on seaweed, while graceful sea turtles grazed on seagrass.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rich, dark chocolate melted on my tongue, releasing a symphony of bittersweet flavors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The pungent durian fruit, known for its strong odor, was a local delicacy with a creamy, custard-like texture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vintage cookbook contained handwritten notes and recipes passed down through generations, each a culinary treasure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling food court offered a variety of international cuisines – steaming bowls of ramen, sizzling fajitas, and crispy samosas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The local fisherman proudly displayed his catch – a glistening silver salmon and a basket of plump, wriggling crabs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The tangy pickle juice offered a refreshing counterpoint to the richness of the melt-in-your-mouth pulled pork sandwich.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant farmers market displayed an abundance of fresh produce – plump pears, juicy peaches, and leafy green kale.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The aroma of freshly brewed coffee filled the air, a comforting scent that jumpstarted the morning routine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spicy noodles slurped with loud gusto.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sweet mango slices stained her fingers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salty popcorn kernels popped with a bang.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fluffy pancakes awaited their syrup bath.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cheesy pizza slice vanished in one bite.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crunchy carrots offered a healthy crunch.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Juicy steak sizzled on a hot grill top.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sourdough bread smelled fresh from bakery.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tangy yogurt parfait layered with fruit.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Warm cookies tempted with chocolate chips.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fizzy soda can popped open with a hiss.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salty chips satisfied a midday craving.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spicy salsa added a fiery flavor boost.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creamy ice cream melted in a warm hand.", "کوردی_کوردی_کوردی");
      await insertSentence("Sweet strawberries tasted like summer sunshine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hot coffee woke her up in the morning.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fluffy omelet filled with cheese delight.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crispy bacon added a salty crunch to toast.", "کوردی_کوردی_کوردی");
      await insertSentence("Cheddar cheese melted perfectly on toasted bread.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spicy chili warmed you up on a cold day.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Freshly squeezed orange juice tasted like sunshine.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Crisp lettuce leaves added a refreshing crunch.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Warm chocolate chip cookies filled the kitchen with aroma.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sweet and tart berries burst with summer flavor.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Steaming cup of tea offered a comforting warmth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spicy pad thai noodles satisfied a hungry appetite.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Savory grilled cheese sandwich oozed with melted cheese.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Fluffy scrambled eggs were cooked to perfection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Golden brown french fries dipped in ketchup.", "کوردی_کوردی_کوردی");
      await insertSentence("Tangy vinaigrette dressing drizzled on a salad.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Spicy chicken wings with a cool blue cheese dip.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hearty bowl of oatmeal kept you full all morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Freshly baked bread filled the air with a delicious aroma.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sizzling bacon woke you up with its irresistible smell.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sweet and creamy vanilla ice cream cone on a hot day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chewy brownie offered a delicious chocolate indulgence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ancient ruins whispered stories of a bygone era.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling market overflowed with exotic sights and smells.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunsets painted the sky in fiery hues as she cruised the ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Winding roads led to charming villages nestled in rolling hills.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The salty air and rhythmic waves soothed her soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Backpack hoisted, she embarked on a journey of self-discovery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The train rattled through snow-capped mountains, a breathtaking view.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Museum halls housed treasures that sparked her imagination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Local musicians filled the air with vibrant melodies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Each day brought new experiences and unforgettable memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her taste buds danced with flavors from a foreign cuisine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The language barrier became a bridge of laughter and connection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stargazing beneath a canopy of stars ignited her sense of wonder.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling city pulsed with energy, keeping her on her toes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sun-drenched beaches beckoned with relaxation and rejuvenation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The kindness of strangers warmed her heart on a lonely journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hiking trails led her to breathtaking vistas and hidden waterfalls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The thrill of adventure fueled her every step of the way.",
          "کوردی_کوردی_کوردی");
      await insertSentence("A chance encounter sparked a lifelong friendship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Passport stamped, she collected memories more valuable than souvenirs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The road less traveled offered the greatest rewards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The world became her classroom, teaching her invaluable lessons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traveling home brought a newfound appreciation for what she had.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The journey changed her, leaving an indelible mark on her soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ancient ruins stood as testaments to bygone civilizations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling marketplace offered a sensory overload of exotic sights and aromas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunset cruises provided fiery vistas and a calming rhythm of the ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meandering roads revealed charming villages nestled in picturesque landscapes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salty air and rhythmic waves provided a restorative beachfront experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Backpack secured, she embarked on a solo exploration to rediscover herself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scenic train journey traversed snow-capped mountains, offering breathtaking panoramas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Museum collections housed historical treasures, igniting her imagination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Local musicians filled the streets with vibrant melodies, enriching the cultural experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Every day presented unique opportunities and indelible memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her palate danced with unfamiliar flavors, exploring a new culinary landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The language barrier presented a challenge, fostering laughter and unexpected connections.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stargazing beneath a vast, starlit sky ignited a sense of awe and wonder.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling metropolis pulsed with dynamic energy, demanding constant engagement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sun-drenched beaches offered a haven for relaxation and rejuvenation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The kindness of strangers provided heartwarming encounters on her solitary adventure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hiking trails led to breathtaking vistas and secluded waterfalls, a reward for exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The thrill of discovery fueled her every step on this adventurous journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A serendipitous encounter sparked a lasting friendship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Each passport stamp documented precious memories, more valuable than souvenirs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The unconventional travel path offered the most rewarding experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The world transformed into a living classroom, imparting invaluable life lessons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Returning home brought a newfound appreciation for her familiar surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The travel odyssey transformed her, leaving a lasting impact on her soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ancient ruins were like giant history museums, so cool!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The market was crazy busy, smelled amazing, and had stuff I'd never seen before.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunset cruises were gorgeous - fiery skies and calming ocean waves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Got lost on some back roads, but found a cute village with stunning views.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salty air and beach waves were the perfect recipe for relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Took a solo trip with just a backpack - a chance to find myself again.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Train ride through the mountains was stunning - snow everywhere!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Museums had all this cool old stuff, made me think of the past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Street music everywhere! Made the whole trip feel so alive.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Every day was a surprise - new adventures and memories to keep forever.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tried a bunch of weird food - some good, some...interesting!"
              "Talking to locals was hard sometimes, but funny and we got by.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stared up at the stars - felt so tiny, but kind of amazing too.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Big city was intense, so much energy everywhere!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beach days were all about chilling and soaking up the sun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Met some really nice people along the way, even though I was alone.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hiking trails led to awesome views and hidden waterfalls - worth the effort!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Finding new stuff was the best part - kept me wanting to explore more.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Met someone cool by accident, now we're friends!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Every stamp in my passport is a memory, better than any souvenir.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Took the road less traveled - that's where the best adventures are!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The world was like a giant textbook, teaching me tons of stuff.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Being home again made me appreciate what I have even more.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This trip changed me for the better -  I won't forget it ever!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Luggage overflowing, excitement bubbling - the adventure begins!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Foreign language stumbles and laughter - making memories with every word.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bargaining at a bustling market - the thrill of scoring a perfect souvenir.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunrise over a breathtaking landscape - a new day bursting with possibilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Local cuisine bursting with flavor - a tastebud adventure in every bite.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rumbling train journey - the world unfolding outside the window.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Haggling over a taxi ride - testing your negotiation skills in a new land.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hidden alleyway tucked behind a bustling street - a secret world to explore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Waking up to the sound of crashing waves - the perfect way to start the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning to surf, falling (a lot), but finally catching a wave - pure joy!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Navigating a confusing subway system - a crash course in city life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Getting hopelessly lost, then finding your way back - a mini-adventure within itself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of accomplishment reaching a mountain peak - breathtaking views and a sense of pride.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sun-drenched beaches and crystal-clear water - a postcard-perfect paradise.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sleeping under a sky full of stars - feeling small yet connected to something bigger.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Strolling through ancient ruins, imagining the stories they hold.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Museum overload - a mind-boggling journey through history and culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning a few basic phrases in the local language - a gesture of respect appreciated by locals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Packing light becomes a skill - you learn to travel with only the essentials.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Travel fatigue sets in -  but the memories made are worth it.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Postcard perfect scenery - a moment captured in time to share with loved ones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unexpected kindness from a stranger - a reminder of the good in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharing stories with fellow travelers - a bond forged over new experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trying a local dish that looks questionable but tastes delicious - expanding your culinary horizons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning to appreciate different cultures and ways of life - travel broadens the mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Missing home comforts - a reminder of the things you take for granted.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The joy of reuniting with loved ones after your travels - stories to share and treasures to show.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planning your next adventure - the travel bug bites again!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Souvenirs gathering dust on a shelf - each one a tangible memory of a journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Travel photos that transport you back to a special place - a visual reminder of the good times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of accomplishment after a challenging trip - you pushed your limits and thrived.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The world feels smaller after traveling - connections made and friendships formed across borders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Newfound confidence gained from navigating unfamiliar territory - you can handle anything!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciating the beauty and diversity of the planet - a sense of wonder and gratitude.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Travel inspires creativity - new ideas and perspectives spark your imagination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of being truly present - soaking up every moment of the experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of being unstoppable - the world is your oyster and you're ready to explore it.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The journey is just as important as the destination - every experience counts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Travel is an investment in yourself - enriching your life in ways you never imagined.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Looking back on your travels with a smile - a treasure trove of memories to cherish.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned itinerary ensured a smooth and efficient journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ancient ruins stood as a testament to the ingenuity of a bygone era.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling marketplace offered a vibrant tapestry of sights, sounds, and aromas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The breathtaking panorama from the mountain peak inspired awe and wonder.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously curated museum exhibit provided a fascinating glimpse into a different culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The renowned chef prepared a delectable meal that tantalized the taste buds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously researched travel guide proved to be an invaluable resource.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The comfortable accommodations provided a welcome respite after a long day of exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously restored historical landmark offered a window into the past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned route ensured a safe and scenic journey through the countryside.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The renowned art gallery showcased a collection of masterpieces spanning centuries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously preserved artifacts offered a tangible connection to a bygone era.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned cultural immersion program fostered a deeper understanding of local traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously documented travel journal served as a lasting record of the journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned budget ensured a financially responsible travel experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The renowned artist's work showcased a masterful use of color and light.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously researched travel blog offered insightful recommendations for potential visitors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned itinerary catered to the diverse interests of the travel group.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously chosen souvenirs served as tangible reminders of the extraordinary journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The renowned hospitality of the local people made the travelers feel welcome and comfortable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned transportation ensured a seamless connection between destinations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The renowned historical site provided a unique educational experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously documented travel photographs captured the essence of the journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned excursion offered a glimpse into the natural wonders of the region.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The renowned cultural performance showcased the artistic traditions of the local population.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "That perfectly planned trip made everything run smooth and saved us tons of time!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wow, these ancient ruins are amazing! Makes you think about how smart people were way back when.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The market was crazy busy, but so cool! So many sights, sounds, and smells - a feast for the senses!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The view from the mountaintop was insane! Totally worth the hike - breathtaking!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This museum exhibit was so well put together. It was awesome learning about a different culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We had this incredible meal by a famous chef. Every bite was an explosion of flavor!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "That travel guide we got was a lifesaver. It had all the best tips and hidden gems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Our comfy hotel room was just what we needed after a long day of exploring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They did such a good job fixing up this old building. It's like stepping back in time!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We planned our route perfectly - beautiful scenery and no wrong turns!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This art gallery has some seriously amazing paintings. We saw stuff from hundreds of years ago!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These artifacts are so well-preserved, it's like they're from yesterday. A real connection to the past!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "That cultural program was awesome! We learned so much about how they live here.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "I kept a detailed travel journal - a great way to remember all the cool stuff we saw.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We budgeted carefully, so we could spend our money on experiences, not just hotels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This artist is a genius! The way they use color and light is incredible.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "That travel blog was super helpful. They gave us some great ideas for places to visit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We planned activities for everyone on the trip. There was something for all interests!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These souvenirs are perfect! They'll remind us of this amazing adventure forever.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The people here were so friendly and welcoming. They really made us feel at home.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Our transportation was all planned out, so getting around was a breeze.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This historical site was fascinating! We learned so much about the history of the area.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We took tons of photos - they capture the whole trip perfectly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "That trip to see nature was unforgettable! We saw some incredible sights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This cultural performance was a beautiful display of their traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crisp autumn air invigorated my senses with a refreshing chill.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The relentless downpour transformed the dusty streets into glistening rivers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The oppressive humidity hung heavy in the air, dampening all enthusiasm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze rustled through the leaves, whispering secrets in the twilight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant hues of a double rainbow painted a fleeting masterpiece across the sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun dipped below the horizon, casting long shadows and painting the clouds in fiery shades.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sudden downpour forced a flurry of activity as people scurried for shelter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The unrelenting heat shimmered on the asphalt, blurring the world in a hazy mirage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The comforting crackle of the fireplace offered a warm embrace against the biting cold.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A blanket of fluffy snow cloaked the landscape in pristine white serenity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The invigorating ocean breeze carried the scent of salt and seaweed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ominous rumble of thunder echoed across the valley, a prelude to the coming storm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant colors of a sunset painted the clouds in a breathtaking spectacle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gentle patter of raindrops lulled the weary traveler to a peaceful slumber.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sudden downpour transformed the parched landscape into a vibrant tapestry of green.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The oppressive heat shimmered off the pavement, creating a shimmering mirage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The comforting crackle of the fireplace offered a warm haven against the biting wind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze danced through the meadow, swaying the wildflowers in a graceful ballet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vibrant hues of a sunrise cast a golden glow on the dew-kissed grass.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The relentless downpour threatened to dampen even the most optimistic spirit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The oppressive humidity clung to the skin like a damp blanket.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The invigorating ocean breeze carried the rhythmic roar of crashing waves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ominous rumble of thunder warned of the impending storm's fury.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gentle patter of raindrops on the windowpane created a soothing lullaby.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crisp fall air nipped at my cheeks, waking me right up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The rain wouldn't quit, turning the streets into mini rivers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ugh, so humid you could practically swim in the air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze whispered secrets through the leaves at sunset.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Double rainbow! Nature's most colorful high five.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sun dipped low, painting the clouds fiery orange and purple.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Downpour came out of nowhere! Everyone scrambling for cover.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Heat wave cranked it up, making the asphalt shimmer like a mirage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crackling fireplace felt amazing on this chilly night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fresh snow turned the world into a white wonderland.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ocean breeze was like a cool breath of fresh air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thunder grumbled in the distance - storm's on its way!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunset was insane! So many pretty colors in the sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Raindrops tapped on the window, lulling me to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Rain finally stopped! Maybe we can go outside now?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Heat was brutal, making even walking feel like a workout.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fireplace kept us warm and toasty while the wind howled outside.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gentle breeze swayed the wildflowers like a graceful dance.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sunrise painted the grass with sparkly dew drops.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rain poured like crazy, but hey, at least it wasn't snow!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Humidity clung to me like a wet towel - yuck!", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ocean breeze whispered and the waves crashed - so relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dark clouds rolled in, looking like trouble was brewing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sunset was a fiery masterpiece - gotta love nature's art!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Raindrops were like a calming lullaby on the window pane.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling marketplace overflowed with vibrant textiles and exotic spices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Her meticulously curated shopping list ensured she wouldn't forget a single item.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The enticing aroma of freshly baked bread lured him towards the bakery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The crowded department store offered a dizzying array of clothing options.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Carefully comparing price tags, she searched for the best bargain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The vintage store displayed a treasure trove of unique and timeless pieces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The online shopping cart overflowed with impulsive purchases.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The cashier's friendly smile brightened her day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The self-checkout lane offered a convenient and time-saving option.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously wrapped gift conveyed her thoughtfulness and care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The worn leather wallet held countless memories and well-worn receipts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The limited-edition sneakers sparked a frenzy among eager collectors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling farmers market boasted an abundance of fresh, local produce.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The discount rack offered a chance to snag designer items at a fraction of the price.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The salesperson's enthusiastic recommendations swayed her decision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned shopping spree ensured she covered all her needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The convenience store offered a last-minute solution for forgotten essentials.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The loyalty program rewards encouraged her to return to the same store.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The thrill of the hunt motivated her to seek out unique and unusual finds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The carefully chosen outfit exuded confidence and elegance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously researched product reviews helped her make an informed decision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The overflowing shopping bags threatened to burst at the seams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The personalized shopping experience ensured she found exactly what she needed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously organized closet facilitated easy outfit selection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The impulse buy sparked a wave of buyer's remorse later.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously crafted shopping experience felt more like a fun outing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously researched travel essentials ensured a comfortable trip.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The convenience of online shopping allowed her to browse from the comfort of home.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned budget ensured she didn't overspend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The second-hand store offered a sustainable approach to acquiring new clothes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously chosen ingredients promised a delicious culinary creation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The carefully chosen gift sparked joy and appreciation on the recipient's face.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously organized pantry ensured a well-stocked kitchen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The impulse buy surprised even her, a spontaneous deviation from her usual plan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously researched electronics purchase proved to be a worthwhile investment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The convenience of contactless payment offered a speedy and secure transaction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously balanced shopping bags ensured a comfortable walk home.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The personalized shopping experience felt like a treat, not just a chore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously budgeted holiday shopping ensured no financial surprises.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulously planned grocery list guaranteed a well-stocked fridge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The convenience of same-day delivery saved her a trip to the store.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Those mannequin outfits in the window are fire! Gotta have that new jacket.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Haggling at the market was crazy, but I got a steal on this scarf!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "So many aisles in this store, I feel like I've walked for miles already.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Found this receipt from that amazing dress I bought last year - good times!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Read a bunch of reviews online before buying those shoes, glad I did!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The mall was packed! Everyone's out shopping today.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Always gotta have a few cute outfits on hand, you never know what might come up!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scored a sweet vintage jacket at that thrift store - one of a kind!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "In-store pickup is the best! No waiting for deliveries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Made a grocery list so I wouldn't forget anything - gotta stay organized!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Couldn't resist that cute mug, oops! But it's so pretty!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This travel guide says there's a killer market nearby - gotta check it out!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-checkout is a lifesaver when you're in a hurry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wrapped that gift extra pretty - presentation matters!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This purse has seen some things! So many adventures together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Those limited-edition sneakers sold out fast! Glad I snagged a pair.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Street market was popping with cool stuff! Found some amazing handmade jewelry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Voucher code saved the day! Got those jeans for way less.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The salesperson knew everything about those headphones - super helpful!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Maximized my shopping time - gotta be efficient!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Convenience store clutch for that late-night snack attack.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Those loyalty points are adding up - free stuff soon!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Found a hidden treasure at the thrift store! So happy with this find.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This outfit is getting all the compliments - feeling good!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Those shoes are comfy as heck, and they look good too!",
          "کوردی_کوردی_کوردی");
      await insertSentence("So many bags, guess I went a little overboard!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The staff here is awesome - always makes shopping fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pantry is so organized, it's easy to find what I need for dinner.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Okay, maybe that phone case wasn't necessary, but it's cute!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stuck to my shopping list this time - no impulse buys!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These skincare products are supposed to be amazing - can't wait to try them!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Online shopping is the best for comparing prices - gotta get the best deal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planned my grocery list to avoid food waste - gotta be responsible!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Second-hand furniture can be so cool and affordable - love this lamp!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These ingredients are gonna make a bomb dinner - healthy and delicious!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This outfit is perfect for work - gotta look professional!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Closet might be small, but it's organized chaos - I can find everything!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Okay, that candy bar was a total impulse buy, but hey, treat yourself!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "This phone plan is perfect for me - unlimited data, here I come!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Phone payment is so easy - no more digging for cash!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evened out the weight of the bags - gotta avoid a one-armed walk home!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Felt like royalty at that store - amazing customer service!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stuck to my Christmas budget - no financial headaches this year!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Second-hand record store is my jam! Found some hidden gems today.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planned my meals for the week with this grocery list - healthy eating here we go!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A brisk morning walk invigorated my body and mind for the day ahead.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The refreshing taste of water after a workout felt incredibly satisfying.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Strengthening exercises built my muscles and improved my overall endurance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A nutritious breakfast fueled my body for a productive morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about healthy eating habits empowered me to make positive changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Getting enough sleep each night boosted my energy levels and focus.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The supportive community at the gym motivated me to reach my fitness goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mindful meditation practices helped me manage stress and improve my well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Regular yoga sessions increased my flexibility and body awareness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trying a new fitness class challenged me and kept my workouts exciting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dancing to upbeat music lifted my spirits and provided a fun way to exercise.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prioritizing self-care practices like massages or baths helped me manage stress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of accomplishment after completing a tough workout was incredibly rewarding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Setting realistic fitness goals kept me motivated and on track.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Incorporating strength training into my routine helped me build a strong physique.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to my body and taking rest days when needed prevented injuries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Finding an exercise buddy provided accountability and made workouts more enjoyable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The delicious taste of a home-cooked meal fueled my body with healthy nutrients.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planning healthy meals in advance saved time and ensured I made nutritious choices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading about the benefits of exercise motivated me to become more active.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tracking my progress with a fitness tracker helped me stay motivated and see results.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Investing in a comfortable pair of running shoes made a big difference in my workouts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing gratitude for my body increased my appreciation for its capabilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different fitness routines allowed me to find activities I enjoyed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Focusing on mindful eating helped me develop a healthy relationship with food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Getting regular checkups with my doctor ensured I was in good health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prioritizing sleep hygiene improved the quality of my rest and boosted my energy levels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about the importance of stretching helped me prevent injuries and improve flexibility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Finding a workout routine that fit into my schedule made it easier to stay consistent.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrating my fitness achievements, big or small, helped me stay motivated.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Focusing on how exercise made me feel, not just how I looked, shifted my perspective.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prioritizing healthy habits like getting enough sleep and eating nutritious foods made a difference in my overall well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The supportive environment at the gym created a sense of community and belonging.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about proper form during exercise ensured I was working out safely and effectively.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The confidence boost I gained from reaching my fitness goals spilled over into other areas of my life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Investing in a good water bottle encouraged me to stay hydrated throughout the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different relaxation techniques helped me manage stress and improve sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experimenting with healthy recipes made eating nutritious food more enjoyable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Focusing on progress over perfection helped me maintain a positive mindset about my fitness journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The feeling of accomplishment after completing a challenging workout was incredibly motivating.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrating healthy choices with friends and family created a supportive network.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deep breaths during yoga, gotta chill and loosen up those muscles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Feeling awesome after that workout! Endorphins are pumping!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ugh, sore muscles are a sign of a good workout, right?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swapped fries for avocado on my burger - gotta get those healthy fats!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Heard gut health is important, so I'm adding more yogurt to my diet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Slept like a rock last night - feeling refreshed and ready to crush the day!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "New yoga mat is a game-changer - practicing doesn't hurt my knees anymore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Finally found a sports bra that supports everything! No more bouncing.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Feeling strong after lifting weights - girl power!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Made healthy banana bread for a snack - satisfies my sweet tooth without the guilt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning what to eat to fuel my workouts - gotta give my body the good stuff!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Refreshing smoothie after my workout - tastes good and hydrates me too.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Keeping things interesting with new workouts - gotta avoid getting bored!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prepped some healthy snacks for later - won't be reaching for chips when I'm hungry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These shoes are comfy and supportive - perfect for my runs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Feeling good about working out - it's fun, not a punishment!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Salad for lunch - healthy and delicious, who knew?",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mindfulness helps me chill - less stress, better focus.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sunshine makes me happy and helps me sleep better.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My online fitness group keeps me motivated - love the support!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Nailed that new exercise! Feeling so accomplished.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Protein keeps me full - gotta build and maintain that muscle!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Rest days are important - gotta avoid burning out.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "My fitness app is awesome - keeps me on track and motivated.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Homemade trail mix is my go-to snack - keeps me fueled and satisfied.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Strong is the new skinny - gotta love strength training!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Reaching my goals feels amazing - so empowered!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Heart rate monitor helps me stay in the right zone during workouts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Proper form is key - gotta target those muscles the right way.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Feeling confident after reaching my goals - self-esteem boost!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Workout gloves protect my hands and help me grip better.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Small goals keep me motivated - one step at a time!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Non-food rewards for milestones - gotta keep it exciting!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Focusing on how I feel, not the scale - a healthier mindset.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dance class feels like a party - love the supportive environment!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Staying hydrated is key - gotta keep that water bottle handy!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deep breathing helps me chill - stress doesn't stand a chance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meal prepping saves time - healthy food always ready to go!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Long-term benefits keep me motivated - gotta think big picture!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The gym feels like a second home - everyone's there to support each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrating healthy choices - gotta be kind to myself!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The bustling office buzzed with activity as employees tackled their morning tasks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous architect meticulously crafted blueprints for the new skyscraper.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The passionate teacher captivated her students with stories of ancient civilizations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated firefighter bravely battled the flames engulfing the building.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The skilled carpenter meticulously sanded and polished the handcrafted furniture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The seasoned doctor carefully examined the patient and diagnosed their illness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The talented artist poured their emotions onto the canvas, creating a masterpiece.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The resourceful entrepreneur identified a gap in the market and launched a successful business.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated nurse provided compassionate care for her patients throughout the night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous accountant meticulously balanced the company's financial records.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The charismatic salesperson closed the deal with a confident presentation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The determined journalist relentlessly pursued the truth, uncovering a hidden scandal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The talented chef orchestrated a symphony of flavors in the bustling kitchen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The compassionate social worker tirelessly advocated for the well-being of her clients.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The organized project manager meticulously tracked progress and ensured the project stayed on schedule.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The skilled mechanic diagnosed the car's problem and repaired it with precision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The creative graphic designer transformed a simple idea into a stunning visual display.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated mail carrier braved the rain and snow to ensure deliveries were made.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous programmer meticulously wrote lines of code, bringing the website to life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The patient customer service representative listened attentively and resolved the customer's complaint.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The resourceful construction worker solved problems on the fly, ensuring the building went up smoothly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The passionate musician practiced their instrument for hours, honing their craft.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated lawyer argued their case with logic and passion before the court.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous baker ensured each pastry was perfectly golden brown and delicious.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The talented hairstylist transformed her client's look with a stylish new haircut.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated firefighter risked their life to save others from the burning building.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The skilled carpenter meticulously handcrafted a beautiful rocking chair for his grandchild.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous accountant ensured every penny was accounted for in the company's budget.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The resourceful entrepreneur identified a need in the community and opened a new daycare center.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated nurse provided comfort and support to her patients during their time of need.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The charismatic salesperson closed the deal with a confident presentation and a friendly smile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The determined journalist relentlessly pursued the truth, exposing a corrupt politician.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous architect meticulously designed a sustainable and energy-efficient building.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The passionate teacher inspired her students to learn and explore the world around them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The talented artist used their creativity to create a piece of art that evoked strong emotions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The skilled mechanic diagnosed the car's problem quickly and efficiently.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The organized project manager kept the team on track and ensured the project was completed on time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The creative graphic designer  turned a client's vision into a visually stunning website.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The patient customer service representative listened attentively and found a solution to the customer's problem.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The resourceful construction worker solved a problem on the fly, keeping the construction project moving forward.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The dedicated mail carrier braved all weather conditions to ensure everyone received their mail on time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The passionate musician shared their love of music with others through their performances.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The meticulous baker ensured each pastry was perfectly baked and visually appealing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crazy busy call center today - phones ringing off the hook!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Data whiz over here! Just crunching numbers and finding cool patterns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lights flickering? No problem, this electrician's on it!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ugh, another clogged drain. Plumber to the rescue!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spun a wild yarn last night - this writer's on fire!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Yard looking sad? Let this landscaping guru work their magic!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Playing with playdough and tiny humans all day - love my daycare crew!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tax season crunch time! Gotta save everyone some moolah.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Party planning pro here! Your event will be epic, trust me.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nailed that audition! Actor life ain't easy, but it's fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Busy bee keeping my boss organized - gotta love being a PA!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Welding like a boss! This ain't your grandpa's metalwork.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Built a killer website this week - check it out!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Keeping the kiddos happy can be a handful, but I love it!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coding like a champ - this app is gonna be awesome!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whipping up some fancy coffee drinks - gotta keep the caffeine flowing!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sharing my music with the world - follow my gigs!",
          "کوردی_کوردی_کوردی");
      await insertSentence("Hair makeover time! Feeling like a new person!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Numbers don't lie! Gotta keep those finances in check.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spotted a gap in the market - launching my online biz soon!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking care of patients after surgery - gotta help them feel better!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sold another product! This sales game is fun.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Making learning fun for my students - gotta spark their curiosity!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Painting my feelings onto the canvas - messy but fun!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fixed your car in a jiffy - back on the road in no time!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Keeping the project on track - gotta meet that deadline!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Delivering sunshine (and mail) rain or shine!", "کوردی_کوردی_کوردی");
      await insertSentence(
          "These pastries are pure perfection - gotta try them all!",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members support each other through thick and thin.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parents teach their children important life skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Grandparents often share stories of the past.", "کوردی_کوردی_کوردی");
      await insertSentence("Siblings sometimes argue but also make up quickly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "In-laws become part of the extended family.", "کوردی_کوردی_کوردی");
      await insertSentence("Cousins can be like siblings or close friends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adopted children are loved just as much as biological children.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Stepfamilies blend different backgrounds into one.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family reunions bring everyone together.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aunts and uncles can be like second parents.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Caring for elderly family members shows respect and love.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family vacations create lasting memories.", "کوردی_کوردی_کوردی");
      await insertSentence("Family dinners are a time for bonding and sharing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting a family member in need is a sign of love.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrating holidays together strengthens family bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parents' love is unconditional.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Siblings share secrets and dreams.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Children learn about relationships by observing their parents.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Family pets are cherished members of the family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family photos capture special moments.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Divorce can strain family relationships but can also lead to healing.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Family businesses pass down traditions and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parents' sacrifices for their children are immeasurable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Being there for each other during tough times strengthens family bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members share laughter and tears.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Respecting elders is a cultural value in many families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Children's achievements are celebrated by the whole family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting each other's dreams and goals is important.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Family traditions create a sense of belonging.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Losing a family member is heartbreaking.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members provide a sense of security.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "In times of crisis, families come together.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members show love through actions, not just words.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family gatherings create opportunities for bonding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parents' love shapes children's self-esteem.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Siblings' relationships evolve over time.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Being a role model for younger family members is important.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Elders pass down wisdom to younger generations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members forgive each other's mistakes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Caring for elderly family members is a responsibility and a privilege.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Children learn about love and relationships from their family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members support each other's passions and interests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Growing up with siblings teaches sharing and compromise.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Family members have inside jokes and memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Family members show affection in different ways.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parents' guidance helps children make good decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence("In blended families, love knows no boundaries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members create a sense of home wherever they are.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The bond between siblings is unique and special.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members provide a sense of identity and belonging.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Relatives play different roles in a person's life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parental guidance shapes children's values and beliefs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Siblings often share a close bond.", "کوردی_کوردی_کوردی");
      await insertSentence("Spouses support each other through thick and thin.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Children bring joy and fulfillment to a family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Grandparents provide wisdom and love.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stepfamilies navigate unique challenges.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aunts and uncles offer support and guidance.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family dynamics can be complex.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adoption creates loving and diverse families.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family traditions create lasting memories and connections.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Love and respect are the foundations of strong families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting each other's dreams strengthens family bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members show love through actions and words.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family gatherings create opportunities for bonding and sharing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Respecting each other's differences is crucial in families.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marriage is a partnership based on love and mutual respect.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Couples need to communicate openly and honestly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Children learn about relationships by observing their parents and siblings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family pets are beloved companions and members of the family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family vacations create cherished memories and strengthen bonds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family businesses pass down traditions, values, and livelihoods.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sibling rivalry is a natural part of growing up.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family members provide emotional support during tough times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Maintaining strong family ties is important for mental and emotional well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Technology has transformed the way we live and work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smartphones have become essential tools for communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social media platforms connect people around the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence is changing how we interact with technology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtual reality allows us to experience new worlds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blockchain technology is revolutionizing the way we handle transactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-driving cars are a promising advancement in transportation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "3D printing is changing the way we manufacture goods.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robots are being used in various industries for automation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drones are used for aerial photography, surveillance, and delivery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Wireless charging technology is becoming more widespread.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Smart home devices make our lives more convenient.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cloud computing allows us to store and access data from anywhere.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet of Things (IoT) devices are becoming more common in homes.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Online shopping has become a popular way to shop.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Streaming services have changed the way we consume entertainment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Video conferencing technology has made remote work and meetings easier.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Digital assistants like Siri and Alexa help us with everyday tasks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Augmented reality enhances our perception of the real world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biometric technology is used for security and identification purposes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Electric vehicles are an environmentally friendly alternative to traditional cars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Healthcare technology has improved patient care and diagnosis.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education technology is changing the way students learn.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Satellite technology is used for communication and navigation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Renewable energy technology is becoming more efficient and affordable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Big data analytics help businesses make informed decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cryptocurrency is a digital form of currency that uses cryptography for security.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smartwatches and fitness trackers help us monitor our health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-checkout kiosks are becoming more common in retail stores.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biometric technology is used for security and identification purposes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Facial recognition technology is used for security and authentication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gesture control technology allows us to interact with devices using gestures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Machine learning algorithms are used in various applications, from recommendation systems to autonomous vehicles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing has the potential to solve complex problems much faster than traditional computers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "5G technology is the next generation of wireless communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chatbots are used for customer service and support.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart clothing with embedded sensors can track fitness metrics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart cities use technology to improve infrastructure and services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Renewable energy technology is becoming more efficient and affordable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Digital wallets allow us to make secure payments using our smartphones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drone technology is used in agriculture for crop monitoring and spraying.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Voice recognition technology enables hands-free operation of devices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart glasses provide augmented reality experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart farming uses technology to improve agricultural practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Digital twins are virtual replicas of physical objects or processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Remote sensing technology is used for environmental monitoring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blockchain technology is used for secure and transparent transactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School provides a structured environment for learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teachers play a crucial role in educating students.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Students learn new subjects and skills in school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading is a fundamental skill for learning.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Writing helps us communicate our thoughts and ideas.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Mathematics teaches us problem-solving skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Science helps us understand the world around us.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "History teaches us about the past.", "کوردی_کوردی_کوردی");
      await insertSentence("Physical education promotes a healthy lifestyle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art and music classes encourage creativity.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying is important for academic success.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking notes helps us remember important information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Group projects teach us collaboration skills.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tests and exams evaluate our understanding of the material.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School libraries provide access to a wide range of books and resources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Online learning platforms offer flexibility in learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School field trips provide hands-on learning experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School clubs and extracurricular activities offer opportunities for personal growth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Peer tutoring helps students learn from each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning a second language expands our communication abilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Computer classes teach us valuable digital skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Critical thinking skills are essential for analyzing information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Time management skills are important for balancing schoolwork and other activities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning to work independently is a valuable skill.",
          "کوردی_کوردی_کوردی");
      await insertSentence("School assemblies promote school spirit and unity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School counselors provide support and guidance to students.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different cultures promotes understanding and tolerance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "STEM education prepares students for careers in science, technology, engineering, and mathematics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about personal finance is important for financial literacy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical science explores the nature of matter and energy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Earth science focuses on the study of Earth's systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Life science examines living organisms and their interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social studies includes the study of history, geography, economics, and civics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about government helps us understand how society is organized.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical education classes promote physical fitness and health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music education includes learning to play musical instruments and read music.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art education teaches us about different forms of artistic expression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different religions promotes religious literacy and understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about environmental issues promotes environmental awareness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about literature exposes us to different cultures and perspectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about technology prepares us for the digital age.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about health and nutrition promotes healthy living.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about psychology helps us understand human behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about sociology helps us understand society and social interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about economics helps us understand how resources are allocated.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about political science helps us understand political systems and theories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about philosophy helps us develop critical thinking skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School is where we go to learn stuff.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teachers are the ones who teach us things.", "کوردی_کوردی_کوردی");
      await insertSentence("Studying is what we do when we want to pass tests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking notes helps us remember stuff better.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Group projects are when we work together with classmates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tests and exams are like big quizzes to see if we've been paying attention.",
          "کوردی_کوردی_کوردی");
      await insertSentence("School libraries have lots of books we can borrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Online learning is cool because we can study in our pajamas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Field trips are like mini-adventures away from school.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School clubs are where we hang out with friends and do fun stuff.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Peer tutoring is when a friend helps us understand something.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning a second language is like learning to talk in a secret code.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Computer classes are where we learn to use computers for more than just games.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Critical thinking is when we think really hard about something.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Time management is when we try to do everything we need to do on time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Working independently is when we do stuff on our own without help.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School assemblies are when the whole school gets together for a big meeting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School counselors are like the school's advice givers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different cultures is like going on a virtual vacation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "STEM education is like learning to be a science superhero.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about personal finance is like learning to be a money wizard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical science is like learning about magic that's real.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Earth science is like being a detective investigating the planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Life science is like exploring a jungle of living things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social studies is like learning about how people live in different places.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about government is like learning how to be a citizen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical education is like playing games but also exercising.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music education is like learning to speak a different language with instruments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art education is like learning to create masterpieces with paint and clay.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different religions is like learning about different superpowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about environmental issues is like becoming a planet protector.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about literature is like going on adventures in books.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about technology is like learning to be a tech wizard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about health and nutrition is like learning to be a healthy superhero.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about psychology is like learning to understand people's minds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about sociology is like learning about how people interact in groups.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about economics is like learning to be a money magician.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about political science is like learning to be a political superhero.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about philosophy is like learning to think about thinking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about history is like learning about the past through time travel.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about geography is like learning to be a map explorer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about civics is like learning to be a citizen superhero.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about anthropology is like learning to be a human detective.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about archaeology is like learning to dig up the past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about linguistics is like learning to speak all the languages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about education is like learning to be a teacher superhero.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School, where we learn and grow, is a place of endless possibilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teachers, the guiding stars of our educational journey, light the way to knowledge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying, a challenging yet rewarding endeavor, is the key to academic success.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking notes, like creating a roadmap for learning, helps us stay on track.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Group projects, collaborative adventures in learning, foster teamwork and creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tests and exams, the ultimate challenges of our academic prowess, push us to excel.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School libraries, havens of knowledge and imagination, offer a world of books to explore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Online learning, a digital revolution in education, brings the classroom to our fingertips.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Field trips, exciting excursions into the world beyond school, broaden our horizons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School clubs, hubs of friendship and shared interests, create bonds that last a lifetime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Peer tutoring, a supportive partnership in learning, enhances understanding and confidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning a second language, an enriching linguistic adventure, opens doors to new cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Computer classes, gateways to the digital realm, equip us with essential tech skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Critical thinking, a skill like no other, sharpens our minds and broadens our perspectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Time management, the art of balancing priorities, helps us make the most of each day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Working independently, a mark of academic maturity, fosters self-reliance and initiative.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School assemblies, lively gatherings of the school community, celebrate our achievements and unity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School counselors, compassionate guides on the path of personal growth, offer support and guidance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different cultures, a journey of cultural discovery, fosters empathy and understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "STEM education, a cornerstone of modern learning, prepares us for the challenges of tomorrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about personal finance, a step towards financial literacy, empowers us to make informed decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical science, a realm of discovery and experimentation, reveals the wonders of the physical world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Earth science, a field of study that explores our planet, deepens our appreciation for Earth's complexities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Life science, a window into the world of living organisms, teaches us about the wonders of life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social studies, a tapestry of human experiences, helps us understand the world around us.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about government, a lesson in civic responsibility, empowers us to be active citizens.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Physical education, a cornerstone of health and wellness, instills lifelong habits of physical activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music education, a symphony of learning and creativity, enriches our lives with melody and rhythm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art education, a canvas for self-expression, nurtures creativity and imagination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different religions, a pathway to religious literacy, promotes understanding and respect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about environmental issues, a call to environmental stewardship, inspires us to protect our planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about literature, a voyage through the written word, enriches our minds and souls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about technology, a journey into the digital frontier, prepares us for the future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about health and nutrition, a path to wellness, empowers us to make healthy choices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about psychology, a glimpse into the human mind, deepens our understanding of behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about sociology, a study of society and human interaction, broadens our perspectives on community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about economics, a lens into the world of money and markets, teaches us about financial systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about political science, a study of governance and power, prepares us for civic engagement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about philosophy, a quest for wisdom and truth, challenges us to think critically.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about history, a journey through time, connects us to the past and informs our future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about geography, a study of the Earth's landscapes and environments, expands our global perspective.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about civics, a lesson in citizenship and democracy, empowers us to be active participants in society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about anthropology, a study of humanity, teaches us about the diversity of human cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about archaeology, a dig into the past, uncovers the mysteries of ancient civilizations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about linguistics, a study of language and communication, enhances our understanding of language.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about education, a reflection on teaching and learning, inspires us to be lifelong learners.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Morning routines set the tone for the day ahead.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Breakfast fuels us up for the morning grind.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Commuting to work or school can be a drag, but podcasts or music make it more bearable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Checking emails and messages is the first task on the work agenda.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meetings can be productive, but they can also feel like a waste of time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lunch breaks are a welcome pause in the day.", "کوردی_کوردی_کوردی");
      await insertSentence("Afternoon slumps call for a coffee or tea break.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Completing tasks on the to-do list feels like a small victory.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Running errands can be tedious but checking them off the list feels satisfying.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evenings are for winding down, maybe with some TV or a good book.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dinner prep can be a chore, but cooking can also be relaxing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Eating dinner together as a family is a cherished tradition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "After-dinner clean-up is a group effort.", "کوردی_کوردی_کوردی");
      await insertSentence("Evening routines prepare us for a restful night.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Getting ready for bed includes brushing teeth and washing up.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Reading a bedtime story is a comforting ritual.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Checking social media before bed is a guilty pleasure.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Reflecting on the day's events helps us unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planning tomorrow's activities is a good way to end the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Going to bed early feels like a luxury.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Late-night snacks are a guilty pleasure.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching a movie or binge-watching a TV show is a relaxing way to end the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to music or a podcast helps us relax before bed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stretching or doing yoga before bed helps us unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Setting out clothes for the next day saves time in the morning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking a shower or bath before bed is a relaxing way to end the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Writing in a journal before bed helps us clear our minds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meditating before bed helps us relax and fall asleep faster.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing gratitude before bed helps us appreciate the good things in life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to calming music or sounds helps us relax before bed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Having a bedtime routine helps us signal to our body that it's time to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading a few pages of a book before bed helps us unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching a funny video or TV show before bed helps us relax and unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drinking a warm cup of herbal tea before bed helps us relax.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doing a few gentle stretches before bed helps us relax our muscles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Writing down our thoughts and worries before bed helps us clear our mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reflecting on the day's successes and challenges before bed helps us prepare for tomorrow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to a guided meditation or relaxation exercise before bed helps us relax.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing deep breathing exercises before bed helps us relax and unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking a warm bath or shower before bed helps us relax and prepare for sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to nature sounds or white noise before bed helps us relax and fall asleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visualizing a peaceful scene or happy memory before bed helps us relax and unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Doing a few minutes of gentle yoga or stretching before bed helps us relax our body.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading a few pages of a calming book before bed helps us relax and unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drinking a glass of warm milk or chamomile tea before bed helps us relax and fall asleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to calming music or an audiobook before bed helps us relax and unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Morning routines establish a productive start to the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A nutritious breakfast provides essential fuel for the day's activities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Commutes offer valuable time for reflection or preparation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Checking and responding to emails ensures timely communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meetings facilitate collaboration and decision-making.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lunch breaks offer a chance to recharge and refocus.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coffee or tea breaks provide a brief respite for rejuvenation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Completing tasks from the agenda signifies progress and accomplishment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Running errands efficiently manages daily responsibilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evenings are dedicated to relaxation and personal pursuits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Preparing and enjoying dinner is a culinary experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Family dinners promote bonding and communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evening chores contribute to a clean and organized living space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evening rituals prepare the mind and body for restorative sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bedtime routines promote consistent and restful sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading before bed aids in relaxation and mental unwinding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Checking social media can offer valuable insights and networking opportunities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reflecting on the day's events fosters personal growth and learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planning for the next day ensures preparedness and efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Retiring early supports overall well-being and health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Late-night snacks should be balanced and nutritious.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching TV or movies can be a form of entertainment and relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to music or podcasts can be a form of relaxation and mental stimulation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stretching or yoga can help alleviate tension and promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Setting out clothes for the next day streamlines the morning routine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Showering or bathing before bed can promote relaxation and hygiene.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Journaling before bed can help organize thoughts and emotions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meditating before bed can promote relaxation and mindfulness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing gratitude before bed can foster a positive mindset.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to calming sounds or music before bed can promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Establishing a bedtime routine can signal the body for sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading a book before bed can promote relaxation and mental stimulation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching a funny video or show before bed can lighten the mood and promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drinking herbal tea before bed can promote relaxation and aid in digestion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in deep breathing exercises before bed can promote relaxation and stress relief.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking a warm bath or shower before bed can promote relaxation and improve sleep quality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to a guided meditation or relaxation exercise before bed can promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing mindfulness before bed can help quiet the mind and promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in a few minutes of gentle yoga or stretching before bed can promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading a calming book before bed can promote relaxation and improve sleep quality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drinking a glass of warm milk or chamomile tea before bed can promote relaxation and improve sleep quality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to calming music or an audiobook before bed can promote relaxation and improve sleep quality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Morning routines are the foundation of a successful day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A balanced breakfast kickstarts your metabolism and energy levels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Commuting offers valuable time for reflection or catching up on reading.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Checking emails promptly ensures you're up to date with work matters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meetings are essential for discussing ideas, making decisions, and planning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lunch breaks provide a chance to recharge and socialize with colleagues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coffee or tea breaks offer a brief pause to rejuvenate and refocus.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Completing tasks from your agenda brings a sense of accomplishment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Running errands efficiently helps you manage your time effectively.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evenings are dedicated to unwinding and pursuing personal interests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Preparing and enjoying dinner can be a relaxing and rewarding experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family dinners are a time for bonding and sharing stories from the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evening chores contribute to maintaining a clean and organized living space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Evening rituals, such as reading or meditation, can promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Establishing a bedtime routine helps signal your body that it's time to sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading before bed can help you unwind and escape into a different world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Checking social media can help you stay connected and informed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reflecting on the day's events allows for personal growth and learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Planning for the next day ensures you're prepared and organized.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Retiring early supports overall health and well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Late-night snacks should be light and nutritious to aid in digestion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching TV or movies can be a form of entertainment and relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to music or podcasts can be a way to unwind and stimulate your mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stretching or yoga before bed can help relax your muscles and mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Setting out clothes for the next day saves time and reduces decision-making stress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Showering or bathing before bed can promote relaxation and improve sleep quality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Journaling before bed can help clear your mind and reflect on the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meditating before bed can help calm your thoughts and prepare you for sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing gratitude before bed can foster a positive mindset.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to calming sounds or music before bed can help you relax.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Establishing a bedtime routine can help signal your body that it's time to wind down.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading a book before bed can be a calming and enjoyable way to end the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching a funny video or show before bed can help lighten your mood.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drinking herbal tea before bed can promote relaxation and aid in digestion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in deep breathing exercises before bed can help calm your mind and body.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking a warm bath or shower before bed can help relax your muscles and prepare you for sleep.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to a guided meditation or relaxation exercise before bed can help you relax.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Practicing mindfulness before bed can help you let go of stress and worries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in a few minutes of gentle yoga or stretching before bed can help relax your body.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading a calming book before bed can help you relax and unwind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Drinking a glass of warm milk or chamomile tea before bed can promote relaxation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to calming music or an audiobook before bed can help you relax.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different cultures enriches our understanding of the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditions are passed down from generation to generation, shaping our identities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Customs vary widely across cultures, reflecting unique beliefs and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring different cultures opens our minds to new perspectives and ideas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Languages are an integral part of culture, reflecting unique ways of thinking and communicating.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Food is a central aspect of many cultures, reflecting history, geography, and traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clothing styles vary greatly among cultures, often reflecting climate, lifestyle, and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art and music are universal languages that transcend cultural boundaries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Religious practices vary widely among cultures, shaping daily life and rituals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social norms and etiquette vary among cultures, influencing behavior and interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrations and festivals are important cultural events, often involving music, food, and rituals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Architecture reflects cultural values, history, and environmental influences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family structures and relationships vary among cultures, influencing social dynamics and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education systems reflect cultural priorities and values, shaping future generations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Workplace customs and practices vary among cultures, influencing business etiquette and communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Healthcare practices vary among cultures, reflecting different approaches to wellness and healing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Political systems reflect cultural values and priorities, shaping governance and policies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sports and recreation reflect cultural values, traditions, and interests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Transportation systems vary among cultures, reflecting geographical, economic, and cultural factors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Media and entertainment reflect cultural values, interests, and storytelling traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Environmental practices vary among cultures, reflecting different approaches to sustainability and conservation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Technology adoption and use vary among cultures, reflecting access, infrastructure, and cultural attitudes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gender roles and expectations vary among cultures, influencing social norms and behaviors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artifacts and objects reflect cultural history, values, and aesthetics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Language dialects and accents vary among cultures, reflecting regional identities and histories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Migration patterns and movements influence cultural diversity and exchange.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colonial legacies shape cultural identities and societal structures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Globalization impacts cultural exchange, blending traditions and creating new cultural norms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "War and conflict impact cultural preservation and adaptation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Migration and diaspora communities maintain cultural traditions and practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Urbanization influences cultural practices and community dynamics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Natural disasters and climate change impact cultural resilience and adaptation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional healing practices reflect cultural beliefs about health and wellness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Storytelling traditions pass down cultural knowledge, history, and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Craftsmanship and artisanal traditions reflect cultural aesthetics and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Material culture, such as clothing and tools, reflects cultural practices and aesthetics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Religious art and architecture reflect cultural beliefs and values.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music and dance traditions reflect cultural history, identity, and expression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Folklore and mythology reflect cultural beliefs, values, and storytelling traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional cuisine reflects cultural history, agriculture, and culinary practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Textile traditions reflect cultural aesthetics, craftsmanship, and storytelling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional medicine reflects cultural beliefs about health, healing, and wellness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rituals and ceremonies reflect cultural values, beliefs, and social structures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Language and communication styles reflect cultural norms, values, and social structures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gender roles and expectations influence cultural norms, behaviors, and social structures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education systems reflect cultural priorities, values, and approaches to learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social hierarchies and structures vary among cultures, influencing power dynamics and social interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art and literature reflect cultural values, aesthetics, and storytelling traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Architecture and urban planning reflect cultural values, history, and environmental influences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cultural heritage preservation efforts protect and promote cultural traditions, practices, and artifacts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cultural exchange programs promote understanding and appreciation of different cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cultural sensitivity and awareness are important for respectful and effective cross-cultural communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different cultures helps us see the world in new ways.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditions are like the stories that families and communities tell themselves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Customs are the little things that make each culture unique and interesting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring different cultures is like going on a never-ending adventure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Languages are like secret codes that unlock new worlds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Food is a delicious way to experience different cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clothing styles show off a culture's creativity and history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art and music are like the universal languages of joy and expression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Religious practices are the ways people connect to something bigger than themselves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social norms and etiquette are like the unwritten rules of each culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Celebrations and festivals are the times when cultures really let loose and have fun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Architecture is like a culture's way of saying, 'This is who we are.'",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family structures and relationships show us what's important to each culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education systems tell us how each culture values learning and knowledge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Workplace customs are like the special handshakes of different cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Healthcare practices show us how cultures take care of each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Political systems are like the rules of the game for each culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sports and recreation show us how cultures like to have fun and stay active.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Transportation systems are like the veins of a culture, keeping things moving.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Media and entertainment reflect what cultures find interesting and entertaining.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Environmental practices show us how cultures care for the world around them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Technology adoption shows us how cultures embrace innovation and change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gender roles and expectations show us how cultures see men and women.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artifacts and objects tell the stories of a culture's past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Language dialects and accents add flavor and personality to each culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Migration patterns show us how cultures spread and interact with each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colonial legacies remind us of the past and how it shapes the present.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Globalization mixes cultures together like a big melting pot.",
          "کوردی_کوردی_کوردی");
      await insertSentence("War and conflict can change a culture forever.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Migration and diaspora communities keep their culture alive in new places.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Urbanization changes how cultures live and interact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Natural disasters and climate change test a culture's resilience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional healing practices show us how cultures care for the sick.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Storytelling traditions pass down wisdom and knowledge through the generations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Craftsmanship and artisanal traditions show us a culture's skill and creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Material culture, like clothing and tools, tells us how cultures live their daily lives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Religious art and architecture show us a culture's devotion and beliefs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music and dance traditions are like the heartbeat of a culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Folklore and mythology show us a culture's imagination and creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional cuisine is a tasty window into a culture's history and geography.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Textile traditions show us a culture's love for color and design.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional medicine teaches us how cultures heal the body and mind.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rituals and ceremonies are the special moments that bring a culture together.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Language and communication styles show us how cultures express themselves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gender roles and expectations tell us how cultures see men and women.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education systems show us how cultures pass on knowledge and skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social hierarchies and structures show us how cultures organize themselves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art and literature are the creative expressions of a culture's soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Architecture and urban planning show us how cultures build their world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cultural heritage preservation efforts protect what makes each culture special.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cultural exchange programs bring cultures together to learn from each other.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cultural sensitivity and awareness help us connect and respect each other's differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Staying updated on current events helps us understand the world around us.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading the news is like getting a daily dose of information and knowledge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to the news keeps us informed about what's happening in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching the news helps us stay connected to global events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following news websites and apps gives us instant access to breaking news.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subscribing to newsletters keeps us updated on specific topics of interest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to podcasts is a convenient way to stay informed while on the go.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching documentaries provides in-depth analysis of current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading opinion pieces helps us understand different perspectives on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discussing current events with friends and family stimulates thoughtful conversations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following news outlets on social media provides real-time updates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending live events and seminars offers firsthand insights from experts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Joining online forums and discussion groups allows us to engage with diverse viewpoints.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching interviews with newsmakers provides insight into their perspectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading books on current events offers in-depth analysis and historical context.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in online polls and surveys can gauge public opinion on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to news radio stations keeps us informed during our daily commute.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching news channels on TV provides visual context to news stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading newspapers offers a comprehensive overview of daily events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following journalists and reporters on social media provides behind-the-scenes insights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending public lectures and talks by experts offers nuanced perspectives on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subscribing to magazines provides in-depth coverage of specific topics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching documentaries and docuseries provides a deeper understanding of current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to news analysis programs helps us understand the implications of current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading investigative journalism exposes us to hidden truths and scandals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following citizen journalists on social media provides grassroots perspectives on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in debates and discussions helps us refine our own opinions on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending town hall meetings allows us to voice our concerns on local and national issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following political commentators on social media provides insights into political trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading editorials helps us understand the stance of news outlets on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in online webinars and virtual events offers expert insights on current topics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching documentaries on streaming platforms offers a visual exploration of current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to news podcasts provides a convenient way to stay informed while multitasking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading opinion columns offers diverse perspectives on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following international news outlets provides a global perspective on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending panel discussions and debates exposes us to different viewpoints on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following government press briefings provides official updates on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading books by journalists and experts provides deep insights into current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to news updates on smart speakers provides hands-free access to current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching news segments on social media provides bite-sized updates on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading analysis articles helps us understand the context and background of current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in online forums allows us to discuss and debate current events with others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following news agencies on social media provides real-time updates on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending public lectures by journalists and experts offers firsthand insights into current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching news documentaries provides a visual and in-depth look at current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to news radio programs provides a comprehensive overview of current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading newspapers from different countries provides a global perspective on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following news blogs and websites provides diverse viewpoints on current issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching live news coverage provides up-to-the-minute updates on breaking news.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading news articles helps us stay informed about current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following news updates on social media platforms keeps us informed about current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to news podcasts provides a convenient way to stay updated on current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching news broadcasts on television provides visual coverage of current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading news websites and apps keeps us informed about current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring different forms of entertainment broadens our cultural horizons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Movies offer a window into different worlds and perspectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Music is like a universal language that transcends barriers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Literature is a journey into the imagination and wisdom of others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching movies is a fun way to relax and escape reality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to music can uplift our spirits and evoke powerful emotions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading books is a timeless pleasure that enriches our minds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Documentaries provide informative and thought-provoking insights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Live performances, such as concerts and plays, offer unforgettable experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art exhibitions showcase creativity and expression in visual form.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending cultural festivals immerses us in the traditions and customs of others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring different genres of movies expands our cinematic palate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discovering new music genres introduces us to diverse musical styles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading different genres of literature exposes us to various writing styles and themes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching classic movies gives us a glimpse into different eras and cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to classical music can be a soothing and enriching experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring contemporary literature introduces us to current trends and voices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching foreign films exposes us to different languages and cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to world music broadens our appreciation for global cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading poetry can be a profound and moving experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending film festivals allows us to discover independent and international cinema.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring the works of different authors exposes us to diverse perspectives and storytelling techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching documentaries on social issues can inspire us to make a difference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to live music performances creates memorable and intimate experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading biographies and memoirs offers insights into the lives of extraordinary individuals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending theater productions brings stories to life in a unique and engaging way.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring art galleries exposes us to different artistic movements and styles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Watching animated movies can be a delightful escape into imagination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to jazz music is like embarking on a spontaneous musical journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading graphic novels combines visual artistry with storytelling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending book readings and author events allows us to interact with our favorite writers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring film noir and other classic genres offers a glimpse into cinematic history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to folk music connects us to the cultural heritage of different regions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading science fiction and fantasy opens up worlds of imagination and possibility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending stand-up comedy shows provides a night of laughter and entertainment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring silent films offers a unique perspective on early cinema.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to blues music is like feeling the soulful rhythms of history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading historical fiction can transport us to different periods in time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending poetry slams and spoken word events showcases the power of language and expression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring horror movies can be a thrilling and chilling experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to reggae music is like feeling the heartbeat of a culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading young adult literature offers compelling stories and themes for all ages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending film screenings and discussions allows us to engage with cinematic artistry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring animated shorts and experimental films expands our view of storytelling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to classical music concerts can be a transcendent and transformative experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading mystery and detective novels keeps us on the edge of our seats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending outdoor concerts and music festivals adds a lively and festive touch to our entertainment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Getting to know popular sports helps us connect with others who share our interests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Football, also known as soccer, is the most popular sport in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "American football is known for its hard-hitting action and strategic gameplay.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Baseball is considered America's pastime, with a rich history and passionate fan base.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Basketball is known for its fast-paced action and high-flying dunks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tennis is a sport that requires skill, finesse, and endurance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Golf is a game of precision and strategy, played on lush greens.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cricket is a sport with a rich tradition, popular in many countries around the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rugby is a tough and physical sport, known for its intense matches.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ice hockey is a fast and exciting sport played on ice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Boxing is a sport of skill, strength, and strategy, with a rich history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "MMA, or mixed martial arts, combines elements of various combat sports.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Running, whether on the track or in marathons, is a popular form of exercise and competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cycling, including road cycling and mountain biking, is a popular sport and recreational activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swimming is a great form of exercise and a popular competitive sport.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Skateboarding is a popular action sport that combines skill and creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Surfing is a sport that involves riding waves on a surfboard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snowboarding is a popular winter sport that involves descending a snow-covered slope on a snowboard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Skiing is a popular winter sport that involves gliding over snow-covered terrain on skis.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gymnastics is a sport that combines strength, flexibility, and agility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Figure skating is a graceful and artistic sport performed on ice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volleyball is a team sport played on a court with a net.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beach volleyball is a variation of volleyball played on sand.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Table tennis, also known as ping pong, is a fast-paced indoor sport.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Badminton is a sport played with a shuttlecock and a racket.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Squash is a racket sport played in a four-walled court.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Archery is a sport that involves shooting arrows at a target.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fencing is a sport that involves dueling with swords.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rowing is a sport that involves propelling a boat with oars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sailing is a sport that involves navigating a boat using wind power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Motorsports, including Formula 1 and NASCAR, are popular racing events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "eSports, or electronic sports, are competitive video gaming events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Olympic Games are a major international sporting event held every four years.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The FIFA World Cup is the premier international football tournament.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Super Bowl is the championship game of the National Football League (NFL).",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The NBA Finals are the championship series of the National Basketball Association (NBA).",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Wimbledon Championships are one of the oldest and most prestigious tennis tournaments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Masters Tournament is one of the most prestigious golf tournaments in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ICC Cricket World Cup is the premier international cricket tournament.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Rugby World Cup is the premier international rugby union tournament.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Stanley Cup is the championship trophy awarded to the winner of the NHL playoffs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The World Series is the championship series of Major League Baseball (MLB).",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Tour de France is one of the most prestigious cycling races in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Olympic Games feature a variety of sports and attract athletes from around the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Keeping up with technology trends helps us stay informed about the latest innovations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence (AI) is revolutionizing industries with its ability to analyze data and automate tasks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blockchain technology is changing the way we think about secure transactions and digital currencies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "5G technology is paving the way for faster and more reliable wireless communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet of Things (IoT) devices are connecting our homes and workplaces like never before.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Augmented reality (AR) and virtual reality (VR) are transforming how we experience digital content.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Machine learning algorithms are enabling computers to learn from data and make decisions without human intervention.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cloud computing is revolutionizing how businesses store, manage, and process data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cryptocurrency, such as Bitcoin and Ethereum, is reshaping the future of finance and transactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Big data analytics is helping businesses make informed decisions and improve operations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cybersecurity is becoming increasingly important as we rely more on digital technologies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biometric authentication, such as fingerprint and facial recognition, is enhancing security and convenience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing is on the horizon, promising to solve complex problems beyond the capabilities of traditional computers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robotic process automation (RPA) is streamlining business processes and increasing efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "3D printing technology is revolutionizing manufacturing and prototyping processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-driving cars are poised to transform transportation and reduce accidents.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart home technology is making our homes more convenient, efficient, and secure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Voice assistants, such as Amazon Alexa and Google Assistant, are changing how we interact with technology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Health technology, such as wearables and telemedicine, is revolutionizing healthcare delivery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "5G technology is enabling faster and more reliable internet connectivity, paving the way for new applications and services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing has the potential to revolutionize fields such as cryptography, materials science, and optimization.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Edge computing is bringing computation and data storage closer to the source of data generation, enabling faster processing and lower latency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet of Things (IoT) devices are becoming increasingly prevalent in homes, offices, and industries, enabling greater connectivity and automation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence (AI) is being used in various industries, from healthcare to finance, to automate processes and improve decision-making.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blockchain technology is being explored for its potential to enhance security and transparency in supply chains, financial transactions, and voting systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cybersecurity threats are becoming more sophisticated, highlighting the need for robust security measures and protocols.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biometric authentication methods, such as fingerprint and facial recognition, are being adopted for their convenience and security benefits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robotic process automation (RPA) is being implemented to automate repetitive tasks and streamline business processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "3D printing technology is being used to create prototypes, custom products, and even human tissue and organs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-driving cars are being developed by companies like Tesla and Google to revolutionize transportation and reduce accidents.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart home technology is allowing homeowners to control their appliances, lighting, and security systems remotely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Voice assistants, such as Amazon Alexa and Google Assistant, are becoming increasingly integrated into everyday devices and services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Health technology, such as wearables and telemedicine, is transforming how healthcare is delivered and managed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "5G technology promises to revolutionize industries such as healthcare, transportation, and entertainment with its faster speeds and lower latency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing has the potential to solve complex problems in fields such as cryptography, materials science, and climate modeling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Edge computing is enabling real-time data processing and analysis, making it ideal for applications that require low latency and high bandwidth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Internet of Things (IoT) devices are being used to monitor and control various systems, from smart homes to industrial processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence (AI) is being used in healthcare to improve diagnostics, personalize treatment plans, and streamline administrative tasks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blockchain technology is being explored for its potential to create more secure and transparent supply chains, financial transactions, and digital identities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cybersecurity threats are evolving, leading to increased investment in cybersecurity measures and technologies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biometric authentication methods, such as facial recognition and fingerprint scanning, are being used to enhance security in mobile devices and access control systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robotic process automation (RPA) is being adopted by businesses to automate routine tasks and improve efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "3D printing technology is being used in various industries, including aerospace, automotive, and healthcare, to create complex and customized products.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-driving cars are being developed to reduce accidents, increase mobility for the elderly and disabled, and improve traffic flow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smart home technology is allowing homeowners to control their heating, lighting, and security systems remotely, leading to increased energy efficiency and convenience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Voice assistants, such as Amazon Alexa and Google Assistant, are becoming more integrated into our daily lives, helping us with tasks and providing information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Health technology, such as wearable devices and telemedicine services, is revolutionizing healthcare delivery and patient care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different travel destinations expands our horizons and inspires new adventures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring historical landmarks allows us to step back in time and appreciate our heritage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting natural wonders, such as waterfalls and mountains, connects us with the beauty of our planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experiencing cultural festivals immerses us in the traditions and customs of different communities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tasting local cuisine is a delicious way to experience the flavors of a region.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adventuring in national parks offers opportunities for hiking, camping, and wildlife viewing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Relaxing on pristine beaches allows us to unwind and soak up the sun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring bustling cities exposes us to new sights, sounds, and experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Embarking on road trips lets us discover hidden gems and scenic routes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting museums and art galleries enriches our understanding of history and culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in adventure sports, such as skiing and surfing, adds excitement to our travels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Staying in eco-friendly accommodations helps us reduce our environmental impact while traveling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring ancient ruins offers insights into past civilizations and architectural marvels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending cultural performances, such as dance and music shows, provides entertainment and cultural immersion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking guided tours enhances our understanding of local history, culture, and wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traveling to off-the-beaten-path destinations allows us to escape the crowds and discover hidden treasures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experiencing local customs and traditions gives us a deeper appreciation for different cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting botanical gardens and nature reserves showcases the beauty and diversity of plant life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring underwater worlds through snorkeling or diving reveals the wonders of marine life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Staying in unique accommodations, such as treehouses or yurts, adds a memorable twist to our travels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting famous landmarks, such as the Eiffel Tower or the Great Wall of China, is a must for many travelers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sampling street food allows us to taste authentic local flavors and culinary traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking scenic train journeys offers a relaxing and picturesque way to see the countryside.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting religious sites provides insight into the spiritual and cultural heritage of a destination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring architectural wonders, such as castles and palaces, showcases human creativity and ingenuity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending local markets and bazaars gives us a glimpse into daily life and local commerce.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking cooking classes introduces us to local ingredients and culinary techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experiencing wildlife safaris allows us to observe animals in their natural habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting botanical gardens and arboretums showcases the beauty and diversity of plant life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring ancient civilizations through archaeological sites offers a glimpse into the past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending music festivals and concerts immerses us in the local music scene and cultural celebrations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in volunteer projects, such as conservation or community development, allows us to give back to the places we visit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Staying in homestays or with local families provides a more authentic cultural experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting film locations of famous movies and TV shows adds a touch of Hollywood magic to our travels.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring natural wonders, such as geysers and hot springs, offers unique and rejuvenating experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending local celebrations and festivals immerses us in the culture and traditions of a destination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting local markets and bazaars allows us to shop for unique souvenirs and gifts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring UNESCO World Heritage Sites offers insights into the cultural and natural heritage of humanity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking scenic drives through countryside and coastal routes provides breathtaking views and photo opportunities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting art galleries and museums exposes us to local and international artists and their works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experiencing local cuisine through food tours and cooking classes gives us a taste of the destination's culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking guided tours with local experts enhances our understanding and appreciation of a destination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Staying in eco-friendly accommodations supports sustainable tourism practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visiting wildlife reserves and sanctuaries allows us to observe and learn about local flora and fauna.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Familiarizing ourselves with fashion trends helps us stay stylish and express our individuality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding fashion terminology allows us to communicate effectively about clothing and style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following fashion influencers on social media provides inspiration for our own style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Reading fashion magazines and blogs keeps us informed about the latest trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attending fashion shows allows us to see new collections and upcoming trends firsthand.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring vintage and thrift stores offers unique and eclectic fashion finds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experimenting with different styles helps us discover what suits us best.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Investing in quality pieces is a sustainable approach to fashion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mixing and matching clothing items creates new and exciting outfits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accessorizing with jewelry, bags, and shoes adds personality to our outfits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about different fabrics and materials helps us make informed fashion choices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding color theory allows us to create visually appealing outfits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tailoring clothes to fit our body shape ensures a flattering and comfortable fit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about fashion history gives us a deeper appreciation for current trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting ethical and sustainable fashion brands promotes responsible consumerism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experimenting with makeup and hairstyles complements our fashion choices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following street style trends showcases the diversity and creativity of fashion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding fashion seasons helps us transition our wardrobe throughout the year.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring different cultures' traditional clothing inspires new fashion ideas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taking fashion risks allows us to step out of our comfort zone and discover new styles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding fashion etiquette helps us dress appropriately for different occasions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creating a capsule wardrobe simplifies our fashion choices and reduces clutter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mixing high-end and affordable pieces creates a stylish and budget-friendly wardrobe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about fashion icons and their signature styles can inspire our own fashion journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding body proportions helps us dress to flatter our silhouette.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experimenting with patterns and prints adds interest and personality to our outfits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Investing in timeless pieces ensures our wardrobe remains stylish for years to come.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about fashion designers and their inspirations gives us insight into the creative process.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following sustainable fashion practices, such as upcycling and clothing rental, reduces our environmental impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding fashion subcultures, such as punk or bohemian, allows us to appreciate different style movements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring avant-garde fashion pushes the boundaries of conventional style and expression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about fashion forecasting helps us anticipate future trends and stay ahead of the curve.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the psychology of fashion helps us understand the impact of clothing on self-expression and identity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Experimenting with gender-neutral and unisex fashion challenges traditional gender norms in clothing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Following fashion influencers and celebrities gives us insight into current trends and styles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring fashion photography and editorial spreads offers visual inspiration for our own style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about sustainable fashion practices, such as zero-waste design and eco-friendly fabrics, helps us make environmentally conscious fashion choices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the cultural significance of clothing and fashion traditions around the world enriches our understanding of global fashion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about nature, wildlife, and environmental issues deepens our appreciation for the natural world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring national parks and nature reserves allows us to connect with nature and observe wildlife in their natural habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the importance of biodiversity helps us appreciate the variety of life forms on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about ecosystems and how they function teaches us about the delicate balance of nature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying environmental science helps us understand the impact of human activities on the environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring conservation efforts and sustainable practices inspires us to protect and preserve our planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in clean-up events and recycling programs contributes to a cleaner and healthier environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about renewable energy sources, such as solar and wind power, promotes sustainable living.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding climate change and its effects on the planet motivates us to take action to reduce our carbon footprint.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring environmental activism and advocacy inspires us to make a positive impact on the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying wildlife conservation and habitat restoration helps us protect endangered species and their habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about natural disasters, such as hurricanes and earthquakes, prepares us for potential emergencies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the importance of water conservation encourages us to use water wisely and protect water sources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring sustainable agriculture and food production methods promotes healthy eating and reduces environmental impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying environmental policies and regulations helps us advocate for responsible environmental practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about indigenous knowledge and traditional ecological practices teaches us about sustainable living.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the role of urban planning and green spaces in creating sustainable cities promotes livability and environmental health.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring marine conservation and ocean protection efforts raises awareness about the importance of preserving marine ecosystems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying environmental ethics and philosophy encourages us to reflect on our relationship with nature and the planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about environmental history helps us understand how human actions have shaped the environment over time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the interconnectedness of ecosystems and species helps us appreciate the complexity of the natural world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring environmental art and literature inspires us to creatively engage with environmental issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying environmental education and communication strategies helps us effectively communicate about environmental issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about environmental justice and equity promotes fair and inclusive approaches to environmental protection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the impact of pollution on the environment and human health motivates us to reduce pollution and waste.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring ecotourism and sustainable travel options promotes responsible travel practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying environmental economics and sustainable business practices encourages us to support environmentally friendly products and services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about environmental psychology and human behavior helps us understand how to motivate sustainable actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the concept of ecological footprint encourages us to reduce our impact on the environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exploring the concept of biophilia teaches us about the innate human connection to nature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Studying environmental education and outreach programs helps us engage with communities and inspire environmental stewardship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about wildlife rehabilitation and conservation efforts supports the protection and rehabilitation of injured or orphaned wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the role of forests in carbon sequestration and climate regulation promotes forest conservation and reforestation efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about the most popular types of animals helps us appreciate the diversity of life on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dogs are known for their loyalty, companionship, and diverse breeds suited to various lifestyles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cats are beloved for their independence, playfulness, and calming presence as pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Birds are admired for their beauty, songs, and fascinating behaviors, with parrots and canaries being popular pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fish are appreciated for their colorful appearances, tranquil movements, and ease of care in aquariums.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rabbits are cherished for their gentle nature, soft fur, and social personalities as pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Horses are revered for their strength, beauty, and companionship, with various breeds for riding and work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hamsters are loved for their small size, cute appearance, and entertaining behaviors as pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gerbils are popular for their friendly nature, low maintenance, and curious personalities as pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Guinea pigs are adored for their sociable demeanor, vocalizations, and suitability as pets for children.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chickens are valued for their eggs, meat, and in some cases, companionship and pest control in backyard settings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ducks are appreciated for their eggs, meat, and charming presence in ponds and farms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Geckos are fascinating for their unique appearance, ability to climb walls, and relatively low maintenance as pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Turtles are admired for their longevity, peaceful demeanor, and captivating behaviors as pets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Snakes are intriguing for their diverse appearances, hunting methods, and unique adaptations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lizards are popular for their diversity, including bearded dragons, iguanas, and skinks, each with unique traits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frogs are appreciated for their role in ecosystems, unique life cycle, and some species' ability to change colors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spiders are fascinating for their silk-spinning abilities, diverse appearances, and important role in controlling pests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bees are valued for their role in pollination, honey production, and fascinating social structures in hives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Butterflies are admired for their colorful wings, delicate beauty, and metamorphosis from caterpillars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ants are intriguing for their complex societies, teamwork, and fascinating behaviors within colonies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Owls are revered for their nocturnal habits, silent flight, and distinctive hoots and calls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Eagles are admired for their majestic appearance, impressive hunting skills, and symbolic significance in many cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Lions are iconic for their status as the king of the jungle, strength, and social structures in prides.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tigers are revered for their striped fur, power, and status as one of the largest big cats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bears are respected for their strength, intelligence, and diverse species found in various habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elephants are cherished for their intelligence, social bonds, and iconic appearance, including their tusks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Giraffes are admired for their long necks, gentle nature, and unique appearance among mammals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Zebras are known for their striped coats, social behavior, and unique patterns that help them blend into their environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kangaroos are iconic for their hopping locomotion, marsupial pouches, and presence in Australian wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins are beloved for their tuxedo-like appearance, waddling walk, and fascinating adaptations to cold climates.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins are admired for their playful behavior, intelligence, and acrobatic abilities in the water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales are revered for their size, intelligence, and captivating behaviors, such as breaching and singing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals are appreciated for their aquatic adaptations, playful nature, and presence in coastal regions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea turtles are cherished for their graceful swimming, unique shell patterns, and importance in marine ecosystems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks are fascinating for their role as top predators, diverse species, and adaptations for hunting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Octopuses are intriguing for their intelligence, camouflage abilities, and unique anatomy, including eight arms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jellyfish are mesmerizing for their translucent bodies, graceful movements, and diverse species found in oceans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Starfish are admired for their radial symmetry, regenerative abilities, and presence in marine habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea otters are loved for their playful behavior, use of tools, and role in maintaining kelp forests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seahorses are fascinating for their unique appearance, mating behaviors, and male pregnancy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crocodiles are respected for their powerful jaws, ancient lineage, and adaptations for aquatic hunting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alligators are admired for their survival skills, including their ability to thrive in diverse habitats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Komodo dragons are revered for their size, strength, and status as the largest living lizards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about wild and oceanic animals enriches our understanding of marine ecosystems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dolphins are known for their playful behavior and remarkable intelligence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea turtles are fascinating creatures that travel vast distances across oceans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Whales captivate us with their immense size and majestic presence in the open seas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sharks are apex predators that play a crucial role in maintaining the balance of marine ecosystems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seals are graceful swimmers and agile hunters in the cold waters of the Arctic and Antarctic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea otters are adorable creatures that use tools to crack open shellfish for food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Penguins are expert swimmers and social birds that inhabit the icy landscapes of Antarctica.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jellyfish come in a variety of shapes and sizes and play important roles in ocean food webs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mount Everest is the tallest mountain in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Amazon River is the largest river by discharge volume.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Sahara Desert is the largest hot desert in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Barrier Reef is the largest coral reef system.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The Nile River is the longest river in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Antarctica is the coldest and driest continent on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Pacific Ocean is the largest and deepest ocean on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Arctic Ocean is the smallest and shallowest ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Grand Canyon is one of the Seven Natural Wonders of the World.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Andes Mountains are the longest continental mountain range.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Amazon Rainforest is the largest tropical rainforest.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The Gobi Desert is the largest desert in Asia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Lakes are the largest group of freshwater lakes in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Himalayas are the highest mountain range in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Serengeti is a vast ecosystem in East Africa known for its wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greenland is the largest island in the world.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Dead Sea is the lowest point on Earth's surface.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Galápagos Islands are known for their unique wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Alps are a mountain range in Europe famous for skiing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Statue of Liberty is a symbol of freedom in the United States.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sydney Opera House is an iconic landmark in Australia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Eiffel Tower is a famous landmark in Paris, France.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Wall of China is a UNESCO World Heritage Site.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Stonehenge is a prehistoric monument in England.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Mount Kilimanjaro is the highest peak in Africa.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Taj Mahal is a mausoleum in India built by Emperor Shah Jahan.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Machu Picchu is an ancient Incan city in Peru.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Pyramids of Giza are ancient Egyptian monuments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Colosseum is an ancient amphitheater in Rome, Italy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Acropolis is an ancient citadel in Athens, Greece.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Kremlin is a historic fortress complex in Moscow, Russia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Sahara Desert spans across North Africa.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Atacama Desert is the driest non-polar desert in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Arabian Peninsula is located in Southwest Asia.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The Great Rift Valley runs through East Africa.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Danube River is the second-longest river in Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mississippi River is one of the longest rivers in North America.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The Thames River flows through London, England.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Panama Canal connects the Atlantic and Pacific Oceans.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The Sahara Desert covers much of North Africa.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Himalayas span across several countries, including Nepal and India.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Rocky Mountains stretch from Canada to the United States.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Alps run through several European countries, including Switzerland and Austria.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Amazon Rainforest is located primarily in Brazil.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Nile River flows through Egypt and several other African countries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Barrier Reef is located off the coast of Australia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Grand Canyon is located in the state of Arizona, USA.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Ganges River is considered sacred by Hindus and flows through India.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Andes Mountains span several South American countries, including Peru and Chile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Sahara Desert is located in North Africa and covers several countries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Serengeti is located in Tanzania and extends into Kenya.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greenland is an autonomous territory within the Kingdom of Denmark.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Dead Sea is bordered by Jordan, Israel, and the West Bank.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Galápagos Islands are part of Ecuador.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Alps extend through several European countries, including Switzerland, France, and Italy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Himalayas are located in Asia and span several countries, including Nepal, India, and Bhutan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Wall of China stretches across northern China.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stonehenge is located in Wiltshire, England.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Taj Mahal is located in Agra, India.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Machu Picchu is located in the Andes Mountains of Peru.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Pyramids of Giza are located near Cairo, Egypt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Colosseum is located in Rome, Italy.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Acropolis is located in Athens, Greece.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Kremlin is located in Moscow, Russia.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Atacama Desert is located in South America, primarily in Chile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Rift Valley runs through East Africa, including countries like Kenya and Tanzania.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Danube River flows through several European countries, including Germany, Austria, and Hungary.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mississippi River is the second-longest river in the United States and flows through several states.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Thames River runs through southern England, including London.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Panama Canal is located in Panama and connects the Atlantic and Pacific Oceans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Arabian Peninsula is located in Southwest Asia and includes countries like Saudi Arabia and Yemen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Sahara Desert is the largest hot desert in the world and covers much of North Africa.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Amazon Rainforest is the largest tropical rainforest in the world and is primarily located in Brazil.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Andes Mountains are the longest continental mountain range in the world and run through several South American countries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Barrier Reef is the world's largest coral reef system and is located off the coast of Australia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Ganges River is a sacred river in Hinduism and flows through India and Bangladesh.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mississippi River is one of the longest rivers in North America and flows through several U.S. states.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Danube River is the second-longest river in Europe and flows through multiple countries, including Germany, Austria, and Hungary.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Amazon River is the largest river by discharge volume and flows through several South American countries, including Brazil and Peru.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Himalayas are the highest mountain range in the world and span five countries: India, Nepal, Bhutan, China, and Pakistan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Atacama Desert is the driest non-polar desert in the world and is located in South America, primarily in Chile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Rift Valley is a geological feature that runs through East Africa, including countries like Kenya and Tanzania.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Serengeti is a vast ecosystem in East Africa that spans northern Tanzania and extends into southwestern Kenya.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Greenland is the world's largest island and is an autonomous territory within the Kingdom of Denmark.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Dead Sea is a salt lake bordered by Jordan to the east and Israel and Palestine to the west.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Galápagos Islands are an archipelago of volcanic islands in the Pacific Ocean, located off the coast of Ecuador.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Alps are a mountain range that stretch across several European countries, including Switzerland, France, Italy, Austria, and Germany.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Great Wall of China is a series of fortifications built along the historical northern borders of China to protect against invasions from nomadic groups.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Roman Legion was one of the most formidable fighting forces in ancient history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander the Great's army conquered vast territories across the ancient world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Marathon in 490 BC marked a pivotal moment in ancient Greek history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Spartans were renowned for their military prowess and discipline.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The phalanx formation was a key tactic used by ancient Greek armies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Thermopylae is famous for the stand of the 300 Spartans against the Persian army.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genghis Khan's Mongol army was one of the most feared and successful in history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Crusades were a series of religious wars fought between Christian and Muslim forces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Hastings in 1066 led to the Norman conquest of England.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Hundred Years' War was a series of conflicts between England and France.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Knights Templar were a medieval military order charged with protecting pilgrims in the Holy Land.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Agincourt in 1415 was a significant English victory during the Hundred Years' War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Swiss pikemen were known for their skill and effectiveness in battle during the late Middle Ages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Crecy in 1346 saw the English longbowmen defeat a larger French army.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Samurai were the military nobility of medieval and early-modern Japan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Waterloo in 1815 marked the end of Napoleon Bonaparte's reign as Emperor of France.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The American Civil War was fought between the Union and the Confederacy from 1861 to 1865.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Gettysburg was a turning point in the American Civil War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The trenches of World War I were a brutal and deadly battleground.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Stalingrad in World War II was one of the bloodiest battles in history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The D-Day invasion of Normandy in 1944 was a pivotal Allied victory in World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Blitzkrieg tactics used by the German army were highly effective in the early stages of World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Midway in 1942 was a decisive naval battle between the United States and Japan.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The atomic bombings of Hiroshima and Nagasaki brought an end to World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Vietnam War was a conflict between North and South Vietnam, with involvement from the United States and other allies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Gulf War in 1990-1991 saw a coalition of nations led by the United States expel Iraqi forces from Kuwait.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The War on Terror began in the aftermath of the September 11 attacks in 2001.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Baghdad in 2003 marked the capture of the Iraqi capital by coalition forces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Fallujah in 2004 was one of the largest urban battles fought by U.S. forces since Vietnam.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The use of drones has become increasingly common in modern warfare.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Guerrilla warfare tactics involve small, mobile forces engaging in hit-and-run attacks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Geneva Conventions establish the rules of war and protect the rights of prisoners of war.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Red Cross provides humanitarian aid to victims of conflict and war.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The concept of 'total war' emerged in the 19th century, involving the mobilization of entire societies for conflict.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Treaty of Versailles imposed heavy penalties on Germany after World War I, leading to resentment and contributing to World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The concept of 'just war' seeks to establish criteria for determining when war is morally justifiable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chemical weapons have been used in warfare throughout history, causing widespread suffering and death.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The military-industrial complex refers to the close relationship between the military and defense industry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Cannae in 216 BC is considered one of the greatest tactical masterpieces in military history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Austerlitz in 1805 saw Napoleon defeat a combined Austro-Russian army in a decisive victory.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The use of cavalry played a crucial role in many ancient and medieval battles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mongol Empire was the largest contiguous land empire in history, forged through conquest and military prowess.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Siege of Constantinople in 1453 marked the end of the Byzantine Empire and the rise of the Ottoman Empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Tours in 732 halted the advance of the Muslim Umayyad Caliphate into Western Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Salamis in 480 BC was a naval engagement that saved Greece from Persian conquest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The concept of 'siege warfare' involves surrounding a fortified place and cutting off essential supplies to force surrender.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Hastings in 1066 saw the Norman forces of William the Conqueror defeat the English army of Harold II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of the Bulge in 1944-1945 was the largest battle fought by the United States in World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The concept of 'asymmetric warfare' involves conflicts between forces with vastly different capabilities and strategies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Korean War was a conflict between North and South Korea, with involvement from the United States and other allies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Trafalgar in 1805 was a decisive naval victory for the British Royal Navy against the French and Spanish fleets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The use of propaganda has been a common tactic in war, shaping public opinion and rallying support for military objectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Saratoga in 1777 was a turning point in the American Revolutionary War, leading to French support for the American cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The use of mercenaries has been a common practice throughout history, with hired soldiers fighting for various factions and causes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Berlin in 1945 marked the final major offensive of the European theatre in World War II, resulting in the fall of Nazi Germany.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Treaty of Versailles imposed harsh conditions on Germany after World War I, contributing to economic hardship and resentment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The concept of 'guerrilla warfare' involves irregular tactics used by smaller, more mobile forces against larger, conventional armies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of the Somme in 1916 was one of the bloodiest battles of World War I, with significant casualties on both sides.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The concept of 'nuclear deterrence' relies on the threat of nuclear retaliation to prevent conflict between nuclear-armed states.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The use of trench warfare characterized much of the fighting on the Western Front during World War I, resulting in stalemate and massive casualties.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of Kursk in 1943 was the largest tank battle in history, resulting in a decisive Soviet victory over German forces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Battle of El Alamein in 1942 marked a turning point in the North African campaign of World War II, with Allied forces halting the advance of Axis powers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Cold War was a period of geopolitical tension between the United States and its allies and the Soviet Union and its allies, characterized by proxy wars and the threat of nuclear annihilation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Starfish are fascinating creatures with the ability to regenerate lost limbs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seahorses are unique fish known for their upright posture and intricate courtship rituals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crocodiles are ancient reptiles that have remained virtually unchanged for millions of years.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alligators are formidable predators that inhabit freshwater habitats across the southern United States.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Komodo dragons are the largest lizards in the world, known for their powerful bite and venomous saliva.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Manatees are gentle giants that inhabit coastal waters and freshwater rivers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seagulls are common seabirds known for their scavenging behavior and distinctive calls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea lions are highly social marine mammals that inhabit rocky coastlines and islands.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orcas, also known as killer whales, are apex predators that hunt in coordinated packs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swordfish are large, predatory fish known for their long, pointed bills and high-speed swimming abilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tuna are fast-swimming fish prized for their delicious meat and commercial value.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jellyfish have translucent bodies and stinging tentacles used for capturing prey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Starfish, also known as sea stars, have radial symmetry and can have up to 40 arms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seahorses have prehensile tails and unique reproductive habits where males carry eggs in a brood pouch.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crocodiles have powerful jaws lined with sharp teeth, perfect for catching prey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alligators have broad snouts and live in freshwater habitats like swamps and marshes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Komodo dragons have keen senses of smell and are known to be solitary hunters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Manatees are herbivorous mammals that spend most of their time grazing on aquatic plants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seagulls are opportunistic feeders and will scavenge for food in coastal areas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea lions have external ear flaps and are known for their loud barking vocalizations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orcas are apex predators that feed on a variety of prey, including fish, seals, and even other whales.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swordfish have elongated bodies and can swim at speeds of up to 60 miles per hour.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tuna are highly migratory fish and can travel thousands of miles in search of food.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jellyfish have a gelatinous body composed mostly of water and lack a centralized nervous system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Starfish have a unique water vascular system that allows them to move and feed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seahorses are masters of camouflage and can change color to blend in with their surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crocodiles have a keen sense of hearing and can detect vibrations in the water from long distances.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alligators are ambush predators that lie in wait for prey to come within striking distance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Komodo dragons have serrated teeth and powerful neck muscles for delivering lethal bites.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Manatees are slow-moving creatures that can hold their breath for up to 20 minutes underwater.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seagulls have specialized bills adapted for capturing and consuming a wide range of prey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sea lions are highly social animals that communicate with each other through a series of barks and growls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orcas are highly intelligent animals capable of learning complex behaviors and communication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Swordfish have a long, slender body and a distinctive sword-like bill used for slashing at prey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tuna have streamlined bodies and powerful tails that allow them to swim at high speeds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jellyfish are composed of a gelatinous substance called mesoglea, which provides buoyancy and support.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Starfish can regenerate lost limbs and even grow into new individuals from severed body parts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seahorses are monogamous animals that mate for life and engage in elaborate courtship rituals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crocodiles have a reputation for being territorial and will fiercely defend their territory from intruders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alligators are opportunistic feeders and will consume a variety of prey, including fish, birds, and mammals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Komodo dragons have a keen sense of smell and can detect the scent of prey from several miles away.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Familiarizing ourselves with different forms of art and design enriches our cultural understanding and aesthetic appreciation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Painting is a form of visual art where colors are applied to a surface using various techniques, such as brush strokes or palette knife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sculpture involves creating three-dimensional forms, often using materials like clay, stone, or metal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Architecture is the art and science of designing and constructing buildings and structures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Photography is the art of capturing and recording images using a camera.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Illustration is the art of creating visual representations of concepts, ideas, and stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Graphic design involves creating visual content to communicate messages effectively.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Printmaking is a technique for creating multiple copies of an image, typically using a plate or block.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Textile design involves creating patterns and designs for fabrics and textiles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Interior design focuses on creating functional and aesthetically pleasing interior spaces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fashion design is the art of designing clothing and accessories, often influenced by cultural and social factors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ceramics is the art of making objects from clay, which are then fired in a kiln to harden.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jewelry design involves creating wearable pieces, often using precious metals and gemstones.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Animation is the art of creating moving images through the rapid display of a sequence of static images.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Calligraphy is the art of beautiful handwriting, often used for decorative and ceremonial purposes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Street art is a form of art created in public spaces, often using unconventional materials.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Graffiti is a form of street art that involves writing or drawing on walls or surfaces in public spaces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Digital art is created using digital technology, such as computers or tablets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Installation art is a form of art that is created for a specific space and often involves the viewer's interaction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Performance art is a form of art in which the artist uses their body or actions to create a work of art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Land art, also known as earth art, involves creating art in and with the natural landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abstract art is art that does not attempt to represent an accurate depiction of visual reality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Impressionism is an art movement characterized by capturing the impression of a scene, often using loose brushwork and light.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Expressionism is an art movement that emphasizes expressing emotional experience rather than physical reality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Surrealism is an art movement that explores the unconscious mind and dreams, often creating fantastical and dreamlike images.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pop art is an art movement that emerged in the 1950s and uses popular culture and mass media as its subject matter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Minimalism is an art movement that emphasizes simplicity and uses a minimal number of elements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Conceptual art is art in which the concept or idea behind the work is more important than the finished product.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art deco is a style of art, architecture, and design that was popular in the 1920s and 1930s, characterized by geometric shapes and bold colors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Renaissance art refers to the art of Europe between the 14th and 17th centuries, known for its revival of classical forms and humanistic themes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Baroque art is an artistic style that emerged in the late 16th century and is characterized by drama, tension, and grandeur.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rococo art is a style that emerged in the 18th century and is characterized by ornate decoration and pastel colors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neoclassical art is a revival of the classical style that emerged in the 18th century and is characterized by simplicity and symmetry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Romanticism was an artistic, literary, and intellectual movement that emerged in the late 18th century and emphasized emotion, nature, and individualism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Realism is an artistic movement that emerged in the 19th century and seeks to depict the world as it is, without idealization or stylization.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Impressionism is an art movement that emerged in the late 19th century and is characterized by capturing the impression of a scene, often using loose brushwork and light.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Post-impressionism is a term used to describe the work of several artists who were influenced by impressionism but developed their own styles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Modern art refers to the art of the late 19th and early 20th centuries, characterized by a break with traditional styles and techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Contemporary art refers to art produced today, often reflecting current social, political, and cultural issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abstract expressionism is an art movement that emerged in the 1940s and 1950s and is characterized by spontaneous and gestural brushwork.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pop art is an art movement that emerged in the 1950s and uses popular culture and mass media as its subject matter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Op art is a style of art that uses optical illusions to create the impression of movement or depth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kinetic art is art that contains moving parts or depends on motion for its effect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Land art, also known as earth art, involves creating art in and with the natural landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Performance art is a form of art in which the artist uses their body or actions to create a work of art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about historical events and figures helps us understand the context of current events and cultural references.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Renaissance was a period of cultural rebirth in Europe, characterized by a renewed interest in art, literature, and science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Industrial Revolution was a period of rapid industrialization and technological advancement in the 18th and 19th centuries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The French Revolution was a period of political upheaval in France that led to the overthrow of the monarchy and the establishment of a republic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The American Revolution was a struggle for independence from British rule, resulting in the formation of the United States of America.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Civil Rights Movement was a social movement in the United States that aimed to end racial segregation and discrimination against African Americans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The World Wars were two major global conflicts that occurred in the 20th century, resulting in significant loss of life and geopolitical changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Martin Luther King Jr. was a prominent leader in the American Civil Rights Movement, known for his nonviolent approach to protest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nelson Mandela was a South African anti-apartheid revolutionary and politician who served as President of South Africa from 1994 to 1999.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mahatma Gandhi was a leader of the Indian independence movement in British-ruled India, known for his nonviolent civil disobedience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abraham Lincoln was the 16th President of the United States, known for leading the country through the Civil War and issuing the Emancipation Proclamation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adolf Hitler was the leader of the Nazi Party in Germany, responsible for initiating World War II and orchestrating the Holocaust.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Elizabeth I was the Queen of England and Ireland from 1558 until her death in 1603, known for her strong leadership during the Elizabethan era.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Julius Caesar was a Roman general and statesman who played a critical role in the events that led to the demise of the Roman Republic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Joan of Arc was a French heroine and military leader who played a key role in the Hundred Years' War before being captured and executed by the English.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genghis Khan was the founder and first Great Khan of the Mongol Empire, which became the largest contiguous empire in history after his death.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci was an Italian polymath who excelled in various fields, including painting, sculpture, architecture, and science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "William Shakespeare was an English playwright, poet, and actor, widely regarded as the greatest writer in the English language and the world's pre-eminent dramatist.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charles Darwin was an English naturalist and biologist, known for his theory of evolution by natural selection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Galileo Galilei was an Italian astronomer, physicist, and engineer who played a major role in the scientific revolution of the 17th century.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sir Isaac Newton was an English mathematician, physicist, and astronomer, widely recognized as one of the most influential scientists of all time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Christopher Columbus was an Italian explorer and navigator who completed four voyages across the Atlantic Ocean, opening the way for widespread European exploration and the eventual conquest of the Americas by Europeans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander the Great was a king of the ancient Greek kingdom of Macedon and a member of the Argead dynasty, known for his military conquests and expansion of the Macedonian Empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Victoria was the Queen of the United Kingdom of Great Britain and Ireland from 1837 until her death in 1901, known for her long reign and the Victorian era named after her.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cleopatra VII Philopator was the last active ruler of the Ptolemaic Kingdom of Egypt, known for her relationships with Julius Caesar and Mark Antony.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thomas Jefferson was an American statesman, diplomat, lawyer, architect, philosopher, and Founding Father who served as the third President of the United States from 1801 to 1809.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "George Washington was an American political leader, military general, statesman, and Founding Father who served as the first President of the United States from 1789 to 1797.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Benjamin Franklin was an American polymath who was a leading author, printer, political theorist, politician, freemason, postmaster, scientist, inventor, humorist, civic activist, statesman, and diplomat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marco Polo was an Italian merchant, explorer, and writer who traveled through Asia along the Silk Road between 1271 and 1295 and described his experiences in a book called 'The Travels of Marco Polo'.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cleopatra VII Philopator was the last active ruler of the Ptolemaic Kingdom of Egypt, known for her relationships with Julius Caesar and Mark Antony.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genghis Khan was the founder and first Great Khan of the Mongol Empire, which became the largest contiguous empire in history after his death.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Napoleon Bonaparte was a French military and political leader who rose to prominence during the French Revolution and its associated wars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Elizabeth I was the Queen of England and Ireland from 1558 until her death in 1603, known for her strong leadership during the Elizabethan era.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Joan of Arc was a French heroine and military leader who played a key role in the Hundred Years' War before being captured and executed by the English.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sir Isaac Newton was an English mathematician, physicist, and astronomer, widely recognized as one of the most influential scientists of all time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "William the Conqueror was the first Norman King of England, reigning from 1066 until his death in 1087.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci was an Italian polymath who excelled in various fields, including painting, sculpture, architecture, and science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vincent van Gogh was a Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amelia Earhart was an American aviation pioneer and author who was the first female aviator to fly solo across the Atlantic Ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Curie was a Polish and naturalized-French physicist and chemist who conducted pioneering research on radioactivity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charles Darwin was an English naturalist and biologist, known for his theory of evolution by natural selection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Galileo Galilei was an Italian astronomer, physicist, and engineer who played a major role in the scientific revolution of the 17th century.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sir Winston Churchill was a British statesman, army officer, and writer who served as Prime Minister of the United Kingdom during World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rosa Parks was an American activist in the civil rights movement best known for her pivotal role in the Montgomery bus boycott.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mother Teresa was an Albanian-Indian Roman Catholic nun and missionary who dedicated her life to helping the poor and destitute.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mahatma Gandhi was a leader of the Indian independence movement in British-ruled India, known for his nonviolent civil disobedience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nelson Mandela was a South African anti-apartheid revolutionary and politician who served as President of South Africa from 1994 to 1999.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Benjamin Franklin was an American polymath who was a leading author, printer, political theorist, politician, freemason, postmaster, scientist, inventor, humorist, civic activist, statesman, and diplomat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander the Great was a king of the ancient Greek kingdom of Macedon and a member of the Argead dynasty, known for his military conquests and expansion of the Macedonian Empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Julius Caesar was a Roman general and statesman who played a critical role in the events that led to the demise of the Roman Republic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "George Washington was an American political leader, military general, statesman, and Founding Father who served as the first President of the United States from 1789 to 1797.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Abraham Lincoln was the 16th President of the United States, known for leading the country through the Civil War and issuing the Emancipation Proclamation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Christopher Columbus was an Italian explorer and navigator who completed four voyages across the Atlantic Ocean, opening the way for widespread European exploration and the eventual conquest of the Americas by Europeans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Victoria was the Queen of the United Kingdom of Great Britain and Ireland from 1837 until her death in 1901, known for her long reign and the Victorian era named after her.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cleopatra VII Philopator was the last active ruler of the Ptolemaic Kingdom of Egypt, known for her relationships with Julius Caesar and Mark Antony.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thomas Jefferson was an American statesman, diplomat, lawyer, architect, philosopher, and Founding Father who served as the third President of the United States from 1801 to 1809.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marco Polo was an Italian merchant, explorer, and writer who traveled through Asia along the Silk Road between 1271 and 1295 and described his experiences in a book called 'The Travels of Marco Polo'.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning about social issues like poverty, homelessness, and human rights is important.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "These topics often come up in conversations and can help you connect with others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Poverty is the state of being extremely poor and lacking basic necessities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Homelessness is the condition of having no permanent home or shelter.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Human rights are the basic rights and freedoms that belong to every person.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding these issues can help you advocate for positive change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discussing these topics can raise awareness and promote empathy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in conversations about social issues can lead to meaningful actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By learning more about these topics, you can become a more informed citizen.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay informed about social issues in your community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "You can make a difference by volunteering or supporting organizations that help.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education is key to understanding and addressing social issues effectively.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empathy and compassion are important when discussing these sensitive topics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Everyone has a role to play in addressing social issues in society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Together, we can work towards a more just and equitable world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social issues impact everyone, regardless of background or circumstance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By learning about these topics, you can help create positive change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social justice is an important part of civic engagement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Being aware of social issues can help you make informed decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Poverty affects millions of people around the world, including children.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Homelessness can be caused by a variety of factors, including economic hardship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Human rights are universal and should be protected for all individuals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discrimination based on race, gender, or religion is a violation of human rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Access to education, healthcare, and housing are fundamental human rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social inequality is a major challenge facing societies around the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires collaboration and cooperation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to listen to the voices of those affected by social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Educating yourself about social issues is the first step towards making a difference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volunteering your time or resources can make a positive impact on social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocacy involves speaking out about social issues and promoting change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice is about ensuring that everyone has equal rights and opportunities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By working together, we can create a more inclusive and compassionate society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Poverty can be alleviated through policies that promote economic opportunity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Homelessness can be addressed through affordable housing and support services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Human rights violations should be condemned and addressed through legal means.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Educating others about social issues can help raise awareness and foster empathy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting organizations that work on social issues can make a real difference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in dialogue with others about social issues can lead to positive change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "It's important to stay informed about social issues and current events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social justice requires persistence and commitment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social change starts with individuals who are willing to speak up and take action.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By working together, we can build a more just and equitable society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires a multifaceted approach involving various stakeholders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Raising awareness about social issues can lead to greater understanding and empathy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social change can be challenging but also incredibly rewarding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Participating in peaceful protests is one way to raise awareness about social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social media can be a powerful tool for spreading information and mobilizing support for social causes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Donating money or resources to organizations that work on social issues can make a meaningful impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Engaging in discussions with people who have different perspectives can help broaden your understanding of social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volunteering your time to help those in need is a concrete way to address social issues in your community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocacy involves speaking up for those who may not have a voice in society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Working towards social justice requires a commitment to fairness, equality, and human rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the root causes of social issues is essential for developing effective solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empathy is the ability to understand and share the feelings of others, and it is crucial for addressing social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social issues often intersect with one another, and addressing them requires a comprehensive approach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education is key to addressing social issues, as it helps people understand the complexities of these problems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social change can be slow and incremental, but every small step forward is progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Listening to the stories and experiences of those affected by social issues can be powerful and eye-opening.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting policies that promote social justice and equality is an important way to contribute to positive change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocates for social change often face resistance, but persistence can lead to meaningful progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creating a more inclusive society requires valuing diversity and respecting the rights of all individuals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires a collective effort from individuals, communities, and governments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice movements throughout history have brought about significant changes in society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art can be a powerful tool for addressing social issues and inspiring change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social issues can affect people of all ages, backgrounds, and walks of life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires a willingness to challenge the status quo and envision a better future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice is not just about addressing the symptoms of inequality but also addressing the underlying causes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empowering marginalized communities is essential for achieving social justice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social issues are often complex and multifaceted, requiring nuanced solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocacy efforts are most effective when they are grounded in empathy and understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice requires recognizing and challenging systemic injustices and inequalities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires a commitment to ongoing education and self-reflection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting organizations that advocate for social justice can make a difference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social change often begins with individuals who are willing to speak out against injustice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Understanding the historical context of social issues can provide valuable insights into their causes and effects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Promoting social justice requires fostering a culture of inclusivity and respect.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocates for social change often face backlash and criticism, but their efforts can lead to lasting impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social issues can be interconnected, and addressing one issue can have ripple effects on others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creating a more just and equitable society requires challenging our own biases and prejudices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social change requires empathy, compassion, and a commitment to justice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting marginalized communities is an important part of promoting social justice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Education is a powerful tool for addressing social issues and promoting understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice requires recognizing and valuing the humanity and dignity of all individuals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires a long-term commitment to change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocacy efforts should be guided by the voices and experiences of those most affected by social issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice requires confronting and dismantling systems of oppression and discrimination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting social justice initiatives can help create a more equitable and inclusive society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social change can be challenging, but it is essential for creating a better world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social issues are complex and often require collaborative solutions from multiple stakeholders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empowering marginalized communities is a key component of social justice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires challenging stereotypes and promoting understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocacy efforts are most effective when they are rooted in empathy and compassion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice requires recognizing and addressing the ways in which privilege and power operate in society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting organizations that work towards social justice can help make a difference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social change requires persistence, resilience, and a belief in the possibility of a better world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creating a more just and equitable society requires a commitment to ongoing learning and growth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Addressing social issues requires a willingness to listen to and learn from those most affected by them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocating for social change requires a willingness to challenge the status quo and push for progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social justice is about creating a world where everyone has the opportunity to thrive.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supporting social justice initiatives is an important way to contribute to positive change in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advocacy efforts should be grounded in a commitment to fairness, equality, and human rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space exploration is the investigation and exploration of outer space by means of space technology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robotics is the branch of technology that deals with the design, construction, operation, and application of robots.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Artificial intelligence (AI) is the simulation of human intelligence processes by machines, especially computer systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space agencies around the world are working on missions to explore Mars and other planets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robots are used in various industries, including manufacturing, healthcare, and space exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI is used in many applications, such as speech recognition, image recognition, and autonomous vehicles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mars rover is a robotic vehicle designed to explore the surface of Mars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Machine learning is a subset of AI that allows computers to learn from data and improve over time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "NASA is planning a manned mission to Mars in the coming decades.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Autonomous robots are able to perform tasks without human intervention.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI has the potential to revolutionize many aspects of our lives, including healthcare, transportation, and entertainment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space telescopes are used to observe distant galaxies and stars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtual reality technology allows users to experience and interact with a computer-generated environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "3D printing is a technology that allows objects to be created by adding material layer by layer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The International Space Station is a space station, or habitable artificial satellite, in low Earth orbit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI algorithms are used in financial markets to analyze data and make trading decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robot-assisted surgery allows surgeons to perform complex procedures with greater precision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Hubble Space Telescope has provided scientists with stunning images of the universe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-driving cars use AI algorithms to navigate roads and avoid obstacles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space tourism is an emerging industry that aims to send private individuals into space for recreational purposes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum computing is a type of computing that uses quantum-mechanical phenomena, such as superposition and entanglement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI ethics is a branch of ethics that examines the moral and ethical implications of AI technologies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "SpaceX is a private aerospace manufacturer and space transportation company founded by Elon Musk.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robotics engineers design and build robots for various applications, such as industrial automation and space exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI chatbots are used in customer service to answer questions and provide assistance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space debris, also known as space junk, poses a risk to satellites and spacecraft in orbit around Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bioinformatics is the field of science that combines biology, computer science, and information technology to analyze and interpret biological data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The James Webb Space Telescope is a space telescope set to launch in 2021 as a successor to the Hubble Space Telescope.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI algorithms are used in social media platforms to personalize content and advertisements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space colonization is the concept of permanent human habitation outside Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robot vacuums use AI technology to navigate and clean floors autonomously.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neural networks are a type of AI model inspired by the structure of the human brain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "SpaceX's Starship is a fully reusable spacecraft designed for missions to Mars and beyond.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI in healthcare is used for tasks such as medical image analysis, personalized medicine, and predictive analytics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum supremacy is the milestone at which quantum computers can perform tasks that are beyond the capabilities of classical computers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deep learning is a subset of machine learning that uses neural networks with many layers to learn from data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space elevators are a theoretical mode of transportation that could lift materials from Earth into space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI in education is used to personalize learning experiences and provide feedback to students.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "CRISPR is a revolutionary gene-editing technology that allows scientists to modify DNA with unprecedented precision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space agencies are exploring the possibility of mining asteroids for valuable resources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She walked through the quiet forest, feeling the soft crunch of leaves beneath her feet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun set over the horizon, casting a warm, golden glow across the ocean.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A gentle breeze blew through the open window, carrying the scent of blooming flowers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He carefully placed the final piece of the puzzle, completing the picture of a serene landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The old library was filled with the comforting smell of aged paper and leather-bound books.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A soft melody played in the background, creating a calming atmosphere in the bustling café.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The cat stretched lazily on the windowsill, basking in the afternoon sunlight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "They huddled around the campfire, sharing stories and laughter under the starry night sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The city skyline was illuminated by the shimmering lights of countless skyscrapers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "A sense of peace washed over her as she listened to the gentle waves lapping against the shore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She meticulously organized her collection of vintage stamps with great care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He endeavored to solve the complex mathematical equation in record time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The artist sculpted a magnificent statue from a block of marble.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She yearned for a sense of adventure and embarked on a long journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He deciphered the ancient script with astonishing accuracy and speed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The chef concocted an exquisite dish using rare and exotic ingredients.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She navigated the treacherous waters with unwavering confidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The detective scrutinized the evidence to find a crucial clue.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lamented the loss of his cherished childhood home deeply.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The writer aspired to create a timeless masterpiece with every word.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The student diligently researched the topic for her thesis paper.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The botanist cultivated a rare species of orchid in her greenhouse.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He facilitated the negotiation between the two conflicting parties.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The architect envisioned a futuristic building made entirely of glass.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered through the challenges to achieve her ambitious goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He advocated for environmental conservation at the international summit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The musician improvised a beautiful melody during the live performance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She reminisced about her travels through the picturesque countryside.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He anticipated the challenges that lay ahead in his new position.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The teacher inspired her students to strive for academic excellence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She meticulously documented the results of the scientific experiment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The poet crafted a poignant sonnet that moved everyone to tears.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He manipulated the data to reveal hidden patterns and trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The athlete excelled in her performance at the national championship.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She negotiated a favorable deal for her company’s new partnership.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He endeavored to make a significant impact in his chosen field.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The designer conceptualized a unique and innovative fashion line.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She deciphered the complex instructions with relative ease.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He orchestrated a successful event that everyone enjoyed immensely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The engineer optimized the system to improve its efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She deliberated carefully before making the final decision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He augmented his income by taking on freelance projects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scientist hypothesized a new theory based on recent findings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She facilitated a workshop on effective communication skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He navigated the dense forest using only a compass and a map.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The journalist corroborated the story with multiple reliable sources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She advocated for equal rights and social justice tirelessly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lamented the missed opportunities with a heavy heart.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The artist meticulously restored the damaged painting to its former glory.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered despite the numerous obstacles in her path.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He anticipated the market trends and adjusted his strategy accordingly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The author crafted a compelling narrative that captivated readers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She cultivated a thriving vegetable garden in her backyard.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He manipulated the controls with precision to land the plane safely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The manager delegated tasks to ensure the project’s timely completion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She meticulously planned every detail of the elaborate wedding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He scrutinized the financial reports to identify any discrepancies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scholar elucidated the complex concepts during the lecture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She negotiated a substantial pay raise after demonstrating her value.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He improvised a solution to the unexpected problem during the presentation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The teacher fostered a love of learning in her young students.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She facilitated a successful merger between the two companies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He envisioned a future where technology and humanity coexisted harmoniously.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The chef concocted a delicious new recipe that became an instant hit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She documented her travels in a beautifully illustrated journal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He orchestrated a symphony that resonated with audiences worldwide.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scientist meticulously documented her groundbreaking research findings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She anticipated the needs of her clients and tailored her services accordingly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He deciphered the encrypted message using advanced cryptography techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The entrepreneur ventured into a new industry with great enthusiasm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She meticulously crafted handmade jewelry with intricate designs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He scrutinized the contract before signing to avoid any legal pitfalls.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The teacher inspired a sense of curiosity and wonder in her students.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered through the rigorous training program to achieve her dreams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He navigated the complex legal system with the help of a skilled attorney.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The artist envisioned a bold new project that pushed the boundaries of creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She facilitated a community meeting to address local concerns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He meticulously planned his retirement to ensure financial stability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The researcher hypothesized a connection between diet and longevity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She negotiated a truce between the two warring factions diplomatically.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He augmented his skill set by enrolling in advanced courses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The engineer optimized the design for better performance and durability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She deliberated over the ethical implications of her decision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He orchestrated a rescue mission to save the stranded hikers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The novelist crafted an intricate plot that kept readers guessing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She cultivated a network of professional contacts in her industry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He scrutinized the blueprints to identify any potential flaws.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The historian meticulously documented the events leading up to the war.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She anticipated the company’s growth and planned for expansion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He improvised a clever solution to the technical glitch.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The manager delegated responsibilities to her capable team members.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She meticulously recorded the data from the experiment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He envisioned a society where everyone had access to education.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The chef concocted a fusion dish that blended different culinary traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She documented the wildlife she encountered during her expedition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He orchestrated a charity event to raise funds for a good cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The scientist hypothesized a new approach to combat climate change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered through the demanding program to earn her degree.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He navigated the treacherous mountain pass with expertise.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The writer aspired to create a work that would leave a lasting impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She meticulously organized the event to ensure everything went smoothly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He scrutinized the results to determine the accuracy of the test.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The teacher fostered an environment of mutual respect and cooperation.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She facilitated a support group for new parents.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He anticipated the challenges of the new project and prepared accordingly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The artist sculpted a piece that captured the essence of human emotion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She yearned for the tranquility of her childhood home.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He deciphered the clues to solve the mystery.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The chef meticulously prepared the ingredients for the gourmet meal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She navigated the city’s bustling streets with confidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He passionately pursued his dreams despite numerous obstacles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She perceived a slight change in the atmosphere as she entered the room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He procrastinated on his assignments, leading to last-minute stress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She pondered the implications of her decision for hours.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He proposed a bold new initiative during the meeting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She prided herself on her attention to detail in her work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He predicted the stock market crash with remarkable accuracy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persisted in her efforts to learn the difficult piano piece.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He propelled the project forward with his innovative ideas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She polished her presentation until it was flawless.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He paralleled his findings with existing research to draw conclusions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She petitioned the government for more funding for education.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He plummeted into the icy waters without hesitation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She procured rare ingredients for the exclusive dinner event.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He portrayed the character with depth and authenticity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She perused the documents carefully before signing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He pacified the crowd with his calming words.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She penetrated the market with her groundbreaking product.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He predicted the outcome based on previous experiences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persuaded her colleagues to support her proposal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He punctuated his speech with humor to keep the audience engaged.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She piloted the new software implementation at her company.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He partitioned the large dataset into manageable segments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She pacified her crying baby with a gentle lullaby.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He participated actively in the community outreach programs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She practiced diligently to perfect her performance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He patronized the local businesses to support the economy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She perceived the subtle differences between the two paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He preempted any issues by planning meticulously.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered through the challenging project until it was complete.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He pioneered a new technique in digital marketing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She personalized the customer experience to increase satisfaction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He prioritized his health by maintaining a balanced diet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She polished her skills through continuous practice.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He prepared the team for the upcoming competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She predicted a successful outcome based on her analysis.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He preserved the historic building with great care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She prompted her friend to take action on the issue.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He pacified the tense situation with a diplomatic approach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She portrayed a sense of calm despite the chaos around her.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He participated in the international conference as a keynote speaker.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She produced an award-winning documentary on climate change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He prescribed a detailed action plan for the project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She praised her team for their hard work and dedication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He partnered with a local charity to help those in need.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She pursued excellence in every aspect of her career.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He positioned himself as an expert in his field.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She polished the silverware until it shone brightly.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He perpetuated the family tradition with pride.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She published a groundbreaking article in a prestigious journal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He persuaded the board to approve the new initiative.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She prevented a potential crisis with her quick thinking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He predicted a rise in demand for eco-friendly products.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She prompted a lively discussion during the meeting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He presented his findings at the annual conference.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered in her studies despite facing many challenges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He piloted the drone over the vast landscape.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She polished her argument before the debate.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He perceived the tension in the room and addressed it calmly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She patronized the arts by attending local theater productions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He processed the information quickly and efficiently.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She prioritized her tasks to meet the tight deadline.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He portrayed the protagonist with great skill.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She performed her duties with unwavering dedication.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He pioneered research in renewable energy sources.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She planned the event down to the smallest detail.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He prepared a comprehensive report on the issue.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She praised the team's efforts in achieving their goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He petitioned for a change in the outdated policy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She preserved the delicate artifacts with utmost care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He provided valuable insights during the discussion.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She perused the latest literature on the subject.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He prevented further damage by acting swiftly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She persevered in her quest for knowledge.", "کوردی_کوردی_کوردی");
      await insertSentence("He predicted the team's victory with confidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She polished her resume before applying for the job.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He piloted the spacecraft through the asteroid field.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She perceived an opportunity where others saw a challenge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He perpetuated the myth with his elaborate stories.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She planned a surprise party for her best friend.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He prompted the team to think creatively about the problem.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She prioritized her family above everything else.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He proposed a novel solution to the recurring issue.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She participated in the marathon to raise awareness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He produced a series of informative videos on the topic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She prepared a delicious meal for her guests.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He pacified the angry customer with a generous refund.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She published her first novel to critical acclaim.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He pursued his passion for photography with vigor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She petitioned for more green spaces in the urban area.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He partnered with international organizations for the project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She preserved the ancient manuscripts in a climate-controlled room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He provided assistance to the disaster-stricken area.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She performed her role in the play with great enthusiasm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He practiced the piano daily to improve his skills.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She predicted the weather using sophisticated models.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He proposed a new theory in his scientific paper.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He navigated the arid desert with an unyielding determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She wore an alabaster gown that shimmered in the moonlight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The aloof professor rarely engaged in casual conversations with students.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired the ancient architecture of the grand cathedral.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She possessed an altruistic nature, always helping those in need.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had an astute understanding of the market trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ambiance of the room was augmented by the soft candlelight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She faced the arduous task with unwavering resolve.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lived in an affluent neighborhood with sprawling mansions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was known for her amiable personality and welcoming smile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The austere decor of the room reflected his minimalist tastes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He exhibited an audacious spirit, unafraid of taking risks.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She was an avid reader, always lost in a book.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired her articulate manner of speaking.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The artist created an abstract painting that puzzled many.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an acute pain in her side and decided to see a doctor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an ardent supporter of the environmental movement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She appreciated the arboreal landscape surrounding her home.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He had an almost archaic sense of honor and duty.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an inexplicable connection to the arcane symbols.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was known for his acerbic wit and sharp comments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The politician's adamant stance on the issue caused controversy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an admirable work ethic that inspired her colleagues.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He enjoyed the arcadian beauty of the countryside.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Her anecdotes were always amusing and captivating.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He felt an abject fear when he saw the approaching storm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was an astute observer, noticing every small detail.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He wore an antiquated watch that had belonged to his grandfather.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an amiable disposition that endeared her to everyone.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He described the alpine scenery with great enthusiasm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was known for her altruistic efforts in the community.",
          "کوردی_کوردی_کوردی");
      await insertSentence("His aplomb in the face of danger was remarkable.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She faced the daunting challenge with aplomb.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an agile dancer, moving with grace and precision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The ambience of the old library was serene and inviting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She lived in an abysmal apartment with poor lighting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired her adept handling of complex situations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an amicable relationship with her coworkers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an avid collector of rare stamps.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The acerbic tone of his voice revealed his displeasure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an abiding love for the city of her birth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an agile thinker, quick to come up with solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She described the ambience of the restaurant as enchanting.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He felt an acute sense of loss after his pet passed away.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She was known for her adept skill in negotiations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired her abstemious lifestyle and self-control.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an abject loneliness after moving to the new city.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had an acerbic sense of humor that not everyone appreciated.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was an ardent fan of classical music.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He possessed an amiable charm that won over everyone.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She had an aesthetic appreciation for fine art.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He faced the arduous journey with determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was known for her assiduous attention to detail.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired the arcane knowledge of the ancient scholars.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She was an avaricious collector of rare artifacts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lived an ascetic lifestyle, free from material desires.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She felt an acute awareness of her surroundings.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He admired her astute observations and insights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an airy, ethereal quality about her.", "کوردی_کوردی_کوردی");
      await insertSentence("He was an avid supporter of the local sports team.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She lived in an austere, sparsely furnished apartment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He possessed an almost aloof demeanor.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She admired the artist's avant-garde style.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had an astringent personality that was difficult to warm to.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was an articulate speaker, captivating her audience.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He faced the adverse conditions with resilience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an almost arcane connection to the ancient ruins.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was known for his assiduous work ethic.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an adroit way of handling delicate situations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired her altruistic efforts to help the homeless.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was known for her astute business acumen.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had an avid interest in historical documentaries.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She faced the abysmal conditions with courage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lived in an affluent suburb with tree-lined streets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an acute need to prove herself.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an agile athlete, excelling in multiple sports.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She described the atmosphere as airy and light.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He faced the arduous task with fortitude.", "کوردی_کوردی_کوردی");
      await insertSentence("She had an aesthetic sense that was unparalleled.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an ardent believer in equal rights.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She was known for her amicable interactions with others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He lived in an almost ascetic simplicity.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "She felt an abiding commitment to her cause.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was known for his acerbic criticism of modern art.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She faced the adverse weather with determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He was an advocate for archaic language preservation.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She had an admirable dedication to her family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He faced the abject poverty of his childhood with resilience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an adroit ability to solve complex problems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He admired the arboreal beauty of the park.", "کوردی_کوردی_کوردی");
      await insertSentence("She was known for her avant-garde fashion sense.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "He had an almost altruistic devotion to his students.",
          "کوردی_کوردی_کوردی");
      await insertSentence("She faced the arduous climb with determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence("He was an avid participant in community events.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "She had an aesthetic appreciation for the finer things in life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Opulent surroundings inspired feelings of awe and wonder.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obliging staff immediately attended to every guest's need.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ominous clouds indicated the approach of a severe storm.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obstinate behavior impeded progress on the project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Occasional interruptions irritated the focused writer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obscure references intrigued the literary scholars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Official documents invalidated the previous agreement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oily surfaces increased the risk of slipping hazards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Omnipresent technology infiltrated daily life seamlessly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Onerous tasks intimidated the new employees.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Opaque glass isolated the meeting room from outside noise.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oblivious pedestrians impeded traffic flow during rush hour.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ornate designs illustrated the architect's unique vision.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Optimistic forecasts invigorated the sales team.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outstanding achievements impressed the board members.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Olfactory senses identified the fragrant aroma immediately.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ongoing conflicts instigated discussions about peace treaties.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Onerous regulations impeded the company's expansion plans.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Original ideas invigorated the creative brainstorming session.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ominous sounds indicated the presence of nearby wildlife.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orthodox methods inhibited innovative solutions in the lab.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oblique hints intrigued the curious audience.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Overcast skies implied a dreary day ahead.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obsessive attention to detail improved the final product.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Omnipotent leaders imposed strict rules without consultation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oversized furniture inhibited easy movement in the small room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Overwhelming evidence implicated the suspect in the crime.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Occasional setbacks invigorated the team's determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Omnivorous habits influenced the chef's diverse menu.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ornamental features embellished the grand entrance hall.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ongoing renovations interrupted the regular office schedule.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outlandish costumes inspired awe at the themed party.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outdated policies inhibited progress and innovation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Optimistic leaders instilled confidence in the team.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outspoken critics influenced public opinion significantly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obsolete equipment impeded the factory's productivity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Organic produce improved the restaurant's reputation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Open-minded attitudes increased the effectiveness of the debate.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Obligatory meetings interfered with the workflow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Objective analysis improved the decision-making process.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Onerous duties intimidated the inexperienced workers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Overwhelming support invigorated the charitable cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orchestrated efforts illustrated the team's coordination.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Oblivious drivers imperiled pedestrian safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outstanding service impressed the discerning clientele.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ongoing education improved professional skills continuously.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ostentatious displays indicated the owner's wealth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obstinate resistance impeded diplomatic negotiations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Opportune moments inspired spontaneous celebrations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Occasional praise invigorated the student's motivation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Opaque curtains isolated the room from bright sunlight.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Objective research illuminated the obscure topic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Optimal conditions increased the crop yield substantially.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Omniscient narrators intrigued readers with their insights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oily rags ignited the fire hazardously.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outdated software inhibited the company's efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ongoing developments influenced the market trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obligatory tasks interrupted the employee's workflow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obscure terminology intimidated the novice learners.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Orthogonal approaches improved the problem-solving process.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ominous headlines incited public fear and concern.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Opulent decor impressed the visiting dignitaries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obnoxious behavior irritated the conference attendees.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ornate carvings illustrated the artisan's skill.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outdated practices inhibited progress in the industry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ongoing training improved the employees' competencies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Occasional rainfall invigorated the arid landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Optimal lighting improved the artwork's visibility.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Overbearing management impeded team creativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Occult themes intrigued the curious researchers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Outlandish claims incited widespread skepticism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oversized sculptures impressed the museum visitors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oral traditions illustrated the community's rich history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ongoing debates influenced the legislative process.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Offensive remarks instigated a heated argument.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obtrusive advertisements interrupted the online experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Outstanding performance impressed the audience greatly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Onerous responsibilities intimidated the junior staff.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Official endorsements improved the campaign's credibility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obstinate attitudes impeded compromise and resolution.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Opportune discoveries inspired further research.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ongoing challenges invigorated the team's spirit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Obscure facts illuminated the historical narrative.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Opulent lifestyles indicated immense wealth and luxury.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ostentatious gestures impressed the attendees at the gala.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Outspoken activists influenced the policy changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ordinary routines improved with innovative technology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Optimistic projections invigorated investor confidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Onerous demands intimidated the service providers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Omnipresent advertisements influenced consumer behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Official sanctions impeded international trade.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ongoing renovations improved the building's infrastructure.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Orthodox doctrines inhibited progressive thought.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ornate decorations illustrated the festive spirit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Objective findings illuminated the scientific study.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful paintings filled the entire gallery space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Calm waters facilitated smooth sailing for the boat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chilly winds forced the hikers to wear thicker coats.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crystal chandeliers fascinated the guests at the banquet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crowded marketplaces fostered a sense of community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Careful planning finalized the event details perfectly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cheerful music filled the air at the lively festival.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cozy blankets furnished the cabin for the winter.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Curious artifacts fascinated the museum visitors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Compact cars flooded the city streets during rush hour.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charming gardens flourished in the spring sunshine.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creepy shadows flitted across the old mansion's walls.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cluttered desks frustrated the diligent employees.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Classic novels fueled the students' imaginations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clever advertisements fascinated potential customers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ceramic tiles finished the elegant kitchen design.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful fireworks filled the night sky spectacularly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chronic delays frustrated the passengers waiting for the train.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Crisp leaves fell gently from the autumn trees.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Concrete structures fortified the city's defenses.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Charming cafes fostered a welcoming atmosphere.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Contemporary artworks filled the modern gallery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cold drinks refreshed the guests at the summer party.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Calm voices facilitated a peaceful negotiation.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cerulean skies framed the picturesque landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comprehensive manuals facilitated the training process.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Comfortable chairs filled the conference room.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Chilly breezes forced everyone to wear jackets.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Challenging puzzles fascinated the keen solvers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cautious drivers followed the speed limits strictly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coastal views framed the luxurious resort.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Civic duties fulfilled the citizens' sense of responsibility.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Confident speakers filled the auditorium with their voices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Curved arches framed the entrance to the grand building.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Countless books filled the library shelves.", "کوردی_کوردی_کوردی");
      await insertSentence("Charming anecdotes fascinated the dinner guests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cluttered rooms frustrated the organizers.", "کوردی_کوردی_کوردی");
      await insertSentence("Colorful tapestries furnished the medieval castle.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Careful analyses facilitated the project's success.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charming boutiques filled the city's narrow streets.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Chirping birds filled the tranquil morning air.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cold hands fumbled with the car keys.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crowded trains forced commuters to stand.", "کوردی_کوردی_کوردی");
      await insertSentence("Compelling arguments fueled the lively debate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chiseled statues framed the museum's grand entrance.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Comfortable sofas furnished the cozy living room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ceramic vases filled the shelves of the antique store.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Chaotic scenes flustered the emergency responders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crisp apples filled the basket at the farmer's market.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clear skies facilitated the perfect day for a picnic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Classic cars filled the vintage car show.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Challenging trails fatigued the experienced hikers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Creeping vines framed the garden's stone pathway.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cheerful flowers filled the spring garden.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crisp white linens furnished the elegant dining table.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chilly evenings forced the campers to light a fire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful balloons filled the party venue.", "کوردی_کوردی_کوردی");
      await insertSentence("Confident predictions fueled investor optimism.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Curious expressions filled the children's faces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clean lines framed the minimalist architectural design.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Charming stories fascinated the young readers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Calm seas facilitated a relaxing boat trip.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Concrete plans finalized the construction project's timeline.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comfortable mattresses filled the hotel's luxurious rooms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Compelling evidence fortified the prosecutor's case.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Curious sculptures fascinated the art students.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Compact discs filled the shelves in the music store.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful posters filled the classroom walls.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chic boutiques fostered a sense of high fashion in the city.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clever solutions facilitated the project's success.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Challenging courses filled the university curriculum.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cold fronts frequently changed the weather patterns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Classic films filled the theater's weekend schedule.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Custom-made furniture furnished the newly renovated house.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cheerful volunteers fostered a positive community spirit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comprehensive guides facilitated the tourists' exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Careful measurements finalized the tailor's design.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clean water fountains filled the park's public spaces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Calming aromas filled the spa with a relaxing ambiance.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Challenging exams fatigued the diligent students.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Comfortable cushions furnished the lounge area.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Colorful murals filled the city's urban spaces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charming traditions fostered a sense of cultural heritage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chilly temperatures forced the hikers to turn back early.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Curious exhibits fascinated the science fair visitors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comprehensive plans facilitated the company's expansion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ceramic mugs filled the cozy coffee shop.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coordinated efforts fostered the rescue mission's success.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clear instructions facilitated the assembly process.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cool breezes filled the evening air, refreshing everyone.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cultural festivals fostered community engagement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Custom artwork filled the gallery's latest exhibition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charming anecdotes fascinated the literature class.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chilled beverages filled the picnic basket.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Concrete barriers fortified the protest site.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Curious minds fueled the scientific research.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cozy cottages framed the lakeside view.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comfortable shoes facilitated the long hike.", "کوردی_کوردی_کوردی");
      await insertSentence("Clean energy sources fueled the city's power grid.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Challenging workouts fatigued the athletes.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Classic recipes filled the cookbook's pages.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chirping crickets filled the summer night.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Compelling performances filled the theater with applause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful fabrics furnished the interior designer's studio.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cold waves frequently flooded the coastal areas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charming melodies filled the concert hall.", "کوردی_کوردی_کوردی");
      await insertSentence("Clever tactics facilitated the team's victory.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Crisp photographs filled the album with memories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cheerful greetings fostered a welcoming atmosphere.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Challenging riddles fascinated the puzzle enthusiasts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coordinated movements facilitated the dance performance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Curious expressions filled the museum's interactive exhibits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ceramic plates filled the elegant dining set.", "کوردی_کوردی_کوردی");
      await insertSentence("Chilled air filtered through the open windows.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comfortable blankets filled the bedroom with warmth.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Colorful lights filled the holiday decorations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Confident strides filled the runway during the fashion show.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chilly mornings forced everyone to bundle up tightly.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Custom-built shelves furnished the home library.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Comprehensive data facilitated the research study.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Clear visions fueled the entrepreneur's drive.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Classic novels filled the book club's reading list.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cozy nooks furnished the quaint bookstore.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Challenging climbs fatigued the mountaineers.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cold compresses facilitated the athlete's recovery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful costumes filled the stage during the play.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Cherished memories filled the old photo album.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Curious designs fascinated the architecture students.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Ceremonial dances fostered cultural appreciation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charming accents filled the international festival.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comfortable seats filled the movie theater.", "کوردی_کوردی_کوردی");
      await insertSentence("Crisp mornings fostered a sense of rejuvenation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Confidential files filled the secure cabinet.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Creative workshops facilitated artistic expression.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colorful fireworks filled the night sky with brilliance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Challenging puzzles fascinated the escape room enthusiasts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Coordinated patterns filled the fabric of the quilt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cheerful laughter filled the playground.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Chilly rain forced the picnic indoors.", "کوردی_کوردی_کوردی");
      await insertSentence("Clever disguises facilitated the spy's mission.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Curious onlookers filled the city's bustling streets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cerulean waters framed the tropical paradise.", "کوردی_کوردی_کوردی");
      await insertSentence("Comfortable sandals facilitated the beach walk.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Crowded shelves filled the bustling bookstore.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diversionary tactics fooled the enemy forces completely.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visionary ideas fueled the innovative tech startup.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Extraordinary sculptures filled the modern art museum.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stationary bicycles facilitated the gym's cardio workouts.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Customary greetings fostered a sense of tradition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mercenary soldiers fought fiercely in the foreign land.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Revolutionary inventions filled the patent office.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volitionary efforts facilitated the charitable event.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Precautionary measures forestalled potential risks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Missionary activities fostered religious education.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Illusionary effects fascinated the magic show audience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sedentary lifestyles fostered numerous health issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Functionary roles filled the bureaucratic offices.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Disciplinary actions fostered a sense of order.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visionary leaders fostered significant social changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Subsidiary companies facilitated global expansion.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Extraordinary performances filled the award show.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Honorary degrees filled the university's recognition ceremony.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Complementary colors filled the artist's palette.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Incendiary remarks fueled the heated debate.", "کوردی_کوردی_کوردی");
      await insertSentence("Stationary objects furnished the office space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volitionary decisions influenced the project's direction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Veterinary clinics facilitated pet healthcare needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Complementary beverages filled the conference tables.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Illusionary dreams fascinated the fantasy writers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Extraordinary efforts facilitated the project's completion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Precautionary warnings forestalled the imminent dangers.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Missionary journeys filled the explorer's journal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Functionary duties facilitated the smooth running of operations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Disciplinary policies fostered a respectful environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mercenary tactics filled the medieval war strategies.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Honorary titles filled the noble family's history.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Visionary artwork filled the avant-garde gallery.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diversionary activities entertained the restless children.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stationary supplies furnished the well-organized office.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subsidiary branches facilitated the corporation's growth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Complementary skills fostered a successful collaboration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Veterinary services facilitated the animal rescue efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Extraordinary talents filled the talent show lineup.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Revolutionary theories fueled the academic discussion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Precautionary locks forestalled unauthorized access.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Illusionary techniques fascinated the special effects artists.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sedentary behavior fostered a need for more physical activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Volitionary choices influenced the ethical debate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Functionary paperwork filled the administrative desk.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Complementary therapies fostered holistic healing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Missionary schools facilitated educational outreach.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visionary concepts fueled the design project's innovation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Extraordinary landscapes filled the travel magazine.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Mercenary forces facilitated the swift conquest.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Honorary memberships filled the exclusive club.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Revolutionary movements fostered political change.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Complementary amenities filled the luxury hotel.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Precautionary steps forestalled potential issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Disciplinary committees facilitated the adherence to rules.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Incendiary speeches fueled the social unrest.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sedentary jobs fostered the need for ergonomic furniture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diversionary routes facilitated smoother traffic flow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visionary proposals filled the planning committee's agenda.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Extraordinary artifacts filled the history museum.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Honorary awards fostered a sense of achievement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Complementary snacks filled the break room.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Veterinary care facilitated the recovery of the injured animals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Disciplinary hearings filled the legal department's schedule.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volitionary acts fostered a sense of community service.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Incendiary devices forestalled by quick police action.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stationary targets facilitated the archery practice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Illusionary paintings filled the optical illusion exhibit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mercenary contracts facilitated the private security arrangements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Revolutionary designs fueled the fashion industry's trends.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Functionary tasks filled the daily routine of the clerks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Precautionary measures forestalled any safety breaches.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Honorary plaques filled the university's hall of fame.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diversionary maneuvers facilitated the strategic withdrawal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subsidiary businesses facilitated the conglomerate's revenue.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Extraordinary sights filled the travel itinerary.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Complementary gifts fostered customer loyalty.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Missionary expeditions facilitated cultural exchanges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Visionary literature filled the speculative fiction genre.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stationary clouds framed the picturesque landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Volitionary contributions fostered the success of the fundraiser.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Revolutionary experiments filled the scientific journal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Complementary technologies facilitated the smart home setup.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Illusionary fears fostered anxiety among the villagers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Honorary guests filled the banquet hall with prestige.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Sedentary routines fostered a sense of monotony.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Extraordinary musicians filled the concert hall with melodies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Disciplinary guidelines facilitated the code of conduct.",
          "کوردی_کوردی_کوردی");

      await insertSentence(
          "Adaptable strategies swiftly transformed the company's fortunes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amendable plans consistently improved throughout the project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable determination frequently propelled the athlete forward.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adorable puppies eagerly bounded across the yard playfully.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applicable regulations uniformly governed the new procedures strictly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attainable goals gradually motivated the team towards excellence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Affordable housing inevitably drew many families to the area.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable technologies seamlessly integrated into the existing infrastructure.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accusatory tones deliberately escalated the tension in the room.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Actionable insights promptly drove the decision-making process.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advisable precautions cautiously minimized the potential risks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciable differences significantly influenced the research outcomes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable leadership consistently inspired the entire organization.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Achievable objectives gradually increased the team's productivity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amiable discussions often fostered a collaborative environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjustable mechanisms efficiently regulated the machine's operation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Audible alarms instantly alerted the security personnel.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accessible information rapidly informed the public about the changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledgable facts fundamentally shaped the scientific conclusions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Agricultural innovations remarkably boosted the farm's yield annually.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable models continually evolved to meet market demands.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Avoidable mistakes frequently disrupted the workflow.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Arable land significantly enhanced the region's agricultural potential.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Articulable points clearly conveyed the speaker's arguments persuasively.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable courage consistently defined the firefighter's career.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acceptable behavior uniformly adhered to the company's standards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alterable settings easily customized the user experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciable growth steadily increased the company's market share.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attainable benchmarks incrementally motivated the employees.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authentic voices genuinely resonated with the diverse audience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Affordable solutions effectively addressed the pressing issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aesthetic designs beautifully enhanced the architectural appeal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable policies readily accommodated the unexpected challenges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Agonizable dilemmas constantly plagued the protagonist's journey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledgable achievements publicly recognized the students' efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable patience gradually resolved the contentious disputes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjustable parameters precisely controlled the experimental conditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amenable personalities often facilitated smooth negotiations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anticipable results reliably guided the strategic planning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Astoundable audiences continuously marveled at the magician's tricks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appreciable talent evidently shone through the artist's work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advantageable positions strategically improved the company's standing.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable systems promptly responded to the changing requirements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authentic experiences deeply enriched the travelers' adventures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable resilience persistently characterized the survivor's spirit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Appetizable dishes delightfully satisfied the gourmet's palate.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advisable measures effectively prevented potential hazards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amendable drafts continually improved with each revision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Achievable milestones consistently advanced the project's progress.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amenable suggestions readily incorporated into the final design.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Articulable feedback constructively improved the service quality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledgeable contributions significantly enhanced the team's performance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adorable children joyfully played in the vibrant playground.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Affectionable gestures warmly conveyed the parents' love.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accessible resources greatly supported the researchers' work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acquirable skills undoubtedly benefited the job applicants.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advantageable traits prominently featured in the candidate's profile.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable software seamlessly upgraded the system's capabilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authentic ingredients richly flavored the traditional dishes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Avoidable conflicts preferably resolved through dialogue.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledgable milestones meaningfully marked the company's history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Affable hosts generously welcomed the international guests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable generosity profoundly impacted the local community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acquirable knowledge continually expanded the students' horizons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aesthetically pleasing designs subtly enhanced the product's appeal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjustable features effortlessly tailored the application to user needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ambitable goals realistically set for the ambitious project.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advisable actions prudently mitigated the emerging risks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adorable decorations charmingly adorned the festive occasion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Agonizable choices perpetually haunted the decision-makers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accessible facilities inclusively served the diverse population.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applicable theories rigorously tested through empirical studies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable frameworks flexibly supported the dynamic requirements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amendable contracts readily adjusted to reflect the new terms.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Astoundable crowds eagerly anticipated the breathtaking performance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authentic narratives deeply connected with the readers' emotions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attainable heights symbolically represented the aspirational goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advisable interventions proactively addressed the critical issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable discipline consistently maintained throughout the rigorous training.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amendable budgets sensibly allocated the financial resources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advantageable conditions favorably influenced the experimental outcomes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amiable interactions positively reinforced the collaborative spirit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Applicable techniques systematically improved the process efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Accessible venues comfortably accommodated the large gatherings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Articulable objectives clearly communicated the strategic vision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adaptable schedules smoothly accommodated the unforeseen changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adorable moments fondly remembered by the close-knit family.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acknowledgable successes prominently celebrated at the award ceremony.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anticipable challenges carefully planned for in advance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Adjustable components easily modified to suit the specific needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Acquirable assets strategically strengthened the investment portfolio.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Affectionable bonds genuinely nurtured among the team members.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Admirable traits consistently demonstrated by the dedicated volunteers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amendable agreements mutually beneficial for all parties involved.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aesthetically pleasing landscapes beautifully captured by the photographer.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Napoleon Bonaparte, a strategic military leader, meticulously engineered numerous formidable campaigns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci, an illustrious polymath, ingeniously pioneered advancements in both art and science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Curie, a distinguished physicist, rigorously researched radioactive elements with groundbreaking results.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's discern the nuances between these concepts to gain a comprehensive understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We must elucidate the distinctions between these phenomena to avoid confusion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By scrutinizing the subtleties, we can effectively differentiate between these elements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's delineate the divergences in their characteristics to grasp their individual essence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through careful analysis, we can demarcate the boundaries between these entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's parse the intricacies to discern the disparate qualities of each.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By delving into the specifics, we can discriminate between these disparate entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's dissect the components to discern the divergent attributes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's scrutinize the data to extract valuable insights.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We must collaborate to attain our common goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's facilitate discussions to foster understanding and cooperation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We need to evaluate the options before making a decision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's activate our network to mobilize support for the cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Efforts to automate the process have streamlined operations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's cultivate a culture of inclusivity and diversity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to attract top talent to advance our mission.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's negotiate with stakeholders to reach a mutually beneficial agreement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Efforts to automate manual tasks have increased efficiency.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's demonstrate our commitment through action.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We aspire to achieve excellence in all endeavors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's navigate the challenges with resilience and determination.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for policies that promote equality and justice.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Let's innovate to stay ahead of the competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to captivate our audience with compelling storytelling.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's activate our resources to address pressing issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate challenges but remain steadfast in our goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's collaborate with other organizations to amplify our impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for measures to alleviate poverty and inequality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's communicate our vision with clarity and conviction.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We appreciate your efforts to advance the cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the effectiveness of our strategies regularly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate changes and adapt accordingly.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's demonstrate our commitment through concrete actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to inspire others through our work.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's cultivate a culture of continuous learning and growth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for policies that promote sustainability and conservation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the potential risks before proceeding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to accelerate progress towards our objectives.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's demonstrate empathy and compassion in our interactions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to empower individuals to reach their full potential.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's advocate for policies that prioritize public health and safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate challenges but remain undeterred in our mission.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's collaborate with local communities to address their needs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to achieve measurable results through our efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the impact of our initiatives on the community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate objections but remain confident in our stance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's navigate the complexities with prudence and foresight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to create a better future for generations to come.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's advocate for measures to protect the environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to alleviate suffering and promote human dignity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's collaborate with experts to develop innovative solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate resistance but remain committed to our cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's activate our network to mobilize support for change.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We aspire to lead by example and inspire others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the feasibility of our proposed solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for policies that promote economic prosperity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's cultivate a sense of belonging and community.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to foster collaboration and cooperation among stakeholders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's communicate our message with clarity and impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We appreciate your dedication to advancing the cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the long-term implications of our decisions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to create a more just and equitable society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's activate our resources to address systemic issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate opposition but remain steadfast in our beliefs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's collaborate with policymakers to enact meaningful change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for measures to protect human rights and dignity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the potential benefits of our proposed actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to inspire others to join us in our efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's cultivate a spirit of resilience and perseverance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to make a positive difference in the world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's communicate our values with authenticity and integrity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We appreciate your support in furthering our goals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the effectiveness of our advocacy efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We anticipate challenges but remain optimistic about the future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's activate our network to mobilize resources and support.",
          "کوردی_کوردی_کوردی");
      await insertSentence("We aim to build bridges and foster understanding.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's collaborate with allies to amplify our impact.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for policies that promote social justice and equality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the potential risks and benefits of our actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to create a more sustainable and inclusive world.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's navigate the complexities with wisdom and discernment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We appreciate your commitment to our shared mission.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the feasibility of our proposed solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to empower individuals to advocate for change.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's cultivate a culture of empathy and solidarity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aspire to inspire others to join us in our efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's communicate our message with clarity and conviction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We appreciate your contributions to advancing the cause.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's evaluate the long-term impact of our actions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We aim to create meaningful change through collective action.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's activate our resources to address pressing issues.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "We advocate for policies that prioritize the well-being of all.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Books are windows to new worlds, offering boundless knowledge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Birds in the sanctuary sing melodies that soothe the soul.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bushes in the garden bloom with vibrant colors in the spring.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Businesses in the community thrive when supported by local patrons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Babies in the nursery giggle and coo, bringing joy to all.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balloons at the celebration danced in the breeze, brightening the sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bells in the church tower chimed, marking the passage of time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bicycles in the garage await their next adventure on the trails.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bedsheets in the linen closet are neatly folded, ready for use.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Brains in the laboratory buzz with activity as researchers work.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bottles in the pantry clink together as shelves are rearranged.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bunk beds in the cabin provide cozy sleeping quarters for campers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bricks in the wall form a sturdy barrier against the elements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beaches along the coast beckon with their sandy shores and crashing waves.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Baskets in the market overflow with fresh fruits and vegetables.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Benches in the park offer weary travelers a place to rest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Boots in the closet are polished and ready for the hiking trip.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bars in the city buzz with activity as nightlife comes alive.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bridges in the cityscape span rivers and connect communities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Booksellers in the bookstore help customers find their next read.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Backpacks in the classroom are stuffed with books and supplies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blankets in the living room provide warmth on chilly evenings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bugs in the garden pollinate flowers and keep ecosystems in balance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beads in the craft store come in a rainbow of colors and sizes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Buds on the trees burst forth in spring, signaling new beginnings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bands in the parade march proudly, playing lively tunes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balloons at the party float gracefully, adding color to the festivities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bushels of apples in the orchard are ripe for picking in the autumn.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bats in the attic flutter about, seeking refuge during the day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bays in the harbor are filled with boats, bobbing gently on the water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bracelets in the jewelry box sparkle in the sunlight.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blossoms on the bushes perfume the air with their sweet fragrance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blossoms on the cherry trees paint the landscape in shades of pink and white.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Barns on the farm shelter animals and store equipment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Books in the library transport readers to far-off lands and distant times.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Boulders in the riverbed create rapids and eddies as water rushes past.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bangles on the dancer's wrist jingle with each graceful movement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Berries in the garden ripen under the warm summer sun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bridesmaids in the wedding party help the bride prepare for her big day.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beakers in the laboratory are filled with colorful liquids and bubbling solutions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banners on the walls display messages of unity and solidarity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Baskets in the bakery overflow with freshly baked bread and pastries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bushes in the park provide shelter for birds and small animals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bridges in the cityscape offer stunning views of the skyline and river below.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bottles in the recycling bin clink together as they're emptied into the truck.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beads on the necklace shimmer in the candlelight, catching the eye of onlookers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Barnacles on the dock cling to the wooden pilings, creating a textured surface.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balloons at the festival sway in the breeze, adding a festive touch to the event.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Blossoms on the trees herald the arrival of spring, filling the air with their fragrance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through meticulous examination, we can ascertain the disparities between these phenomena.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's embark on a journey of discernment to unravel the complexities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By engaging in critical analysis, we can delineate the distinctions between these entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's delve into the intricacies to discern the multifaceted differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through rigorous scrutiny, we can distinguish between these disparate elements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's engage in a process of differentiation to uncover the underlying disparities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By engaging in comparative analysis, we can delineate the variations between these entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's delve into the nuances to elucidate the discernible differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through comprehensive examination, we can decipher the divergent qualities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's embark on a quest for clarity to discern the disparate characteristics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By meticulously examining the details, we can discriminate between these disparate entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's explore the intricacies to unravel the subtle distinctions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through careful scrutiny, we can ascertain the disparate attributes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's engage in a process of differentiation to elucidate the distinctions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By parsing the intricacies, we can discern the subtle differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's embark on a journey of analysis to unravel the complexities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through rigorous examination, we can delineate the divergent qualities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's delve into the nuances to discern the multifaceted differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By engaging in critical analysis, we can discriminate between these disparate elements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's embark on a process of discernment to unravel the intricacies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through meticulous examination, we can ascertain the disparities between these phenomena.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's delve into the intricacies to discern the multifaceted differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By engaging in comprehensive analysis, we can delineate the distinctions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's embark on a journey of differentiation to unravel the complexities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Through careful scrutiny, we can dissect the components to discern the divergent attributes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's engage in a process of discernment to elucidate the discernible differences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "By parsing the intricacies, we can discriminate between these disparate entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Let's embark on a quest for clarity to ascertain the disparities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mahatma Gandhi, a visionary political leader, peacefully orchestrated India's monumental independence movement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Niccolò Machiavelli, an astute political theorist, profoundly influenced political strategy with his seminal writings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cleopatra, a captivating queen, deftly navigated complex political alliances to preserve Egypt's sovereignty.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Isaac Newton, a preeminent mathematician, formulated revolutionary laws that fundamentally transformed physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Florence Nightingale, a pioneering nurse, systematically reformed medical practices with exceptional dedication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Socrates, a foundational philosopher, persistently questioned societal norms to cultivate intellectual discourse.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elizabeth I, an influential monarch, adeptly steered England through a transformative golden age.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Albert Einstein, a renowned theoretical physicist, profoundly reshaped our understanding of the universe with his theories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Amelia Earhart, a trailblazing aviator, courageously challenged gender norms by setting numerous flight records.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Galileo Galilei, an innovative astronomer, valiantly advocated for heliocentric theory despite fierce opposition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "William Shakespeare, a masterful playwright, timelessly enriched literature with his profound and enduring works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nelson Mandela, a stalwart anti-apartheid leader, relentlessly pursued justice, ultimately dismantling systemic racism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jane Austen, a keen novelist, astutely depicted societal dynamics with her incisive and enduring literature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander the Great, an unparalleled conqueror, expansively forged one of history's largest empires.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Joan of Arc, a revered heroine, courageously led French forces to pivotal victories during the Hundred Years' War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charles Darwin, an eminent naturalist, meticulously developed the groundbreaking theory of evolution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frida Kahlo, a seminal painter, vividly expressed personal and cultural identity through her captivating artwork.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mozart, a prodigious composer, indelibly influenced classical music with his prolific and masterful compositions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Harriet Tubman, an unwavering abolitionist, fearlessly liberated countless slaves via the Underground Railroad.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vincent van Gogh, an enigmatic artist, poignantly captured human emotion in his visually striking paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Susan B. Anthony, a fervent suffragist, tirelessly campaigned for women's rights and societal equality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Johannes Gutenberg, an inventive printer, revolutionized information dissemination with his movable-type printing press.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thomas Edison, a prolific inventor, continually transformed modern life with his groundbreaking innovations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Winston Churchill, a steadfast statesman, resolutely guided Britain through the harrowing trials of World War II.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Victoria, a powerful monarch, oversaw an era of immense industrial, cultural, and territorial expansion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Martin Luther King Jr., an impassioned civil rights leader, eloquently championed nonviolent resistance to racial injustice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Antoinette, a controversial queen, epitomized the complexities of monarchy during the French Revolution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Archimedes, a brilliant mathematician, ingeniously advanced understanding in geometry, physics, and engineering.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clara Barton, a dedicated nurse, compassionately founded the American Red Cross and revolutionized emergency care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Galileo Galilei, a pioneering astronomer, boldly challenged the geocentric model with empirical observations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Confucius, a sagacious philosopher, profoundly shaped Chinese thought with his teachings on ethics and governance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rosa Parks, a resolute activist, famously catalyzed the Civil Rights Movement by refusing to surrender her bus seat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander Fleming, a pioneering biologist, fortuitously discovered penicillin, revolutionizing medical treatment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hammurabi, a historic king, codified one of the earliest and most comprehensive sets of laws in human history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thomas Jefferson, an influential statesman, meticulously authored the Declaration of Independence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Louis Pasteur, a groundbreaking microbiologist, innovatively developed vaccines and pasteurization techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hypatia, an erudite philosopher, significantly contributed to mathematics and astronomy in ancient Alexandria.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Simón Bolívar, a revolutionary leader, tirelessly fought for and achieved independence for several South American nations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Michelangelo, a masterful artist, exquisitely sculpted and painted works that remain unparalleled in beauty and influence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sitting Bull, a formidable Lakota leader, valiantly resisted U.S. government policies and defended his people's way of life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Florence Nightingale, a trailblazing nurse, fundamentally reformed hospital sanitation practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Benjamin Franklin, a versatile polymath, significantly impacted American history through his inventions and diplomacy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empress Dowager Cixi, a powerful regent, adeptly navigated and influenced the late Qing dynasty's political landscape.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genghis Khan, a fearsome conqueror, expansively unified the Mongol tribes into a formidable empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sophocles, an illustrious playwright, profoundly enriched Greek drama with his tragic masterpieces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Catherine the Great, an astute empress, substantially modernized Russia with her ambitious reforms and cultural patronage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "John Locke, an influential philosopher, profoundly impacted modern political theory with his writings on liberty and governance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marco Polo, an intrepid explorer, extensively chronicled his extraordinary travels through Asia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hatshepsut, an ambitious pharaoh, notably expanded Egypt's trade networks and monumental architecture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nicolaus Copernicus, a pioneering astronomer, radically proposed the heliocentric model of the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Eleanor Roosevelt, an indefatigable advocate, tirelessly championed human rights and social justice worldwide.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Herodotus, a foundational historian, meticulously documented the ancient world in his extensive writings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leon Trotsky, a fervent revolutionary, played a pivotal role in the Bolshevik Revolution and early Soviet state formation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "John F. Kennedy, a charismatic president, vigorously led the United States through a crucial period of the Cold War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Elizabeth Blackwell, a pioneering physician, tenaciously became the first woman to receive a medical degree in the United States.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "John Muir, a passionate naturalist, ardently advocated for the preservation of wilderness and national parks.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Voltaire, an incisive writer, eloquently criticized societal injustices through his satirical works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Imhotep, an ingenious architect, designed the first pyramids and profoundly influenced ancient Egyptian architecture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alfred Nobel, an inventive chemist, notably established the Nobel Prizes with his amassed fortune from inventing dynamite.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Harriet Beecher Stowe, a compelling author, passionately wrote 'Uncle Tom's Cabin,' galvanizing anti-slavery sentiment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Louisa May Alcott, a talented novelist, richly portrayed family life and women's experiences in her enduring works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "David Livingstone, an intrepid explorer, meticulously mapped uncharted regions of Africa and advocated against the slave trade.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Beethoven, a masterful composer, profoundly transformed classical music with his innovative symphonies and sonatas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Isabella I, a formidable monarch, decisively unified Spain and sponsored Christopher Columbus's voyages.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Homer, an epic poet, timelessly narrated the legendary tales of the Iliad and the Odyssey.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clive Staples Lewis, a prolific writer, profoundly influenced modern literature with his imaginative works and theological writings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "William the Conqueror, a decisive ruler, fundamentally reshaped England with his Norman conquest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Johann Sebastian Bach, a virtuoso composer, meticulously crafted complex and beautiful Baroque music.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Indira Gandhi, a resilient prime minister, vigorously led India through significant political and social changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pythagoras, a foundational mathematician, significantly contributed to geometry and philosophical thought.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Georgia O'Keeffe, a pioneering artist, vividly captured the essence of American landscapes with her unique style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robert the Bruce, a valiant king, heroically secured Scotland's independence through decisive battles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Franz Kafka, an enigmatic writer, profoundly explored existential themes in his surreal and influential works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Helen Keller, a remarkable advocate, passionately championed the rights of the disabled despite her own profound challenges.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Otto von Bismarck, a shrewd statesman, skillfully unified Germany and shaped its powerful presence in Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anne Frank, a poignant diarist, indelibly recorded her harrowing experiences during the Holocaust.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Andrew Carnegie, a prolific industrialist, generously funded public libraries and education with his vast fortune.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Nefertiti, an influential queen, prominently featured in Egyptian art and politics during her reign.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "James Watt, an inventive engineer, dramatically improved the steam engine, fueling the Industrial Revolution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander Graham Bell, an inventive scientist, famously revolutionized communication with the invention of the telephone.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jean-Jacques Rousseau, an influential philosopher, profoundly impacted modern thought with his writings on education and society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Clara Schumann, a gifted pianist, significantly contributed to the Romantic era of music through her performances and compositions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alfred the Great, a wise king, effectively defended England against Viking invasions and promoted learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Henrietta Lacks, an unsung hero, posthumously contributed to medical science through the immortal HeLa cells derived from her body.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sappho, an acclaimed poet, vividly expressed deep emotion and personal experiences in her lyric poetry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salvador Dalí, a surrealist artist, dramatically redefined modern art with his imaginative and eccentric works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci, an illustrious polymath, ingeniously pioneered advancements in both art and science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Curie, a distinguished physicist, rigorously researched radioactive elements with groundbreaking results.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Isaac Newton, a preeminent mathematician, formulated revolutionary laws that fundamentally transformed physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Galileo Galilei, an innovative astronomer, valiantly advocated for heliocentric theory despite fierce opposition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vincent van Gogh, an enigmatic artist, poignantly captured human emotion in his visually striking paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Albert Einstein, a renowned theoretical physicist, profoundly reshaped our understanding of the universe with his theories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Michelangelo, a masterful artist, exquisitely sculpted and painted works that remain unparalleled in beauty and influence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Galileo Galilei, a pioneering astronomer, boldly challenged the geocentric model with empirical observations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Florence Nightingale, a pioneering nurse, systematically reformed medical practices with exceptional dedication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander Fleming, a pioneering biologist, fortuitously discovered penicillin, revolutionizing medical treatment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Louis Pasteur, a groundbreaking microbiologist, innovatively developed vaccines and pasteurization techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thomas Edison, a prolific inventor, continually transformed modern life with his groundbreaking innovations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Curie, a tireless chemist, meticulously isolated radioactive isotopes, winning two Nobel Prizes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci, a Renaissance genius, intricately designed visionary machines and painted masterpieces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Johannes Kepler, a brilliant astronomer, accurately described planetary motion with his laws.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Claude Monet, an impressionist painter, skillfully captured the fleeting effects of light and color.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "James Watson, a molecular biologist, famously co-discovered the double helix structure of DNA.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frida Kahlo, a seminal painter, vividly expressed personal and cultural identity through her captivating artwork.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charles Darwin, an eminent naturalist, meticulously developed the groundbreaking theory of evolution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nicolaus Copernicus, a pioneering astronomer, radically proposed the heliocentric model of the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pablo Picasso, an innovative artist, profoundly transformed modern art with his pioneering cubism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rosalind Franklin, a pivotal scientist, crucially contributed to understanding DNA's structure with her X-ray diffraction images.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Georgia O'Keeffe, a pioneering artist, vividly captured the essence of American landscapes with her unique style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Max Planck, a theoretical physicist, fundamentally developed quantum theory, earning the Nobel Prize.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Andy Warhol, a leading figure in pop art, cleverly used mass media imagery to critique consumer culture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Richard Feynman, a theoretical physicist, brilliantly advanced quantum electrodynamics and particle physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salvador Dalí, a surrealist artist, dramatically redefined modern art with his imaginative and eccentric works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jane Goodall, a primatologist, profoundly expanded our understanding of chimpanzees through her immersive research.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Henri Matisse, a fauvist painter, dynamically used color and form to revolutionize modern art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gregor Mendel, a geneticist, meticulously discovered the foundational laws of inheritance through pea plant experiments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jackson Pollock, an abstract expressionist, energetically revolutionized painting with his drip technique.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Edwin Hubble, an astronomer, significantly expanded our knowledge of the universe by discovering its continual expansion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rembrandt, a baroque artist, masterfully depicted human emotion and dramatic lighting in his portraits.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander Graham Bell, an inventive scientist, famously revolutionized communication with the invention of the telephone.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Johannes Gutenberg, an inventive printer, revolutionized information dissemination with his movable-type printing press.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Caravaggio, a baroque painter, dramatically employed chiaroscuro to enhance emotional intensity in his works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Tharp, a geologist, remarkably mapped the ocean floor, revealing the mid-ocean ridge and plate tectonics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marc Chagall, a modernist artist, poetically blended reality and fantasy in his evocative paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Niels Bohr, a physicist, significantly advanced atomic structure understanding and quantum mechanics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Auguste Rodin, a sculptor, vividly captured movement and emotion in his expressive works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "James Clerk Maxwell, a physicist, fundamentally unified electricity and magnetism with his electromagnetic theory.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diego Rivera, a muralist, powerfully depicted social and political themes in his large-scale public works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Curie, a dedicated scientist, profoundly impacted science with her discovery of radioactivity and its applications.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "David Hockney, a contemporary artist, innovatively combined traditional techniques with modern technology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Dmitri Mendeleev, a chemist, systematically organized elements into the periodic table, predicting future discoveries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Henri Rousseau, a post-impressionist, vividly portrayed exotic landscapes and dreamlike scenes in his paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Francis Crick, a molecular biologist, crucially co-discovered the structure of DNA with James Watson.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Edvard Munch, an expressionist, hauntingly depicted human angst and emotion in 'The Scream.'",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Erwin Schrödinger, a physicist, profoundly influenced quantum mechanics with his wave equation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mark Rothko, an abstract expressionist, intensely conveyed emotion through his color field paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Werner Heisenberg, a physicist, crucially developed the uncertainty principle in quantum mechanics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Henri de Toulouse-Lautrec, a post-impressionist, vividly captured Parisian nightlife in his evocative works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robert Hooke, a scientist, extensively contributed to biology, physics, and architecture with his pioneering research.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Georgia O'Keeffe, a modernist, beautifully depicted flowers and southwestern landscapes with her distinctive style.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Albert Einstein, a theoretical physicist, transformed our understanding of time and space with his theory of relativity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pierre-Auguste Renoir, an impressionist, delicately portrayed light and movement in his vibrant paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Antoine Lavoisier, a chemist, methodically established the law of conservation of mass, revolutionizing chemistry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vincent van Gogh, a post-impressionist, intensely conveyed emotion and color in his iconic works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Michael Faraday, a scientist, significantly advanced our understanding of electromagnetism and electrochemistry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci, a Renaissance polymath, seamlessly blended art and science with his diverse talents and inventions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Skłodowska Curie, a physicist, tirelessly pioneered research in radioactivity, winning two Nobel Prizes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gustav Klimt, a symbolist painter, richly adorned his works with gold leaf and intricate patterns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gregor Mendel, a geneticist, meticulously discovered the foundational principles of heredity through pea plant experiments.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Claude Monet, an impressionist, masterfully captured fleeting moments of light and color in his paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Nikola Tesla, an inventor, profoundly influenced modern electricity with his alternating current system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jackson Pollock, an abstract expressionist, dynamically revolutionized painting with his drip technique.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rosalind Franklin, a biophysicist, crucially contributed to understanding DNA's structure through her X-ray diffraction images.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Paul Cézanne, a post-impressionist, profoundly bridged the gap between 19th-century impressionism and 20th-century cubism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Thomas Edison, an inventor, tirelessly developed countless devices that transformed everyday life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frida Kahlo, a surrealist painter, vividly explored personal and cultural identity in her introspective works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Enrico Fermi, a physicist, significantly advanced nuclear physics and developed the first nuclear reactor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Henri Matisse, a fauvist, boldly used color and form to create revolutionary and vibrant art.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander Fleming, a biologist, fortuitously discovered penicillin, revolutionizing the treatment of bacterial infections.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Georgia O'Keeffe, a modernist painter, richly captured the essence of American landscapes and flora.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "James Watson, a molecular biologist, famously co-discovered the double helix structure of DNA.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Michelangelo, a Renaissance sculptor, magnificently captured the human form in his enduring masterpieces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charles Darwin, a naturalist, meticulously developed the theory of evolution by natural selection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Edgar Degas, an impressionist, exquisitely depicted ballet dancers and everyday life in his works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stephen Hawking, a theoretical physicist, profoundly advanced our understanding of black holes and cosmology.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salvador Dalí, a surrealist painter, dramatically redefined modern art with his imaginative and eccentric works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Richard Feynman, a theoretical physicist, brilliantly advanced quantum electrodynamics and particle physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mary Cassatt, an impressionist, intimately portrayed the lives of women and children in her paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Isaac Newton, a mathematician, formulated the laws of motion and universal gravitation, revolutionizing physics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Joan Miró, a surrealist, whimsically combined abstract forms and bright colors in his playful works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Robert Oppenheimer, a physicist, led the Manhattan Project, significantly advancing nuclear science.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Leonardo da Vinci, a visionary artist and inventor, seamlessly blended art and science with his diverse talents.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pablo Picasso, an avant-garde artist, profoundly transformed modern art with his innovative cubism.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Niels Bohr, a physicist, significantly advanced atomic structure understanding and quantum mechanics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Claude Monet, an impressionist, masterfully captured fleeting moments of light and color in his paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Louis Pasteur, a biologist, innovatively developed vaccines and pasteurization techniques.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mark Rothko, an abstract expressionist, intensely conveyed emotion through his color field paintings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marie Curie, a dedicated scientist, profoundly impacted science with her discovery of radioactivity and its applications.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Diego Rivera, a muralist, powerfully depicted social and political themes in his large-scale public works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Corporate governance rules stringently ensure ethical conduct and accountability in businesses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Strict rules regarding waste disposal effectively mitigate environmental pollution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Academic institutions rigorously enforce rules to maintain academic integrity and fairness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Taxation rules intricately outline the obligations of individuals and corporations to fund public services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Building codes comprehensively detail safety rules to protect residents and workers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Regulatory agencies vigilantly monitor compliance with financial rules to prevent fraud and abuse.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sports leagues uniformly apply rules to ensure fair play and competition among teams.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Legal systems meticulously define rules to uphold justice and order in society.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "International trade rules facilitate equitable exchanges between countries while protecting domestic interests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Employment contracts clearly delineate rules to safeguard both employee rights and employer responsibilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Healthcare regulations strictly enforce rules to maintain patient safety and care standards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traffic laws universally prescribe rules to manage road use and prevent accidents.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Consumer protection laws stringently establish rules to prevent exploitation and ensure product safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Immigration policies explicitly state rules to manage the flow of people across borders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "School districts enforce rules to foster a conducive learning environment and student discipline.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Intellectual property laws meticulously define rules to protect creators' rights and innovations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Zoning regulations comprehensively outline rules to manage land use and urban development.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Corporate compliance programs diligently ensure adherence to legal and ethical rules.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Maritime laws globally enforce rules to govern activities on international waters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Antitrust laws rigorously impose rules to prevent monopolies and promote competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Privacy regulations stringently establish rules to protect individuals' personal information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Professional associations uphold strict rules to maintain standards within their fields.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Judicial review processes carefully scrutinize rules to ensure they align with constitutional principles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Environmental policies systematically enforce rules to conserve natural resources and biodiversity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Licensing boards vigilantly apply rules to ensure practitioners meet required standards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Contract law intricately defines rules to govern agreements and their enforcement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Corporate bylaws meticulously set forth rules to guide internal governance and decision-making.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Public health guidelines enforce rules to manage disease outbreaks and protect community well-being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Broadcasting regulations strictly impose rules to manage content and maintain public decency standards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Insurance policies clearly outline rules to manage risk and provide coverage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Election laws comprehensively detail rules to ensure fair and democratic voting processes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cybersecurity policies enforce stringent rules to protect data and prevent unauthorized access.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trade unions advocate for rules to protect workers' rights and improve labor conditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Patent laws meticulously establish rules to incentivize innovation and protect inventions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Educational accreditation bodies rigorously enforce rules to ensure institutional quality and standards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Animal welfare regulations stringently impose rules to ensure humane treatment and care.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Telecommunications regulations comprehensively outline rules to manage spectrum use and competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Public safety ordinances enforce rules to manage community hazards and emergency responses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Transport regulations meticulously define rules to ensure the safety and efficiency of public and private transit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Human rights organizations advocate for global rules to protect individuals' freedoms and dignity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Corporate social responsibility guidelines encourage voluntary adherence to ethical rules.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Military protocols strictly enforce rules to govern conduct and operations in armed forces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Banking regulations rigorously impose rules to ensure financial stability and consumer protection.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Data protection laws meticulously set forth rules to manage the handling and security of personal data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Food safety regulations stringently enforce rules to ensure the quality and safety of food products.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Energy policies systematically establish rules to manage resources and promote sustainability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pharmaceutical regulations strictly apply rules to ensure the safety and efficacy of drugs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Workplace safety laws comprehensively detail rules to protect employees from hazards.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Copyright laws meticulously define rules to protect the creative works of authors and artists.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Disaster response plans enforce rules to manage relief efforts and ensure public safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Family law intricately establishes rules to govern domestic relations and custody matters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Public utilities regulations strictly enforce rules to ensure reliable and fair service provision.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Medical ethics guidelines rigorously outline rules to guide the professional conduct of healthcare providers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Landlord-tenant laws meticulously detail rules to protect the rights and responsibilities of both parties.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tourism regulations comprehensively establish rules to manage visitor impact and preserve cultural heritage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Public procurement policies strictly enforce rules to ensure transparency and fairness in government contracts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art conservation guidelines meticulously outline rules to preserve and restore cultural artifacts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Scientific research protocols rigorously apply rules to ensure ethical conduct and valid results.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Public speaking rules, such as time limits and content guidelines, maintain order and relevance in forums.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Recreational fishing rules stringently enforce catch limits and seasons to protect fish populations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Corporate reporting standards meticulously define rules for financial transparency and accountability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Prison regulations strictly apply rules to manage inmate conduct and facility operations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Advertising laws rigorously enforce rules to prevent false claims and ensure truthful promotion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Library policies clearly outline rules to manage the use and lending of resources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Event management guidelines strictly establish rules to ensure safety and order during public gatherings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Veterinary practice regulations comprehensively detail rules to ensure animal health and professional conduct.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Discrimination laws stringently enforce rules to protect individuals from unfair treatment based on various attributes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Urban planning policies meticulously set forth rules to guide the development and use of land.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Election campaign rules rigorously impose limits and requirements to ensure fair competition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marine conservation regulations stringently enforce rules to protect ocean ecosystems and species.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Intellectual property enforcement meticulously applies rules to prevent piracy and infringement.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Media censorship laws strictly impose rules to control and manage the dissemination of information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Health and safety codes rigorously outline rules to protect public well-being in various settings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Competition laws meticulously enforce rules to prevent anti-competitive practices and promote fairness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Financial reporting standards strictly establish rules for the accurate and consistent presentation of financial data.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Substance control regulations stringently impose rules to manage the use and distribution of controlled substances.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Energy efficiency standards rigorously outline rules to promote sustainable consumption and production.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Water quality regulations stringently enforce rules to ensure safe and clean drinking water.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Consumer credit laws meticulously establish rules to protect borrowers and regulate lending practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Product liability laws rigorously enforce rules to hold manufacturers accountable for safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Child protection laws stringently impose rules to safeguard the welfare and rights of minors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Construction safety standards rigorously outline rules to prevent accidents and ensure worker safety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Environmental impact assessment regulations meticulously set forth rules to evaluate and mitigate project effects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Intellectual freedom policies rigorously outline rules to protect the right to access and express ideas.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Broadcast standards stringently enforce rules to manage content and maintain public decency.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Labor laws meticulously establish rules to regulate working conditions and protect workers' rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Academic standards rigorously outline rules to ensure educational quality and integrity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Export control regulations stringently enforce rules to manage the trade of sensitive technologies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Conflict of interest policies rigorously outline rules to prevent undue influence and ensure impartiality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Municipal codes meticulously establish rules to govern local community standards and behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Climate change policies stringently impose rules to mitigate environmental impact and promote sustainability.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Healthcare accreditation standards rigorously outline rules to ensure quality and safety in medical facilities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cyber ethics guidelines stringently enforce rules to govern conduct and security in digital spaces.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Land use regulations meticulously set forth rules to manage development and conservation efforts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Art exhibition policies rigorously outline rules to ensure the preservation and proper display of works.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Julius Caesar, a formidable Roman general, adeptly expanded the Roman Republic's territory through conquest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Alexander the Great, a brilliant Macedonian military leader, rapidly established one of the largest empires in history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Genghis Khan, a ruthless Mongol ruler, efficiently unified the Mongol tribes and conquered vast regions of Asia and Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Napoleon Bonaparte, a strategic French military leader, dramatically altered European politics through his expansive campaigns.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cleopatra VII, a shrewd Egyptian queen, skillfully navigated political alliances to maintain her kingdom's autonomy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Charlemagne, a visionary Frankish king, effectively united much of Western Europe under the Carolingian Empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Elizabeth I, a resilient English monarch, successfully defended her nation against the Spanish Armada.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Attila the Hun, a fearsome nomadic leader, aggressively expanded his empire across Europe with relentless invasions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "George Washington, an esteemed American general, led the Continental Army to victory during the Revolutionary War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Catherine the Great, an influential Russian empress, profoundly modernized Russia and expanded its borders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Richard the Lionheart, a valiant English king, famously led the Third Crusade to reclaim the Holy Land.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Shaka Zulu, a formidable African warrior king, effectively united the Zulu tribes through innovative military tactics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Frederick the Great, a strategic Prussian king, adeptly expanded and consolidated Prussian territories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Peter the Great, a transformative Russian czar, ambitiously modernized Russia and expanded its empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Victoria, a long-reigning British monarch, presided over an era of industrial, cultural, and colonial expansion.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Meiji, a forward-thinking Japanese ruler, rapidly transformed Japan into a modern industrial power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Otto von Bismarck, a shrewd German statesman, skillfully unified the German states into a powerful empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Louis XIV, an absolute French monarch, lavishly built the Palace of Versailles and expanded French influence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Joan of Arc, a fearless French heroine, valiantly led troops to lift the Siege of Orléans during the Hundred Years' War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Hannibal Barca, a brilliant Carthaginian general, famously crossed the Alps to challenge Rome in the Second Punic War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Henry VIII, a controversial English ruler, fundamentally altered the church-state relationship by establishing the Church of England.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Isabella I, a determined Spanish monarch, sponsored Columbus's voyages, initiating the age of exploration.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Suleiman the Magnificent, a powerful Ottoman sultan, significantly expanded the empire and presided over its golden age.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Leonidas I, a legendary Spartan king, heroically led his troops at the Battle of Thermopylae against overwhelming odds.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Philip II of Spain, a devout Catholic ruler, aggressively sought to strengthen his empire and enforce religious unity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Czar Nicholas II, the last Russian emperor, faced immense turmoil leading to the Russian Revolution and his abdication.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Simon Bolivar, a visionary South American liberator, decisively led independence movements across several nations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Cyrus the Great, a pioneering Persian ruler, established the vast and influential Achaemenid Empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Qin Shi Huang, the first unifier of China, meticulously built the Great Wall and standardized various systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Alfred the Great, a wise English monarch, successfully defended his kingdom against Viking invasions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empress Theodora, a powerful Byzantine empress, significantly influenced imperial policies and championed women's rights.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Justinian I, a Byzantine ruler, comprehensively codified Roman law and embarked on ambitious building projects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Harald Hardrada, a fierce Norse ruler, boldly sought to claim the English throne, leading to the Battle of Stamford Bridge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Hatshepsut, an influential Egyptian pharaoh, successfully expanded trade routes and commissioned grand building projects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Gustavus Adolphus, a strategic Swedish king, effectively led his nation during the Thirty Years' War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Ashoka the Great, a transformative Indian ruler, embraced Buddhism and promoted non-violence after a bloody conquest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Charlemagne, a revered European ruler, significantly shaped the cultural and political landscape of medieval Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Leonidas I, a legendary Spartan warrior, valiantly defended Greece against the Persian invasion at Thermopylae.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Richard III, a controversial English monarch, notoriously met his end at the Battle of Bosworth Field.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King William the Conqueror, a formidable Norman ruler, successfully invaded and transformed England after the Battle of Hastings.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Akbar the Great, a tolerant Mughal ruler, notably fostered religious harmony and expanded his empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Ramses II, a powerful Egyptian pharaoh, ambitiously built monumental structures and secured military victories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Boudica, a fierce British tribal leader, courageously led a revolt against Roman occupation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Solomon, a wise and wealthy Israeli monarch, famously built the First Temple and promoted prosperity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King David, a revered Israeli king, established Jerusalem as the political and religious center of his kingdom.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Nebuchadnezzar II, a powerful Babylonian ruler, magnificently rebuilt Babylon and commissioned the Hanging Gardens.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Hammurabi, an influential Babylonian king, codified a comprehensive set of laws known as the Code of Hammurabi.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Hadrian, a strategic Roman leader, famously built Hadrian's Wall to fortify the empire's northern boundary.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Mansa Musa, a wealthy Malian ruler, lavishly displayed his empire's riches during his pilgrimage to Mecca.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Thutmose III, a formidable Egyptian pharaoh, successfully led military campaigns to expand his empire's borders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Constantine the Great, a pivotal Roman ruler, embraced Christianity and established Constantinople.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Zenobia, a resilient Syrian queen, boldly challenged Roman authority before her eventual defeat.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King John of England, a controversial monarch, reluctantly signed the Magna Carta, limiting royal power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Canute the Great, a wise Danish ruler, adeptly governed a vast North Sea Empire encompassing England and Scandinavia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Afonso I, a transformative Kongo ruler, embraced Christianity and established strong ties with Portugal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Kangxi, a long-reigning Qing dynasty ruler, effectively expanded and consolidated Chinese territory.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Louis IX, a pious French king, led two crusades and was later canonized as Saint Louis.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Shaka Zulu, a revolutionary African leader, dramatically transformed the Zulu Kingdom through military innovation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Alfred the Great, a scholarly English ruler, successfully defended his realm from Viking invasions and promoted education.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Moctezuma II, a powerful Aztec leader, faced the devastating Spanish conquest led by Hernán Cortés.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Hammurabi, a pioneering Babylonian ruler, established one of the earliest and most comprehensive legal codes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Trajan, a capable Roman ruler, led the empire to its greatest territorial extent through military conquests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Henry IV of France, a pragmatic ruler, enacted the Edict of Nantes to promote religious tolerance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Marcus Aurelius, a stoic philosopher-king, adeptly governed Rome while writing his Meditations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King David, a heroic Israeli leader, famously defeated Goliath and established Jerusalem as his capital.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Elizabeth II, a long-reigning British monarch, witnessed and adapted to immense social and political changes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Ashurbanipal, an erudite Assyrian ruler, famously established a vast library in Nineveh.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Hirohito, a Japanese ruler during WWII, witnessed his nation's transformation post-war into a peaceful power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Harald Fairhair, a legendary Norse ruler, is credited with unifying Norway under his reign.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Edward I, a formidable English monarch, effectively expanded his realm through military campaigns in Wales and Scotland.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Jimmu, the legendary first emperor of Japan, is traditionally regarded as the founder of the Japanese imperial line.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Hammurabi, an influential Mesopotamian ruler, is best known for his codification of ancient laws.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Leopold II, a controversial Belgian ruler, notoriously exploited the Congo Free State for personal gain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Richard I, known as Richard the Lionheart, led the Third Crusade and became a symbol of medieval chivalry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Menelik II of Ethiopia, a strategic ruler, successfully repelled Italian colonial ambitions at the Battle of Adwa.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Philip II of Macedon, a strategic ruler, laid the groundwork for his son Alexander's vast conquests.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Mary I of England, a determined monarch, attempted to restore Catholicism during her turbulent reign.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Charles I of England, a controversial ruler, faced civil war and was ultimately executed by Parliament.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Akihito of Japan, a modernizing monarch, abdicated the throne in favor of his son in 2019.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Bhumibol Adulyadej of Thailand, a revered monarch, was the world's longest-reigning head of state at the time of his death.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Akbar the Great, an innovative Mughal ruler, promoted cultural and religious integration in his empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Louis XVI of France, an ill-fated monarch, faced the French Revolution and was executed during its radical phase.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King William III of England, a constitutional monarch, accepted the Bill of Rights, limiting royal power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Meiji of Japan, a transformative ruler, led the Meiji Restoration, modernizing Japan rapidly.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Gustav II Adolph of Sweden, a military genius, played a crucial role in the Thirty Years' War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Queen Anne of Great Britain, a key ruler, oversaw the union of England and Scotland into a single kingdom.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emperor Ashoka the Great, a pivotal Indian ruler, embraced Buddhism and spread its teachings across Asia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "King Henry V of England, a renowned warrior king, secured a famous victory at the Battle of Agincourt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI algorithms are used in predictive policing to analyze data and identify potential criminal activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Quantum entanglement is a phenomenon in which quantum particles become interconnected in such a way that the state of one particle is correlated with the state of another particle, even if they are far apart.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "SpaceX's Starlink is a satellite constellation project that aims to provide high-speed internet access worldwide.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "AI in agriculture is used for tasks such as crop monitoring, pest control, and yield prediction.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Constitutional monarchies, such as those found in the United Kingdom and Japan, blend traditional monarchy with democratic governance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Federal republics, like the United States and Germany, divide power between a central government and individual states or regions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parliamentary democracies, including India and Canada, feature a system where the executive branch derives its legitimacy from and is accountable to the legislature.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unitary states, such as France and China, concentrate power in a central government with limited autonomy for subnational entities.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Absolute monarchies, exemplified by Saudi Arabia and Brunei, vest supreme authority in a single ruler without constitutional limitations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Socialist republics, like Cuba and Vietnam, prioritize collective ownership of the means of production and central planning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Federal states, such as Australia and Brazil, distribute power between a central government and constituent states or territories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Constitutional republics, including France and South Africa, have a system of government where officials are elected by the people and bound by a constitution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Parliamentary monarchies, such as Spain and Sweden, feature a monarch as head of state with a parliamentary system of government.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Presidential democracies, like the United States and Brazil, have a system where the president is both head of state and head of government.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authoritarian regimes, such as North Korea and Belarus, concentrate political power in the hands of a single leader or small group.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Constitutional theocracies, like Iran and Vatican City, blend religious authority with a legal framework governed by a constitution.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Democratic socialist states, such as Norway and Denmark, combine democratic governance with policies aimed at reducing economic inequality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Federal parliamentary democracies, including Australia and Canada, combine elements of federalism with a parliamentary system of government.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Confederations, like Switzerland and the European Union, consist of sovereign states that delegate some powers to a central authority while retaining independence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Constitutional monarchies with devolved governments, such as the United Kingdom and Spain, grant varying degrees of autonomy to regions or constituent countries within their borders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unitary states with regional autonomy, exemplified by China and Spain, delegate certain powers to subnational entities while maintaining overall authority at the national level.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Federal republics with strong executive powers, like Russia and Mexico, feature a president with significant authority over both the central government and regional administrations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Authoritarian states with pseudo-democratic institutions, such as Russia and Venezuela, maintain the façade of democratic processes while concentrating power in the hands of a ruling elite.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Federal states with asymmetric governance structures, like India and Belgium, grant different levels of autonomy to different constituent units based on historical, cultural, or political factors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Countries like Japan and the United Kingdom have constitutional monarchies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Germany and the United States are federal republics.",
          "کوردی_کوردی_کوردی");
      await insertSentence("India and Canada have parliamentary democracies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "France and China are unitary states.", "کوردی_کوردی_کوردی");
      await insertSentence("Saudi Arabia and Brunei have absolute monarchies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cuba and Vietnam are socialist republics.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Australia and Brazil are federal states.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "France and South Africa are constitutional republics.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Spain and Sweden have parliamentary monarchies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The United States and Brazil are presidential republics.",
          "کوردی_کوردی_کوردی");
      await insertSentence("North Korea and Belarus are authoritarian regimes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Iran and Vatican City are constitutional theocracies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Norway and Denmark are democratic socialist states.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Australia and Canada are federal parliamentary democracies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Russia and Mexico are federal republics.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Belgium and the Netherlands are constitutional monarchies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Israel and Italy are parliamentary republics.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "Switzerland and the European Union are confederations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spain and Ethiopia have autonomous regions.", "کوردی_کوردی_کوردی");
      await insertSentence("Saudi Arabia and Qatar are absolute monarchies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Israel and the Netherlands have proportional representation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Germany and Switzerland use mixed-member proportional representation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "France and South Korea have semi-presidential systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "China and Spain have centralized governments.", "کوردی_کوردی_کوردی");
      await insertSentence("Germany and Turkey have threshold requirements.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sweden and Denmark have ceremonial monarchs.", "کوردی_کوردی_کوردی");
      await insertSentence("Hungary and Mexico have mixed electoral systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The United Kingdom and Spain have devolved administrations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Switzerland and some U.S. states have direct democracy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Malaysia and Kuwait have elective monarchs.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The United States and Brazil have executive presidencies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Italy and Spain have regional parliaments.", "کوردی_کوردی_کوردی");
      await insertSentence("Israel and South Africa have closed party lists.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The United States and India have special status territories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Vietnam and Cuba have one-party dominance.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The United Kingdom and Japan have ceremonial monarchs.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "France and the United States have direct elections for heads of state.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Canada and Australia have regional parliaments and governors.",
          "کوردی_کوردی_کوردی");
      await insertSentence("Russia and Kazakhstan have dominant-party systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence("The United Kingdom and Sweden have reserve powers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Germany and New Zealand have overhang seats.", "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Ottoman Empire, spanning three continents, left a lasting legacy.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Austro-Hungarian Empire, a diverse union, dissolved after World War I.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Byzantine Empire, with Constantinople as its capital, endured centuries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Inca Empire, stretching along the Andes, boasted impressive engineering.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Aztec Empire, with advanced cities, succumbed to Spanish conquest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mongol Empire, under Genghis Khan, conquered vast Eurasian territories.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The British Empire, at its peak, controlled territories across the globe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Roman Empire, known for its legions, shaped Western civilization.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Soviet Union, a superpower, dissolved in 1991, ending the Cold War.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Persian Empire, with rich culture, influenced ancient Mesopotamia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Holy Roman Empire, a complex entity, spanned Central Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mughal Empire, renowned for its art, ruled over the Indian subcontinent.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Ottoman Empire, with its sultans, ruled for over six centuries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Byzantine Empire, with its Orthodox Christianity, bridged East and West.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mayan Empire, with intricate cities, developed advanced agricultural practices.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Inca Empire, known for Machu Picchu, ruled Andean highlands.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Aztec Empire, with its capital Tenochtitlan, flourished in Mesoamerica.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mongol Empire, under Kublai Khan, controlled the largest land empire.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The British Empire, with its colonies, shaped modern geopolitics.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Roman Empire, with its laws, architecture, and engineering, influenced Europe.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Soviet Union, with its socialist ideology, competed with the West.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Persian Empire, with its diverse culture, ruled for millennia.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Holy Roman Empire, with its emperors, saw religious and political conflicts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mughal Empire, with its Taj Mahal, reached its zenith in architecture.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Mars Perseverance rover is a robotic rover that landed on Mars in February 2021 to search for signs of ancient life and collect samples for return to Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space is the vast, seemingly infinite expanse that exists beyond Earth's atmosphere.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The solar system is the collection of planets and other objects that orbit the sun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun is the star at the center of our solar system, around which all the planets orbit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The eight planets in our solar system, in order of their distance from the sun, are Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mercury is the smallest planet in our solar system and the closest to the sun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Venus is often called Earth's 'sister planet' because of its similar size and composition.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Earth is the third planet from the sun and the only known planet to support life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mars is known as the 'Red Planet' because of its reddish appearance, caused by iron oxide on its surface.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Jupiter is the largest planet in our solar system and is known for its giant storm called the Great Red Spot.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Saturn is known for its beautiful ring system, which is made up of ice, rocks, and dust particles.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Uranus is unique among the planets because it rotates on its side, likely due to a collision early in its history.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neptune is the farthest planet from the sun and is known for its deep blue color.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pluto was formerly considered the ninth planet in our solar system but was reclassified as a dwarf planet in 2006.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The asteroid belt is a region of space between Mars and Jupiter that is home to many small, rocky objects called asteroids.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Comets are icy bodies that orbit the sun and develop a glowing coma and sometimes a tail when they are close to the sun.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meteoroids are small rocks or particles in space, while meteors are meteoroids that enter Earth's atmosphere and burn up, creating a streak of light in the sky.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Meteorites are meteoroids that survive their journey through Earth's atmosphere and land on the surface.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Kuiper Belt is a region of space beyond Neptune that is home to many icy objects, including dwarf planets like Pluto.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The Oort Cloud is a theoretical region of space far beyond the Kuiper Belt that is thought to be the source of long-period comets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space exploration has allowed us to learn more about the solar system and universe beyond.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space telescopes, such as the Hubble Space Telescope, have provided stunning images of distant galaxies and stars.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "NASA's Voyager spacecraft have traveled beyond the solar system, sending back valuable data about the outer planets and interstellar space.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The study of exoplanets, or planets outside our solar system, has revealed a diverse array of planetary systems.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The search for life beyond Earth is a major focus of space exploration, with Mars and the moons of Jupiter and Saturn being prime targets.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Colonizing other planets, such as Mars, is a topic of ongoing research and debate, with the goal of ensuring the survival of the human species.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The study of the solar system's formation and evolution provides insights into the processes that shaped our own planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space missions, such as the Mars rovers and the Juno mission to Jupiter, continue to expand our understanding of the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun plays a crucial role in the solar system, providing heat and light that sustain life on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The solar wind is a stream of charged particles that flows from the sun and extends throughout the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Solar flares are intense bursts of radiation from the sun's surface that can affect satellites and other spacecraft.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun's magnetic field extends throughout the solar system, shaping the environment of the planets and other objects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The study of the sun's activity, known as solar physics, helps us understand its effects on Earth and the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space weather refers to the environmental conditions in space, including solar flares, coronal mass ejections, and cosmic rays, that can affect spacecraft and astronauts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The study of the solar system's formation and evolution provides insights into the processes that shaped our own planet.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space missions, such as the Mars rovers and the Juno mission to Jupiter, continue to expand our understanding of the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun plays a crucial role in the solar system, providing heat and light that sustain life on Earth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The solar wind is a stream of charged particles that flows from the sun and extends throughout the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Solar flares are intense bursts of radiation from the sun's surface that can affect satellites and other spacecraft.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The sun's magnetic field extends throughout the solar system, shaping the environment of the planets and other objects.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "The study of the sun's activity, known as solar physics, helps us understand its effects on Earth and the solar system.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Space weather refers to the environmental conditions in space, including solar flares, coronal mass ejections, and cosmic rays, that can affect spacecraft and astronauts.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Business refers to activities involved in producing and selling goods or services for profit.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Economics is the study of how societies use scarce resources to produce valuable commodities and distribute them among different people.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Profit is the financial gain made in a transaction or business venture after all expenses are deducted.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Revenue is the income generated from sales of goods or services, often calculated as price multiplied by quantity sold.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cost refers to the amount of money or resources expended to produce goods or services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supply is the amount of a commodity, product, or service available for purchase at a particular price.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Demand is the quantity of a good or service that consumers are willing and able to purchase at a given price.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Market is a system where buyers and sellers interact to trade goods, services, or contracts, often influenced by supply and demand.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Competition is the rivalry between companies selling similar products or services in the same market.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monopoly is a market structure where a single seller dominates the market for a particular product or service.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Oligopoly is a market structure where a few large firms dominate the market for a particular product or service.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Monopolistic competition is a market structure where many firms sell similar but not identical products, allowing for product differentiation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Market equilibrium is a state where the quantity of goods or services demanded by consumers equals the quantity supplied by producers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Inflation is the rate at which the general level of prices for goods and services rises, leading to a decrease in purchasing power.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deflation is the opposite of inflation, characterized by a decrease in the general price level of goods and services.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gross domestic product (GDP) is the total value of all goods and services produced in a country in a specific period.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Unemployment is the state of being without a job, often measured as a percentage of the total labor force.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Interest rate is the amount charged by a lender to a borrower for the use of money, expressed as a percentage of the principal.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Budget is an estimate of income and expenditure for a set period of time, often used by governments, businesses, and individuals.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Profit margin is a measure of profitability, calculated as net income divided by revenue, often expressed as a percentage.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Business cycle is the recurring pattern of expansion and contraction in economic activity over time.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stock market is a system for buying and selling shares of companies, representing ownership in those companies.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Supply chain is the network of individuals, organizations, resources, activities, and technology involved in the creation and sale of a product.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Marketing is the process of promoting, selling, and distributing a product or service to customers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Human resources refers to the individuals who make up the workforce of an organization, often responsible for recruitment, training, and management.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Financial management is the planning, organizing, directing, and controlling of an organization's financial resources.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Entrepreneurship is the process of starting and running a business, often characterized by innovation and risk-taking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Globalization is the process of increasing interconnectedness and interdependence among countries, economies, and cultures.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Trade refers to the exchange of goods and services between countries or regions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tariff is a tax or duty imposed on imported or exported goods, often used to protect domestic industries.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subsidy is a payment or benefit given by the government to support a particular industry or activity.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Foreign exchange refers to the exchange of one currency for another, often used in international trade.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Balance of trade is the difference between the value of a country's exports and imports.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Debt is the amount of money owed by one party to another, often used by governments and businesses to finance operations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Credit is the ability of a customer to obtain goods or services before payment, based on the trust that payment will be made in the future.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Philosophy is the study of fundamental questions about existence, knowledge, values, reason, mind, and language.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ethics is the branch of philosophy that deals with moral principles and values, and how they apply to individual and social behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Metaphysics is the branch of philosophy that deals with the nature of reality, including the relationship between mind and matter, substance and attribute, and possibility and actuality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Epistemology is the branch of philosophy that deals with the nature, scope, and limits of knowledge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Logic is the branch of philosophy that deals with the principles of correct reasoning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Aesthetics is the branch of philosophy that deals with the nature of beauty, art, and taste.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Existentialism is a philosophical movement that emphasizes individual existence, freedom, and choice.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Utilitarianism is a moral theory that states that the best action is the one that maximizes utility, often defined as maximizing pleasure and minimizing pain.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Kantian ethics is a moral theory that emphasizes the importance of rationality, autonomy, and respect for others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Virtue ethics is a moral theory that emphasizes the role of character and virtue in moral philosophy, rather than rules or consequences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ethical relativism is the theory that ethical values are relative to the culture, society, or individual holding them.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Moral skepticism is the view that there are no objective moral truths, or that we cannot know whether there are any.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Free will is the philosophical doctrine that holds that individuals have the ability to choose their actions freely, without being determined by causes external to their will.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Determinism is the philosophical doctrine that all events, including moral choices, are determined completely by previously existing causes.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Consequentialism is the view that the morality of an action is determined by its consequences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Deontology is the view that the morality of an action is determined by its adherence to rules or duties.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Empiricism is the theory that all knowledge is derived from sense experience.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Rationalism is the theory that reason rather than experience is the foundation of certainty in knowledge.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Objectivity is the philosophical concept of being independent of the mind, existing outside of the mind as part of reality itself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Subjectivity is the philosophical concept that judgments, experiences, and reality itself are based on individual perception and interpretation.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Absolutism is the philosophical view that certain principles are universal and apply to all people, cultures, and situations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Relativism is the philosophical view that truth, morality, or knowledge is relative to the context or individual.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Epistemic humility is the recognition of the limits of one's knowledge and the willingness to revise one's beliefs in light of new evidence.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Skepticism is the philosophical position that questions the possibility of knowledge, often by doubting or suspending judgment on various matters.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pluralism is the philosophical view that there are many different ways of understanding the world, and no single perspective can capture its entirety.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Naturalism is the philosophical belief that everything can be explained in terms of natural causes and laws, without the need for supernatural explanations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Positivism is the philosophical view that the only authentic knowledge is that which is based on empirical evidence and scientific inquiry.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Pragmatism is the philosophical tradition that emphasizes the practical consequences of beliefs and actions, rather than their abstract or theoretical significance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Essentialism is the philosophical view that objects have inherent qualities or essences that define what they are.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Existential nihilism is the philosophical doctrine that life has no intrinsic meaning or value.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ontological argument is a philosophical argument for the existence of God that is based on the concept of God as the most perfect being.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Teleological argument is a philosophical argument for the existence of God that is based on the idea that the universe exhibits design and purpose.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ontology is the branch of metaphysics that deals with the nature of being, existence, and reality.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Epistemological skepticism is the view that knowledge is impossible or that we can never have knowledge about certain things.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Psychology is the scientific study of the mind and behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Behavior is the range of actions and mannerisms made by individuals, organisms, systems, or artificial entities in conjunction with themselves or their environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emotion is a complex psychological state that involves three distinct components: a subjective experience, a physiological response, and a behavioral or expressive response.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cognition is the mental action or process of acquiring knowledge and understanding through thought, experience, and the senses.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Personality is a dynamic and organized set of characteristics possessed by a person that uniquely influences their environment, cognition, emotions, motivations, and behaviors in various situations.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Motivation is the process that initiates, guides, and maintains goal-oriented behaviors.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Memory is the faculty by which the brain encodes, stores, and retrieves information.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Learning is the process of acquiring new understanding, knowledge, behaviors, skills, values, attitudes, and preferences.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Perception is the organization, identification, and interpretation of sensory information in order to represent and understand the presented information or environment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Stress is a feeling of emotional or physical tension that can come from any event or thought that makes you feel frustrated, angry, or nervous.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Anxiety is a feeling of worry, nervousness, or unease about something with an uncertain outcome.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Depression is a mood disorder that causes a persistent feeling of sadness and loss of interest.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-esteem is the subjective evaluation of one's own worth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Self-efficacy is the belief in one's ability to succeed in specific situations or accomplish a task.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Emotional intelligence is the ability to understand, use, and manage one's own emotions in positive ways to relieve stress, communicate effectively, empathize with others, overcome challenges, and defuse conflict.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Social psychology is the scientific study of how people's thoughts, feelings, and behaviors are influenced by the actual, imagined, or implied presence of others.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Developmental psychology is the scientific study of how and why human beings change over the course of their life.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cognitive psychology is the scientific study of mental processes such as attention, language use, memory, perception, problem-solving, creativity, and thinking.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Biopsychology is the scientific study of the biology of behavior.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Neuroscience is the scientific study of the nervous system, including the brain, spinal cord, and networks of sensory nerve cells called neurons.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Consciousness is the state or quality of awareness, or, of being aware of an external object or something within oneself.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Mindfulness is the psychological process of bringing one's attention to the internal and external experiences occurring in the present moment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Behavioral psychology is the scientific study of observable behavior, and its explanation by principles of learning.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Psychiatry is the branch of medicine focused on the diagnosis, treatment, and prevention of mental, emotional, and behavioral disorders.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Psychotherapy is the use of psychological methods, particularly when based on regular personal interaction with adults, to help a person change behavior and overcome problems in desired ways.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Food refers to any nutritious substance that people or animals eat or drink to maintain life and growth.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Cuisine is a style or method of cooking, especially as characteristic of a particular country, region, or establishment.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Ingredient is any of the foods or substances that are combined to make a particular dish.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Recipe is a set of instructions for preparing a particular dish, including a list of the ingredients required.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Flavor is the distinctive taste of a food or drink.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Spicy refers to a food that has a strong, hot, or pungent flavor.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sour refers to a taste that is sharp, tart, or acidic.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Sweet refers to a taste that is sugary or containing a lot of sugar.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Salty refers to a taste that is similar to that of salt or contains a lot of salt.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Bitter refers to a taste that is sharp, acrid, or unpleasant.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Umami is a taste sensation that is meaty or savory and is produced by several amino acids and nucleotides.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Texture refers to the feel, appearance, or consistency of a food or substance.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Crunchy refers to a food that is firm and makes a crisp, sharp sound when bitten or crushed.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Smooth refers to a food that is soft and has no lumps or roughness.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Juicy refers to a food that contains a lot of juice and is therefore moist and tender.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Tender refers to a food that is easy to cut or chew because it is soft or well-cooked.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fresh refers to a food that is recently made or harvested and therefore has not been preserved.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Organic refers to a food that has been grown or produced without the use of synthetic chemicals, such as pesticides or fertilizers.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Local refers to a food that is produced or grown in a particular region and is therefore not transported long distances.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Seasonal refers to a food that is available and harvested during a particular season of the year.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Exotic refers to a food that is foreign or not native to a particular region or country.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Traditional refers to a food or dish that is typical or characteristic of a particular culture, region, or country.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Fusion refers to a style of cooking or cuisine that combines elements of different culinary traditions.",
          "کوردی_کوردی_کوردی");
      await insertSentence(
          "Gourmet refers to high-quality, fancy, or exotic food that is prepared and presented in an elaborate or refined manner.",
          "کوردی_کوردی_کوردی");
      await fetchSentences();
    }
  }

  Future<void> insertSentence(String english, String french) async {
    final db = await instance.database;

    await db.insert(
      'sentences',
      {'english': english, 'french': french},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> fetchSentences() async {
    final db = await instance.database;
    final data = await db.query('sentences');
    sentences = data;
  }

  List<Map<String, dynamic>> filterSentencesByKeywords(
      List<String> keywords, String language) {
    final filteredSentences = <Map<String, dynamic>>[];

    for (var sentence in sentences) {
      final text = language == 'english'
          ? sentence['english'].toLowerCase()
          : sentence['french'].toLowerCase();
      if (keywords.any((keyword) => text.contains(keyword.toLowerCase()))) {
        if (!filteredSentences
            .any((s) => s['english'] == sentence['english'])) {
          filteredSentences.add(sentence);
        }
      }
    }

    return filteredSentences;
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
