// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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
    await insertSentence("Hello, how are you?", "سڵاو، چۆنیت؟'");
    await insertSentence("Good morning!", "بەیانی باش!");
    await insertSentence("Good morning!", "بەیانی باش!");
    await insertSentence("Good morning!", "بەیانی باش!");
    await insertSentence("Good morning!", "بەیانی باش!");
    await insertSentence("Good mornjing!", "بەیانی باش!");
    await insertSentence("Good morning!", "بەیانی باش!");
    await insertSentence("Good morning!", "بەیانی باش!");
    await insertSentence("Good morning!", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello there! How can I brighten your day?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good morning! Is this a great day to start the week?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey there! What's on your agenda today?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good afternoon! It's nice to see you again.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi! How are things going with you?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's up? Long time no see!", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It's good to see you! How have you been?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you do? Pleased to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Top of the morning to you! Are you ready for a busy day?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Afternoon everyone! I hope you're all having a wonderful day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey there! Welcome back! Did you have a nice break?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! May I interest you in a cup of coffee?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alright, mate! How's it going?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Morning! Did you sleep well?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello! How can I help you today?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's new? Anything exciting happening?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening, sir/madam. How may I assist you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi again! Did you find everything you were looking for?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey there! Fancy seeing you here!", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It's a pleasure to meet you! I've heard a lot about you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good morning, sunshine! Ready to conquer the day?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Well met! Are you prepared for today's challenges?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Greetings! How can I be of service?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Top of the evening to you! What brings you out tonight?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello! Welcome aboard! How can I make your journey pleasant?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, I'm Sarah, nice to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, my name is Alex, what's yours?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey, I'm Emily, it's a pleasure to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning, I'm David, how do you do?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Greetings, I go by Lily, pleased to make your acquaintance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, my name's Daniel, great to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hello, you can call me Sophia, nice to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey there, I'm Michael, delighted to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, I'm Olivia, it's nice to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good day, my name is Ethan, pleased to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, the name's Ava, nice to make your acquaintance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, you can call me Benjamin, it's great to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey, I go by Chloe, it's a pleasure to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, I'm Noah, it's nice to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, my name is Mia, it's a pleasure to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Greetings, I'm Jacob, how do you do?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey, I'm Isabella, nice to make your acquaintance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Every morning, I brush my teeth to keep them clean and healthy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I eat breakfast to give me energy for the day ahead.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "After breakfast, I put on my clothes to get ready for school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I pack my backpack with my books and pencils before leaving for school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "At school, I learn new things like math, reading, and science.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I play with my friends during recess and lunchtime.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "After school, I do my homework to finish it before dinner.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help set the table for dinner with my family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We eat dinner together and talk about our day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Before bed, I take a bath and put on my pajamas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I read a story with my parents before going to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I close my eyes and drift off to dreamland, ready for a new day tomorrow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I wake up in the morning and stretch my arms and legs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I yawn and rub my eyes before getting out of bed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I wash my face with water to wake myself up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I choose my clothes for the day from my wardrobe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I put on my socks and shoes before heading downstairs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I greet my family with a smile and say 'Good morning'.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I sit at the table and eat breakfast with my family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I pour cereal into my bowl and add milk.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I sip orange juice slowly, enjoying its tangy taste.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I munch on toast with butter and jam.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I laugh at my sister's joke as we eat together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I pack my backpack with my books and homework.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I double-check to make sure I have everything I need.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I zip up my backpack and sling it over my shoulder.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I say goodbye to my family and head out the door.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I walk to the bus stop with my friends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We chat and laugh while we wait for the bus.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I wave to the bus driver as I climb aboard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I find a seat and sit down, ready for the ride.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I look out the window and watch the world go by.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I arrive at school and join my classmates in the playground.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We run and play games until the bell rings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We line up outside our classroom and wait for our teacher.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We greet our teacher with smiles and 'Good mornings'.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We take our seats and get ready for the day's lessons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I listen carefully as the teacher explains the math lesson.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I raise my hand and answer a question correctly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I feel proud of myself for knowing the answer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I work on my reading assignment quietly at my desk.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I ask my teacher for help when I don't understand something.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I finish my work early and help a classmate with theirs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I join my friends for recess and play tag.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We run around the playground and laugh.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I eat my lunch with my friends at our usual spot.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We trade snacks and share stories from home.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "After lunch, we have art class and get messy with paint.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I mix colors together to create a beautiful masterpiece.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I clean up my paintbrush and wash my hands.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We go back to our classroom for science class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I conduct an experiment with my lab partner.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We observe the results and write them down in our notebooks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bell rings, signaling the end of the school day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I pack up my things and say goodbye to my friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I board the bus and wave to my classmates.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I arrive home and find a snack waiting for me.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I sit at the kitchen table and do my homework.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I solve math problems and write a story for English class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I take a break to play with my toys for a while.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I build a tower with blocks and knock it down with a crash.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help set the table for dinner with my family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We sit down together and say grace before eating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We pass around dishes of food and fill our plates.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I take a bite of mashed potatoes and savor the flavor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I listen to my parents talk about their day at work.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I tell them about my day at school and the fun I had.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We laugh and joke around as we eat.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "After dinner, I help clear the table and wash the dishes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I dry the plates and stack them neatly in the cupboard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I brush my teeth before bed to keep them clean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I put on my pajamas and climb into bed.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I snuggle under the covers and close my eyes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("My parents tuck me in and kiss me goodnight.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I drift off to sleep, dreaming sweet dreams.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My mom and dad take care of me and love me very much.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I have a grandma and grandpa who tell me stories and give me hugs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My aunt and uncle play games with me and make me laugh.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I have a cousin who is my best friend and we do everything together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My sister and I share toys and secrets with each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I play superheroes and go on adventures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I love my family because they are always there for me.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("My mom cooks delicious meals for us every day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My dad helps me with my homework when I don't understand.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I give my grandma a big hug when she comes to visit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa with his garden by watering the plants.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My aunt takes me to the park and pushes me on the swings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I love going to my uncle's house because he has a cool pet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I laugh and play with my cousin at family gatherings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My sister reads bedtime stories to me before I go to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I build forts with blankets and pillows.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures for my mom and dad to hang on the fridge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help my grandma bake cookies in the kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("My grandpa tells me jokes that make me giggle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I give my aunt a high-five when she does something awesome.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I play catch with my uncle in the backyard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I share my toys with my cousin and we play together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My sister and I have secret handshakes that we made up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("My brother and I have pillow fights on lazy Sundays.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I cuddle with my mom and dad when we watch movies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I visit my grandma and grandpa on weekends and we have picnics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures for my aunt and uncle to hang in their house.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help my grandpa fix things around the house.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cookies with my grandma and we eat them warm from the oven.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play board games with my cousin and we take turns winning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I tell my sister about my day at school and she listens to me.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("My brother and I ride bikes together in the park.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I make cards for my mom and dad on their birthdays.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I hug my grandma tightly when it's time for her to leave.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help my grandpa plant flowers in the garden.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I laugh at my aunt's jokes and she tickles me.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play soccer with my uncle and he teaches me new tricks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I share my snacks with my cousin and we have a picnic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help my sister pick out her clothes for school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I share a room and tell each other stories at night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures of my family and hang them on my wall.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I give my mom a bouquet of flowers for Mother's Day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I make a card for my dad and tell him he's the best dad ever.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I visit my grandma and grandpa and we go for walks in the park.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cookies with my aunt and we decorate them with frosting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I help my grandpa paint the fence in his backyard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play hide-and-seek with my cousin and we laugh when we get found.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I make a scrapbook with my sister filled with our favorite memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I play tag in the backyard and race each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I cuddle with my mom and dad on the couch and watch TV.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I visit my grandma and grandpa and we play board games together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cupcakes with my aunt and we share them with the family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa rake leaves in the yard and jump in the pile.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play dress-up with my cousin and we pretend to be princesses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I make friendship bracelets with my sister and we wear them every day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I build a fort out of blankets and pillows in the living room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures of my family and put them on the fridge for everyone to see.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cookies with my grandma and we give them to our neighbors as gifts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa wash his car in the driveway and spray him with the hose.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play tag with my aunt and we run around the backyard laughing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my uncle fix his bike and we go for a ride together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I share my snacks with my cousin and we have a picnic in the backyard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my sister clean her room and we find lost toys under the bed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I play superheroes in the backyard and save the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I cuddle with my mom and dad on the couch and listen to them read stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I visit my grandma and grandpa and we make crafts together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cupcakes with my aunt and we decorate them with sprinkles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa water his plants in the garden and we talk about nature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play tag with my cousin and we chase each other around the house.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I make friendship bracelets with my sister and we give them to our friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I build a fort out of pillows and blankets in the living room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures of my family and hang them on the walls in my room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cookies with my grandma and we give them to our neighbors as a surprise.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa wash his car in the driveway and we make it sparkle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play hide-and-seek with my aunt and we giggle when we find each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my uncle fix his bike and we ride around the neighborhood together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I share my snacks with my cousin and we have a picnic in the park.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my sister clean her room and we find treasures hidden in the closet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I play superheroes in the backyard and save the world from villains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I cuddle with my mom and dad on the couch and listen to them tell stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I visit my grandma and grandpa and we make homemade ice cream together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cupcakes with my aunt and we decorate them with frosting and sprinkles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa plant flowers in the garden and we watch them grow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play tag with my cousin and we race around the yard until we're out of breath.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I make friendship bracelets with my sister and we give them to our best friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I build a fort out of pillows and blankets in the basement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures of my family and make a scrapbook of our favorite memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cookies with my grandma and we share them with our neighbors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa wash his car in the driveway and we laugh as we get wet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play hide-and-seek with my aunt and we hide behind the curtains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my uncle fix his bike and we ride to the park together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I share my snacks with my cousin and we have a picnic on the beach.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my sister clean her room and we find lost toys under the bed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I play superheroes in the backyard and fight imaginary villains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I cuddle with my mom and dad on the couch and listen to them sing songs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I visit my grandma and grandpa and we make homemade pizza together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cupcakes with my aunt and we decorate them with icing and candy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa plant flowers in the garden and we water them together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play tag with my cousin and we run around the park laughing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I make friendship bracelets with my sister and we wear them everywhere.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My brother and I build a fort out of blankets and pillows in the living room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I draw pictures of my family and make a special album to keep them in.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I bake cookies with my grandma and we give them to our friends as gifts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I help my grandpa wash his car in the driveway and we make it shine.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I play hide-and-seek with my aunt and we hide in the closet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Elephants have long trunks they use to spray water and pick up things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lions roar loudly to talk to other lions and show they're strong.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Butterflies start as caterpillars and turn into beautiful, colorful butterflies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins are super smart animals that love to swim and play in the ocean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Birds have wings so they can fly high up in the sky and sing songs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kittens love to chase after yarn and snuggle up for a cozy nap.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Puppies wag their tails when they're happy and love to play fetch.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Giraffes have long necks so they can reach leaves high up in the trees.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pandas eat bamboo all day and have big, black patches around their eyes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tigers have orange fur with black stripes to help them hide in the jungle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kangaroos hop around on their strong legs and carry their babies in pouches.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monkeys swing from branch to branch in the trees and eat bananas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales are huge animals that live in the ocean and sing beautiful songs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Owls have big eyes to see in the dark and catch mice for dinner.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Frogs jump and hop around in ponds and make loud croaking sounds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snakes slither on the ground and use their tongues to smell things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins waddle on ice and swim fast in the cold ocean waters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bears hibernate in caves during the winter and wake up hungry in spring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rabbits hop around fields and eat carrots with their long ears standing up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals swim in the ocean and sunbathe on rocks by the shore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks have sharp teeth and fins to swim fast in the deep blue sea.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deer have antlers on their heads and leap gracefully through the forest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Foxes have bushy tails and red fur, and they're clever hunters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squirrels climb trees and store nuts in their cheeks for later.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Horses gallop across fields with their long, flowing manes in the wind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Octopuses have eight arms and squirt ink to escape from predators.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Elephants have big ears they flap to keep themselves cool in hot weather.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lions live in groups called prides and hunt together for food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Butterflies lay eggs on plants, and when they hatch, caterpillars come out.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins leap out of the water and do flips to show off.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Birds build nests in trees and sing sweet songs to attract mates.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kittens purr when they're happy and knead with their paws when they're relaxed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Puppies chase their tails in circles and bark to get attention.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Giraffes have long tongues they use to grab leaves from high branches.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pandas roll around in bamboo forests and play with each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tigers have sharp claws to catch prey and stripes to blend into the grass.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kangaroos can hop really fast and kick with their powerful legs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monkeys swing from vines and groom each other to show affection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales jump out of the water and slap their tails on the surface.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Owls hoot at night and fly silently through the forest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Frogs leap from lily pad to lily pad and catch insects with their tongues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snakes shed their skin as they grow and use their tongues to smell the air.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins huddle together to keep warm in icy temperatures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bears catch fish with their paws and munch on berries in the forest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rabbits twitch their noses and hop away from danger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals balance balls on their noses and clap their flippers together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks have rows of sharp teeth and can smell blood from miles away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deer prance through fields and hide in tall grass when they're scared.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Foxes hunt at night and have dens where they raise their babies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squirrels bury nuts in the ground and dig them up later.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Horses neigh loudly and gallop across open plains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Octopuses change color to camouflage with their surroundings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Elephants splash in muddy water and give themselves baths with their trunks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lions cubs play-fight with each other to practice hunting skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Butterflies flutter their wings and sip nectar from flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins make clicking sounds to talk to each other underwater.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Birds build nests out of twigs, leaves, and feathers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kittens pounce on toys and chase after laser pointers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Puppies chew on bones and wag their tails when they're excited.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Giraffes sleep standing up and only need a few hours of sleep each day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pandas somersault down hills and munch on bamboo shoots.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tigers prowl through the jungle and have a roar that can be heard from miles away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kangaroos have pouches where they carry their babies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monkeys swing from tree to tree and groom each other to show affection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales breach out of the water and splash back down with a big splash.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Owls hunt mice and insects at night and sleep during the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Frogs croak loudly to attract mates during mating season.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snakes shed their skin as they grow and use their tongues to smell their surroundings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins toboggan on their bellies and slide into the water.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bears hibernate in dens during the winter and wake up in the spring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rabbits twitch their noses and hop away from danger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals balance balls on their noses and clap their flippers together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks have rows of sharp teeth and can smell blood from miles away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deer prance through fields and hide in tall grass when they're scared.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Foxes hunt at night and have dens where they raise their babies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squirrels bury nuts in the ground and dig them up later.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Horses neigh loudly and gallop across open plains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Octopuses change color to camouflage with their surroundings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Elephants splash in muddy water and give themselves baths with their trunks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lions cubs play-fight with each other to practice hunting skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Butterflies flutter their wings and sip nectar from flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins make clicking sounds to talk to each other underwater.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Birds build nests out of twigs, leaves, and feathers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kittens pounce on toys and chase after laser pointers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Puppies chew on bones and wag their tails when they're excited.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Giraffes sleep standing up and only need a few hours of sleep each day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pandas somersault down hills and munch on bamboo shoots.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tigers prowl through the jungle and have a roar that can be heard from miles away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kangaroos have pouches where they carry their babies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monkeys swing from tree to tree and groom each other to show affection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales breach out of the water and splash back down with a big splash.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Owls hunt mice and insects at night and sleep during the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Frogs croak loudly to attract mates during mating season.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snakes shed their skin as they grow and use their tongues to smell their surroundings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins toboggan on their bellies and slide into the water.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bears hibernate in dens during the winter and wake up in the spring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rabbits twitch their noses and hop away from danger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals balance balls on their noses and clap their flippers together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks have rows of sharp teeth and can smell blood from miles away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Teachers help kids learn new things and play fun games.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doctors take care of people when they're sick or hurt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Firefighters put out fires and rescue people from danger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Police officers keep our neighborhoods safe and help people in need.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Farmers grow fruits and vegetables and take care of animals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chefs cook delicious food in restaurants and bakeries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Construction workers build houses, roads, and bridges.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bus drivers take people to school, work, and other places.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Veterinarians take care of animals when they're sick or hurt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scientists study bugs, plants, and stars to learn new things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Librarians help people find books and read exciting stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artists draw pictures, paint murals, and make sculptures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Musicians play instruments and sing songs for people to enjoy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Mechanics fix cars, trucks, and other machines.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Actors perform in movies, plays, and TV shows.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Waiters and waitresses serve food and drinks in restaurants.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dentists keep our teeth clean and healthy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electricians fix lights, wires, and other electrical things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mail carriers deliver letters and packages to our homes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nurses help doctors and take care of patients in hospitals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Garbage collectors pick up trash and keep our streets clean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Flight attendants help people on airplanes and serve snacks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Plumbers fix sinks, toilets, and pipes in our homes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bankers help people with their money and give out loans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Photographers take pictures of people, animals, and places.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Secretaries answer phones, type letters, and schedule meetings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Engineers design buildings, machines, and computers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Authors write books, poems, and stories for us to read.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salespeople help customers find what they need in stores.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Janitors clean floors, windows, and bathrooms in buildings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cooks make meals in restaurants, hotels, and cafeterias.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Barbers and hairdressers cut hair and style it in fun ways.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bus drivers take kids to school and bring them home safely.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Gardeners plant flowers, bushes, and trees in parks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lawyers help people with legal problems and go to court.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Painters make walls, buildings, and pictures look beautiful.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Plumbers fix leaks and keep our sinks and toilets working.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Farmers grow food like vegetables, fruits, and grains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Truck drivers deliver goods like toys, clothes, and food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scientists study animals, plants, and the earth to learn new things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Vets take care of animals like dogs, cats, and birds when they're sick.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Actors pretend to be different people in movies, plays, and TV shows.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chefs cook yummy food like pizza, pasta, and cupcakes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Builders make houses, schools, and other buildings with bricks and cement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Teachers help kids learn math, reading, and science in school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Police officers catch bad guys and keep our streets safe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Firefighters put out fires and rescue people from burning buildings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doctors help us feel better when we're sick or hurt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Librarians help us find books about dinosaurs, dragons, and space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artists draw pictures of animals, flowers, and people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Musicians play guitars, drums, and pianos and sing songs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mechanics fix cars, trucks, and motorcycles when they're broken.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bus drivers take us to the park, zoo, and museum.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dentists check our teeth and make sure they're clean and healthy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electricians fix lights, TVs, and computers when they stop working.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mail carriers deliver letters and packages to our houses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nurses help doctors and take care of us when we're in the hospital.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Garbage collectors pick up trash from our bins and take it away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Flight attendants help us on airplanes and give us snacks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Plumbers fix sinks, toilets, and showers when they're broken.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bankers help us save money and take out loans when we need them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Photographers take pictures of our families, pets, and friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Secretaries answer phones, send emails, and organize files.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Engineers design buildings, bridges, and tunnels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Authors write books about dragons, robots, and superheroes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salespeople help us find toys, clothes, and games in stores.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Janitors clean our schools, offices, and libraries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cooks make pancakes, burgers, and tacos in restaurants.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Barbers and hairdressers cut our hair and make it look nice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bus drivers take us to school and bring us home safely.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gardeners plant flowers, trees, and bushes in our parks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lawyers help people with their problems and go to court.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Painters make our houses, schools, and buildings look pretty.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Plumbers fix leaks and make sure our water works properly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Farmers grow corn, carrots, and apples on their farms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Truck drivers deliver packages, furniture, and groceries to stores.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scientists study animals, plants, and the earth to learn new things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Vets take care of animals like dogs, cats, and birds when they're sick.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Actors pretend to be different people in movies, plays, and TV shows.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chefs cook yummy food like pizza, pasta, and cupcakes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Builders make houses, schools, and other buildings with bricks and cement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Teachers help kids learn math, reading, and science in school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Police officers catch bad guys and keep our streets safe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Firefighters put out fires and rescue people from burning buildings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doctors help us feel better when we're sick or hurt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Librarians help us find books about dinosaurs, dragons, and space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artists draw pictures of animals, flowers, and people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Musicians play guitars, drums, and pianos and sing songs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mechanics fix cars, trucks, and motorcycles when they're broken.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bus drivers take us to the park, zoo, and museum.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dentists check our teeth and make sure they're clean and healthy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electricians fix lights, TVs, and computers when they stop working.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mail carriers deliver letters and packages to our houses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nurses help doctors and take care of us when we're in the hospital.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Garbage collectors pick up trash from our bins and take it away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Flight attendants help us on airplanes and give us snacks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Plumbers fix sinks, toilets, and showers when they're broken.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bankers help us save money and take out loans when we need them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Photographers take pictures of our families, pets, and friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Secretaries answer phones, send emails, and organize files.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Engineers design buildings, bridges, and tunnels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Authors write books about dragons, robots, and superheroes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salespeople help us find toys, clothes, and games in stores.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Janitors clean our schools, offices, and libraries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cooks make pancakes, burgers, and tacos in restaurants.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Barbers and hairdressers cut our hair and make it look nice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bus drivers take us to school and bring us home safely.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gardeners plant flowers, trees, and bushes in our parks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lawyers help people with their problems and go to court.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Painters make our houses, schools, and buildings look pretty.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Plumbers fix leaks and make sure our water works properly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scientists study the stars, planets, and galaxies in space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robots can do tasks like cleaning, cooking, and even talking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Computers help us play games, do homework, and talk to friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Magnets stick to metal things like fridge doors and paperclips.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cameras take pictures of people, animals, and places.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Telephones let us talk to people far away using our voices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Microscopes help us see tiny things like cells and bugs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Telescopes make faraway things like stars and planets look closer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("GPS helps us find our way using maps and satellites.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Batteries give power to things like toys, phones, and cars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electricity flows through wires and lights up our homes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Airplanes fly high in the sky and take us on trips.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Televisions show us movies, shows, and news.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Satellites orbit the Earth and help us with things like weather.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet lets us look up information, play games, and watch videos.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drones can fly high in the air and take pictures and videos.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Solar panels collect sunlight and turn it into electricity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tablets let us read books, play games, and draw pictures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "DNA is like a blueprint that tells our bodies how to grow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hydrogen cars use a special gas instead of gasoline to run.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Virtual reality lets us feel like we're in a different place.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "X-rays help doctors see inside our bodies to find broken bones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("3D printers can make toys, tools, and even food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence helps computers learn and make decisions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rockets blast off into space and carry astronauts to other planets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biodegradable means something can break down and not harm the environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nanotechnology is about making tiny things that are too small to see.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smartphones can do lots of things like take pictures, play music, and send messages.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "DNA testing helps us learn about our family history and where we come from.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial limbs help people who have lost arms or legs still do things like walk and grab.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Augmented reality lets us see things that aren't really there, like dinosaurs in our living room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biometrics use things like fingerprints and eye scans to identify people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet of Things lets us connect things like lights, thermostats, and cameras to the internet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-driving cars can drive themselves without a person needing to steer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space probes travel far into space to explore planets and gather information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Genetic engineering changes the DNA of plants and animals to make them better.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hydroponics grows plants without soil by using water with nutrients instead.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "3D movies look like they're popping out of the screen and into our laps.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Virtual assistants like Siri and Alexa can answer questions and do tasks for us.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blockchain keeps track of things like money transactions and online voting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "CRISPR lets scientists edit genes to change things like diseases and traits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prosthetics are artificial body parts that help people move and do things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing uses tiny particles to do calculations super fast.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space stations orbit the Earth and let astronauts live and work in space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biotechnology uses living things like cells and bacteria to make new products.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neural networks are like computer brains that can learn and think.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geoengineering tries to change the Earth's climate to stop global warming.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Brain-computer interfaces let us control things with just our thoughts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gene therapy uses genes to treat and prevent diseases.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hybrid cars use a mix of gasoline and electricity to run.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space shuttles launch into space and bring astronauts back to Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cloning makes copies of animals and plants to study and save them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet safety means being careful online and not sharing personal information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial organs like hearts and kidneys can be made to replace ones that don't work.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Wireless charging lets us charge our phones and other devices without plugging them in.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Antibiotics help our bodies fight off infections and sicknesses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Satellite internet provides internet access in remote areas using satellites in space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Virtual classrooms let students learn online from anywhere in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "CRISPR lets scientists edit genes to change things like diseases and traits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prosthetics are artificial body parts that help people move and do things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing uses tiny particles to do calculations super fast.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space stations orbit the Earth and let astronauts live and work in space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biotechnology uses living things like cells and bacteria to make new products.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neural networks are like computer brains that can learn and think.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geoengineering tries to change the Earth's climate to stop global warming.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Brain-computer interfaces let us control things with just our thoughts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gene therapy uses genes to treat and prevent diseases.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hybrid cars use a mix of gasoline and electricity to run.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space shuttles launch into space and bring astronauts back to Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cloning makes copies of animals and plants to study and save them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet safety means being careful online and not sharing personal information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial organs like hearts and kidneys can be made to replace ones that don't work.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Wireless charging lets us charge our phones and other devices without plugging them in.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Antibiotics help our bodies fight off infections and sicknesses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Satellite internet provides internet access in remote areas using satellites in space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Virtual classrooms let students learn online from anywhere in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Kindergarten is a fun place where we learn and play.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("We draw pictures, sing songs, and make new friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Our teacher reads us stories and helps us learn letters and numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We play with blocks, puzzles, and toys in the classroom.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have snack time where we eat delicious treats and drink juice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "At recess, we run, jump, and play games outside with our friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have nap time where we rest and recharge our energy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about colors, shapes, and animals during circle time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "In kindergarten, we learn how to share and take turns.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We listen to music and dance to the rhythm during music class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "At school, we have art class where we paint and create masterpieces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We practice writing our names and drawing pictures with crayons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Our teacher helps us learn to count and do simple math.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about plants, animals, and the world around us in science class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have show and tell where we bring something special from home to share.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We play with playdough and make shapes and sculptures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about different cultures and traditions during social studies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have story time where our teacher reads us books and fairy tales.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have gym class where we run, jump, and play sports.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about being kind and helping others in class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "At school, we celebrate holidays and have parties with our friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have field trips where we go to museums, parks, and zoos.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about the weather and seasons during science class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have dress-up days where we wear costumes and pretend to be different characters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have snack time where we eat fruits, veggies, and sandwiches.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about different countries and their flags during geography.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have music class where we sing songs and play instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have a playground where we swing, slide, and climb.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn about the alphabet and phonics to help us read.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have library time where we pick out books to read and take home.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have math class where we learn about numbers and counting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have computer class where we learn to use the keyboard and mouse.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have cooking class where we make snacks and treats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have storytime where we listen to our teacher read books.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have recess where we play games and run around outside.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have art class where we paint, draw, and make crafts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have circle time where we talk about our feelings and share stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have music class where we sing songs and play instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have gym class where we run, jump, and play sports.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have math class where we learn about numbers and shapes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have science class where we learn about plants and animals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have library time where we read books and check out new ones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have snack time where we eat fruits, veggies, and crackers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have nap time where we rest and relax on our mats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have show and tell where we share something special with our friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have recess where we play on the playground and swing on the swings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have art class where we paint, color, and make crafts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have music class where we sing songs and play instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have gym class where we do exercises and play games.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have math class where we count, add, and subtract.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have science class where we learn about the planets and stars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have library time where we read books and listen to stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have snack time where we eat snacks and drink juice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have nap time where we rest and sleep on our mats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have show and tell where we share toys and objects with our friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have recess where we play tag, jump rope, and climb on the jungle gym.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have art class where we paint, draw, and make sculptures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have music class where we sing songs and play musical instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have gym class where we run, jump, and play sports.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have math class where we count, add, and subtract numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have science class where we learn about animals, plants, and the weather.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have library time where we read books and listen to stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have snack time where we eat fruits, veggies, and crackers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have nap time where we rest and sleep on our mats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have show and tell where we share our favorite toys and objects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have recess where we play on the swings, slides, and jungle gym.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have art class where we paint, draw, and make crafts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have music class where we sing songs and play musical instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have gym class where we run, jump, and play games.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have math class where we count, add, and subtract numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have science class where we learn about animals, plants, and the environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have library time where we read books and listen to stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have snack time where we eat fruits, veggies, and cookies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have nap time where we rest and relax on our mats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have show and tell where we share our favorite toys and objects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have recess where we play on the swings, slides, and monkey bars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have art class where we paint, draw, and make collages.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We have music class where we sing songs and play musical instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is hot and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is beautiful and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is delicious and sweet.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is big and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sky is blue and clear.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is strong and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is colorful and magical.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is interesting and fun.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is pretty and delicate.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snow is cold and white.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is cute and cuddly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The elephant is huge and gray.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and deep.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bird is small and chirpy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and rocky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ice cream is cold and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is small and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The lion is fierce and majestic.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and small.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and round.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and old.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slithery.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The apple is red and juicy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bed is soft and comfortable.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The turtle is slow and steady.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ball is round and bouncy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and rusty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and cheesy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is bright and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is scary and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sky is clear and blue.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The lion is strong and brave.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flowers are pretty and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snow is cold and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is yummy and sweet.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is big and brown.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is cute and cuddly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is loyal and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is bright and warm.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and blue.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is delicate and beautiful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is colorful and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fragrant and pretty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The apple is red and juicy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The elephant is big and gray.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and dusty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and cheesy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slimy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is hot and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is beautiful and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is delicious and sweet.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is big and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sky is blue and clear.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is strong and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is colorful and magical.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is interesting and fun.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is pretty and delicate.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snow is cold and white.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is cute and cuddly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The elephant is huge and gray.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and deep.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bird is small and chirpy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and rocky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ice cream is cold and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is small and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The lion is fierce and majestic.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and small.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and round.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bird is colorful and chirpy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The lion is fierce and brave.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ice cream is cold and delicious.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is pretty and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The elephant is big and gray.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is beautiful and delicate.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is hot and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is colorful and magical.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is loyal and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slimy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is cute and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and round.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and rocky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and blue.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The apple is red and juicy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is sweet and yummy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is strong and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and dusty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and cheesy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is cute and cuddly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and pretty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is graceful and delicate.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is warm and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is colorful and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is scary and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is bright and round.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is soft and warm.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and playful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is friendly and loyal.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slithery.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is small and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and snowy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and deep.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is bright and shining.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is sweet and delicious.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is big and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and sleek.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and ticking.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is small and adorable.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is delicate and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is warm and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is bright and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is loyal and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slimy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is cute and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and rocky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and blue.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is hot and shining.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is colorful and magical.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is scary and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and round.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is soft and warm.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and playful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is friendly and loyal.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slithery.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is small and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and snowy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and deep.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is bright and shining.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is sweet and delicious.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is big and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and sleek.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and ticking.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is small and adorable.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is delicate and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is warm and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is bright and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is loyal and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slimy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is cute and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and rocky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and blue.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is hot and shining.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is sweet and delicious.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is big and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and sleek.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and ticking.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is small and adorable.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is delicate and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is warm and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is bright and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is soft and warm.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and playful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is friendly and loyal.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slithery.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is small and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and snowy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and deep.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is bright and shining.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is sweet and delicious.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is big and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and sleek.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and ticking.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is small and adorable.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is delicate and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is warm and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rainbow is bright and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider is creepy and hairy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moon is big and bright.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish is small and shiny.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tree is tall and green.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The blanket is warm and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat is fluffy and soft.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog is loyal and friendly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake is long and slimy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit is cute and fluffy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mountain is tall and rocky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ocean is vast and blue.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is hot and shining.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cake is sweet and delicious.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear is big and furry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The car is fast and sleek.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clock is old and ticking.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pizza is hot and tasty.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The house is big and cozy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The book is thick and heavy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The baby is small and adorable.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flower is fresh and fragrant.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly is delicate and colorful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cat sleeps on the couch.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dog barks at the mailman.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bird sings in the tree.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fish swims in the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly flies in the garden.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rabbit hops in the field.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The horse runs in the meadow.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cow mooes in the barn.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pig oinks in the mud.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The chicken clucks in the coop.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The lion roars in the jungle.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The elephant trumpets in the zoo.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bear growls in the forest.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snake hisses in the grass.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The frog croaks by the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee buzzes around the flowers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider crawls on the wall.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The turtle crawls on the ground.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The monkey swings in the trees.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The squirrel climbs up the tree.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mouse scurries across the floor.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sheep grazes in the pasture.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The duck quacks in the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The goat bleats in the field.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The kangaroo hops in the outback.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The penguin waddles on the ice.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The polar bear swims in the Arctic.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dolphin jumps in the ocean.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The whale splashes in the sea.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The crocodile snaps its jaws.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tiger prowls in the jungle.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The gorilla beats its chest.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cheetah sprints across the savannah.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The zebra gallops on the grassland.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fox hunts in the forest.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The owl hoots in the night.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The eagle soars in the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The seagull flies over the beach.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pelican dives into the water.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The heron wades in the marsh.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The flamingo stands on one leg.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The parrot squawks in the cage.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The toucan perches in the tree.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The hummingbird hovers near the flowers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ladybug crawls on the leaf.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dragonfly darts through the air.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly flutters its wings.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ant marches in a line.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The grasshopper jumps in the grass.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The beetle scuttles on the ground.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The caterpillar munches on a leaf.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snail slithers across the garden.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm wriggles in the dirt.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The spider spins a web.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fly buzzes around the room.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito bites and buzzes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth flutters around the light.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee pollinates the flowers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly emerges from its chrysalis.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar transforms into a butterfly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snail leaves a trail of slime.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm burrows into the soil.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider catches insects in its web.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fly lands on the window.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito sucks blood.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth is attracted to the flame.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bee gathers nectar.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly lays eggs on a leaf.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The caterpillar eats voraciously.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The snail retreats into its shell.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm wriggles underground.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider spins silk threads.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fly irritates with its buzzing.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito spreads disease.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth flutters towards the light.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee communicates through dance.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The butterfly flits from flower to flower.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar munches its way through leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail moves slowly, leaving a trail behind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm tunnels through the soil.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider weaves intricate webs.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The fly lands on surfaces, spreading germs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito bites, leaving itchy welts.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth is attracted to bright lights.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee collects pollen from flowers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly lays eggs on leaves.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar transforms into a chrysalis.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail retreats into its shell for protection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm burrows deeper into the ground.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider waits patiently in its web.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fly buzzes annoyingly around food.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito buzzes and bites.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth flutters around the lamp.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee buzzes as it gathers nectar.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The butterfly flutters gracefully among the flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar munches contentedly on a leaf.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail moves slowly along the garden path.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm wriggles through the damp soil.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider spins a web to catch its prey.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fly buzzes around the picnic table.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The mosquito bites and leaves behind itchy bumps.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth is drawn to the porch light.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee buzzes from flower to flower, collecting pollen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The butterfly lays eggs on the underside of a leaf.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar munches on fresh green leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail retreats into its shell when threatened.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm burrows deeper into the earth.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The spider spins a delicate web to catch insects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The fly buzzes annoyingly around the kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito bites and leaves behind red, itchy welts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth flutters near the porch light.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee buzzes around the garden, pollinating flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly sips nectar from brightly colored blooms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar munches on juicy green leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail retreats into its shell when scared.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worm wriggles through the rich soil.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The spider spins a sticky web to catch its prey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The fly buzzes noisily around the garbage can.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The mosquito bites and spreads disease.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The moth is attracted to the porch light.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bee buzzes from flower to flower, gathering pollen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The butterfly flutters gracefully among the blossoms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The caterpillar munches on fresh, green leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail retreats into its shell for protection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The worm burrows deeper into the moist earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The spider spins a web to catch insects.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fly buzzes around the ripe fruit.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The mosquito bites and leaves behind itchy bumps.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The moth is drawn to the porch light at night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bee buzzes as it gathers nectar from flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The butterfly flutters gently among the petals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The caterpillar munches on tender leaves.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The snail retreats into its shell when startled.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The worm burrows deeper into the soft soil.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The spider spins a sticky web to catch its prey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The fly buzzes annoyingly around the picnic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, I'm Liam, pleased to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, my name's Amelia, nice to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning, you can call me William, it's a pleasure to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Greetings, I go by Harper, great to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, I'm Elijah, delighted to make your acquaintance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, I'm Charlotte, pleased to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how are you doing today?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your name and where are you from?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Did you have a good weekend?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What did you do yesterday?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's the weather outside?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you have any plans for tonight?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Can you recommend a good restaurant nearby?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What are your hobbies and interests?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you seen any good movies lately?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you need any help with that?", "KURDISH_KURDISH_KURDISH");

    await insertSentence("Where do you work?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you have any siblings?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What kind of music do you like?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Have you traveled to any interesting places?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like reading books?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What’s your favorite food?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How was your day at work?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you enjoy cooking?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you been to any concerts recently?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite sport?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like playing video games?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Have you tried any new restaurants lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What’s your favorite holiday?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you have any pets?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What kind of movies do you enjoy?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been to a foreign country?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like going to the beach?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What do you usually do on weekends?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever gone hiking?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite TV show?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you prefer tea or coffee?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Have you ever attended a live sports game?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite way to relax?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you like gardening?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever taken a cooking class?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite type of dessert?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you play any musical instruments?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever gone camping?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hello, how are you today? It's good to see you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good morning! Did you sleep well last night?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey there, long time no see! How have you been?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, it's nice to meet you. I'm glad we could finally connect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good afternoon! I hope you're having a great day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey, what's up? How's everything going with you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hello, it's a pleasure to make your acquaintance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how's your day going so far? Anything exciting happening?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a wonderful day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how have you been? It's been ages since we last talked.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, I trust you're doing well. What's new in your life?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hi there, it's great to see you again after so long.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, what's going on? How have things been with you lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hello, it's so nice to see your smiling face.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how's everything going in your world?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good morning! I hope you have a fantastic day ahead.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hey, long time no chat! How have you been keeping?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's lovely to see you. How have you been feeling?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how are you doing today? Is everything alright?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good afternoon! I hope you're having a wonderful day so far.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how are things going? It's been a while since we caught up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, how have you been? I've missed our conversations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, it's good to see you again. How's life treating you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good evening! I hope your day has been filled with joy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, what's up? How have you been since we last spoke?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's nice to see you. How's everything going for you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how have you been keeping? I've been thinking about you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning! I hope you woke up feeling refreshed and ready for the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's it going? I hope everything is going smoothly for you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's great to see you again. How have you been lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how have you been? It's been too long since our last chat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good afternoon! I hope you're having a lovely day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's life treating you? It's been a minute since we caught up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's wonderful to see you. How have you been feeling lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how are you today? I hope you're doing well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a productive day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's everything going? It's been a while since we last spoke.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's nice to see you. How's everything been with you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how are you doing today? I hope you're in good spirits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning! I hope you have a fantastic day ahead of you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's it going? I hope everything is going according to plan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's good to see you again. How have you been keeping?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how have you been? It's been too long since we last talked.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good afternoon! I hope you're having a great day so far.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's life treating you? I hope everything is going well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's wonderful to see you. How have you been lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hi, how are you today? I hope you're doing well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a productive day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's everything going? It's been a while since we last caught up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's nice to see you. How's everything been with you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how are you doing today? I hope you're in good spirits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning! I hope you have a fantastic day ahead of you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's it going? I hope everything is going according to plan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's good to see you again. How have you been keeping?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how have you been? It's been too long since we last spoke.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good afternoon! I hope you're having a great day so far.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's life treating you? I hope everything is going well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's wonderful to see you. How have you been lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hi, how are you today? I hope you're doing well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a productive day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's everything going? It's been a while since we last caught up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's nice to see you. How's everything been with you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how are you doing today? I hope you're in good spirits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning! I hope you have a fantastic day ahead of you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's it going? I hope everything is going according to plan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's good to see you again. How have you been keeping?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how have you been? It's been too long since we last spoke.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good afternoon! I hope you're having a great day so far.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's life treating you? I hope everything is going well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's wonderful to see you. How have you been lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hi, how are you today? I hope you're doing well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a productive day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's everything going? It's been a while since we last caught up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's nice to see you. How's everything been with you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how are you doing today? I hope you're in good spirits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning! I hope you have a fantastic day ahead of you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's it going? I hope everything is going according to plan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's good to see you again. How have you been keeping?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how have you been? It's been too long since we last spoke.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good afternoon! I hope you're having a great day so far.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's life treating you? I hope everything is going well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's wonderful to see you. How have you been lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hi, how are you today? I hope you're doing well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a productive day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's everything going? It's been a while since we last caught up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's nice to see you. How's everything been with you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi, how are you doing today? I hope you're in good spirits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good morning! I hope you have a fantastic day ahead of you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's it going? I hope everything is going according to plan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's good to see you again. How have you been keeping?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hi there, how have you been? It's been too long since we last spoke.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Good afternoon! I hope you're having a great day so far.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's life treating you? I hope everything is going well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, it's wonderful to see you. How have you been lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hi, how are you today? I hope you're doing well.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good evening! I hope you had a productive day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hey, how's everything going? It's been a while since we last caught",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Friendship is a bond based on mutual trust and understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Familial relationships are built on shared history and unconditional love.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Romantic relationships involve emotional intimacy and mutual affection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Professional relationships are formed in the workplace and based on mutual respect and collaboration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Platonic relationships are non-romantic and often characterized by deep friendship and companionship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parent-child relationships are unique and involve guidance, support, and unconditional love.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sibling relationships are dynamic and can vary from close bonds to occasional conflicts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Long-distance relationships require strong communication and trust to thrive.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Acquaintanceships are casual relationships based on shared interests or activities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Online relationships can develop through social media or online communities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Open relationships involve consensual non-monogamy and communication about boundaries and expectations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Toxic relationships are harmful and may involve manipulation, abuse, or control.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Workplace relationships can range from professional collaborations to friendships with colleagues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Casual relationships are non-committal and may involve dating or hooking up without expectations of a long-term commitment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Interpersonal relationships are connections between individuals that influence thoughts, feelings, and behaviors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Codependent relationships involve an unhealthy reliance on each other for emotional or psychological needs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Intimate relationships involve emotional vulnerability, trust, and a deep connection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Healthy relationships are characterized by mutual respect, communication, and support.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unrequited love occurs when one person's feelings are not reciprocated by the other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Arranged marriages are unions where families choose partners for their children based on cultural or social factors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Marriages involve legal and emotional commitments between partners.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parenting partnerships involve co-parenting responsibilities between separated or divorced individuals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Professional partnerships are collaborations between individuals or organizations to achieve common goals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Polyamorous relationships involve consensual romantic or sexual relationships with multiple partners.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Long-term relationships require commitment, compromise, and effort to maintain over time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Casual friendships are low-key connections based on shared interests or activities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Close friendships involve deep emotional bonds and shared experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dysfunctional relationships are characterized by unhealthy patterns of behavior, communication, or interaction.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unconditional love is a type of relationship where acceptance and support are given without conditions or expectations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Abusive relationships involve patterns of behavior that seek to control or harm the other person.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Committed relationships involve exclusivity and long-term plans for the future.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Emotionally distant relationships lack intimacy and connection between partners.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Interracial relationships involve partners from different racial or ethnic backgrounds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Transactional relationships are based on exchanges of goods, services, or favors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empathetic relationships involve understanding and sharing the emotions of others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rebound relationships occur shortly after the end of a previous relationship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Independent relationships prioritize individual autonomy and self-expression within the partnership.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unhealthy relationships may involve emotional manipulation, gaslighting, or coercive control.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Friendships with benefits involve a combination of friendship and casual sexual activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Peer relationships are connections between individuals of similar age or social status.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supportive relationships provide encouragement, validation, and assistance during difficult times.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unstable relationships are marked by inconsistency, unpredictability, or volatility.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Work relationships involve interactions with colleagues, supervisors, or subordinates in a professional setting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Toxic friendships can be emotionally draining and detrimental to one's well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unconditional support is a hallmark of healthy relationships, where individuals feel accepted and valued for who they are.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Conflict resolution skills are important for maintaining healthy relationships and resolving disagreements.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Interpersonal boundaries are essential for maintaining healthy relationships and respecting individual autonomy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mutual understanding and empathy are key components of successful relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Communication is crucial for building and maintaining strong relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Trust is the foundation of all healthy relationships, providing a sense of security and safety.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Compromise is essential for resolving conflicts and finding mutually satisfactory solutions in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Respect for each other's differences and individuality is vital for healthy relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quality time spent together strengthens bonds and fosters connection in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Expressing gratitude and appreciation strengthens relationships and fosters a sense of closeness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Forgiveness is essential for repairing relationships and moving forward after conflicts or betrayals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Boundaries help maintain a sense of balance and prevent resentment in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empathy allows individuals to understand and validate each other's emotions, fostering connection in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Shared values and goals provide a sense of purpose and direction in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Affection and physical intimacy are important for maintaining emotional connection and closeness in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting each other's personal growth and development strengthens relationships and fosters individual fulfillment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Active listening is essential for understanding and empathizing with each other's perspectives in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Transparency and honesty build trust and foster open communication in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Commitment is essential for building a strong foundation and longevity in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Resilience allows couples to navigate challenges and setbacks together, strengthening their relationship over time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Authenticity and vulnerability foster intimacy and deep connection in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Shared experiences and memories create a sense of belonging and solidarity in relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Flexibility and adaptability help couples navigate changes and transitions in their relationship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mathematics is the study of numbers, quantity, structure, and space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Algebra is a branch of mathematics that deals with symbols and the rules for manipulating those symbols.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geometry is the study of shapes, sizes, and properties of space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Calculus is a branch of mathematics that deals with rates of change and accumulation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Trigonometry is the study of the relationships between the angles and sides of triangles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Statistics is the science of collecting, analyzing, interpreting, and presenting data.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Probability is the branch of mathematics that deals with the likelihood of events occurring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physics is the study of matter, energy, motion, and the fundamental forces of nature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chemistry is the study of the composition, structure, properties, and reactions of matter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biology is the science of life and living organisms, including their structure, function, growth, evolution, distribution, and taxonomy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Astronomy is the study of celestial objects such as stars, planets, comets, and galaxies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geology is the study of the Earth's structure, composition, and processes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Environmental science is the study of the interactions between the physical, chemical, and biological components of the environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ecology is the study of the relationships between organisms and their environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Botany is the study of plants, including their structure, growth, reproduction, and evolution.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Zoology is the study of animals, including their behavior, physiology, and classification.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Genetics is the study of genes, heredity, and genetic variation in organisms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cell biology is the study of cells, their structure, function, and interactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Microbiology is the study of microorganisms, including bacteria, viruses, fungi, and protists.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neuroscience is the study of the nervous system, including the brain, spinal cord, and peripheral nerves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biochemistry is the study of the chemical processes and substances that occur within living organisms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical chemistry is the study of the physical properties and behavior of chemical systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Organic chemistry is the study of the structure, properties, composition, reactions, and synthesis of organic compounds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Inorganic chemistry is the study of inorganic compounds, which do not contain carbon-hydrogen bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Analytical chemistry is the study of the composition of matter and the development of methods to determine the identity and quantity of substances.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum mechanics is the branch of physics that deals with the behavior of particles at the atomic and subatomic levels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Relativity is the branch of physics that deals with the relationship between space and time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Thermodynamics is the study of heat and energy transfer in physical systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electromagnetism is the study of the electromagnetic force, which includes electricity, magnetism, and light.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kinematics is the branch of mechanics that deals with the motion of objects without considering the forces that cause the motion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dynamics is the branch of mechanics that deals with the motion of objects and the forces that cause the motion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fluid dynamics is the study of the behavior of fluids (liquids and gases) in motion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Optics is the study of light and its interaction with matter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Acoustics is the study of sound and its production, transmission, and effects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Material science is the study of the properties and applications of materials, including metals, ceramics, polymers, and composites.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Computer science is the study of algorithms, data structures, programming languages, and computer systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cryptography is the study of techniques for secure communication in the presence of third parties.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence is the branch of computer science that deals with the simulation of intelligent behavior in computers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robotics is the interdisciplinary field that combines computer science, engineering, and other disciplines to design and build robots.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Machine learning is a subset of artificial intelligence that focuses on the development of algorithms that allow computers to learn from and make predictions based on data.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Data science is an interdisciplinary field that combines statistics, machine learning, computer science, and domain knowledge to analyze and interpret complex data sets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chemical engineering is the branch of engineering that applies principles of chemistry, physics, mathematics, and economics to design, operate, and optimize chemical processes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Civil engineering is the branch of engineering that deals with the design, construction, and maintenance of infrastructure projects such as buildings, roads, bridges, and dams.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mechanical engineering is the branch of engineering that deals with the design, analysis, and manufacturing of mechanical systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electrical engineering is the branch of engineering that deals with the study and application of electricity, electronics, and electromagnetism.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Computer engineering is the branch of engineering that combines principles of computer science and electrical engineering to design, develop, and maintain computer hardware and software.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biomedical engineering is the branch of engineering that applies principles of engineering and biology to develop solutions for healthcare and medical problems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Environmental engineering is the branch of engineering that focuses on the protection and improvement of the environment through the development of sustainable technologies and practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Genetic engineering is the manipulation of an organism's genes using biotechnology to produce desirable traits or eliminate undesirable ones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nanotechnology is the manipulation of matter on an atomic, molecular, and supramolecular scale to create materials, devices, and systems with novel properties and functions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Renewable energy is energy derived from natural sources that are replenished on a human timescale, such as sunlight, wind, and water.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Climate science is the study of the Earth's climate system, including its components, processes, and variability.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geographic information science is the study of geographic information systems (GIS), spatial analysis, and remote sensing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Remote sensing is the acquisition of information about an object or phenomenon without making physical contact with it, typically using satellites or aircraft.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Oceanography is the study of the ocean, including its physical, chemical, biological, and geological characteristics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Atmospheric science is the study of the Earth's atmosphere and its interactions with other components of the Earth system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addition is combining two or more numbers to find their total.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Subtraction is taking one number away from another to find the difference.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Multiplication is repeated addition or combining equal groups.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Division is splitting a number into equal parts or groups.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fractions represent parts of a whole or a ratio of two numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Decimals are numbers written with a decimal point to represent parts of a whole.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Percentages represent parts of 100, often used to express proportions or comparisons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prime numbers are numbers greater than 1 that have only two factors: 1 and themselves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Factors are numbers that can be multiplied together to get another number.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Multiples are the result of multiplying a number by an integer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Even numbers are divisible by 2, while odd numbers are not.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Place value is the value of a digit based on its position in a number.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Order of operations is the rules that dictate the sequence in which mathematical operations should be performed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exponents represent repeated multiplication of the same number.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Square numbers are the result of multiplying a number by itself.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Square roots are the inverse operation of squaring a number.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cube numbers are the result of multiplying a number by itself twice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cube roots are the inverse operation of cubing a number.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rounding is approximating a number to a certain place value.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Estimation is finding an approximate value of a quantity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Absolute value is the distance of a number from zero on the number line.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ratio is a comparison of two quantities using division.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Proportion is an equation that states two ratios are equal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Average, or mean, is the sum of a set of numbers divided by the count of numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Median is the middle value of a set of numbers when they are arranged in order.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mode is the value that appears most frequently in a set of numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Range is the difference between the largest and smallest values in a set of numbers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geometry is the branch of mathematics that deals with shapes, sizes, and properties of space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Perimeter is the distance around the outside of a two-dimensional shape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Area is the measure of the surface enclosed by a shape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Volume is the measure of the space occupied by a three-dimensional shape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Circumference is the distance around the edge of a circle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Angles are the space between two intersecting lines or surfaces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Triangles are three-sided polygons with three angles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quadrilaterals are four-sided polygons with four angles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Circles are two-dimensional shapes with a curved boundary.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rectangles have four sides with opposite sides equal and all angles are right angles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squares are rectangles with all sides equal and all angles are right angles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parallelograms have opposite sides equal and parallel.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Trapezoids have one pair of parallel sides.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Polygons are closed shapes with straight sides.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pythagorean theorem states that in a right triangle, the square of the length of the hypotenuse is equal to the sum of the squares of the lengths of the other two sides.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Coordinate geometry uses pairs of numbers called coordinates to represent points on a plane.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Transformations are changes in the position, size, or orientation of a shape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Symmetry is a property of shapes that have corresponding parts that match exactly when folded or turned.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Congruent figures are identical in shape and size.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Similar figures have the same shape but may have different sizes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Probability is the likelihood of an event occurring, expressed as a fraction, decimal, or percentage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Data analysis involves collecting, organizing, and interpreting data to make conclusions or predictions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like painting or drawing?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("What's your favorite subject to talk about?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been to a theme park?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you enjoy dancing?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite way to exercise?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you like shopping?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever volunteered somewhere?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite type of weather?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you enjoy going to museums?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever ridden a horse?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like watching documentaries?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite board game?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you enjoy baking?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been skiing?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite season?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like doing puzzles?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever tried yoga?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite type of animal?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like attending festivals?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been on a road trip?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite type of flower?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you enjoy taking photographs?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been to a zoo?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite city?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like learning new languages?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever met a celebrity?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite type of cuisine?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you enjoy listening to podcasts?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been on a cruise?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite childhood memory?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like going to the theater?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever won a contest?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite book?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you enjoy going for walks?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever flown in a helicopter?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite thing to cook?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like playing cards?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever taken a road trip?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite ice cream flavor?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you enjoy going to the gym?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever been to a desert?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What's your favorite type of drink?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you like going to parks?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever tried surfing?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Have you ever seen a wild deer in the forest?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Lions are known as the kings of the jungle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Birdwatching is a relaxing way to enjoy nature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you know how to identify different bird species?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Elephants are the largest land animals in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Wolves live and hunt in packs for better survival.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Did you know that dolphins are highly intelligent creatures?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Owls are nocturnal and hunt mainly at night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kangaroos are native to Australia and can jump very high.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever seen a bear in the wild?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tigers are solitary animals that prefer to live alone.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Eagles have excellent eyesight and can spot prey from afar.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Snakes can be found in many different environments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Have you ever been to a wildlife sanctuary?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jellyfish have existed for millions of years in the oceans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Frogs go through a metamorphosis from tadpoles to adults.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beavers are known for building dams in rivers and streams.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Giraffes have long necks to reach leaves on tall trees.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins are birds that cannot fly but are excellent swimmers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Did you know that cheetahs are the fastest land animals?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Octopuses are very intelligent and can solve complex problems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Zebras have unique black and white striped patterns.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea turtles return to the same beach to lay their eggs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rhinos have thick skin and one or two horns on their heads.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever seen a bald eagle soaring high in the sky?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Coyotes are adaptable and can live in various environments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales are the largest animals to have ever lived on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bats are the only mammals capable of sustained flight.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gorillas are closely related to humans and live in social groups.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Salmon swim upstream to their birthplace to spawn.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you know how to identify animal tracks in the wilderness?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Foxes are clever and have excellent hunting skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mountain goats have adapted to live on steep, rocky cliffs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parrots are known for their bright colors and ability to mimic sounds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever seen a moose in the wild?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snow leopards are elusive and live in high mountain ranges.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Raccoons are nocturnal and known for their distinctive masks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Antelope are fast runners and can evade predators with ease.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks have been around for hundreds of millions of years.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sloths are incredibly slow-moving animals that live in trees.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bees play a crucial role in pollinating many plants.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ospreys are fish-eating birds of prey with excellent diving skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hummingbirds can hover in place and fly backward.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monarch butterflies migrate thousands of miles every year.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meerkats live in large social groups and have a sentry system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Polar bears are adapted to live in the cold Arctic environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Wolves communicate with each other through howling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crocodiles have powerful jaws and live in freshwater habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Orangutans are highly intelligent primates found in rainforests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prairie dogs live in complex underground burrow systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Cougars are also known as mountain lions or pumas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Peacocks are famous for their vibrant, colorful tail feathers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Komodo dragons are the largest lizards in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Walruses have long tusks and live in Arctic waters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Geckos have specialized toe pads for climbing walls.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals are marine mammals that are excellent swimmers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beetles are the most diverse group of insects on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ocelots are small wild cats with distinctive spotted fur.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dung beetles play an important role in recycling nutrients.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Flamingos get their pink color from their diet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pandas primarily eat bamboo and live in mountainous regions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Vultures are scavengers that play a crucial role in ecosystems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hyenas have strong jaws and are skilled hunters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Elk are large deer found in forests and grasslands.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Gazelles are known for their agility and speed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Leopards are excellent climbers and often rest in trees.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Wombats are burrowing marsupials native to Australia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Skunks are known for their distinctive black and white coloring and smell.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I am happy to meet you.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He has a new car.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They go to the gym every morning.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She does her homework before dinner.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We make breakfast together every Sunday.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I can speak three languages.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He says he will come to the party.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They know the answer to the question.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She thinks it's a good idea.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We see the mountains from our window.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I am ready to start the project.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He has a lot of experience in this field.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They go to the park every weekend.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She does her chores every evening.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We make delicious cakes for special occasions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I can play the guitar very well.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He says he will call you later.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They know a lot about history.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She thinks deeply about her decisions.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We see a beautiful sunset every evening.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I want to travel the world someday.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He uses his phone for work.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They find new places to explore.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She gives great advice.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We tell stories around the campfire.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I work from home three days a week.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He calls his parents every Sunday.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They try to eat healthy food.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She asks a lot of questions in class.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We need more time to finish the project.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I feel happy when I listen to music.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He becomes a better writer with practice.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They leave for vacation tomorrow.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She puts her keys on the table.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We mean to improve our services.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I keep a journal of my thoughts.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He lets his dog run in the yard.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They begin their day with a workout.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She helps her neighbors with groceries.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We talk about our plans for the future.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I turn off the lights before going to bed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He starts a new job next week.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They show their artwork at the gallery.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She plays the piano beautifully.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We run every morning to stay fit.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I move to a new city next month.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He likes to read science fiction novels.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They live in a small village.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She holds her baby gently.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We bring snacks to the meeting.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I write emails every day.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They stand in line for tickets.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She loses her keys often.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We pay our bills online.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I meet new people at work.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He includes everyone in the discussion.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They continue to study for the exam.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She sets the table for dinner.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We learn something new every day.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I change my password regularly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He leads the team effectively.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They understand the instructions clearly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She watches TV in the evening.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We follow the rules carefully.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I stop at the store on my way home.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He creates beautiful art pieces.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They read a book together every night.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She spends her weekends with family.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We grow our own vegetables.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I open the windows for fresh air.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He walks to work every day.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They win the game easily.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She teaches math to high school students.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We offer our help to those in need.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I remember my first day of school.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He buys groceries on Saturdays.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They choose the best option available.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She explains the lesson clearly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We develop new skills through practice.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I love spending time with my friends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He hates being late for appointments.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They drive to the beach every summer.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She sleeps early to wake up refreshed.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He sells fresh fruit at the market.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They play soccer in the park.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She reads a novel before bed.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We watch the news every evening.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I study for my exams diligently.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He listens to music while working.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They cook dinner together every night.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She drinks coffee every morning.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We visit our grandparents on weekends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I travel to new places every year.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He drives to work every day.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They sing in the choir.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She dances beautifully on stage.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We exercise to stay healthy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I shop for clothes online.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He paints landscapes in his free time.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They clean their house every weekend.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She bakes cookies for her friends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We plant flowers in our garden.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I swim in the lake during summer.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He cycles to the office.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They jog around the neighborhood.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She draws portraits as a hobby.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We climb mountains every vacation.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I fish at the lake on weekends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He hunts deer in the fall.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They camp in the forest every summer.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She kayaks down the river.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We surf at the beach every year.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I skate at the local rink.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He skis in the mountains.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They snowboard during the winter.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She sails in the ocean.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We play chess on rainy days.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I golf on weekends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He boxes at the gym.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They wrestle in competitions.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She fences in tournaments.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We run marathons every year.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I hike trails in the summer.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He rows on the river.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They skydive for thrill.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs dig holes in the backyard.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks dive into the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dragons dance in the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins dive deep underwater.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deer dart through the forest.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs roar in the jungle.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers explore the coral reef.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Desert animals dig burrows for shelter.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks drift along the river.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Detectives search for clues.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers twirl on stage.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drums beat rhythmically in the band.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers discover treasure in shipwrecks.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dinosaurs stomp through the prehistoric landscape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drivers navigate busy streets.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doctors treat patients in hospitals.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers imagine fantastic worlds.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs dominate the ancient world.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dragons breathe fire in fairy tales.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Detectives solve mysteries with logic.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins leap out of the water.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancers perform graceful moves.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers swim with colorful fish.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks paddle across the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drivers steer their cars carefully.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Designers create beautiful artwork.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks quack loudly in the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dogs bark at strangers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs roam the earth.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Detectives interrogate suspects.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dolphins communicate with clicks and whistles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers rehearse for their big performance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers explore underwater caves.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks waddle along the shore.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dragons soar through the clouds.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs hatch from eggs.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drivers honk their horns in traffic.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers imagine endless possibilities.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers descend into the ocean depths.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks flutter their wings in the water.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs roar ferociously in the wild.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancers glide across the dance floor.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs chase after squirrels in the park.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Detectives follow clues to solve mysteries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins swim gracefully in the sea.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs lumber through dense forests.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drivers navigate through winding roads.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers create fantastical stories.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Divers explore coral reefs teeming with life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks paddle serenely on the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dinosaurs ruled the earth millions of years ago.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancers move to the rhythm of the music.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs fetch sticks at the park.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreamers imagine flying through the stars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs trample through dense jungles.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Designers sketch out new ideas.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers discover ancient artifacts on the ocean floor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks quack as they splash in the water.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs lay eggs in nests.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers perform intricate routines on stage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs wag their tails happily.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Divers surface after exploring underwater caves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers envision a better world.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs roamed the earth long ago.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers photograph colorful coral reefs.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancers pirouette gracefully on stage.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dogs howl at the moon.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers wish upon shooting stars.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs thrived in prehistoric times.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers swim alongside majestic whales.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancers leap gracefully through the air.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks paddle lazily in the pond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs vanished from the earth.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers sleep soundly in their beds.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Divers plunge into the crystal-clear waters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers perform in front of a cheering audience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks quack loudly as they fly overhead.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs hunted for prey in packs.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers doodle in their notebooks.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Divers explore underwater caves with flashlights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers practice their routines in the studio.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs evolved into birds.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs drool while waiting for treats.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dinosaurs disappeared mysteriously from the earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Divers resurface after exploring the depths.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreamers imagine themselves as superheroes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers sway to the music in a gentle breeze.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Ducks paddle peacefully in the calm waters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dinosaurs hunted for food in the dense forests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreamers daydream about faraway places.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Divers explore sunken ships on the ocean floor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancers twirl in colorful costumes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs dig up buried bones in the yard.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dinosaurs thrashed their tails to defend themselves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreamers drift off into a world of dreams.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers rehearse their routines tirelessly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Ducks dive beneath the surface to search for food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinosaurs roared loudly to communicate with each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divers discover hidden treasures in underwater caves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreamers doodle in their notebooks during class.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancers perform elaborate routines on stage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrating their victory, the children dance happily in the park.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The horse dashes through the fields, kicking up dust.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("She declares her love for him in front of everyone.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bravely, the knights defend the castle from the invading army.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The demolition crew demolishes the old building to make way for a new skyscraper.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They depolish the old paint from the walls before applying a fresh coat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "With precision, he dequashes his opponent with a powerful serve.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Like shadows, the climbers descend the mountain as the sun sets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quickly, the postman despatches the letters to their respective addresses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("With each failure, his confidence diminishes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She dishes out servings of hot soup to the hungry guests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dispatcher sends emergency services to the accident scene.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The detective distinguishes the genuine artifact from the fake.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adventurous, the diver dives into the crystal-clear waters to explore the coral reef.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Playfully, she drenches her friends with water from the hose.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Elegantly, he dresses in his finest suit for the job interview.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The boat drifts aimlessly on the calm lake.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Thirstily, the traveler drinks from the clear stream.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They disestablish the outdated policies to implement new ones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Efficiently, she washes the dishes after dinner.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The king's decision to disparage his loyal subjects angers them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The boss dismisses the lazy employee from the company.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gracefully, passengers disembark from the cruise ship onto the exotic island.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They disfurnish the house before putting it up for sale.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dictator disenfranchises certain groups to maintain power.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The government disestablishes the state religion to promote equality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He disgraces his family name with his scandalous behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She disinclines from attending the party due to illness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Angered by her decision, the wealthy parents disinherit their son for marrying against their wishes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Slowly, over time, the old bridge disintegrates due to neglect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bulldozer dislodges rocks from the construction site.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her harsh words disparage his efforts, demoralizing him.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The manager dismisses the idea as impractical.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Passengers disembark from the cruise ship onto the exotic island.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They disfurnish the house before putting it up for sale.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dictator disenfranchises certain groups to maintain power.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The government disestablishes the state religion to promote equality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He disgraces his family name with his scandalous behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She disinclines from attending the party due to illness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Over time, the old bridge disintegrates due to neglect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bulldozer dislodges rocks from the construction site.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her harsh words disparage his efforts, demoralizing him.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The manager dismisses the idea as impractical.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Passengers disembark from the cruise ship onto the exotic island.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They disfurnish the house before putting it up for sale.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dictator disenfranchises certain groups to maintain power.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The government disestablishes the state religion to promote equality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He disgraces his family name with his scandalous behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She disinclines from attending the party due to illness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Over time, the old bridge disintegrates due to neglect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bulldozer dislodges rocks from the construction site.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her harsh words disparage his efforts, demoralizing him.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The manager dismisses the idea as impractical.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Passengers disembark from the cruise ship onto the exotic island.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They disfurnish the house before putting it up for sale.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dictator disenfranchises certain groups to maintain power.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The government disestablishes the state religion to promote equality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He disgraces his family name with his scandalous behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She disinclines from attending the party due to illness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Over time, the old bridge disintegrates due to neglect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bulldozer dislodges rocks from the construction site.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her harsh words disparage his efforts, demoralizing him.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The manager dismisses the idea as impractical.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Despite the rain, they went out for a walk.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Different people have different tastes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "During the summer, we often go swimming.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dad always tells the best bedtime stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Don't forget to bring your umbrella with you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Driving through the countryside is so relaxing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("David loves to play basketball after school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinner is ready, come and get it!", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Did you hear about the new movie coming out?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Despite the challenges, they never gave up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dogs make excellent companions for people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancing in the rain is so much fun!", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Did you know that dolphins are very intelligent?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreaming about the future is exciting.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drawing pictures is one of my favorite hobbies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancing with friends makes me happy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dark chocolate is my favorite kind of candy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Decorating the house for holidays is enjoyable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Diving into a good book is a great way to relax.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drinking warm tea on a cold day is comforting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dogs are loyal pets that bring joy to families.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Discovering new places is an adventure.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Driving to the beach is a fun summer activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreaming of faraway places is exciting.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancing under the stars is romantic.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doing yoga helps to relax the mind and body.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doodling on paper is a fun way to pass the time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dogs are known for their keen sense of smell.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Diving into the ocean is exhilarating.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Digging in the garden is hard work but rewarding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doodling in a notebook can spark creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drinking water is important for staying hydrated.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Decorating the Christmas tree is a festive tradition.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dressing up in costumes is fun on Halloween.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreaming about the future helps to set goals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doing chores around the house helps to keep it clean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancing to your favorite music is a great workout.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drawing pictures of animals is fun for kids.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs are faithful companions who offer unconditional love.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Diving into a pool on a hot day is refreshing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doing puzzles is a fun way to exercise your brain.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreaming of traveling the world is exciting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancing in the rain is a simple pleasure.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dining out at restaurants is a treat.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Driving with the windows down is freeing.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dogs are furry friends who bring joy to our lives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Discovering new hobbies is a rewarding experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Diving into a good book is a relaxing escape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Doodling in a sketchbook is a creative outlet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drinking hot cocoa warms you up on a cold day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs are playful creatures who love to run and fetch.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dreaming of success motivates you to work hard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doing yoga in the morning sets a positive tone for the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Dancing to your favorite song lifts your spirits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drawing pictures of nature is peaceful.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs are loyal companions who offer comfort and support.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Diving into a refreshing pool on a hot day is invigorating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Discovering new talents is an exciting journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doodling in a notebook is a fun way to pass the time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Splashing in puddles makes children giggle with delight.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sweeping the floor keeps our house clean and tidy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Singing loudly in the car is a fun road trip activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Skipping rope in the park is great exercise for kids.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Shopping for groceries is a weekly chore for many families.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squishing sand between your toes feels wonderful at the beach.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stirring the soup in the pot helps it to cook evenly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snuggling with a warm blanket is comforting on a cold night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sliding down the slide at the playground is thrilling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Splishing and splashing in the bathtub makes bath time fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Smiling at strangers can brighten someone's day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squeezing lemons to make lemonade is refreshing on a hot day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Switching off the lights before bed helps you sleep better.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Shushing noisy neighbors politely can resolve conflicts peacefully.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sailing on a boat across the ocean is an adventure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Solving puzzles together as a family strengthens bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Savoring a delicious meal with loved ones is priceless.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharpening pencils before class ensures they write smoothly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Swooshing down the ski slope is exhilarating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Slurping spaghetti noodles can be messy but fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spinning around in circles until you get dizzy is amusing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sighing with contentment after a long day is satisfying.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stomping through piles of leaves in the fall is enjoyable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Strumming a guitar by the campfire is relaxing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sketching in a notebook allows creativity to flow freely.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sniffing flowers in the garden fills the air with fragrance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swishing mouthwash after brushing your teeth keeps them clean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squishing playdough between your fingers is therapeutic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Scooping ice cream into a cone is a sweet treat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snacking on popcorn while watching movies is a tradition.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Splattering paint on a canvas creates beautiful art.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Slapping high-fives with friends is a gesture of celebration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Scratching an itch relieves discomfort instantly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Splurging on a fancy dinner is a special occasion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sizzling bacon in the pan smells delicious.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Surfing waves at the beach is an exciting sport.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snapping photos of memorable moments captures memories forever.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sinking into a soft bed after a long day is pure bliss.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Skimming stones across the water is a favorite pastime.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Savoring the flavors of homemade cookies is delightful.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Shooing away pesky flies keeps the picnic peaceful.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snapping fingers to the beat of a catchy tune is fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Squinting in the bright sunlight shields your eyes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scrubbing dishes after dinner helps to keep the kitchen clean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sliding down snow-covered hills on a sled is exhilarating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stirring hot chocolate with a candy cane adds a festive touch.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sneezing into a tissue prevents spreading germs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snuggling up with a good book is a cozy way to spend an evening.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Strolling through the park on a sunny day is relaxing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Solving a challenging puzzle feels rewarding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Savoring the last bite of a delicious meal is satisfying.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Slipping on ice can be dangerous, so walk carefully.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sprinkling salt on freshly popped popcorn enhances the flavor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scribbling with colorful markers sparks creativity in kids.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squishing mud between your toes feels squelchy and cool.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sipping lemonade on the porch is refreshing on a hot day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Squawking seagulls can be heard along the shoreline.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swishing mouthwash around your mouth freshens your breath.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Babbling brooks flow peacefully through the forest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bashing piñatas at birthday parties is so much fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Brushing your teeth before bed keeps them healthy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blushing with embarrassment, she quickly looked away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bottling up emotions can lead to stress and anxiety.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Blasting music at full volume can disturb neighbors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Building sandcastles at the beach is a classic activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Banishing negative thoughts can improve mental well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bundling up in warm blankets on a cold night is cozy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Brandishing swords in a play fight can be dangerous.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bowling strikes at the alley is a satisfying achievement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bouncing on a trampoline is an exhilarating experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Blasting bubbles with bubble gum is entertaining.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Banishing bad habits requires determination and effort.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bleaching clothes in the sun helps to remove stains.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Browsing through old photographs brings back memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Balancing on one foot is a test of stability.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Binging on junk food can lead to health problems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Brandishing a flashlight in the dark illuminates the path.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blushing with embarrassment, she tried to hide her face.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blasting a horn in traffic is impolite and disruptive.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Brushing hair before bed prevents tangles in the morning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Beaming with pride, he accepted the award.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bundling up in warm clothes protects against the cold.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bouncing balls against the wall is a noisy activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Balancing books on your head improves posture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bowling balls down the alley requires skill and precision.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Blasting music at a party gets everyone dancing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Building forts out of blankets is a favorite childhood pastime.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Banishing negative thoughts is key to a positive mindset.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blushing with embarrassment, she stuttered out an apology.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Bottling up emotions can lead to outbursts of anger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Browsing through old books in the library is nostalgic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blasting bubbles with soap makes them shimmer in the sunlight.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Babbling brooks provide a soothing soundtrack to nature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Brushing teeth before bed removes plaque and prevents cavities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Beaming with joy, she hugged her loved ones tightly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bundling up in warm scarves and gloves protects against the cold.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Balancing acts in circus performances require agility and focus.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bouncing balls against the ground creates a rhythmic pattern.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blushing with embarrassment, he tried to explain himself.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blasting a whistle to signal the end of playtime is a familiar sound.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Building relationships with others takes time and effort.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Browsing through old photographs brings back fond memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Banishing negativity from your life leads to a happier existence.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beaming with pride, she watched her children succeed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bottling up emotions can have negative effects on mental health.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Balancing on one foot strengthens the leg muscles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bouncing on a trampoline is a great way to burn energy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Brushing hair before bed prevents knots and tangles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bundling up in warm blankets on a chilly evening is comforting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blushing with embarrassment, she tried to hide her face.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blasting bubbles with bubble gum is a fun pastime for kids.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Banishing bad habits requires determination and perseverance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Building sandcastles at the beach is a favorite summer activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Browsing through old photographs brings back cherished memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beaming with pride, she watched her children graduate.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Balancing on a tightrope requires focus and concentration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bouncing balls against the wall is a noisy but enjoyable activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blasting music at full volume can disturb the peace and quiet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Admiring the sunset from the beach is breathtaking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Arriving early for the concert ensures good seats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Applauding the performers at the end of the show is polite.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending a yoga class helps to relax the mind and body.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adjusting the thermostat keeps the room at a comfortable temperature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Analyzing data is an important part of scientific research.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Awakening to the sound of birds chirping is refreshing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Applying sunscreen before going outside prevents sunburn.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Answering questions in class shows engagement and understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Asking for help when needed is a sign of strength, not weakness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advancing in your career requires dedication and hard work.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Aspiring to greatness motivates people to achieve their goals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Assuming responsibility for your actions is a mark of maturity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Appreciating nature's beauty is a source of inspiration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adorning the walls with artwork adds personality to a room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Aligning your values with your actions leads to fulfillment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Acquiring new skills expands your knowledge and abilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adopting a positive attitude can improve your outlook on life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Accomplishing goals gives a sense of satisfaction and pride.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Arranging flowers in a vase brightens up the room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adding spices to your cooking enhances the flavor of dishes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Acknowledging others' contributions fosters a sense of teamwork.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for causes you believe in can create positive change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Absorbing knowledge from books broadens your understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Asserting yourself in a respectful manner ensures your voice is heard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Appreciating the little things in life brings joy and contentment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Amassing wealth does not guarantee happiness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Altering your perspective can lead to new insights and opportunities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Anticipating the future can be both exciting and nerve-wracking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attaching a leash to your dog keeps them safe on walks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adjusting your sails allows you to navigate through life's challenges.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Acknowledging your mistakes is the first step towards growth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Accompanying a friend in need shows compassion and support.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Analyzing your strengths and weaknesses helps you grow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Anticipating the arrival of a loved one fills you with excitement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Assuring someone of your support can provide comfort in difficult times.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Arranging a bouquet of flowers brightens up any room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Applying for a job requires careful preparation and presentation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Asking questions helps to deepen your understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Abstaining from negative habits promotes overall well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Agreeing to compromise is essential for healthy relationships.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adopting a pet from a shelter saves a life and brings joy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Applying makeup enhances your natural beauty.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Admiring a beautiful painting evokes emotions and inspires creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Accelerating your efforts can lead to quicker results.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Accessing information online has revolutionized how we learn.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Advocating for equal rights promotes social justice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Alleviating someone's pain is an act of kindness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Accommodating others' needs fosters cooperation and harmony.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Asserting your boundaries is important for self-care.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Acquiring new skills opens doors to opportunity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advancing technology has transformed the way we live.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Arranging furniture in a room creates a sense of space and comfort.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Anticipating the arrival of spring fills the air with excitement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Approaching challenges with a positive mindset leads to solutions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adjusting your attitude can change your outlook on life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Appreciating nature's beauty brings a sense of peace and tranquility.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Acquiring knowledge through reading enriches the mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Assisting others in need builds a sense of community.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for environmental conservation protects our planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Determined to succeed, she worked hard every day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in her finest attire, she entered the ballroom.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched from the rain, he hurried inside for shelter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Decorated with twinkling lights, the tree stood tall.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Distressed by the news, she sought comfort from a friend.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Delayed by traffic, he arrived at the meeting late.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Denied access to the building, they waited patiently outside.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to improve, he practiced diligently every day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dreaded by many, the dentist appointment loomed ahead.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Delighted by the surprise, she hugged her loved ones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to overcome obstacles, she faced challenges head-on.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deposited in the bank, the money was safe and secure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in matching outfits, they posed for a family photo.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dedicated to his craft, he spent hours perfecting his art.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to finish the race, she pushed herself to the limit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doused with water, the flames were finally extinguished.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Disappointed by the outcome, he vowed to try again.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dazed by the accident, she struggled to comprehend what had happened.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Depressed by the loss, she sought solace in her memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Discarded by the roadside, the old furniture was picked up by the garbage truck.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Designed with care, the building stood as a testament to architectural ingenuity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in sweat, he collapsed onto the ground, exhausted.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Decorated with flowers, the room looked festive and inviting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in costume, she attended the masquerade ball.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to find the truth, he embarked on a journey of discovery.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dazzled by the lights, she gazed in awe at the city skyline.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Decorated with ribbons, the gift looked beautiful.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched from the downpour, she hurried inside the cafe for shelter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Devastated by the news, she sought comfort from her friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to make a change, he started a new fitness regime.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in sunlight, the garden bloomed with flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Driven by passion, he pursued his dreams with unwavering determination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in his Sunday best, he attended church with his family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to succeed, she faced every challenge with courage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drowned in sorrow, he struggled to find hope.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in black, she attended the funeral with a heavy heart.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to learn, she studied late into the night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Distracted by the noise, he struggled to concentrate.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in tears, she sought comfort from her loved ones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to win, she trained tirelessly for the competition.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in her wedding gown, she walked down the aisle with grace.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drowned in debt, he struggled to make ends meet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dazzled by the display, she watched the fireworks with wonder.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in sweat, he crossed the finish line with a sense of accomplishment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Determined to succeed, she refused to give up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Distracted by his thoughts, he failed to notice the time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in his finest, he attended the gala event with pride.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dazed by the bright lights, she stumbled into the room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to find the truth, he pursued the investigation with fervor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in rain, they sought shelter under a nearby tree.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in her favorite outfit, she felt confident and happy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to succeed, she worked tirelessly towards her goal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Drowned in sorrow, she struggled to find a way out.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in his uniform, he stood proudly at attention.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to overcome her fears, she faced each challenge head-on.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dazzled by the city lights, he marveled at the skyline.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in sweat, he collapsed on the ground, exhausted.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to make a difference, she volunteered her time to help others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Distracted by the noise, he found it difficult to concentrate.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in his pajamas, he climbed into bed and fell asleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to succeed, she refused to let anything stand in her way.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drowned in debt, he struggled to keep his head above water.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drenched in rain, they huddled together under the umbrella.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dressed in her wedding gown, she walked down the aisle with confidence.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determined to find the culprit, he searched every inch of the room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dazzled by the bright lights, she wandered through the city streets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She scuba dives in tropical waters.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We ride horses on the ranch.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I hunt for bargains.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He runs a marathon annually.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They skate in the park.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She sails across the lake.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We row together every weekend.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I jog every morning.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He climbs rocks for fun.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They box in the ring.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She dances every Friday.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We sing in the choir.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I paint landscapes in my studio.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He sculpts with clay.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They draw cartoons.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She writes poetry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We read mysteries.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I cook Italian dishes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He bakes bread weekly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They grill on weekends.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She boils vegetables.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We fry chicken sometimes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I steam dumplings.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He simmers sauces.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They roast coffee beans.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She braises meat.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We blanch vegetables.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I poach eggs.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He sautés mushrooms.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They caramelize onions.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She chills desserts.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We blend smoothies.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I marinate chicken.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He flambés dishes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They pickle cucumbers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She preserves fruits.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We brew tea.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I squeeze oranges.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He serves dinner.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They set the table.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She clears the dishes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We wash the dishes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I dry the plates.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He mops the floor.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They sweep daily.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She dusts furniture.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We vacuum the carpets.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I scrub the sink.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He polishes shoes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They organize bookshelves.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She sorts laundry.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("We fold clothes.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I iron shirts.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He hangs coats.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("They tidy up rooms.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She renovates her home.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We decorate for holidays.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("I repair appliances.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The happy children played in the park.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She received a beautiful bouquet of flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The big dog chased after the ball.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("He lives in a small apartment in the city.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The old man sat on the bench, feeding pigeons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She wore a red dress to the party.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The young couple walked hand in hand along the beach.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They live in a nice neighborhood with friendly neighbors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The tall trees provided shade on a hot day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It was a dark and stormy night.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She had a lovely singing voice.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cold wind sent shivers down their spines.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He wore a blue suit to the job interview.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hot coffee warmed her hands on a chilly morning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bright stars twinkled in the night sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She bought a new car last week.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The green grass tickled their bare feet.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sweet aroma of freshly baked cookies filled the kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He had a strong grip when he shook hands.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clean room sparkled after she finished tidying up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She felt safe and secure in her home.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The soft pillow provided comfort as she slept.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The hard work paid off in the end.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fast car sped down the highway.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The slow traffic made them late for the appointment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The quiet library was a peaceful place to study.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("They enjoyed a peaceful evening by the fireplace.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The noisy neighbors kept them awake at night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She had a patient demeanor when dealing with difficult situations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The busy streets were crowded with people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The empty room felt lonely without any furniture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The full moon illuminated the night sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hot sun beat down on them during the hike.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("She had a cool attitude even under pressure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The warm sunrays felt comforting on their skin.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright colors of the flowers brought joy to her heart.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The old book had been passed down through generations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The heavy rain poured down from the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The light breeze rustled through the leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dark clouds signaled an impending storm.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She had an expensive watch.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cheap knockoff broke after a few uses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("She had a fancy dinner at a five-star restaurant.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The plain white walls needed some artwork.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rich aroma of coffee filled the room.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The poor beggar asked for spare change.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bright sun illuminated the clear blue sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cold winter air made her shiver.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hot summer sun beat down relentlessly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dry desert landscape stretched out for miles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The wet rain soaked through their clothes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The pleasant aroma of flowers filled the garden.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The unpleasant smell of garbage lingered in the air.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The comfortable chair was perfect for relaxing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The uncomfortable mattress made it difficult to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hard ground was uncomfortable to sit on.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The soft blanket kept them warm on cold nights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tasty meal satisfied their hunger.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tasteless food lacked flavor.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright sun warmed their skin.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dim light made it difficult to see.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The light rain fell gently from the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The heavy rain poured down in torrents.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright smile lit up her face.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dull knife struggled to cut through the steak.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sharp blade sliced through the bread effortlessly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The warm sun melted the snow on the ground.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cool breeze provided relief from the heat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The foul smell made them gag.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The fresh scent of flowers filled the room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rotten fruit had to be thrown away.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clear water sparkled in the sunlight.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cloudy sky threatened rain.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The empty room echoed with their laughter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The crowded streets were bustling with activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The stale bread was no longer edible.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The crisp air signaled the arrival of fall.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The muddy boots left tracks on the floor.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The soggy ground squished beneath their feet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dry heat made it difficult to breathe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The icy wind sent chills down their spines.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The frosty air bit at their exposed skin.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The foggy morning obscured their view.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clear sky was dotted with stars.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The overcast sky cast a gloomy shadow over the landscape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright sun warmed their faces.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The gloomy weather matched their mood.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The damp ground squished beneath their feet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The mild breeze rustled through the leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The severe storm caused widespread damage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The gentle rain pattered against the window.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The harsh sunlight made them squint.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The muggy air made it difficult to breathe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dry desert stretched out for miles.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The lush vegetation provided shelter for wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The sparse landscape was devoid of vegetation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rugged terrain made hiking difficult.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The smooth surface of the lake reflected the sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The rough waves crashed against the shore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The calm waters of the lake were perfect for swimming.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The children played joyfully in the park.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("She received a beautiful bouquet of flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The big dog eagerly chased after the ball.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("He lives in a small apartment in the city.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The old man sat on the bench, feeding pigeons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She wore a vibrant dress to the party.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The young couple strolled hand in hand along the beach.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They reside in a pleasant neighborhood with amiable neighbors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The tall trees provided shade on a scorching day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It was a dark and stormy night.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She possessed a melodious singing voice.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cold wind sent shivers down their spines.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("He dressed in a sharp suit for the job interview.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hot coffee warmed her hands on a chilly morning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright stars adorned the night sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She purchased a new car last week.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The green grass tickled their bare feet.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sweet aroma of freshly baked cookies filled the kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "He had a firm grip when he shook hands.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The clean room sparkled after she finished tidying up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She felt secure in her cozy home.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The soft pillow provided comfort as she slept.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The hard work paid off in the end.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fast car sped down the highway.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The slow traffic made them late for the appointment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The quiet library was a peaceful place to study.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("They enjoyed a serene evening by the fireplace.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The noisy neighbors disturbed their sleep at night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She remained patient when dealing with difficult situations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bustling streets were crowded with people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The empty room felt lonely without any furniture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The full moon illuminated the night sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hot sun beat down on them during the hike.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("She maintained a calm attitude even under pressure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The warm sunrays caressed their skin.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant colors of the flowers brought joy to her heart.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The old book had been passed down through generations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The heavy rain poured down from the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The light breeze gently rustled through the leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dark clouds indicated an impending storm.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She owned an expensive watch.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cheap knockoff broke after a few uses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "She enjoyed a lavish dinner at a five-star restaurant.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The plain white walls needed some artwork.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The rich aroma of coffee permeated the room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The destitute beggar asked for spare change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright sun illuminated the azure sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cold winter air made her shiver.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The hot summer sun beat down relentlessly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dry desert landscape stretched out for miles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The pouring rain soaked through their clothes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The pleasant scent of flowers enveloped the garden.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The unpleasant odor of garbage permeated the air.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The comfortable chair provided solace for relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The uncomfortable mattress made it difficult to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The firm ground was uncomfortable to sit on.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The plush blanket kept them warm on cold nights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The delectable meal satisfied their hunger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bland food lacked flavor.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bright sun warmed their skin.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dim light obscured their vision.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The gentle rain fell softly from the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The heavy rain poured down relentlessly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cheerful smile lit up her face.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The dull knife struggled to cut through the steak.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sharp blade sliced through the bread effortlessly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The warm sun melted the snow on the ground.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cool breeze provided relief from the heat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The putrid smell made them gag.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The fresh scent of flowers wafted through the room.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rotten fruit had to be thrown away.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The crystal-clear water sparkled in the sunlight.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cloudy sky threatened rain.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The empty room resounded with their laughter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bustling streets teemed with activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The stale bread was no longer edible.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The crisp air heralded the arrival of fall.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The muddy boots left imprints on the floor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The sodden ground squelched beneath their feet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The arid heat made it hard to breathe.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The biting wind sent chills down their spines.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The icy air nipped at their exposed skin.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The foggy morning obscured their view.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cloudless sky twinkled with stars.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The overcast sky cast a shadow over the landscape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The warm sun beamed down on their faces.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bleak weather mirrored their mood.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The damp ground squelched beneath their feet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The gentle breeze rustled through the leaves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The fierce storm wreaked havoc.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The soft rain pattered against the window.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The harsh sunlight made them squint.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The humid air made it hard to breathe.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dry desert stretched out endlessly.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The lush vegetation provided shelter for wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The barren landscape lacked vegetation.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The rugged terrain posed challenges for hiking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The glassy lake mirrored the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The crashing waves pounded against the shore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The tranquil waters of the lake beckoned for a swim.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sunsets paint the sky in hues of orange and pink.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Books offer an escape to fantastical worlds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The aroma of freshly baked bread fills the kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Laughter echoes through the halls, filling hearts with joy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A gentle breeze whispers through the trees.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stars twinkle like diamonds in the night sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of waves crashing against the shore is soothing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Children play games, their laughter filling the air.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Raindrops pitter-patter on the windowpane.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A cozy fireplace warms the room on a cold night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Flowers bloom, adding color to the garden.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Mountains stand tall, majestic against the horizon.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A cup of hot cocoa is the perfect comfort on a winter's day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The sound of a baby's laughter is contagious.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Time seems to stand still when lost in a good book.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rustling of leaves in the wind is music to the ears.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A hug from a loved one is like a warm embrace.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Memories are treasures to be cherished forever.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The scent of fresh coffee awakens the senses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Kindness has the power to brighten someone's day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Clouds drift lazily across the sky.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The first snowfall transforms the world into a winter wonderland.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A smile can light up even the darkest of days.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Music has the ability to uplift and inspire.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of sand between your toes is invigorating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A walk in nature rejuvenates the soul.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of birds singing heralds the arrival of spring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stars shine brightly, guiding travelers through the night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A gentle rain cleanses the earth, bringing new life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Friendship is a bond that withstands the test of time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The scent of fresh-cut grass is the epitome of summer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A good night's sleep rejuvenates the body and mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The sound of a baby's first giggle is pure magic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Artistic expression allows the soul to soar.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A warm embrace can convey more than words ever could.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The smell of rain on dry earth is intoxicating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Starry nights inspire dreams of adventure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sunshine warms the skin and lifts the spirit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A homemade meal cooked with love nourishes the soul.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Kindness costs nothing but means everything.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of waves crashing against the shore is hypnotic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A good deed brings warmth to the heart.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Books are windows to other worlds.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rainbows paint the sky with vibrant colors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A gentle breeze carries the scent of flowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sharing a meal with loved ones strengthens bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The sound of children's laughter is pure joy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gratitude turns what we have into enough.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The sound of a crackling fire is comforting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A kind word can change someone's entire day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Cherished memories are treasures of the heart.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stars twinkle like fairy lights in the night sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Love is the most powerful force in the universe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A warm hug can heal a wounded soul.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sunshine brings warmth and light to the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The smell of fresh rain is invigorating.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Whispers of the wind carry secrets of the universe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A smile is the universal language of kindness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of a waterfall is both calming and invigorating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rainbows are nature's way of painting the sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Time spent with loved ones is never wasted.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Nature's beauty is a source of endless inspiration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Friendship is the greatest gift of all.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music has the power to heal and uplift.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of waves lapping against the shore is soothing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kindness is a language that the deaf can hear and the blind can see.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A heartfelt apology has the power to mend fences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of birds chirping heralds the arrival of spring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A warm cup of tea soothes the soul on a cold day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Laughter is the best medicine for a weary soul.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunshine on my shoulders makes me happy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of rain tapping on the window is comforting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Clouds come floating into my life, no longer to carry rain or usher storm, but to add color to my sunset sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Autumn leaves crunch beneath my feet as I walk through the park.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The smell of freshly cut grass brings back memories of childhood.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stars shine brightest on the darkest nights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A soft blanket of snow covers the ground, turning the world into a winter wonderland.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of laughter fills the room, lifting spirits and bringing joy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunrise paints the sky in shades of pink and gold, signaling the start of a new day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Waterfalls cascade down mountainsides, their roar echoing through the valley.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The smell of fresh-baked cookies fills the kitchen, tempting even the strongest willpower.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A gentle breeze rustles through the leaves, carrying with it the promise of a new season.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sound of a crackling fire is the perfect accompaniment to a cozy night in.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Thunder rumbles in the distance, a harbinger of the coming storm.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fields of wildflowers stretch as far as the eye can see, a riot of color",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Good day, the name's James, nice to meet you.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hello, you can call me Abigail, it's great to meet you",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How are you feeling today? Are you doing alright?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Is everything okay? How have you been feeling lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("I hope you're well. How's your health been recently?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you in good health? How's everything going for you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How have you been? Are you feeling healthy and happy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Is everything alright with you? How's life treating you?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How are you holding up? Have you been feeling well?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Are you feeling okay? How's your energy and mood?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your well-being? Are you managing to stay healthy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling well? Have you been taking care of yourself?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Is everything going smoothly? How are you feeling generally?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's life been treating you? Are you feeling good overall?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling alright? How's your physical and mental state?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How are you doing? Have you been feeling happy and healthy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Is everything okay with you? How have you been feeling?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling good? How's your emotional well-being lately?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your health? Are you experiencing any discomfort or pain?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your day been? Are you feeling positive and energetic?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling happy? How's your mental health these days?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How are things going for you? Have you been feeling well?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your mood? Are you feeling upbeat and positive?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Is everything fine? How's your overall health and happiness?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's life treating you? Are you staying healthy and happy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling well? How's your physical condition these days?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's everything? Are you feeling good physically and emotionally?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your energy level? Are you feeling strong and healthy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling better? How's your recovery progressing?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How are you? Have you been feeling well and content?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your day been? Are you feeling relaxed and comfortable?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you okay? How's your well-being and state of mind?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's everything going? Are you feeling well and happy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your health holding up? Are you feeling strong?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How are you feeling physically? Have you been taking care of yourself?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your mood been? Are you feeling positive and optimistic?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling alright? How's your general state of health?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's everything with you? Are you feeling good overall?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How are you today? Have you been feeling well and happy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your well-being? Are you feeling healthy and strong?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your emotional state? Have you been feeling stable and content?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling well? How's your physical health these days?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How are things? Are you feeling positive and motivated?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your day going? Are you feeling well-rested and refreshed?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling alright? How's your energy and vitality?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your mood today? Are you feeling cheerful and optimistic?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's everything been? Are you feeling healthy and happy?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How are you doing? Have you been feeling well and balanced?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your well-being? Are you managing to stay positive?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you feeling okay? How's your physical and mental state?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your health? Are you experiencing any issues or concerns?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your day been? Are you feeling peaceful and content?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("What do you do for work? Can you tell me about it?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Where do you work? What's your job like?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Tell me about your job. What do you do there?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How's work been? Are you enjoying what you do?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("What field do you work in? Is it challenging?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you like your job? What's the best part?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you studying? What's your major?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("How's school going? Are you learning a lot?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What are you studying? Is it interesting?", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tell me about your studies. What do you hope to achieve?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you working or studying? How do you balance them?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How's your workload? Is it manageable?", "KURDISH_KURDISH_KURDISH");
    await insertSentence("What's a typical day like for you at work/school?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Do you have any career goals? What are they?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you working on any interesting projects right now?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How's the work environment? Is it friendly?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("What made you choose this field of work/study?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you had any interesting experiences at work/school?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What skills are you developing through your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are you involved in any extracurricular activities related to your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you have any tips for someone starting in your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How do you stay motivated in your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are there any challenges you face in your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever considered furthering your studies or changing careers?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you see your career progressing in the future?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What do you think are the most important qualities for success in your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are there any mentors or role models who have influenced your career/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you approach problem-solving in your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever had to overcome a significant challenge in your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you have any favorite subjects or aspects of your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What advice would you give to someone considering a career/study path similar to yours?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you think your work/studies contribute to society or your community?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Have you ever considered working/studying abroad?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are there any trends or developments in your field that you find particularly exciting?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you stay updated with the latest developments in your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you have any favorite books or resources related to your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What role do you think technology plays in your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever collaborated with others on a project at work/school?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you manage your time effectively between work/studies and other commitments?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What do you think sets your work/studies apart from others in your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Are there any ethical considerations in your work/studies that you find important?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("How do you handle stress in your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Have you ever had to make a difficult decision related to your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "What motivates you to continue learning and growing in your field?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you think your work/studies impact your personal growth and development?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Do you have any plans for further education or professional development?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "How do you think your work/studies will evolve in the future?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("What do you enjoy most about your work/studies?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The aroma of sizzling garlic and herbs wafted from the kitchen, making my stomach rumble.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant green farmers market displayed plump strawberries, glistening eggplants, and ruby red tomatoes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following her grandmother's recipe, she meticulously folded delicate layers of flaky pastry and juicy apples.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Carefully balancing his chopsticks, he dipped the glistening dumplings into the savory soy sauce.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tangy sourdough bread, crusty and golden brown, paired perfectly with the creamy goat cheese.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Aromatic spices like turmeric, cumin, and coriander danced in the bubbling pot of fragrant curry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The chef meticulously plated the dish, drizzling balsamic reduction over the pan-seared scallops.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bakery window displayed an array of decadent pastries – flaky croissants, glistening fruit tarts, and fluffy cinnamon buns.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tangy vinaigrette brought out the sweetness of the roasted beets and the earthy flavor of the goat cheese.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant green tea ceremony involved whisking the frothy matcha into a delicate jade green beverage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hermit crabs scurried across the sandy beach, their shells overflowing with plump mussels and juicy clams.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The cast-iron skillet sizzled as she poured in the batter, creating fluffy golden brown pancakes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling street food market offered a kaleidoscope of flavors – savory grilled skewers, spicy noodle soups, and sweet mango sticky rice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sushi chef expertly sliced glistening tuna and salmon, arranging them on a bed of fluffy white rice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The crisp autumn air carried the sweet scent of ripe apples and the smoky aroma of bonfires roasting marshmallows.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant coral reef teemed with life – colorful fish nibbled on seaweed, while graceful sea turtles grazed on seagrass.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rich, dark chocolate melted on my tongue, releasing a symphony of bittersweet flavors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The pungent durian fruit, known for its strong odor, was a local delicacy with a creamy, custard-like texture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vintage cookbook contained handwritten notes and recipes passed down through generations, each a culinary treasure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling food court offered a variety of international cuisines – steaming bowls of ramen, sizzling fajitas, and crispy samosas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The local fisherman proudly displayed his catch – a glistening silver salmon and a basket of plump, wriggling crabs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The tangy pickle juice offered a refreshing counterpoint to the richness of the melt-in-your-mouth pulled pork sandwich.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant farmers market displayed an abundance of fresh produce – plump pears, juicy peaches, and leafy green kale.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The aroma of freshly brewed coffee filled the air, a comforting scent that jumpstarted the morning routine.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spicy noodles slurped with loud gusto.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sweet mango slices stained her fingers.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salty popcorn kernels popped with a bang.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fluffy pancakes awaited their syrup bath.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cheesy pizza slice vanished in one bite.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crunchy carrots offered a healthy crunch.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Juicy steak sizzled on a hot grill top.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sourdough bread smelled fresh from bakery.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tangy yogurt parfait layered with fruit.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Warm cookies tempted with chocolate chips.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fizzy soda can popped open with a hiss.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salty chips satisfied a midday craving.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spicy salsa added a fiery flavor boost.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Creamy ice cream melted in a warm hand.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sweet strawberries tasted like summer sunshine.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hot coffee woke her up in the morning.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fluffy omelet filled with cheese delight.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Crispy bacon added a salty crunch to toast.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Cheddar cheese melted perfectly on toasted bread.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spicy chili warmed you up on a cold day.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Freshly squeezed orange juice tasted like sunshine.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Crisp lettuce leaves added a refreshing crunch.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Warm chocolate chip cookies filled the kitchen with aroma.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sweet and tart berries burst with summer flavor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Steaming cup of tea offered a comforting warmth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Spicy pad thai noodles satisfied a hungry appetite.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Savory grilled cheese sandwich oozed with melted cheese.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Fluffy scrambled eggs were cooked to perfection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Golden brown french fries dipped in ketchup.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Tangy vinaigrette dressing drizzled on a salad.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Spicy chicken wings with a cool blue cheese dip.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hearty bowl of oatmeal kept you full all morning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Freshly baked bread filled the air with a delicious aroma.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sizzling bacon woke you up with its irresistible smell.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sweet and creamy vanilla ice cream cone on a hot day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chewy brownie offered a delicious chocolate indulgence.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The ancient ruins whispered stories of a bygone era.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling market overflowed with exotic sights and smells.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunsets painted the sky in fiery hues as she cruised the ocean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Winding roads led to charming villages nestled in rolling hills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The salty air and rhythmic waves soothed her soul.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Backpack hoisted, she embarked on a journey of self-discovery.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The train rattled through snow-capped mountains, a breathtaking view.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Museum halls housed treasures that sparked her imagination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Local musicians filled the air with vibrant melodies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Each day brought new experiences and unforgettable memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her taste buds danced with flavors from a foreign cuisine.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The language barrier became a bridge of laughter and connection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stargazing beneath a canopy of stars ignited her sense of wonder.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling city pulsed with energy, keeping her on her toes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sun-drenched beaches beckoned with relaxation and rejuvenation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The kindness of strangers warmed her heart on a lonely journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hiking trails led her to breathtaking vistas and hidden waterfalls.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The thrill of adventure fueled her every step of the way.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("A chance encounter sparked a lifelong friendship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Passport stamped, she collected memories more valuable than souvenirs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The road less traveled offered the greatest rewards.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The world became her classroom, teaching her invaluable lessons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traveling home brought a newfound appreciation for what she had.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The journey changed her, leaving an indelible mark on her soul.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ancient ruins stood as testaments to bygone civilizations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling marketplace offered a sensory overload of exotic sights and aromas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunset cruises provided fiery vistas and a calming rhythm of the ocean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meandering roads revealed charming villages nestled in picturesque landscapes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salty air and rhythmic waves provided a restorative beachfront experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Backpack secured, she embarked on a solo exploration to rediscover herself.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The scenic train journey traversed snow-capped mountains, offering breathtaking panoramas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Museum collections housed historical treasures, igniting her imagination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Local musicians filled the streets with vibrant melodies, enriching the cultural experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Every day presented unique opportunities and indelible memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her palate danced with unfamiliar flavors, exploring a new culinary landscape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The language barrier presented a challenge, fostering laughter and unexpected connections.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stargazing beneath a vast, starlit sky ignited a sense of awe and wonder.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling metropolis pulsed with dynamic energy, demanding constant engagement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sun-drenched beaches offered a haven for relaxation and rejuvenation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The kindness of strangers provided heartwarming encounters on her solitary adventure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hiking trails led to breathtaking vistas and secluded waterfalls, a reward for exploration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The thrill of discovery fueled her every step on this adventurous journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A serendipitous encounter sparked a lasting friendship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Each passport stamp documented precious memories, more valuable than souvenirs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The unconventional travel path offered the most rewarding experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The world transformed into a living classroom, imparting invaluable life lessons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Returning home brought a newfound appreciation for her familiar surroundings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The travel odyssey transformed her, leaving a lasting impact on her soul.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ancient ruins were like giant history museums, so cool!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The market was crazy busy, smelled amazing, and had stuff I'd never seen before.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunset cruises were gorgeous - fiery skies and calming ocean waves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Got lost on some back roads, but found a cute village with stunning views.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salty air and beach waves were the perfect recipe for relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Took a solo trip with just a backpack - a chance to find myself again.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Train ride through the mountains was stunning - snow everywhere!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Museums had all this cool old stuff, made me think of the past.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Street music everywhere! Made the whole trip feel so alive.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Every day was a surprise - new adventures and memories to keep forever.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tried a bunch of weird food - some good, some...interesting!"
            "Talking to locals was hard sometimes, but funny and we got by.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stared up at the stars - felt so tiny, but kind of amazing too.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Big city was intense, so much energy everywhere!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beach days were all about chilling and soaking up the sun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Met some really nice people along the way, even though I was alone.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hiking trails led to awesome views and hidden waterfalls - worth the effort!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Finding new stuff was the best part - kept me wanting to explore more.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Met someone cool by accident, now we're friends!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Every stamp in my passport is a memory, better than any souvenir.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Took the road less traveled - that's where the best adventures are!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The world was like a giant textbook, teaching me tons of stuff.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Being home again made me appreciate what I have even more.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This trip changed me for the better -  I won't forget it ever!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Luggage overflowing, excitement bubbling - the adventure begins!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Foreign language stumbles and laughter - making memories with every word.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bargaining at a bustling market - the thrill of scoring a perfect souvenir.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunrise over a breathtaking landscape - a new day bursting with possibilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Local cuisine bursting with flavor - a tastebud adventure in every bite.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rumbling train journey - the world unfolding outside the window.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Haggling over a taxi ride - testing your negotiation skills in a new land.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hidden alleyway tucked behind a bustling street - a secret world to explore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Waking up to the sound of crashing waves - the perfect way to start the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning to surf, falling (a lot), but finally catching a wave - pure joy!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Navigating a confusing subway system - a crash course in city life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Getting hopelessly lost, then finding your way back - a mini-adventure within itself.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of accomplishment reaching a mountain peak - breathtaking views and a sense of pride.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sun-drenched beaches and crystal-clear water - a postcard-perfect paradise.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sleeping under a sky full of stars - feeling small yet connected to something bigger.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Strolling through ancient ruins, imagining the stories they hold.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Museum overload - a mind-boggling journey through history and culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning a few basic phrases in the local language - a gesture of respect appreciated by locals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Packing light becomes a skill - you learn to travel with only the essentials.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Travel fatigue sets in -  but the memories made are worth it.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Postcard perfect scenery - a moment captured in time to share with loved ones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unexpected kindness from a stranger - a reminder of the good in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharing stories with fellow travelers - a bond forged over new experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Trying a local dish that looks questionable but tastes delicious - expanding your culinary horizons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning to appreciate different cultures and ways of life - travel broadens the mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Missing home comforts - a reminder of the things you take for granted.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The joy of reuniting with loved ones after your travels - stories to share and treasures to show.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planning your next adventure - the travel bug bites again!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Souvenirs gathering dust on a shelf - each one a tangible memory of a journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Travel photos that transport you back to a special place - a visual reminder of the good times.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of accomplishment after a challenging trip - you pushed your limits and thrived.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The world feels smaller after traveling - connections made and friendships formed across borders.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Newfound confidence gained from navigating unfamiliar territory - you can handle anything!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Appreciating the beauty and diversity of the planet - a sense of wonder and gratitude.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Travel inspires creativity - new ideas and perspectives spark your imagination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of being truly present - soaking up every moment of the experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of being unstoppable - the world is your oyster and you're ready to explore it.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The journey is just as important as the destination - every experience counts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Travel is an investment in yourself - enriching your life in ways you never imagined.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Looking back on your travels with a smile - a treasure trove of memories to cherish.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned itinerary ensured a smooth and efficient journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ancient ruins stood as a testament to the ingenuity of a bygone era.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling marketplace offered a vibrant tapestry of sights, sounds, and aromas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The breathtaking panorama from the mountain peak inspired awe and wonder.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously curated museum exhibit provided a fascinating glimpse into a different culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The renowned chef prepared a delectable meal that tantalized the taste buds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously researched travel guide proved to be an invaluable resource.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The comfortable accommodations provided a welcome respite after a long day of exploration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously restored historical landmark offered a window into the past.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned route ensured a safe and scenic journey through the countryside.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The renowned art gallery showcased a collection of masterpieces spanning centuries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously preserved artifacts offered a tangible connection to a bygone era.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned cultural immersion program fostered a deeper understanding of local traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously documented travel journal served as a lasting record of the journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned budget ensured a financially responsible travel experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The renowned artist's work showcased a masterful use of color and light.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously researched travel blog offered insightful recommendations for potential visitors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned itinerary catered to the diverse interests of the travel group.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously chosen souvenirs served as tangible reminders of the extraordinary journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The renowned hospitality of the local people made the travelers feel welcome and comfortable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned transportation ensured a seamless connection between destinations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The renowned historical site provided a unique educational experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously documented travel photographs captured the essence of the journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned excursion offered a glimpse into the natural wonders of the region.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The renowned cultural performance showcased the artistic traditions of the local population.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "That perfectly planned trip made everything run smooth and saved us tons of time!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Wow, these ancient ruins are amazing! Makes you think about how smart people were way back when.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The market was crazy busy, but so cool! So many sights, sounds, and smells - a feast for the senses!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The view from the mountaintop was insane! Totally worth the hike - breathtaking!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This museum exhibit was so well put together. It was awesome learning about a different culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We had this incredible meal by a famous chef. Every bite was an explosion of flavor!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "That travel guide we got was a lifesaver. It had all the best tips and hidden gems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Our comfy hotel room was just what we needed after a long day of exploring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "They did such a good job fixing up this old building. It's like stepping back in time!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We planned our route perfectly - beautiful scenery and no wrong turns!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This art gallery has some seriously amazing paintings. We saw stuff from hundreds of years ago!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These artifacts are so well-preserved, it's like they're from yesterday. A real connection to the past!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "That cultural program was awesome! We learned so much about how they live here.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "I kept a detailed travel journal - a great way to remember all the cool stuff we saw.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We budgeted carefully, so we could spend our money on experiences, not just hotels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This artist is a genius! The way they use color and light is incredible.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "That travel blog was super helpful. They gave us some great ideas for places to visit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We planned activities for everyone on the trip. There was something for all interests!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These souvenirs are perfect! They'll remind us of this amazing adventure forever.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The people here were so friendly and welcoming. They really made us feel at home.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Our transportation was all planned out, so getting around was a breeze.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This historical site was fascinating! We learned so much about the history of the area.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "We took tons of photos - they capture the whole trip perfectly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "That trip to see nature was unforgettable! We saw some incredible sights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This cultural performance was a beautiful display of their traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The crisp autumn air invigorated my senses with a refreshing chill.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The relentless downpour transformed the dusty streets into glistening rivers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The oppressive humidity hung heavy in the air, dampening all enthusiasm.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A gentle breeze rustled through the leaves, whispering secrets in the twilight.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant hues of a double rainbow painted a fleeting masterpiece across the sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun dipped below the horizon, casting long shadows and painting the clouds in fiery shades.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sudden downpour forced a flurry of activity as people scurried for shelter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The unrelenting heat shimmered on the asphalt, blurring the world in a hazy mirage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The comforting crackle of the fireplace offered a warm embrace against the biting cold.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A blanket of fluffy snow cloaked the landscape in pristine white serenity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The invigorating ocean breeze carried the scent of salt and seaweed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ominous rumble of thunder echoed across the valley, a prelude to the coming storm.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant colors of a sunset painted the clouds in a breathtaking spectacle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The gentle patter of raindrops lulled the weary traveler to a peaceful slumber.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sudden downpour transformed the parched landscape into a vibrant tapestry of green.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The oppressive heat shimmered off the pavement, creating a shimmering mirage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The comforting crackle of the fireplace offered a warm haven against the biting wind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A gentle breeze danced through the meadow, swaying the wildflowers in a graceful ballet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vibrant hues of a sunrise cast a golden glow on the dew-kissed grass.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The relentless downpour threatened to dampen even the most optimistic spirit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The oppressive humidity clung to the skin like a damp blanket.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The invigorating ocean breeze carried the rhythmic roar of crashing waves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ominous rumble of thunder warned of the impending storm's fury.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The gentle patter of raindrops on the windowpane created a soothing lullaby.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crisp fall air nipped at my cheeks, waking me right up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The rain wouldn't quit, turning the streets into mini rivers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Ugh, so humid you could practically swim in the air.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A gentle breeze whispered secrets through the leaves at sunset.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Double rainbow! Nature's most colorful high five.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sun dipped low, painting the clouds fiery orange and purple.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Downpour came out of nowhere! Everyone scrambling for cover.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Heat wave cranked it up, making the asphalt shimmer like a mirage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crackling fireplace felt amazing on this chilly night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Fresh snow turned the world into a white wonderland.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Ocean breeze was like a cool breath of fresh air.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Thunder grumbled in the distance - storm's on its way!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sunset was insane! So many pretty colors in the sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Raindrops tapped on the window, lulling me to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rain finally stopped! Maybe we can go outside now?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Heat was brutal, making even walking feel like a workout.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fireplace kept us warm and toasty while the wind howled outside.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gentle breeze swayed the wildflowers like a graceful dance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sunrise painted the grass with sparkly dew drops.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rain poured like crazy, but hey, at least it wasn't snow!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Humidity clung to me like a wet towel - yuck!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ocean breeze whispered and the waves crashed - so relaxing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dark clouds rolled in, looking like trouble was brewing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sunset was a fiery masterpiece - gotta love nature's art!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Raindrops were like a calming lullaby on the window pane.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling marketplace overflowed with vibrant textiles and exotic spices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Her meticulously curated shopping list ensured she wouldn't forget a single item.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The enticing aroma of freshly baked bread lured him towards the bakery.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The crowded department store offered a dizzying array of clothing options.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Carefully comparing price tags, she searched for the best bargain.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The vintage store displayed a treasure trove of unique and timeless pieces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The online shopping cart overflowed with impulsive purchases.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The cashier's friendly smile brightened her day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The self-checkout lane offered a convenient and time-saving option.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously wrapped gift conveyed her thoughtfulness and care.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The worn leather wallet held countless memories and well-worn receipts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The limited-edition sneakers sparked a frenzy among eager collectors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling farmers market boasted an abundance of fresh, local produce.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The discount rack offered a chance to snag designer items at a fraction of the price.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The salesperson's enthusiastic recommendations swayed her decision.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned shopping spree ensured she covered all her needs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The convenience store offered a last-minute solution for forgotten essentials.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The loyalty program rewards encouraged her to return to the same store.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The thrill of the hunt motivated her to seek out unique and unusual finds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The carefully chosen outfit exuded confidence and elegance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously researched product reviews helped her make an informed decision.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The overflowing shopping bags threatened to burst at the seams.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The personalized shopping experience ensured she found exactly what she needed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously organized closet facilitated easy outfit selection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The impulse buy sparked a wave of buyer's remorse later.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously crafted shopping experience felt more like a fun outing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously researched travel essentials ensured a comfortable trip.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The convenience of online shopping allowed her to browse from the comfort of home.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned budget ensured she didn't overspend.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The second-hand store offered a sustainable approach to acquiring new clothes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously chosen ingredients promised a delicious culinary creation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The carefully chosen gift sparked joy and appreciation on the recipient's face.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously organized pantry ensured a well-stocked kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The impulse buy surprised even her, a spontaneous deviation from her usual plan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously researched electronics purchase proved to be a worthwhile investment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The convenience of contactless payment offered a speedy and secure transaction.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously balanced shopping bags ensured a comfortable walk home.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The personalized shopping experience felt like a treat, not just a chore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously budgeted holiday shopping ensured no financial surprises.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulously planned grocery list guaranteed a well-stocked fridge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The convenience of same-day delivery saved her a trip to the store.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Those mannequin outfits in the window are fire! Gotta have that new jacket.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Haggling at the market was crazy, but I got a steal on this scarf!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "So many aisles in this store, I feel like I've walked for miles already.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Found this receipt from that amazing dress I bought last year - good times!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Read a bunch of reviews online before buying those shoes, glad I did!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The mall was packed! Everyone's out shopping today.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Always gotta have a few cute outfits on hand, you never know what might come up!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Scored a sweet vintage jacket at that thrift store - one of a kind!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "In-store pickup is the best! No waiting for deliveries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Made a grocery list so I wouldn't forget anything - gotta stay organized!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Couldn't resist that cute mug, oops! But it's so pretty!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This travel guide says there's a killer market nearby - gotta check it out!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Self-checkout is a lifesaver when you're in a hurry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Wrapped that gift extra pretty - presentation matters!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This purse has seen some things! So many adventures together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Those limited-edition sneakers sold out fast! Glad I snagged a pair.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Street market was popping with cool stuff! Found some amazing handmade jewelry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Voucher code saved the day! Got those jeans for way less.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The salesperson knew everything about those headphones - super helpful!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Maximized my shopping time - gotta be efficient!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Convenience store clutch for that late-night snack attack.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Those loyalty points are adding up - free stuff soon!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Found a hidden treasure at the thrift store! So happy with this find.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This outfit is getting all the compliments - feeling good!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Those shoes are comfy as heck, and they look good too!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("So many bags, guess I went a little overboard!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The staff here is awesome - always makes shopping fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pantry is so organized, it's easy to find what I need for dinner.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Okay, maybe that phone case wasn't necessary, but it's cute!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stuck to my shopping list this time - no impulse buys!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These skincare products are supposed to be amazing - can't wait to try them!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Online shopping is the best for comparing prices - gotta get the best deal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planned my grocery list to avoid food waste - gotta be responsible!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Second-hand furniture can be so cool and affordable - love this lamp!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These ingredients are gonna make a bomb dinner - healthy and delicious!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This outfit is perfect for work - gotta look professional!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Closet might be small, but it's organized chaos - I can find everything!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Okay, that candy bar was a total impulse buy, but hey, treat yourself!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "This phone plan is perfect for me - unlimited data, here I come!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Phone payment is so easy - no more digging for cash!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evened out the weight of the bags - gotta avoid a one-armed walk home!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Felt like royalty at that store - amazing customer service!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stuck to my Christmas budget - no financial headaches this year!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Second-hand record store is my jam! Found some hidden gems today.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planned my meals for the week with this grocery list - healthy eating here we go!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A brisk morning walk invigorated my body and mind for the day ahead.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The refreshing taste of water after a workout felt incredibly satisfying.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Strengthening exercises built my muscles and improved my overall endurance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A nutritious breakfast fueled my body for a productive morning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about healthy eating habits empowered me to make positive changes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Getting enough sleep each night boosted my energy levels and focus.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The supportive community at the gym motivated me to reach my fitness goals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mindful meditation practices helped me manage stress and improve my well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Regular yoga sessions increased my flexibility and body awareness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Trying a new fitness class challenged me and kept my workouts exciting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dancing to upbeat music lifted my spirits and provided a fun way to exercise.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prioritizing self-care practices like massages or baths helped me manage stress.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of accomplishment after completing a tough workout was incredibly rewarding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Setting realistic fitness goals kept me motivated and on track.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Incorporating strength training into my routine helped me build a strong physique.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to my body and taking rest days when needed prevented injuries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Finding an exercise buddy provided accountability and made workouts more enjoyable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The delicious taste of a home-cooked meal fueled my body with healthy nutrients.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planning healthy meals in advance saved time and ensured I made nutritious choices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading about the benefits of exercise motivated me to become more active.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tracking my progress with a fitness tracker helped me stay motivated and see results.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Investing in a comfortable pair of running shoes made a big difference in my workouts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing gratitude for my body increased my appreciation for its capabilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different fitness routines allowed me to find activities I enjoyed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Focusing on mindful eating helped me develop a healthy relationship with food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Getting regular checkups with my doctor ensured I was in good health.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prioritizing sleep hygiene improved the quality of my rest and boosted my energy levels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about the importance of stretching helped me prevent injuries and improve flexibility.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Finding a workout routine that fit into my schedule made it easier to stay consistent.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrating my fitness achievements, big or small, helped me stay motivated.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Focusing on how exercise made me feel, not just how I looked, shifted my perspective.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prioritizing healthy habits like getting enough sleep and eating nutritious foods made a difference in my overall well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The supportive environment at the gym created a sense of community and belonging.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about proper form during exercise ensured I was working out safely and effectively.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The confidence boost I gained from reaching my fitness goals spilled over into other areas of my life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Investing in a good water bottle encouraged me to stay hydrated throughout the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different relaxation techniques helped me manage stress and improve sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experimenting with healthy recipes made eating nutritious food more enjoyable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Focusing on progress over perfection helped me maintain a positive mindset about my fitness journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The feeling of accomplishment after completing a challenging workout was incredibly motivating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrating healthy choices with friends and family created a supportive network.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deep breaths during yoga, gotta chill and loosen up those muscles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Feeling awesome after that workout! Endorphins are pumping!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ugh, sore muscles are a sign of a good workout, right?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swapped fries for avocado on my burger - gotta get those healthy fats!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Heard gut health is important, so I'm adding more yogurt to my diet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Slept like a rock last night - feeling refreshed and ready to crush the day!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "New yoga mat is a game-changer - practicing doesn't hurt my knees anymore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Finally found a sports bra that supports everything! No more bouncing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Feeling strong after lifting weights - girl power!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Made healthy banana bread for a snack - satisfies my sweet tooth without the guilt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning what to eat to fuel my workouts - gotta give my body the good stuff!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Refreshing smoothie after my workout - tastes good and hydrates me too.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Keeping things interesting with new workouts - gotta avoid getting bored!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Prepped some healthy snacks for later - won't be reaching for chips when I'm hungry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These shoes are comfy and supportive - perfect for my runs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Feeling good about working out - it's fun, not a punishment!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Salad for lunch - healthy and delicious, who knew?",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mindfulness helps me chill - less stress, better focus.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sunshine makes me happy and helps me sleep better.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My online fitness group keeps me motivated - love the support!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Nailed that new exercise! Feeling so accomplished.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Protein keeps me full - gotta build and maintain that muscle!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Rest days are important - gotta avoid burning out.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "My fitness app is awesome - keeps me on track and motivated.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Homemade trail mix is my go-to snack - keeps me fueled and satisfied.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Strong is the new skinny - gotta love strength training!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Reaching my goals feels amazing - so empowered!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Heart rate monitor helps me stay in the right zone during workouts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Proper form is key - gotta target those muscles the right way.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Feeling confident after reaching my goals - self-esteem boost!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Workout gloves protect my hands and help me grip better.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Small goals keep me motivated - one step at a time!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Non-food rewards for milestones - gotta keep it exciting!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Focusing on how I feel, not the scale - a healthier mindset.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dance class feels like a party - love the supportive environment!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Staying hydrated is key - gotta keep that water bottle handy!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deep breathing helps me chill - stress doesn't stand a chance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meal prepping saves time - healthy food always ready to go!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Long-term benefits keep me motivated - gotta think big picture!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The gym feels like a second home - everyone's there to support each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrating healthy choices - gotta be kind to myself!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The bustling office buzzed with activity as employees tackled their morning tasks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous architect meticulously crafted blueprints for the new skyscraper.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The passionate teacher captivated her students with stories of ancient civilizations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated firefighter bravely battled the flames engulfing the building.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The skilled carpenter meticulously sanded and polished the handcrafted furniture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The seasoned doctor carefully examined the patient and diagnosed their illness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The talented artist poured their emotions onto the canvas, creating a masterpiece.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The resourceful entrepreneur identified a gap in the market and launched a successful business.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated nurse provided compassionate care for her patients throughout the night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous accountant meticulously balanced the company's financial records.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The charismatic salesperson closed the deal with a confident presentation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The determined journalist relentlessly pursued the truth, uncovering a hidden scandal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The talented chef orchestrated a symphony of flavors in the bustling kitchen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The compassionate social worker tirelessly advocated for the well-being of her clients.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The organized project manager meticulously tracked progress and ensured the project stayed on schedule.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The skilled mechanic diagnosed the car's problem and repaired it with precision.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The creative graphic designer transformed a simple idea into a stunning visual display.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated mail carrier braved the rain and snow to ensure deliveries were made.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous programmer meticulously wrote lines of code, bringing the website to life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The patient customer service representative listened attentively and resolved the customer's complaint.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The resourceful construction worker solved problems on the fly, ensuring the building went up smoothly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The passionate musician practiced their instrument for hours, honing their craft.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated lawyer argued their case with logic and passion before the court.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous baker ensured each pastry was perfectly golden brown and delicious.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The talented hairstylist transformed her client's look with a stylish new haircut.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated firefighter risked their life to save others from the burning building.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The skilled carpenter meticulously handcrafted a beautiful rocking chair for his grandchild.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous accountant ensured every penny was accounted for in the company's budget.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The resourceful entrepreneur identified a need in the community and opened a new daycare center.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated nurse provided comfort and support to her patients during their time of need.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The charismatic salesperson closed the deal with a confident presentation and a friendly smile.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The determined journalist relentlessly pursued the truth, exposing a corrupt politician.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous architect meticulously designed a sustainable and energy-efficient building.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The passionate teacher inspired her students to learn and explore the world around them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The talented artist used their creativity to create a piece of art that evoked strong emotions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The skilled mechanic diagnosed the car's problem quickly and efficiently.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The organized project manager kept the team on track and ensured the project was completed on time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The creative graphic designer  turned a client's vision into a visually stunning website.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The patient customer service representative listened attentively and found a solution to the customer's problem.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The resourceful construction worker solved a problem on the fly, keeping the construction project moving forward.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The dedicated mail carrier braved all weather conditions to ensure everyone received their mail on time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The passionate musician shared their love of music with others through their performances.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The meticulous baker ensured each pastry was perfectly baked and visually appealing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crazy busy call center today - phones ringing off the hook!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Data whiz over here! Just crunching numbers and finding cool patterns.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lights flickering? No problem, this electrician's on it!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Ugh, another clogged drain. Plumber to the rescue!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Spun a wild yarn last night - this writer's on fire!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Yard looking sad? Let this landscaping guru work their magic!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Playing with playdough and tiny humans all day - love my daycare crew!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tax season crunch time! Gotta save everyone some moolah.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Party planning pro here! Your event will be epic, trust me.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nailed that audition! Actor life ain't easy, but it's fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Busy bee keeping my boss organized - gotta love being a PA!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Welding like a boss! This ain't your grandpa's metalwork.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Built a killer website this week - check it out!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Keeping the kiddos happy can be a handful, but I love it!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Coding like a champ - this app is gonna be awesome!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whipping up some fancy coffee drinks - gotta keep the caffeine flowing!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sharing my music with the world - follow my gigs!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Hair makeover time! Feeling like a new person!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Numbers don't lie! Gotta keep those finances in check.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spotted a gap in the market - launching my online biz soon!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking care of patients after surgery - gotta help them feel better!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sold another product! This sales game is fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Making learning fun for my students - gotta spark their curiosity!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Painting my feelings onto the canvas - messy but fun!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fixed your car in a jiffy - back on the road in no time!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Keeping the project on track - gotta meet that deadline!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Delivering sunshine (and mail) rain or shine!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These pastries are pure perfection - gotta try them all!",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members support each other through thick and thin.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Parents teach their children important life skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Grandparents often share stories of the past.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Siblings sometimes argue but also make up quickly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("In-laws become part of the extended family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Cousins can be like siblings or close friends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adopted children are loved just as much as biological children.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stepfamilies blend different backgrounds into one.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family reunions bring everyone together.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Aunts and uncles can be like second parents.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Caring for elderly family members shows respect and love.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family vacations create lasting memories.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family dinners are a time for bonding and sharing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting a family member in need is a sign of love.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrating holidays together strengthens family bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parents' love is unconditional.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Siblings share secrets and dreams.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Children learn about relationships by observing their parents.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family pets are cherished members of the family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family photos capture special moments.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Divorce can strain family relationships but can also lead to healing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family businesses pass down traditions and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parents' sacrifices for their children are immeasurable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Being there for each other during tough times strengthens family bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members share laughter and tears.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Respecting elders is a cultural value in many families.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Children's achievements are celebrated by the whole family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting each other's dreams and goals is important.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family traditions create a sense of belonging.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Losing a family member is heartbreaking.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family members provide a sense of security.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("In times of crisis, families come together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members show love through actions, not just words.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family gatherings create opportunities for bonding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Parents' love shapes children's self-esteem.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Siblings' relationships evolve over time.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Being a role model for younger family members is important.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Elders pass down wisdom to younger generations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family members forgive each other's mistakes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Caring for elderly family members is a responsibility and a privilege.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Children learn about love and relationships from their family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members support each other's passions and interests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Growing up with siblings teaches sharing and compromise.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family members have inside jokes and memories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family members show affection in different ways.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parents' guidance helps children make good decisions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("In blended families, love knows no boundaries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members create a sense of home wherever they are.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The bond between siblings is unique and special.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members provide a sense of identity and belonging.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Relatives play different roles in a person's life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Parental guidance shapes children's values and beliefs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Siblings often share a close bond.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Spouses support each other through thick and thin.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Children bring joy and fulfillment to a family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Grandparents provide wisdom and love.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stepfamilies navigate unique challenges.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Aunts and uncles offer support and guidance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family dynamics can be complex.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Adoption creates loving and diverse families.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family traditions create lasting memories and connections.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Love and respect are the foundations of strong families.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting each other's dreams strengthens family bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family members show love through actions and words.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family gatherings create opportunities for bonding and sharing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Respecting each other's differences is crucial in families.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Marriage is a partnership based on love and mutual respect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Couples need to communicate openly and honestly.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Children learn about relationships by observing their parents and siblings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family pets are beloved companions and members of the family.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family vacations create cherished memories and strengthen bonds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family businesses pass down traditions, values, and livelihoods.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Sibling rivalry is a natural part of growing up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family members provide emotional support during tough times.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Maintaining strong family ties is important for mental and emotional well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Technology has transformed the way we live and work.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smartphones have become essential tools for communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social media platforms connect people around the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence is changing how we interact with technology.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Virtual reality allows us to experience new worlds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blockchain technology is revolutionizing the way we handle transactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-driving cars are a promising advancement in transportation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "3D printing is changing the way we manufacture goods.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robots are being used in various industries for automation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drones are used for aerial photography, surveillance, and delivery.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Wireless charging technology is becoming more widespread.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Smart home devices make our lives more convenient.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cloud computing allows us to store and access data from anywhere.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet of Things (IoT) devices are becoming more common in homes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Online shopping has become a popular way to shop.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Streaming services have changed the way we consume entertainment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Video conferencing technology has made remote work and meetings easier.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Digital assistants like Siri and Alexa help us with everyday tasks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Augmented reality enhances our perception of the real world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biometric technology is used for security and identification purposes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Electric vehicles are an environmentally friendly alternative to traditional cars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Healthcare technology has improved patient care and diagnosis.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education technology is changing the way students learn.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Satellite technology is used for communication and navigation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Renewable energy technology is becoming more efficient and affordable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Big data analytics help businesses make informed decisions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cryptocurrency is a digital form of currency that uses cryptography for security.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smartwatches and fitness trackers help us monitor our health.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-checkout kiosks are becoming more common in retail stores.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biometric technology is used for security and identification purposes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Facial recognition technology is used for security and authentication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gesture control technology allows us to interact with devices using gestures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Machine learning algorithms are used in various applications, from recommendation systems to autonomous vehicles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing has the potential to solve complex problems much faster than traditional computers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "5G technology is the next generation of wireless communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Chatbots are used for customer service and support.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smart clothing with embedded sensors can track fitness metrics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smart cities use technology to improve infrastructure and services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Renewable energy technology is becoming more efficient and affordable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Digital wallets allow us to make secure payments using our smartphones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drone technology is used in agriculture for crop monitoring and spraying.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Voice recognition technology enables hands-free operation of devices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Smart glasses provide augmented reality experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smart farming uses technology to improve agricultural practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Digital twins are virtual replicas of physical objects or processes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Remote sensing technology is used for environmental monitoring.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blockchain technology is used for secure and transparent transactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School provides a structured environment for learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Teachers play a crucial role in educating students.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Students learn new subjects and skills in school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Reading is a fundamental skill for learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Writing helps us communicate our thoughts and ideas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Mathematics teaches us problem-solving skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Science helps us understand the world around us.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "History teaches us about the past.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Physical education promotes a healthy lifestyle.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Art and music classes encourage creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Studying is important for academic success.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking notes helps us remember important information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Group projects teach us collaboration skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tests and exams evaluate our understanding of the material.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School libraries provide access to a wide range of books and resources.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Online learning platforms offer flexibility in learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School field trips provide hands-on learning experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School clubs and extracurricular activities offer opportunities for personal growth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Peer tutoring helps students learn from each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning a second language expands our communication abilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Computer classes teach us valuable digital skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Critical thinking skills are essential for analyzing information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Time management skills are important for balancing schoolwork and other activities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Learning to work independently is a valuable skill.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("School assemblies promote school spirit and unity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School counselors provide support and guidance to students.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different cultures promotes understanding and tolerance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "STEM education prepares students for careers in science, technology, engineering, and mathematics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about personal finance is important for financial literacy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical science explores the nature of matter and energy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Earth science focuses on the study of Earth's systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Life science examines living organisms and their interactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social studies includes the study of history, geography, economics, and civics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about government helps us understand how society is organized.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical education classes promote physical fitness and health.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music education includes learning to play musical instruments and read music.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art education teaches us about different forms of artistic expression.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different religions promotes religious literacy and understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about environmental issues promotes environmental awareness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about literature exposes us to different cultures and perspectives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about technology prepares us for the digital age.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about health and nutrition promotes healthy living.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about psychology helps us understand human behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about sociology helps us understand society and social interactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about economics helps us understand how resources are allocated.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about political science helps us understand political systems and theories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about philosophy helps us develop critical thinking skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School is where we go to learn stuff.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Teachers are the ones who teach us things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Studying is what we do when we want to pass tests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Taking notes helps us remember stuff better.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Group projects are when we work together with classmates.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tests and exams are like big quizzes to see if we've been paying attention.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("School libraries have lots of books we can borrow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Online learning is cool because we can study in our pajamas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Field trips are like mini-adventures away from school.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School clubs are where we hang out with friends and do fun stuff.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Peer tutoring is when a friend helps us understand something.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning a second language is like learning to talk in a secret code.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Computer classes are where we learn to use computers for more than just games.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Critical thinking is when we think really hard about something.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Time management is when we try to do everything we need to do on time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Working independently is when we do stuff on our own without help.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School assemblies are when the whole school gets together for a big meeting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School counselors are like the school's advice givers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different cultures is like going on a virtual vacation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "STEM education is like learning to be a science superhero.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about personal finance is like learning to be a money wizard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical science is like learning about magic that's real.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Earth science is like being a detective investigating the planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Life science is like exploring a jungle of living things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social studies is like learning about how people live in different places.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about government is like learning how to be a citizen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical education is like playing games but also exercising.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music education is like learning to speak a different language with instruments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art education is like learning to create masterpieces with paint and clay.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different religions is like learning about different superpowers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about environmental issues is like becoming a planet protector.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about literature is like going on adventures in books.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about technology is like learning to be a tech wizard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about health and nutrition is like learning to be a healthy superhero.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about psychology is like learning to understand people's minds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about sociology is like learning about how people interact in groups.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about economics is like learning to be a money magician.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about political science is like learning to be a political superhero.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about philosophy is like learning to think about thinking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about history is like learning about the past through time travel.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about geography is like learning to be a map explorer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about civics is like learning to be a citizen superhero.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about anthropology is like learning to be a human detective.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about archaeology is like learning to dig up the past.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about linguistics is like learning to speak all the languages.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about education is like learning to be a teacher superhero.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School, where we learn and grow, is a place of endless possibilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Teachers, the guiding stars of our educational journey, light the way to knowledge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying, a challenging yet rewarding endeavor, is the key to academic success.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking notes, like creating a roadmap for learning, helps us stay on track.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Group projects, collaborative adventures in learning, foster teamwork and creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tests and exams, the ultimate challenges of our academic prowess, push us to excel.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School libraries, havens of knowledge and imagination, offer a world of books to explore.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Online learning, a digital revolution in education, brings the classroom to our fingertips.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Field trips, exciting excursions into the world beyond school, broaden our horizons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School clubs, hubs of friendship and shared interests, create bonds that last a lifetime.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Peer tutoring, a supportive partnership in learning, enhances understanding and confidence.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning a second language, an enriching linguistic adventure, opens doors to new cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Computer classes, gateways to the digital realm, equip us with essential tech skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Critical thinking, a skill like no other, sharpens our minds and broadens our perspectives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Time management, the art of balancing priorities, helps us make the most of each day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Working independently, a mark of academic maturity, fosters self-reliance and initiative.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School assemblies, lively gatherings of the school community, celebrate our achievements and unity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "School counselors, compassionate guides on the path of personal growth, offer support and guidance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different cultures, a journey of cultural discovery, fosters empathy and understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "STEM education, a cornerstone of modern learning, prepares us for the challenges of tomorrow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about personal finance, a step towards financial literacy, empowers us to make informed decisions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical science, a realm of discovery and experimentation, reveals the wonders of the physical world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Earth science, a field of study that explores our planet, deepens our appreciation for Earth's complexities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Life science, a window into the world of living organisms, teaches us about the wonders of life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social studies, a tapestry of human experiences, helps us understand the world around us.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about government, a lesson in civic responsibility, empowers us to be active citizens.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Physical education, a cornerstone of health and wellness, instills lifelong habits of physical activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music education, a symphony of learning and creativity, enriches our lives with melody and rhythm.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art education, a canvas for self-expression, nurtures creativity and imagination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different religions, a pathway to religious literacy, promotes understanding and respect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about environmental issues, a call to environmental stewardship, inspires us to protect our planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about literature, a voyage through the written word, enriches our minds and souls.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about technology, a journey into the digital frontier, prepares us for the future.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about health and nutrition, a path to wellness, empowers us to make healthy choices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about psychology, a glimpse into the human mind, deepens our understanding of behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about sociology, a study of society and human interaction, broadens our perspectives on community.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about economics, a lens into the world of money and markets, teaches us about financial systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about political science, a study of governance and power, prepares us for civic engagement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about philosophy, a quest for wisdom and truth, challenges us to think critically.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about history, a journey through time, connects us to the past and informs our future.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about geography, a study of the Earth's landscapes and environments, expands our global perspective.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about civics, a lesson in citizenship and democracy, empowers us to be active participants in society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about anthropology, a study of humanity, teaches us about the diversity of human cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about archaeology, a dig into the past, uncovers the mysteries of ancient civilizations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about linguistics, a study of language and communication, enhances our understanding of language.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about education, a reflection on teaching and learning, inspires us to be lifelong learners.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Morning routines set the tone for the day ahead.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Breakfast fuels us up for the morning grind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Commuting to work or school can be a drag, but podcasts or music make it more bearable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Checking emails and messages is the first task on the work agenda.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meetings can be productive, but they can also feel like a waste of time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Lunch breaks are a welcome pause in the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Afternoon slumps call for a coffee or tea break.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Completing tasks on the to-do list feels like a small victory.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Running errands can be tedious but checking them off the list feels satisfying.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evenings are for winding down, maybe with some TV or a good book.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dinner prep can be a chore, but cooking can also be relaxing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Eating dinner together as a family is a cherished tradition.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "After-dinner clean-up is a group effort.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("Evening routines prepare us for a restful night.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Getting ready for bed includes brushing teeth and washing up.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Reading a bedtime story is a comforting ritual.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Checking social media before bed is a guilty pleasure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Reflecting on the day's events helps us unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planning tomorrow's activities is a good way to end the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Going to bed early feels like a luxury.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Late-night snacks are a guilty pleasure.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching a movie or binge-watching a TV show is a relaxing way to end the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to music or a podcast helps us relax before bed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stretching or doing yoga before bed helps us unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Setting out clothes for the next day saves time in the morning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking a shower or bath before bed is a relaxing way to end the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Writing in a journal before bed helps us clear our minds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meditating before bed helps us relax and fall asleep faster.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing gratitude before bed helps us appreciate the good things in life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to calming music or sounds helps us relax before bed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Having a bedtime routine helps us signal to our body that it's time to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading a few pages of a book before bed helps us unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching a funny video or TV show before bed helps us relax and unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drinking a warm cup of herbal tea before bed helps us relax.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doing a few gentle stretches before bed helps us relax our muscles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Writing down our thoughts and worries before bed helps us clear our mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reflecting on the day's successes and challenges before bed helps us prepare for tomorrow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to a guided meditation or relaxation exercise before bed helps us relax.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing deep breathing exercises before bed helps us relax and unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking a warm bath or shower before bed helps us relax and prepare for sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to nature sounds or white noise before bed helps us relax and fall asleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visualizing a peaceful scene or happy memory before bed helps us relax and unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Doing a few minutes of gentle yoga or stretching before bed helps us relax our body.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading a few pages of a calming book before bed helps us relax and unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drinking a glass of warm milk or chamomile tea before bed helps us relax and fall asleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to calming music or an audiobook before bed helps us relax and unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Morning routines establish a productive start to the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A nutritious breakfast provides essential fuel for the day's activities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Commutes offer valuable time for reflection or preparation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Checking and responding to emails ensures timely communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meetings facilitate collaboration and decision-making.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Lunch breaks offer a chance to recharge and refocus.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Coffee or tea breaks provide a brief respite for rejuvenation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Completing tasks from the agenda signifies progress and accomplishment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Running errands efficiently manages daily responsibilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evenings are dedicated to relaxation and personal pursuits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Preparing and enjoying dinner is a culinary experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Family dinners promote bonding and communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evening chores contribute to a clean and organized living space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evening rituals prepare the mind and body for restorative sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bedtime routines promote consistent and restful sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading before bed aids in relaxation and mental unwinding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Checking social media can offer valuable insights and networking opportunities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reflecting on the day's events fosters personal growth and learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planning for the next day ensures preparedness and efficiency.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Retiring early supports overall well-being and health.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Late-night snacks should be balanced and nutritious.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching TV or movies can be a form of entertainment and relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to music or podcasts can be a form of relaxation and mental stimulation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stretching or yoga can help alleviate tension and promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Setting out clothes for the next day streamlines the morning routine.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Showering or bathing before bed can promote relaxation and hygiene.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Journaling before bed can help organize thoughts and emotions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meditating before bed can promote relaxation and mindfulness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing gratitude before bed can foster a positive mindset.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to calming sounds or music before bed can promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Establishing a bedtime routine can signal the body for sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading a book before bed can promote relaxation and mental stimulation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching a funny video or show before bed can lighten the mood and promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drinking herbal tea before bed can promote relaxation and aid in digestion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in deep breathing exercises before bed can promote relaxation and stress relief.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking a warm bath or shower before bed can promote relaxation and improve sleep quality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to a guided meditation or relaxation exercise before bed can promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing mindfulness before bed can help quiet the mind and promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in a few minutes of gentle yoga or stretching before bed can promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading a calming book before bed can promote relaxation and improve sleep quality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drinking a glass of warm milk or chamomile tea before bed can promote relaxation and improve sleep quality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to calming music or an audiobook before bed can promote relaxation and improve sleep quality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Morning routines are the foundation of a successful day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "A balanced breakfast kickstarts your metabolism and energy levels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Commuting offers valuable time for reflection or catching up on reading.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Checking emails promptly ensures you're up to date with work matters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meetings are essential for discussing ideas, making decisions, and planning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lunch breaks provide a chance to recharge and socialize with colleagues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Coffee or tea breaks offer a brief pause to rejuvenate and refocus.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Completing tasks from your agenda brings a sense of accomplishment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Running errands efficiently helps you manage your time effectively.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evenings are dedicated to unwinding and pursuing personal interests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Preparing and enjoying dinner can be a relaxing and rewarding experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family dinners are a time for bonding and sharing stories from the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evening chores contribute to maintaining a clean and organized living space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Evening rituals, such as reading or meditation, can promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Establishing a bedtime routine helps signal your body that it's time to sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading before bed can help you unwind and escape into a different world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Checking social media can help you stay connected and informed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reflecting on the day's events allows for personal growth and learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Planning for the next day ensures you're prepared and organized.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Retiring early supports overall health and well-being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Late-night snacks should be light and nutritious to aid in digestion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching TV or movies can be a form of entertainment and relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to music or podcasts can be a way to unwind and stimulate your mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stretching or yoga before bed can help relax your muscles and mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Setting out clothes for the next day saves time and reduces decision-making stress.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Showering or bathing before bed can promote relaxation and improve sleep quality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Journaling before bed can help clear your mind and reflect on the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meditating before bed can help calm your thoughts and prepare you for sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing gratitude before bed can foster a positive mindset.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to calming sounds or music before bed can help you relax.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Establishing a bedtime routine can help signal your body that it's time to wind down.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading a book before bed can be a calming and enjoyable way to end the day.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching a funny video or show before bed can help lighten your mood.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drinking herbal tea before bed can promote relaxation and aid in digestion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in deep breathing exercises before bed can help calm your mind and body.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking a warm bath or shower before bed can help relax your muscles and prepare you for sleep.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to a guided meditation or relaxation exercise before bed can help you relax.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Practicing mindfulness before bed can help you let go of stress and worries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in a few minutes of gentle yoga or stretching before bed can help relax your body.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading a calming book before bed can help you relax and unwind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Drinking a glass of warm milk or chamomile tea before bed can promote relaxation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to calming music or an audiobook before bed can help you relax.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different cultures enriches our understanding of the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditions are passed down from generation to generation, shaping our identities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Customs vary widely across cultures, reflecting unique beliefs and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring different cultures opens our minds to new perspectives and ideas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Languages are an integral part of culture, reflecting unique ways of thinking and communicating.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Food is a central aspect of many cultures, reflecting history, geography, and traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Clothing styles vary greatly among cultures, often reflecting climate, lifestyle, and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art and music are universal languages that transcend cultural boundaries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Religious practices vary widely among cultures, shaping daily life and rituals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social norms and etiquette vary among cultures, influencing behavior and interactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrations and festivals are important cultural events, often involving music, food, and rituals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Architecture reflects cultural values, history, and environmental influences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family structures and relationships vary among cultures, influencing social dynamics and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education systems reflect cultural priorities and values, shaping future generations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Workplace customs and practices vary among cultures, influencing business etiquette and communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Healthcare practices vary among cultures, reflecting different approaches to wellness and healing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Political systems reflect cultural values and priorities, shaping governance and policies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sports and recreation reflect cultural values, traditions, and interests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Transportation systems vary among cultures, reflecting geographical, economic, and cultural factors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Media and entertainment reflect cultural values, interests, and storytelling traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Environmental practices vary among cultures, reflecting different approaches to sustainability and conservation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Technology adoption and use vary among cultures, reflecting access, infrastructure, and cultural attitudes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gender roles and expectations vary among cultures, influencing social norms and behaviors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artifacts and objects reflect cultural history, values, and aesthetics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Language dialects and accents vary among cultures, reflecting regional identities and histories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Migration patterns and movements influence cultural diversity and exchange.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Colonial legacies shape cultural identities and societal structures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Globalization impacts cultural exchange, blending traditions and creating new cultural norms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "War and conflict impact cultural preservation and adaptation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Migration and diaspora communities maintain cultural traditions and practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Urbanization influences cultural practices and community dynamics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Natural disasters and climate change impact cultural resilience and adaptation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional healing practices reflect cultural beliefs about health and wellness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Storytelling traditions pass down cultural knowledge, history, and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Craftsmanship and artisanal traditions reflect cultural aesthetics and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Material culture, such as clothing and tools, reflects cultural practices and aesthetics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Religious art and architecture reflect cultural beliefs and values.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music and dance traditions reflect cultural history, identity, and expression.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Folklore and mythology reflect cultural beliefs, values, and storytelling traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional cuisine reflects cultural history, agriculture, and culinary practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Textile traditions reflect cultural aesthetics, craftsmanship, and storytelling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional medicine reflects cultural beliefs about health, healing, and wellness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rituals and ceremonies reflect cultural values, beliefs, and social structures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Language and communication styles reflect cultural norms, values, and social structures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gender roles and expectations influence cultural norms, behaviors, and social structures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education systems reflect cultural priorities, values, and approaches to learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social hierarchies and structures vary among cultures, influencing power dynamics and social interactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art and literature reflect cultural values, aesthetics, and storytelling traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Architecture and urban planning reflect cultural values, history, and environmental influences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cultural heritage preservation efforts protect and promote cultural traditions, practices, and artifacts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cultural exchange programs promote understanding and appreciation of different cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cultural sensitivity and awareness are important for respectful and effective cross-cultural communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different cultures helps us see the world in new ways.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditions are like the stories that families and communities tell themselves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Customs are the little things that make each culture unique and interesting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring different cultures is like going on a never-ending adventure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Languages are like secret codes that unlock new worlds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Food is a delicious way to experience different cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Clothing styles show off a culture's creativity and history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art and music are like the universal languages of joy and expression.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Religious practices are the ways people connect to something bigger than themselves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social norms and etiquette are like the unwritten rules of each culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Celebrations and festivals are the times when cultures really let loose and have fun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Architecture is like a culture's way of saying, 'This is who we are.'",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Family structures and relationships show us what's important to each culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education systems tell us how each culture values learning and knowledge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Workplace customs are like the special handshakes of different cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Healthcare practices show us how cultures take care of each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Political systems are like the rules of the game for each culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sports and recreation show us how cultures like to have fun and stay active.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Transportation systems are like the veins of a culture, keeping things moving.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Media and entertainment reflect what cultures find interesting and entertaining.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Environmental practices show us how cultures care for the world around them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Technology adoption shows us how cultures embrace innovation and change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gender roles and expectations show us how cultures see men and women.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artifacts and objects tell the stories of a culture's past.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Language dialects and accents add flavor and personality to each culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Migration patterns show us how cultures spread and interact with each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Colonial legacies remind us of the past and how it shapes the present.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Globalization mixes cultures together like a big melting pot.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("War and conflict can change a culture forever.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Migration and diaspora communities keep their culture alive in new places.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Urbanization changes how cultures live and interact.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Natural disasters and climate change test a culture's resilience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional healing practices show us how cultures care for the sick.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Storytelling traditions pass down wisdom and knowledge through the generations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Craftsmanship and artisanal traditions show us a culture's skill and creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Material culture, like clothing and tools, tells us how cultures live their daily lives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Religious art and architecture show us a culture's devotion and beliefs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music and dance traditions are like the heartbeat of a culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Folklore and mythology show us a culture's imagination and creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional cuisine is a tasty window into a culture's history and geography.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Textile traditions show us a culture's love for color and design.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional medicine teaches us how cultures heal the body and mind.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rituals and ceremonies are the special moments that bring a culture together.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Language and communication styles show us how cultures express themselves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gender roles and expectations tell us how cultures see men and women.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education systems show us how cultures pass on knowledge and skills.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social hierarchies and structures show us how cultures organize themselves.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art and literature are the creative expressions of a culture's soul.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Architecture and urban planning show us how cultures build their world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cultural heritage preservation efforts protect what makes each culture special.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cultural exchange programs bring cultures together to learn from each other.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cultural sensitivity and awareness help us connect and respect each other's differences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Staying updated on current events helps us understand the world around us.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading the news is like getting a daily dose of information and knowledge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to the news keeps us informed about what's happening in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching the news helps us stay connected to global events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following news websites and apps gives us instant access to breaking news.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Subscribing to newsletters keeps us updated on specific topics of interest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to podcasts is a convenient way to stay informed while on the go.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching documentaries provides in-depth analysis of current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading opinion pieces helps us understand different perspectives on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Discussing current events with friends and family stimulates thoughtful conversations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following news outlets on social media provides real-time updates.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending live events and seminars offers firsthand insights from experts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Joining online forums and discussion groups allows us to engage with diverse viewpoints.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching interviews with newsmakers provides insight into their perspectives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading books on current events offers in-depth analysis and historical context.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in online polls and surveys can gauge public opinion on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to news radio stations keeps us informed during our daily commute.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching news channels on TV provides visual context to news stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading newspapers offers a comprehensive overview of daily events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following journalists and reporters on social media provides behind-the-scenes insights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending public lectures and talks by experts offers nuanced perspectives on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Subscribing to magazines provides in-depth coverage of specific topics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching documentaries and docuseries provides a deeper understanding of current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to news analysis programs helps us understand the implications of current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading investigative journalism exposes us to hidden truths and scandals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following citizen journalists on social media provides grassroots perspectives on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in debates and discussions helps us refine our own opinions on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending town hall meetings allows us to voice our concerns on local and national issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following political commentators on social media provides insights into political trends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading editorials helps us understand the stance of news outlets on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in online webinars and virtual events offers expert insights on current topics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching documentaries on streaming platforms offers a visual exploration of current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to news podcasts provides a convenient way to stay informed while multitasking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading opinion columns offers diverse perspectives on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following international news outlets provides a global perspective on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending panel discussions and debates exposes us to different viewpoints on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following government press briefings provides official updates on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading books by journalists and experts provides deep insights into current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to news updates on smart speakers provides hands-free access to current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching news segments on social media provides bite-sized updates on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading analysis articles helps us understand the context and background of current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in online forums allows us to discuss and debate current events with others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following news agencies on social media provides real-time updates on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending public lectures by journalists and experts offers firsthand insights into current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching news documentaries provides a visual and in-depth look at current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to news radio programs provides a comprehensive overview of current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading newspapers from different countries provides a global perspective on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following news blogs and websites provides diverse viewpoints on current issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching live news coverage provides up-to-the-minute updates on breaking news.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading news articles helps us stay informed about current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following news updates on social media platforms keeps us informed about current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to news podcasts provides a convenient way to stay updated on current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching news broadcasts on television provides visual coverage of current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading news websites and apps keeps us informed about current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring different forms of entertainment broadens our cultural horizons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Movies offer a window into different worlds and perspectives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Music is like a universal language that transcends barriers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Literature is a journey into the imagination and wisdom of others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching movies is a fun way to relax and escape reality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to music can uplift our spirits and evoke powerful emotions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading books is a timeless pleasure that enriches our minds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Documentaries provide informative and thought-provoking insights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Live performances, such as concerts and plays, offer unforgettable experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art exhibitions showcase creativity and expression in visual form.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending cultural festivals immerses us in the traditions and customs of others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring different genres of movies expands our cinematic palate.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Discovering new music genres introduces us to diverse musical styles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading different genres of literature exposes us to various writing styles and themes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching classic movies gives us a glimpse into different eras and cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to classical music can be a soothing and enriching experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring contemporary literature introduces us to current trends and voices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching foreign films exposes us to different languages and cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to world music broadens our appreciation for global cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading poetry can be a profound and moving experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending film festivals allows us to discover independent and international cinema.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring the works of different authors exposes us to diverse perspectives and storytelling techniques.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching documentaries on social issues can inspire us to make a difference.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to live music performances creates memorable and intimate experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading biographies and memoirs offers insights into the lives of extraordinary individuals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending theater productions brings stories to life in a unique and engaging way.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring art galleries exposes us to different artistic movements and styles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Watching animated movies can be a delightful escape into imagination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to jazz music is like embarking on a spontaneous musical journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading graphic novels combines visual artistry with storytelling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending book readings and author events allows us to interact with our favorite writers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring film noir and other classic genres offers a glimpse into cinematic history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to folk music connects us to the cultural heritage of different regions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading science fiction and fantasy opens up worlds of imagination and possibility.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending stand-up comedy shows provides a night of laughter and entertainment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring silent films offers a unique perspective on early cinema.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to blues music is like feeling the soulful rhythms of history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading historical fiction can transport us to different periods in time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending poetry slams and spoken word events showcases the power of language and expression.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring horror movies can be a thrilling and chilling experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to reggae music is like feeling the heartbeat of a culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading young adult literature offers compelling stories and themes for all ages.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending film screenings and discussions allows us to engage with cinematic artistry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring animated shorts and experimental films expands our view of storytelling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to classical music concerts can be a transcendent and transformative experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading mystery and detective novels keeps us on the edge of our seats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending outdoor concerts and music festivals adds a lively and festive touch to our entertainment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Getting to know popular sports helps us connect with others who share our interests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Football, also known as soccer, is the most popular sport in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "American football is known for its hard-hitting action and strategic gameplay.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Baseball is considered America's pastime, with a rich history and passionate fan base.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Basketball is known for its fast-paced action and high-flying dunks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tennis is a sport that requires skill, finesse, and endurance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Golf is a game of precision and strategy, played on lush greens.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cricket is a sport with a rich tradition, popular in many countries around the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rugby is a tough and physical sport, known for its intense matches.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ice hockey is a fast and exciting sport played on ice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Boxing is a sport of skill, strength, and strategy, with a rich history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "MMA, or mixed martial arts, combines elements of various combat sports.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Running, whether on the track or in marathons, is a popular form of exercise and competition.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cycling, including road cycling and mountain biking, is a popular sport and recreational activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swimming is a great form of exercise and a popular competitive sport.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Skateboarding is a popular action sport that combines skill and creativity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Surfing is a sport that involves riding waves on a surfboard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snowboarding is a popular winter sport that involves descending a snow-covered slope on a snowboard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Skiing is a popular winter sport that involves gliding over snow-covered terrain on skis.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gymnastics is a sport that combines strength, flexibility, and agility.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Figure skating is a graceful and artistic sport performed on ice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Volleyball is a team sport played on a court with a net.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beach volleyball is a variation of volleyball played on sand.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Table tennis, also known as ping pong, is a fast-paced indoor sport.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Badminton is a sport played with a shuttlecock and a racket.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Squash is a racket sport played in a four-walled court.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Archery is a sport that involves shooting arrows at a target.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fencing is a sport that involves dueling with swords.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rowing is a sport that involves propelling a boat with oars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sailing is a sport that involves navigating a boat using wind power.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Motorsports, including Formula 1 and NASCAR, are popular racing events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "eSports, or electronic sports, are competitive video gaming events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Olympic Games are a major international sporting event held every four years.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The FIFA World Cup is the premier international football tournament.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Super Bowl is the championship game of the National Football League (NFL).",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The NBA Finals are the championship series of the National Basketball Association (NBA).",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Wimbledon Championships are one of the oldest and most prestigious tennis tournaments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Masters Tournament is one of the most prestigious golf tournaments in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The ICC Cricket World Cup is the premier international cricket tournament.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Rugby World Cup is the premier international rugby union tournament.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Stanley Cup is the championship trophy awarded to the winner of the NHL playoffs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The World Series is the championship series of Major League Baseball (MLB).",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Tour de France is one of the most prestigious cycling races in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Olympic Games feature a variety of sports and attract athletes from around the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Keeping up with technology trends helps us stay informed about the latest innovations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence (AI) is revolutionizing industries with its ability to analyze data and automate tasks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blockchain technology is changing the way we think about secure transactions and digital currencies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "5G technology is paving the way for faster and more reliable wireless communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet of Things (IoT) devices are connecting our homes and workplaces like never before.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Augmented reality (AR) and virtual reality (VR) are transforming how we experience digital content.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Machine learning algorithms are enabling computers to learn from data and make decisions without human intervention.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cloud computing is revolutionizing how businesses store, manage, and process data.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cryptocurrency, such as Bitcoin and Ethereum, is reshaping the future of finance and transactions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Big data analytics is helping businesses make informed decisions and improve operations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cybersecurity is becoming increasingly important as we rely more on digital technologies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biometric authentication, such as fingerprint and facial recognition, is enhancing security and convenience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing is on the horizon, promising to solve complex problems beyond the capabilities of traditional computers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robotic process automation (RPA) is streamlining business processes and increasing efficiency.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "3D printing technology is revolutionizing manufacturing and prototyping processes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-driving cars are poised to transform transportation and reduce accidents.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smart home technology is making our homes more convenient, efficient, and secure.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Voice assistants, such as Amazon Alexa and Google Assistant, are changing how we interact with technology.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Health technology, such as wearables and telemedicine, is revolutionizing healthcare delivery.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "5G technology is enabling faster and more reliable internet connectivity, paving the way for new applications and services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing has the potential to revolutionize fields such as cryptography, materials science, and optimization.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Edge computing is bringing computation and data storage closer to the source of data generation, enabling faster processing and lower latency.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet of Things (IoT) devices are becoming increasingly prevalent in homes, offices, and industries, enabling greater connectivity and automation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence (AI) is being used in various industries, from healthcare to finance, to automate processes and improve decision-making.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blockchain technology is being explored for its potential to enhance security and transparency in supply chains, financial transactions, and voting systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cybersecurity threats are becoming more sophisticated, highlighting the need for robust security measures and protocols.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biometric authentication methods, such as fingerprint and facial recognition, are being adopted for their convenience and security benefits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robotic process automation (RPA) is being implemented to automate repetitive tasks and streamline business processes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "3D printing technology is being used to create prototypes, custom products, and even human tissue and organs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-driving cars are being developed by companies like Tesla and Google to revolutionize transportation and reduce accidents.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smart home technology is allowing homeowners to control their appliances, lighting, and security systems remotely.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Voice assistants, such as Amazon Alexa and Google Assistant, are becoming increasingly integrated into everyday devices and services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Health technology, such as wearables and telemedicine, is transforming how healthcare is delivered and managed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "5G technology promises to revolutionize industries such as healthcare, transportation, and entertainment with its faster speeds and lower latency.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing has the potential to solve complex problems in fields such as cryptography, materials science, and climate modeling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Edge computing is enabling real-time data processing and analysis, making it ideal for applications that require low latency and high bandwidth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Internet of Things (IoT) devices are being used to monitor and control various systems, from smart homes to industrial processes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence (AI) is being used in healthcare to improve diagnostics, personalize treatment plans, and streamline administrative tasks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Blockchain technology is being explored for its potential to create more secure and transparent supply chains, financial transactions, and digital identities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cybersecurity threats are evolving, leading to increased investment in cybersecurity measures and technologies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biometric authentication methods, such as facial recognition and fingerprint scanning, are being used to enhance security in mobile devices and access control systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robotic process automation (RPA) is being adopted by businesses to automate routine tasks and improve efficiency.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "3D printing technology is being used in various industries, including aerospace, automotive, and healthcare, to create complex and customized products.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-driving cars are being developed to reduce accidents, increase mobility for the elderly and disabled, and improve traffic flow.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smart home technology is allowing homeowners to control their heating, lighting, and security systems remotely, leading to increased energy efficiency and convenience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Voice assistants, such as Amazon Alexa and Google Assistant, are becoming more integrated into our daily lives, helping us with tasks and providing information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Health technology, such as wearable devices and telemedicine services, is revolutionizing healthcare delivery and patient care.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different travel destinations expands our horizons and inspires new adventures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring historical landmarks allows us to step back in time and appreciate our heritage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting natural wonders, such as waterfalls and mountains, connects us with the beauty of our planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experiencing cultural festivals immerses us in the traditions and customs of different communities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tasting local cuisine is a delicious way to experience the flavors of a region.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adventuring in national parks offers opportunities for hiking, camping, and wildlife viewing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Relaxing on pristine beaches allows us to unwind and soak up the sun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring bustling cities exposes us to new sights, sounds, and experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Embarking on road trips lets us discover hidden gems and scenic routes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting museums and art galleries enriches our understanding of history and culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in adventure sports, such as skiing and surfing, adds excitement to our travels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Staying in eco-friendly accommodations helps us reduce our environmental impact while traveling.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring ancient ruins offers insights into past civilizations and architectural marvels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending cultural performances, such as dance and music shows, provides entertainment and cultural immersion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking guided tours enhances our understanding of local history, culture, and wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traveling to off-the-beaten-path destinations allows us to escape the crowds and discover hidden treasures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experiencing local customs and traditions gives us a deeper appreciation for different cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting botanical gardens and nature reserves showcases the beauty and diversity of plant life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring underwater worlds through snorkeling or diving reveals the wonders of marine life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Staying in unique accommodations, such as treehouses or yurts, adds a memorable twist to our travels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting famous landmarks, such as the Eiffel Tower or the Great Wall of China, is a must for many travelers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sampling street food allows us to taste authentic local flavors and culinary traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking scenic train journeys offers a relaxing and picturesque way to see the countryside.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting religious sites provides insight into the spiritual and cultural heritage of a destination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring architectural wonders, such as castles and palaces, showcases human creativity and ingenuity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending local markets and bazaars gives us a glimpse into daily life and local commerce.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking cooking classes introduces us to local ingredients and culinary techniques.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experiencing wildlife safaris allows us to observe animals in their natural habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting botanical gardens and arboretums showcases the beauty and diversity of plant life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring ancient civilizations through archaeological sites offers a glimpse into the past.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending music festivals and concerts immerses us in the local music scene and cultural celebrations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in volunteer projects, such as conservation or community development, allows us to give back to the places we visit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Staying in homestays or with local families provides a more authentic cultural experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting film locations of famous movies and TV shows adds a touch of Hollywood magic to our travels.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring natural wonders, such as geysers and hot springs, offers unique and rejuvenating experiences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending local celebrations and festivals immerses us in the culture and traditions of a destination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting local markets and bazaars allows us to shop for unique souvenirs and gifts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring UNESCO World Heritage Sites offers insights into the cultural and natural heritage of humanity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking scenic drives through countryside and coastal routes provides breathtaking views and photo opportunities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting art galleries and museums exposes us to local and international artists and their works.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experiencing local cuisine through food tours and cooking classes gives us a taste of the destination's culture.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking guided tours with local experts enhances our understanding and appreciation of a destination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Staying in eco-friendly accommodations supports sustainable tourism practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Visiting wildlife reserves and sanctuaries allows us to observe and learn about local flora and fauna.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Familiarizing ourselves with fashion trends helps us stay stylish and express our individuality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding fashion terminology allows us to communicate effectively about clothing and style.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following fashion influencers on social media provides inspiration for our own style.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Reading fashion magazines and blogs keeps us informed about the latest trends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Attending fashion shows allows us to see new collections and upcoming trends firsthand.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring vintage and thrift stores offers unique and eclectic fashion finds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experimenting with different styles helps us discover what suits us best.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Investing in quality pieces is a sustainable approach to fashion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mixing and matching clothing items creates new and exciting outfits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Accessorizing with jewelry, bags, and shoes adds personality to our outfits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about different fabrics and materials helps us make informed fashion choices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding color theory allows us to create visually appealing outfits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tailoring clothes to fit our body shape ensures a flattering and comfortable fit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about fashion history gives us a deeper appreciation for current trends.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting ethical and sustainable fashion brands promotes responsible consumerism.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experimenting with makeup and hairstyles complements our fashion choices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following street style trends showcases the diversity and creativity of fashion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding fashion seasons helps us transition our wardrobe throughout the year.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring different cultures' traditional clothing inspires new fashion ideas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Taking fashion risks allows us to step out of our comfort zone and discover new styles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding fashion etiquette helps us dress appropriately for different occasions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Creating a capsule wardrobe simplifies our fashion choices and reduces clutter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mixing high-end and affordable pieces creates a stylish and budget-friendly wardrobe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about fashion icons and their signature styles can inspire our own fashion journey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding body proportions helps us dress to flatter our silhouette.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experimenting with patterns and prints adds interest and personality to our outfits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Investing in timeless pieces ensures our wardrobe remains stylish for years to come.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about fashion designers and their inspirations gives us insight into the creative process.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following sustainable fashion practices, such as upcycling and clothing rental, reduces our environmental impact.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding fashion subcultures, such as punk or bohemian, allows us to appreciate different style movements.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring avant-garde fashion pushes the boundaries of conventional style and expression.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about fashion forecasting helps us anticipate future trends and stay ahead of the curve.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the psychology of fashion helps us understand the impact of clothing on self-expression and identity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Experimenting with gender-neutral and unisex fashion challenges traditional gender norms in clothing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Following fashion influencers and celebrities gives us insight into current trends and styles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring fashion photography and editorial spreads offers visual inspiration for our own style.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about sustainable fashion practices, such as zero-waste design and eco-friendly fabrics, helps us make environmentally conscious fashion choices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the cultural significance of clothing and fashion traditions around the world enriches our understanding of global fashion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about nature, wildlife, and environmental issues deepens our appreciation for the natural world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring national parks and nature reserves allows us to connect with nature and observe wildlife in their natural habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the importance of biodiversity helps us appreciate the variety of life forms on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about ecosystems and how they function teaches us about the delicate balance of nature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying environmental science helps us understand the impact of human activities on the environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring conservation efforts and sustainable practices inspires us to protect and preserve our planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in clean-up events and recycling programs contributes to a cleaner and healthier environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about renewable energy sources, such as solar and wind power, promotes sustainable living.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding climate change and its effects on the planet motivates us to take action to reduce our carbon footprint.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring environmental activism and advocacy inspires us to make a positive impact on the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying wildlife conservation and habitat restoration helps us protect endangered species and their habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about natural disasters, such as hurricanes and earthquakes, prepares us for potential emergencies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the importance of water conservation encourages us to use water wisely and protect water sources.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring sustainable agriculture and food production methods promotes healthy eating and reduces environmental impact.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying environmental policies and regulations helps us advocate for responsible environmental practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about indigenous knowledge and traditional ecological practices teaches us about sustainable living.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the role of urban planning and green spaces in creating sustainable cities promotes livability and environmental health.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring marine conservation and ocean protection efforts raises awareness about the importance of preserving marine ecosystems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying environmental ethics and philosophy encourages us to reflect on our relationship with nature and the planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about environmental history helps us understand how human actions have shaped the environment over time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the interconnectedness of ecosystems and species helps us appreciate the complexity of the natural world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring environmental art and literature inspires us to creatively engage with environmental issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying environmental education and communication strategies helps us effectively communicate about environmental issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about environmental justice and equity promotes fair and inclusive approaches to environmental protection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the impact of pollution on the environment and human health motivates us to reduce pollution and waste.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring ecotourism and sustainable travel options promotes responsible travel practices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying environmental economics and sustainable business practices encourages us to support environmentally friendly products and services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about environmental psychology and human behavior helps us understand how to motivate sustainable actions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the concept of ecological footprint encourages us to reduce our impact on the environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exploring the concept of biophilia teaches us about the innate human connection to nature.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Studying environmental education and outreach programs helps us engage with communities and inspire environmental stewardship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about wildlife rehabilitation and conservation efforts supports the protection and rehabilitation of injured or orphaned wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the role of forests in carbon sequestration and climate regulation promotes forest conservation and reforestation efforts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about the most popular types of animals helps us appreciate the diversity of life on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dogs are known for their loyalty, companionship, and diverse breeds suited to various lifestyles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cats are beloved for their independence, playfulness, and calming presence as pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Birds are admired for their beauty, songs, and fascinating behaviors, with parrots and canaries being popular pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fish are appreciated for their colorful appearances, tranquil movements, and ease of care in aquariums.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rabbits are cherished for their gentle nature, soft fur, and social personalities as pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Horses are revered for their strength, beauty, and companionship, with various breeds for riding and work.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Hamsters are loved for their small size, cute appearance, and entertaining behaviors as pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gerbils are popular for their friendly nature, low maintenance, and curious personalities as pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Guinea pigs are adored for their sociable demeanor, vocalizations, and suitability as pets for children.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chickens are valued for their eggs, meat, and in some cases, companionship and pest control in backyard settings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ducks are appreciated for their eggs, meat, and charming presence in ponds and farms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Geckos are fascinating for their unique appearance, ability to climb walls, and relatively low maintenance as pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Turtles are admired for their longevity, peaceful demeanor, and captivating behaviors as pets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Snakes are intriguing for their diverse appearances, hunting methods, and unique adaptations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lizards are popular for their diversity, including bearded dragons, iguanas, and skinks, each with unique traits.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Frogs are appreciated for their role in ecosystems, unique life cycle, and some species' ability to change colors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spiders are fascinating for their silk-spinning abilities, diverse appearances, and important role in controlling pests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bees are valued for their role in pollination, honey production, and fascinating social structures in hives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Butterflies are admired for their colorful wings, delicate beauty, and metamorphosis from caterpillars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ants are intriguing for their complex societies, teamwork, and fascinating behaviors within colonies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Owls are revered for their nocturnal habits, silent flight, and distinctive hoots and calls.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Eagles are admired for their majestic appearance, impressive hunting skills, and symbolic significance in many cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Lions are iconic for their status as the king of the jungle, strength, and social structures in prides.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tigers are revered for their striped fur, power, and status as one of the largest big cats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bears are respected for their strength, intelligence, and diverse species found in various habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Elephants are cherished for their intelligence, social bonds, and iconic appearance, including their tusks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Giraffes are admired for their long necks, gentle nature, and unique appearance among mammals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Zebras are known for their striped coats, social behavior, and unique patterns that help them blend into their environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kangaroos are iconic for their hopping locomotion, marsupial pouches, and presence in Australian wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins are beloved for their tuxedo-like appearance, waddling walk, and fascinating adaptations to cold climates.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins are admired for their playful behavior, intelligence, and acrobatic abilities in the water.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales are revered for their size, intelligence, and captivating behaviors, such as breaching and singing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals are appreciated for their aquatic adaptations, playful nature, and presence in coastal regions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea turtles are cherished for their graceful swimming, unique shell patterns, and importance in marine ecosystems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks are fascinating for their role as top predators, diverse species, and adaptations for hunting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Octopuses are intriguing for their intelligence, camouflage abilities, and unique anatomy, including eight arms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jellyfish are mesmerizing for their translucent bodies, graceful movements, and diverse species found in oceans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Starfish are admired for their radial symmetry, regenerative abilities, and presence in marine habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea otters are loved for their playful behavior, use of tools, and role in maintaining kelp forests.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seahorses are fascinating for their unique appearance, mating behaviors, and male pregnancy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crocodiles are respected for their powerful jaws, ancient lineage, and adaptations for aquatic hunting.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alligators are admired for their survival skills, including their ability to thrive in diverse habitats.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Komodo dragons are revered for their size, strength, and status as the largest living lizards.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about wild and oceanic animals enriches our understanding of marine ecosystems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dolphins are known for their playful behavior and remarkable intelligence.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea turtles are fascinating creatures that travel vast distances across oceans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Whales captivate us with their immense size and majestic presence in the open seas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sharks are apex predators that play a crucial role in maintaining the balance of marine ecosystems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seals are graceful swimmers and agile hunters in the cold waters of the Arctic and Antarctic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea otters are adorable creatures that use tools to crack open shellfish for food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Penguins are expert swimmers and social birds that inhabit the icy landscapes of Antarctica.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jellyfish come in a variety of shapes and sizes and play important roles in ocean food webs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Mount Everest is the tallest mountain in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Amazon River is the largest river by discharge volume.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Sahara Desert is the largest hot desert in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Barrier Reef is the largest coral reef system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Nile River is the longest river in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Antarctica is the coldest and driest continent on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Pacific Ocean is the largest and deepest ocean on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Arctic Ocean is the smallest and shallowest ocean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Grand Canyon is one of the Seven Natural Wonders of the World.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Andes Mountains are the longest continental mountain range.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Amazon Rainforest is the largest tropical rainforest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Gobi Desert is the largest desert in Asia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Lakes are the largest group of freshwater lakes in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Himalayas are the highest mountain range in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Serengeti is a vast ecosystem in East Africa known for its wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Greenland is the largest island in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Dead Sea is the lowest point on Earth's surface.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Galápagos Islands are known for their unique wildlife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Alps are a mountain range in Europe famous for skiing.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Statue of Liberty is a symbol of freedom in the United States.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sydney Opera House is an iconic landmark in Australia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Eiffel Tower is a famous landmark in Paris, France.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Wall of China is a UNESCO World Heritage Site.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stonehenge is a prehistoric monument in England.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Mount Kilimanjaro is the highest peak in Africa.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Taj Mahal is a mausoleum in India built by Emperor Shah Jahan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Machu Picchu is an ancient Incan city in Peru.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Pyramids of Giza are ancient Egyptian monuments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Colosseum is an ancient amphitheater in Rome, Italy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Acropolis is an ancient citadel in Athens, Greece.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Kremlin is a historic fortress complex in Moscow, Russia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Sahara Desert spans across North Africa.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Atacama Desert is the driest non-polar desert in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Arabian Peninsula is located in Southwest Asia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Great Rift Valley runs through East Africa.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Danube River is the second-longest river in Europe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Mississippi River is one of the longest rivers in North America.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Thames River flows through London, England.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Panama Canal connects the Atlantic and Pacific Oceans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Sahara Desert covers much of North Africa.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Himalayas span across several countries, including Nepal and India.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Rocky Mountains stretch from Canada to the United States.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Alps run through several European countries, including Switzerland and Austria.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Amazon Rainforest is located primarily in Brazil.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Nile River flows through Egypt and several other African countries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Barrier Reef is located off the coast of Australia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Grand Canyon is located in the state of Arizona, USA.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Ganges River is considered sacred by Hindus and flows through India.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Andes Mountains span several South American countries, including Peru and Chile.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Sahara Desert is located in North Africa and covers several countries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Serengeti is located in Tanzania and extends into Kenya.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Greenland is an autonomous territory within the Kingdom of Denmark.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Dead Sea is bordered by Jordan, Israel, and the West Bank.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Galápagos Islands are part of Ecuador.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Alps extend through several European countries, including Switzerland, France, and Italy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Himalayas are located in Asia and span several countries, including Nepal, India, and Bhutan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Wall of China stretches across northern China.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Stonehenge is located in Wiltshire, England.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Taj Mahal is located in Agra, India.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Machu Picchu is located in the Andes Mountains of Peru.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Pyramids of Giza are located near Cairo, Egypt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Colosseum is located in Rome, Italy.", "KURDISH_KURDISH_KURDISH");
    await insertSentence("The Acropolis is located in Athens, Greece.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Kremlin is located in Moscow, Russia.", "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Atacama Desert is located in South America, primarily in Chile.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Rift Valley runs through East Africa, including countries like Kenya and Tanzania.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Danube River flows through several European countries, including Germany, Austria, and Hungary.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Mississippi River is the second-longest river in the United States and flows through several states.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Thames River runs through southern England, including London.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Panama Canal is located in Panama and connects the Atlantic and Pacific Oceans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Arabian Peninsula is located in Southwest Asia and includes countries like Saudi Arabia and Yemen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Sahara Desert is the largest hot desert in the world and covers much of North Africa.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Amazon Rainforest is the largest tropical rainforest in the world and is primarily located in Brazil.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Andes Mountains are the longest continental mountain range in the world and run through several South American countries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Barrier Reef is the world's largest coral reef system and is located off the coast of Australia.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Ganges River is a sacred river in Hinduism and flows through India and Bangladesh.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Mississippi River is one of the longest rivers in North America and flows through several U.S. states.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Danube River is the second-longest river in Europe and flows through multiple countries, including Germany, Austria, and Hungary.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Amazon River is the largest river by discharge volume and flows through several South American countries, including Brazil and Peru.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Himalayas are the highest mountain range in the world and span five countries: India, Nepal, Bhutan, China, and Pakistan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Atacama Desert is the driest non-polar desert in the world and is located in South America, primarily in Chile.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Rift Valley is a geological feature that runs through East Africa, including countries like Kenya and Tanzania.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Serengeti is a vast ecosystem in East Africa that spans northern Tanzania and extends into southwestern Kenya.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Greenland is the world's largest island and is an autonomous territory within the Kingdom of Denmark.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Dead Sea is a salt lake bordered by Jordan to the east and Israel and Palestine to the west.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Galápagos Islands are an archipelago of volcanic islands in the Pacific Ocean, located off the coast of Ecuador.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Alps are a mountain range that stretch across several European countries, including Switzerland, France, Italy, Austria, and Germany.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Great Wall of China is a series of fortifications built along the historical northern borders of China to protect against invasions from nomadic groups.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Roman Legion was one of the most formidable fighting forces in ancient history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alexander the Great's army conquered vast territories across the ancient world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Marathon in 490 BC marked a pivotal moment in ancient Greek history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Spartans were renowned for their military prowess and discipline.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The phalanx formation was a key tactic used by ancient Greek armies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Thermopylae is famous for the stand of the 300 Spartans against the Persian army.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Genghis Khan's Mongol army was one of the most feared and successful in history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Crusades were a series of religious wars fought between Christian and Muslim forces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Hastings in 1066 led to the Norman conquest of England.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Hundred Years' War was a series of conflicts between England and France.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Knights Templar were a medieval military order charged with protecting pilgrims in the Holy Land.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Agincourt in 1415 was a significant English victory during the Hundred Years' War.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Swiss pikemen were known for their skill and effectiveness in battle during the late Middle Ages.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Crecy in 1346 saw the English longbowmen defeat a larger French army.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Samurai were the military nobility of medieval and early-modern Japan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Waterloo in 1815 marked the end of Napoleon Bonaparte's reign as Emperor of France.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The American Civil War was fought between the Union and the Confederacy from 1861 to 1865.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Gettysburg was a turning point in the American Civil War.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The trenches of World War I were a brutal and deadly battleground.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Stalingrad in World War II was one of the bloodiest battles in history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The D-Day invasion of Normandy in 1944 was a pivotal Allied victory in World War II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Blitzkrieg tactics used by the German army were highly effective in the early stages of World War II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Midway in 1942 was a decisive naval battle between the United States and Japan.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The atomic bombings of Hiroshima and Nagasaki brought an end to World War II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Vietnam War was a conflict between North and South Vietnam, with involvement from the United States and other allies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Gulf War in 1990-1991 saw a coalition of nations led by the United States expel Iraqi forces from Kuwait.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The War on Terror began in the aftermath of the September 11 attacks in 2001.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Baghdad in 2003 marked the capture of the Iraqi capital by coalition forces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Fallujah in 2004 was one of the largest urban battles fought by U.S. forces since Vietnam.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The use of drones has become increasingly common in modern warfare.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Guerrilla warfare tactics involve small, mobile forces engaging in hit-and-run attacks.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Geneva Conventions establish the rules of war and protect the rights of prisoners of war.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Red Cross provides humanitarian aid to victims of conflict and war.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The concept of 'total war' emerged in the 19th century, involving the mobilization of entire societies for conflict.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Treaty of Versailles imposed heavy penalties on Germany after World War I, leading to resentment and contributing to World War II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The concept of 'just war' seeks to establish criteria for determining when war is morally justifiable.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Chemical weapons have been used in warfare throughout history, causing widespread suffering and death.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The military-industrial complex refers to the close relationship between the military and defense industry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Cannae in 216 BC is considered one of the greatest tactical masterpieces in military history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Austerlitz in 1805 saw Napoleon defeat a combined Austro-Russian army in a decisive victory.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The use of cavalry played a crucial role in many ancient and medieval battles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Mongol Empire was the largest contiguous land empire in history, forged through conquest and military prowess.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Siege of Constantinople in 1453 marked the end of the Byzantine Empire and the rise of the Ottoman Empire.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Tours in 732 halted the advance of the Muslim Umayyad Caliphate into Western Europe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Salamis in 480 BC was a naval engagement that saved Greece from Persian conquest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The concept of 'siege warfare' involves surrounding a fortified place and cutting off essential supplies to force surrender.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Hastings in 1066 saw the Norman forces of William the Conqueror defeat the English army of Harold II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of the Bulge in 1944-1945 was the largest battle fought by the United States in World War II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The concept of 'asymmetric warfare' involves conflicts between forces with vastly different capabilities and strategies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Korean War was a conflict between North and South Korea, with involvement from the United States and other allies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Trafalgar in 1805 was a decisive naval victory for the British Royal Navy against the French and Spanish fleets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The use of propaganda has been a common tactic in war, shaping public opinion and rallying support for military objectives.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Saratoga in 1777 was a turning point in the American Revolutionary War, leading to French support for the American cause.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The use of mercenaries has been a common practice throughout history, with hired soldiers fighting for various factions and causes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Berlin in 1945 marked the final major offensive of the European theatre in World War II, resulting in the fall of Nazi Germany.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Treaty of Versailles imposed harsh conditions on Germany after World War I, contributing to economic hardship and resentment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The concept of 'guerrilla warfare' involves irregular tactics used by smaller, more mobile forces against larger, conventional armies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of the Somme in 1916 was one of the bloodiest battles of World War I, with significant casualties on both sides.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The concept of 'nuclear deterrence' relies on the threat of nuclear retaliation to prevent conflict between nuclear-armed states.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The use of trench warfare characterized much of the fighting on the Western Front during World War I, resulting in stalemate and massive casualties.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of Kursk in 1943 was the largest tank battle in history, resulting in a decisive Soviet victory over German forces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Battle of El Alamein in 1942 marked a turning point in the North African campaign of World War II, with Allied forces halting the advance of Axis powers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Cold War was a period of geopolitical tension between the United States and its allies and the Soviet Union and its allies, characterized by proxy wars and the threat of nuclear annihilation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Starfish are fascinating creatures with the ability to regenerate lost limbs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seahorses are unique fish known for their upright posture and intricate courtship rituals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crocodiles are ancient reptiles that have remained virtually unchanged for millions of years.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alligators are formidable predators that inhabit freshwater habitats across the southern United States.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Komodo dragons are the largest lizards in the world, known for their powerful bite and venomous saliva.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Manatees are gentle giants that inhabit coastal waters and freshwater rivers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seagulls are common seabirds known for their scavenging behavior and distinctive calls.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea lions are highly social marine mammals that inhabit rocky coastlines and islands.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Orcas, also known as killer whales, are apex predators that hunt in coordinated packs.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swordfish are large, predatory fish known for their long, pointed bills and high-speed swimming abilities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tuna are fast-swimming fish prized for their delicious meat and commercial value.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jellyfish have translucent bodies and stinging tentacles used for capturing prey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Starfish, also known as sea stars, have radial symmetry and can have up to 40 arms.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seahorses have prehensile tails and unique reproductive habits where males carry eggs in a brood pouch.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crocodiles have powerful jaws lined with sharp teeth, perfect for catching prey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alligators have broad snouts and live in freshwater habitats like swamps and marshes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Komodo dragons have keen senses of smell and are known to be solitary hunters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Manatees are herbivorous mammals that spend most of their time grazing on aquatic plants.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seagulls are opportunistic feeders and will scavenge for food in coastal areas.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea lions have external ear flaps and are known for their loud barking vocalizations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Orcas are apex predators that feed on a variety of prey, including fish, seals, and even other whales.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swordfish have elongated bodies and can swim at speeds of up to 60 miles per hour.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tuna are highly migratory fish and can travel thousands of miles in search of food.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jellyfish have a gelatinous body composed mostly of water and lack a centralized nervous system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Starfish have a unique water vascular system that allows them to move and feed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seahorses are masters of camouflage and can change color to blend in with their surroundings.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crocodiles have a keen sense of hearing and can detect vibrations in the water from long distances.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alligators are ambush predators that lie in wait for prey to come within striking distance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Komodo dragons have serrated teeth and powerful neck muscles for delivering lethal bites.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Manatees are slow-moving creatures that can hold their breath for up to 20 minutes underwater.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seagulls have specialized bills adapted for capturing and consuming a wide range of prey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sea lions are highly social animals that communicate with each other through a series of barks and growls.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Orcas are highly intelligent animals capable of learning complex behaviors and communication.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Swordfish have a long, slender body and a distinctive sword-like bill used for slashing at prey.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tuna have streamlined bodies and powerful tails that allow them to swim at high speeds.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jellyfish are composed of a gelatinous substance called mesoglea, which provides buoyancy and support.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Starfish can regenerate lost limbs and even grow into new individuals from severed body parts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seahorses are monogamous animals that mate for life and engage in elaborate courtship rituals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crocodiles have a reputation for being territorial and will fiercely defend their territory from intruders.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alligators are opportunistic feeders and will consume a variety of prey, including fish, birds, and mammals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Komodo dragons have a keen sense of smell and can detect the scent of prey from several miles away.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Familiarizing ourselves with different forms of art and design enriches our cultural understanding and aesthetic appreciation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Painting is a form of visual art where colors are applied to a surface using various techniques, such as brush strokes or palette knife.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sculpture involves creating three-dimensional forms, often using materials like clay, stone, or metal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Architecture is the art and science of designing and constructing buildings and structures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Photography is the art of capturing and recording images using a camera.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Illustration is the art of creating visual representations of concepts, ideas, and stories.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Graphic design involves creating visual content to communicate messages effectively.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Printmaking is a technique for creating multiple copies of an image, typically using a plate or block.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Textile design involves creating patterns and designs for fabrics and textiles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Interior design focuses on creating functional and aesthetically pleasing interior spaces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fashion design is the art of designing clothing and accessories, often influenced by cultural and social factors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ceramics is the art of making objects from clay, which are then fired in a kiln to harden.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jewelry design involves creating wearable pieces, often using precious metals and gemstones.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Animation is the art of creating moving images through the rapid display of a sequence of static images.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Calligraphy is the art of beautiful handwriting, often used for decorative and ceremonial purposes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Street art is a form of art created in public spaces, often using unconventional materials.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Graffiti is a form of street art that involves writing or drawing on walls or surfaces in public spaces.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Digital art is created using digital technology, such as computers or tablets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Installation art is a form of art that is created for a specific space and often involves the viewer's interaction.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Performance art is a form of art in which the artist uses their body or actions to create a work of art.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Land art, also known as earth art, involves creating art in and with the natural landscape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Abstract art is art that does not attempt to represent an accurate depiction of visual reality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Impressionism is an art movement characterized by capturing the impression of a scene, often using loose brushwork and light.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Expressionism is an art movement that emphasizes expressing emotional experience rather than physical reality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Surrealism is an art movement that explores the unconscious mind and dreams, often creating fantastical and dreamlike images.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pop art is an art movement that emerged in the 1950s and uses popular culture and mass media as its subject matter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Minimalism is an art movement that emphasizes simplicity and uses a minimal number of elements.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Conceptual art is art in which the concept or idea behind the work is more important than the finished product.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art deco is a style of art, architecture, and design that was popular in the 1920s and 1930s, characterized by geometric shapes and bold colors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Renaissance art refers to the art of Europe between the 14th and 17th centuries, known for its revival of classical forms and humanistic themes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Baroque art is an artistic style that emerged in the late 16th century and is characterized by drama, tension, and grandeur.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rococo art is a style that emerged in the 18th century and is characterized by ornate decoration and pastel colors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neoclassical art is a revival of the classical style that emerged in the 18th century and is characterized by simplicity and symmetry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Romanticism was an artistic, literary, and intellectual movement that emerged in the late 18th century and emphasized emotion, nature, and individualism.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Realism is an artistic movement that emerged in the 19th century and seeks to depict the world as it is, without idealization or stylization.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Impressionism is an art movement that emerged in the late 19th century and is characterized by capturing the impression of a scene, often using loose brushwork and light.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Post-impressionism is a term used to describe the work of several artists who were influenced by impressionism but developed their own styles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Modern art refers to the art of the late 19th and early 20th centuries, characterized by a break with traditional styles and techniques.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Contemporary art refers to art produced today, often reflecting current social, political, and cultural issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Abstract expressionism is an art movement that emerged in the 1940s and 1950s and is characterized by spontaneous and gestural brushwork.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pop art is an art movement that emerged in the 1950s and uses popular culture and mass media as its subject matter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Op art is a style of art that uses optical illusions to create the impression of movement or depth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kinetic art is art that contains moving parts or depends on motion for its effect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Land art, also known as earth art, involves creating art in and with the natural landscape.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Performance art is a form of art in which the artist uses their body or actions to create a work of art.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about historical events and figures helps us understand the context of current events and cultural references.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Renaissance was a period of cultural rebirth in Europe, characterized by a renewed interest in art, literature, and science.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Industrial Revolution was a period of rapid industrialization and technological advancement in the 18th and 19th centuries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The French Revolution was a period of political upheaval in France that led to the overthrow of the monarchy and the establishment of a republic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The American Revolution was a struggle for independence from British rule, resulting in the formation of the United States of America.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Civil Rights Movement was a social movement in the United States that aimed to end racial segregation and discrimination against African Americans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The World Wars were two major global conflicts that occurred in the 20th century, resulting in significant loss of life and geopolitical changes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Martin Luther King Jr. was a prominent leader in the American Civil Rights Movement, known for his nonviolent approach to protest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nelson Mandela was a South African anti-apartheid revolutionary and politician who served as President of South Africa from 1994 to 1999.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mahatma Gandhi was a leader of the Indian independence movement in British-ruled India, known for his nonviolent civil disobedience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Abraham Lincoln was the 16th President of the United States, known for leading the country through the Civil War and issuing the Emancipation Proclamation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Adolf Hitler was the leader of the Nazi Party in Germany, responsible for initiating World War II and orchestrating the Holocaust.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Queen Elizabeth I was the Queen of England and Ireland from 1558 until her death in 1603, known for her strong leadership during the Elizabethan era.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Julius Caesar was a Roman general and statesman who played a critical role in the events that led to the demise of the Roman Republic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Joan of Arc was a French heroine and military leader who played a key role in the Hundred Years' War before being captured and executed by the English.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Genghis Khan was the founder and first Great Khan of the Mongol Empire, which became the largest contiguous empire in history after his death.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Leonardo da Vinci was an Italian polymath who excelled in various fields, including painting, sculpture, architecture, and science.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "William Shakespeare was an English playwright, poet, and actor, widely regarded as the greatest writer in the English language and the world's pre-eminent dramatist.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Charles Darwin was an English naturalist and biologist, known for his theory of evolution by natural selection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Galileo Galilei was an Italian astronomer, physicist, and engineer who played a major role in the scientific revolution of the 17th century.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sir Isaac Newton was an English mathematician, physicist, and astronomer, widely recognized as one of the most influential scientists of all time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Christopher Columbus was an Italian explorer and navigator who completed four voyages across the Atlantic Ocean, opening the way for widespread European exploration and the eventual conquest of the Americas by Europeans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alexander the Great was a king of the ancient Greek kingdom of Macedon and a member of the Argead dynasty, known for his military conquests and expansion of the Macedonian Empire.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Queen Victoria was the Queen of the United Kingdom of Great Britain and Ireland from 1837 until her death in 1901, known for her long reign and the Victorian era named after her.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cleopatra VII Philopator was the last active ruler of the Ptolemaic Kingdom of Egypt, known for her relationships with Julius Caesar and Mark Antony.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Thomas Jefferson was an American statesman, diplomat, lawyer, architect, philosopher, and Founding Father who served as the third President of the United States from 1801 to 1809.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "George Washington was an American political leader, military general, statesman, and Founding Father who served as the first President of the United States from 1789 to 1797.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Benjamin Franklin was an American polymath who was a leading author, printer, political theorist, politician, freemason, postmaster, scientist, inventor, humorist, civic activist, statesman, and diplomat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Marco Polo was an Italian merchant, explorer, and writer who traveled through Asia along the Silk Road between 1271 and 1295 and described his experiences in a book called 'The Travels of Marco Polo'.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cleopatra VII Philopator was the last active ruler of the Ptolemaic Kingdom of Egypt, known for her relationships with Julius Caesar and Mark Antony.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Genghis Khan was the founder and first Great Khan of the Mongol Empire, which became the largest contiguous empire in history after his death.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Napoleon Bonaparte was a French military and political leader who rose to prominence during the French Revolution and its associated wars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Queen Elizabeth I was the Queen of England and Ireland from 1558 until her death in 1603, known for her strong leadership during the Elizabethan era.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Joan of Arc was a French heroine and military leader who played a key role in the Hundred Years' War before being captured and executed by the English.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sir Isaac Newton was an English mathematician, physicist, and astronomer, widely recognized as one of the most influential scientists of all time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "William the Conqueror was the first Norman King of England, reigning from 1066 until his death in 1087.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Leonardo da Vinci was an Italian polymath who excelled in various fields, including painting, sculpture, architecture, and science.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Vincent van Gogh was a Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Amelia Earhart was an American aviation pioneer and author who was the first female aviator to fly solo across the Atlantic Ocean.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Marie Curie was a Polish and naturalized-French physicist and chemist who conducted pioneering research on radioactivity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Charles Darwin was an English naturalist and biologist, known for his theory of evolution by natural selection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Galileo Galilei was an Italian astronomer, physicist, and engineer who played a major role in the scientific revolution of the 17th century.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sir Winston Churchill was a British statesman, army officer, and writer who served as Prime Minister of the United Kingdom during World War II.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rosa Parks was an American activist in the civil rights movement best known for her pivotal role in the Montgomery bus boycott.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mother Teresa was an Albanian-Indian Roman Catholic nun and missionary who dedicated her life to helping the poor and destitute.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mahatma Gandhi was a leader of the Indian independence movement in British-ruled India, known for his nonviolent civil disobedience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Nelson Mandela was a South African anti-apartheid revolutionary and politician who served as President of South Africa from 1994 to 1999.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Benjamin Franklin was an American polymath who was a leading author, printer, political theorist, politician, freemason, postmaster, scientist, inventor, humorist, civic activist, statesman, and diplomat.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Alexander the Great was a king of the ancient Greek kingdom of Macedon and a member of the Argead dynasty, known for his military conquests and expansion of the Macedonian Empire.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Julius Caesar was a Roman general and statesman who played a critical role in the events that led to the demise of the Roman Republic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "George Washington was an American political leader, military general, statesman, and Founding Father who served as the first President of the United States from 1789 to 1797.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Abraham Lincoln was the 16th President of the United States, known for leading the country through the Civil War and issuing the Emancipation Proclamation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Christopher Columbus was an Italian explorer and navigator who completed four voyages across the Atlantic Ocean, opening the way for widespread European exploration and the eventual conquest of the Americas by Europeans.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Queen Victoria was the Queen of the United Kingdom of Great Britain and Ireland from 1837 until her death in 1901, known for her long reign and the Victorian era named after her.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cleopatra VII Philopator was the last active ruler of the Ptolemaic Kingdom of Egypt, known for her relationships with Julius Caesar and Mark Antony.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Thomas Jefferson was an American statesman, diplomat, lawyer, architect, philosopher, and Founding Father who served as the third President of the United States from 1801 to 1809.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Marco Polo was an Italian merchant, explorer, and writer who traveled through Asia along the Silk Road between 1271 and 1295 and described his experiences in a book called 'The Travels of Marco Polo'.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning about social issues like poverty, homelessness, and human rights is important.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "These topics often come up in conversations and can help you connect with others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Poverty is the state of being extremely poor and lacking basic necessities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Homelessness is the condition of having no permanent home or shelter.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Human rights are the basic rights and freedoms that belong to every person.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding these issues can help you advocate for positive change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Discussing these topics can raise awareness and promote empathy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in conversations about social issues can lead to meaningful actions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "By learning more about these topics, you can become a more informed citizen.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It's important to stay informed about social issues in your community.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "You can make a difference by volunteering or supporting organizations that help.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education is key to understanding and addressing social issues effectively.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empathy and compassion are important when discussing these sensitive topics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Everyone has a role to play in addressing social issues in society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Together, we can work towards a more just and equitable world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social issues impact everyone, regardless of background or circumstance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "By learning about these topics, you can help create positive change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social justice is an important part of civic engagement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Being aware of social issues can help you make informed decisions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Poverty affects millions of people around the world, including children.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Homelessness can be caused by a variety of factors, including economic hardship.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Human rights are universal and should be protected for all individuals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Discrimination based on race, gender, or religion is a violation of human rights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Access to education, healthcare, and housing are fundamental human rights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social inequality is a major challenge facing societies around the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires collaboration and cooperation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It's important to listen to the voices of those affected by social issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Educating yourself about social issues is the first step towards making a difference.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Volunteering your time or resources can make a positive impact on social issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocacy involves speaking out about social issues and promoting change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice is about ensuring that everyone has equal rights and opportunities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "By working together, we can create a more inclusive and compassionate society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Poverty can be alleviated through policies that promote economic opportunity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Homelessness can be addressed through affordable housing and support services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Human rights violations should be condemned and addressed through legal means.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Educating others about social issues can help raise awareness and foster empathy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting organizations that work on social issues can make a real difference.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in dialogue with others about social issues can lead to positive change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "It's important to stay informed about social issues and current events.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social justice requires persistence and commitment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social change starts with individuals who are willing to speak up and take action.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "By working together, we can build a more just and equitable society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires a multifaceted approach involving various stakeholders.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Raising awareness about social issues can lead to greater understanding and empathy.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social change can be challenging but also incredibly rewarding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Participating in peaceful protests is one way to raise awareness about social issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social media can be a powerful tool for spreading information and mobilizing support for social causes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Donating money or resources to organizations that work on social issues can make a meaningful impact.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Engaging in discussions with people who have different perspectives can help broaden your understanding of social issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Volunteering your time to help those in need is a concrete way to address social issues in your community.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocacy involves speaking up for those who may not have a voice in society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Working towards social justice requires a commitment to fairness, equality, and human rights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the root causes of social issues is essential for developing effective solutions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empathy is the ability to understand and share the feelings of others, and it is crucial for addressing social issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social issues often intersect with one another, and addressing them requires a comprehensive approach.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education is key to addressing social issues, as it helps people understand the complexities of these problems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social change can be slow and incremental, but every small step forward is progress.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Listening to the stories and experiences of those affected by social issues can be powerful and eye-opening.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting policies that promote social justice and equality is an important way to contribute to positive change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocates for social change often face resistance, but persistence can lead to meaningful progress.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Creating a more inclusive society requires valuing diversity and respecting the rights of all individuals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires a collective effort from individuals, communities, and governments.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice movements throughout history have brought about significant changes in society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Art can be a powerful tool for addressing social issues and inspiring change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social issues can affect people of all ages, backgrounds, and walks of life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires a willingness to challenge the status quo and envision a better future.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice is not just about addressing the symptoms of inequality but also addressing the underlying causes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empowering marginalized communities is essential for achieving social justice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social issues are often complex and multifaceted, requiring nuanced solutions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocacy efforts are most effective when they are grounded in empathy and understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice requires recognizing and challenging systemic injustices and inequalities.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires a commitment to ongoing education and self-reflection.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting organizations that advocate for social justice can make a difference.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social change often begins with individuals who are willing to speak out against injustice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Understanding the historical context of social issues can provide valuable insights into their causes and effects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Promoting social justice requires fostering a culture of inclusivity and respect.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocates for social change often face backlash and criticism, but their efforts can lead to lasting impact.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social issues can be interconnected, and addressing one issue can have ripple effects on others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Creating a more just and equitable society requires challenging our own biases and prejudices.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social change requires empathy, compassion, and a commitment to justice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting marginalized communities is an important part of promoting social justice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Education is a powerful tool for addressing social issues and promoting understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice requires recognizing and valuing the humanity and dignity of all individuals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires a long-term commitment to change.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocacy efforts should be guided by the voices and experiences of those most affected by social issues.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice requires confronting and dismantling systems of oppression and discrimination.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting social justice initiatives can help create a more equitable and inclusive society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social change can be challenging, but it is essential for creating a better world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social issues are complex and often require collaborative solutions from multiple stakeholders.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empowering marginalized communities is a key component of social justice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires challenging stereotypes and promoting understanding.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocacy efforts are most effective when they are rooted in empathy and compassion.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice requires recognizing and addressing the ways in which privilege and power operate in society.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting organizations that work towards social justice can help make a difference.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social change requires persistence, resilience, and a belief in the possibility of a better world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Creating a more just and equitable society requires a commitment to ongoing learning and growth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Addressing social issues requires a willingness to listen to and learn from those most affected by them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocating for social change requires a willingness to challenge the status quo and push for progress.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social justice is about creating a world where everyone has the opportunity to thrive.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supporting social justice initiatives is an important way to contribute to positive change in the world.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Advocacy efforts should be grounded in a commitment to fairness, equality, and human rights.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space exploration is the investigation and exploration of outer space by means of space technology.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robotics is the branch of technology that deals with the design, construction, operation, and application of robots.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Artificial intelligence (AI) is the simulation of human intelligence processes by machines, especially computer systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space agencies around the world are working on missions to explore Mars and other planets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robots are used in various industries, including manufacturing, healthcare, and space exploration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI is used in many applications, such as speech recognition, image recognition, and autonomous vehicles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Mars rover is a robotic vehicle designed to explore the surface of Mars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Machine learning is a subset of AI that allows computers to learn from data and improve over time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "NASA is planning a manned mission to Mars in the coming decades.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Autonomous robots are able to perform tasks without human intervention.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI has the potential to revolutionize many aspects of our lives, including healthcare, transportation, and entertainment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space telescopes are used to observe distant galaxies and stars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Virtual reality technology allows users to experience and interact with a computer-generated environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "3D printing is a technology that allows objects to be created by adding material layer by layer.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The International Space Station is a space station, or habitable artificial satellite, in low Earth orbit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI algorithms are used in financial markets to analyze data and make trading decisions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robot-assisted surgery allows surgeons to perform complex procedures with greater precision.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Hubble Space Telescope has provided scientists with stunning images of the universe.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-driving cars use AI algorithms to navigate roads and avoid obstacles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space tourism is an emerging industry that aims to send private individuals into space for recreational purposes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum computing is a type of computing that uses quantum-mechanical phenomena, such as superposition and entanglement.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI ethics is a branch of ethics that examines the moral and ethical implications of AI technologies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "SpaceX is a private aerospace manufacturer and space transportation company founded by Elon Musk.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robotics engineers design and build robots for various applications, such as industrial automation and space exploration.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI chatbots are used in customer service to answer questions and provide assistance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space debris, also known as space junk, poses a risk to satellites and spacecraft in orbit around Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bioinformatics is the field of science that combines biology, computer science, and information technology to analyze and interpret biological data.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The James Webb Space Telescope is a space telescope set to launch in 2021 as a successor to the Hubble Space Telescope.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI algorithms are used in social media platforms to personalize content and advertisements.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space colonization is the concept of permanent human habitation outside Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Robot vacuums use AI technology to navigate and clean floors autonomously.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neural networks are a type of AI model inspired by the structure of the human brain.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "SpaceX's Starship is a fully reusable spacecraft designed for missions to Mars and beyond.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI in healthcare is used for tasks such as medical image analysis, personalized medicine, and predictive analytics.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum supremacy is the milestone at which quantum computers can perform tasks that are beyond the capabilities of classical computers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deep learning is a subset of machine learning that uses neural networks with many layers to learn from data.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space elevators are a theoretical mode of transportation that could lift materials from Earth into space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI in education is used to personalize learning experiences and provide feedback to students.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "CRISPR is a revolutionary gene-editing technology that allows scientists to modify DNA with unprecedented precision.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space agencies are exploring the possibility of mining asteroids for valuable resources.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI algorithms are used in predictive policing to analyze data and identify potential criminal activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Quantum entanglement is a phenomenon in which quantum particles become interconnected in such a way that the state of one particle is correlated with the state of another particle, even if they are far apart.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "SpaceX's Starlink is a satellite constellation project that aims to provide high-speed internet access worldwide.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "AI in agriculture is used for tasks such as crop monitoring, pest control, and yield prediction.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Mars Perseverance rover is a robotic rover that landed on Mars in February 2021 to search for signs of ancient life and collect samples for return to Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space is the vast, seemingly infinite expanse that exists beyond Earth's atmosphere.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The solar system is the collection of planets and other objects that orbit the sun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun is the star at the center of our solar system, around which all the planets orbit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The eight planets in our solar system, in order of their distance from the sun, are Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mercury is the smallest planet in our solar system and the closest to the sun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Venus is often called Earth's 'sister planet' because of its similar size and composition.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Earth is the third planet from the sun and the only known planet to support life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mars is known as the 'Red Planet' because of its reddish appearance, caused by iron oxide on its surface.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Jupiter is the largest planet in our solar system and is known for its giant storm called the Great Red Spot.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Saturn is known for its beautiful ring system, which is made up of ice, rocks, and dust particles.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Uranus is unique among the planets because it rotates on its side, likely due to a collision early in its history.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neptune is the farthest planet from the sun and is known for its deep blue color.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pluto was formerly considered the ninth planet in our solar system but was reclassified as a dwarf planet in 2006.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The asteroid belt is a region of space between Mars and Jupiter that is home to many small, rocky objects called asteroids.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Comets are icy bodies that orbit the sun and develop a glowing coma and sometimes a tail when they are close to the sun.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meteoroids are small rocks or particles in space, while meteors are meteoroids that enter Earth's atmosphere and burn up, creating a streak of light in the sky.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Meteorites are meteoroids that survive their journey through Earth's atmosphere and land on the surface.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Kuiper Belt is a region of space beyond Neptune that is home to many icy objects, including dwarf planets like Pluto.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The Oort Cloud is a theoretical region of space far beyond the Kuiper Belt that is thought to be the source of long-period comets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space exploration has allowed us to learn more about the solar system and universe beyond.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space telescopes, such as the Hubble Space Telescope, have provided stunning images of distant galaxies and stars.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "NASA's Voyager spacecraft have traveled beyond the solar system, sending back valuable data about the outer planets and interstellar space.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The study of exoplanets, or planets outside our solar system, has revealed a diverse array of planetary systems.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The search for life beyond Earth is a major focus of space exploration, with Mars and the moons of Jupiter and Saturn being prime targets.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Colonizing other planets, such as Mars, is a topic of ongoing research and debate, with the goal of ensuring the survival of the human species.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The study of the solar system's formation and evolution provides insights into the processes that shaped our own planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space missions, such as the Mars rovers and the Juno mission to Jupiter, continue to expand our understanding of the solar system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun plays a crucial role in the solar system, providing heat and light that sustain life on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The solar wind is a stream of charged particles that flows from the sun and extends throughout the solar system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Solar flares are intense bursts of radiation from the sun's surface that can affect satellites and other spacecraft.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun's magnetic field extends throughout the solar system, shaping the environment of the planets and other objects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The study of the sun's activity, known as solar physics, helps us understand its effects on Earth and the solar system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space weather refers to the environmental conditions in space, including solar flares, coronal mass ejections, and cosmic rays, that can affect spacecraft and astronauts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The study of the solar system's formation and evolution provides insights into the processes that shaped our own planet.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space missions, such as the Mars rovers and the Juno mission to Jupiter, continue to expand our understanding of the solar system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun plays a crucial role in the solar system, providing heat and light that sustain life on Earth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The solar wind is a stream of charged particles that flows from the sun and extends throughout the solar system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Solar flares are intense bursts of radiation from the sun's surface that can affect satellites and other spacecraft.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The sun's magnetic field extends throughout the solar system, shaping the environment of the planets and other objects.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "The study of the sun's activity, known as solar physics, helps us understand its effects on Earth and the solar system.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Space weather refers to the environmental conditions in space, including solar flares, coronal mass ejections, and cosmic rays, that can affect spacecraft and astronauts.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Business refers to activities involved in producing and selling goods or services for profit.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Economics is the study of how societies use scarce resources to produce valuable commodities and distribute them among different people.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Profit is the financial gain made in a transaction or business venture after all expenses are deducted.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Revenue is the income generated from sales of goods or services, often calculated as price multiplied by quantity sold.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cost refers to the amount of money or resources expended to produce goods or services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supply is the amount of a commodity, product, or service available for purchase at a particular price.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Demand is the quantity of a good or service that consumers are willing and able to purchase at a given price.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Market is a system where buyers and sellers interact to trade goods, services, or contracts, often influenced by supply and demand.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Competition is the rivalry between companies selling similar products or services in the same market.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monopoly is a market structure where a single seller dominates the market for a particular product or service.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Oligopoly is a market structure where a few large firms dominate the market for a particular product or service.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Monopolistic competition is a market structure where many firms sell similar but not identical products, allowing for product differentiation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Market equilibrium is a state where the quantity of goods or services demanded by consumers equals the quantity supplied by producers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Inflation is the rate at which the general level of prices for goods and services rises, leading to a decrease in purchasing power.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deflation is the opposite of inflation, characterized by a decrease in the general price level of goods and services.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gross domestic product (GDP) is the total value of all goods and services produced in a country in a specific period.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Unemployment is the state of being without a job, often measured as a percentage of the total labor force.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Interest rate is the amount charged by a lender to a borrower for the use of money, expressed as a percentage of the principal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Budget is an estimate of income and expenditure for a set period of time, often used by governments, businesses, and individuals.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Profit margin is a measure of profitability, calculated as net income divided by revenue, often expressed as a percentage.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Business cycle is the recurring pattern of expansion and contraction in economic activity over time.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stock market is a system for buying and selling shares of companies, representing ownership in those companies.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Supply chain is the network of individuals, organizations, resources, activities, and technology involved in the creation and sale of a product.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Marketing is the process of promoting, selling, and distributing a product or service to customers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Human resources refers to the individuals who make up the workforce of an organization, often responsible for recruitment, training, and management.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Financial management is the planning, organizing, directing, and controlling of an organization's financial resources.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Entrepreneurship is the process of starting and running a business, often characterized by innovation and risk-taking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Globalization is the process of increasing interconnectedness and interdependence among countries, economies, and cultures.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Trade refers to the exchange of goods and services between countries or regions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tariff is a tax or duty imposed on imported or exported goods, often used to protect domestic industries.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Subsidy is a payment or benefit given by the government to support a particular industry or activity.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Foreign exchange refers to the exchange of one currency for another, often used in international trade.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Balance of trade is the difference between the value of a country's exports and imports.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Debt is the amount of money owed by one party to another, often used by governments and businesses to finance operations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Credit is the ability of a customer to obtain goods or services before payment, based on the trust that payment will be made in the future.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Philosophy is the study of fundamental questions about existence, knowledge, values, reason, mind, and language.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ethics is the branch of philosophy that deals with moral principles and values, and how they apply to individual and social behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Metaphysics is the branch of philosophy that deals with the nature of reality, including the relationship between mind and matter, substance and attribute, and possibility and actuality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Epistemology is the branch of philosophy that deals with the nature, scope, and limits of knowledge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Logic is the branch of philosophy that deals with the principles of correct reasoning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Aesthetics is the branch of philosophy that deals with the nature of beauty, art, and taste.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Existentialism is a philosophical movement that emphasizes individual existence, freedom, and choice.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Utilitarianism is a moral theory that states that the best action is the one that maximizes utility, often defined as maximizing pleasure and minimizing pain.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Kantian ethics is a moral theory that emphasizes the importance of rationality, autonomy, and respect for others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Virtue ethics is a moral theory that emphasizes the role of character and virtue in moral philosophy, rather than rules or consequences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ethical relativism is the theory that ethical values are relative to the culture, society, or individual holding them.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Moral skepticism is the view that there are no objective moral truths, or that we cannot know whether there are any.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Free will is the philosophical doctrine that holds that individuals have the ability to choose their actions freely, without being determined by causes external to their will.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Determinism is the philosophical doctrine that all events, including moral choices, are determined completely by previously existing causes.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Consequentialism is the view that the morality of an action is determined by its consequences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Deontology is the view that the morality of an action is determined by its adherence to rules or duties.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Empiricism is the theory that all knowledge is derived from sense experience.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Rationalism is the theory that reason rather than experience is the foundation of certainty in knowledge.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Objectivity is the philosophical concept of being independent of the mind, existing outside of the mind as part of reality itself.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Subjectivity is the philosophical concept that judgments, experiences, and reality itself are based on individual perception and interpretation.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Absolutism is the philosophical view that certain principles are universal and apply to all people, cultures, and situations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Relativism is the philosophical view that truth, morality, or knowledge is relative to the context or individual.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Epistemic humility is the recognition of the limits of one's knowledge and the willingness to revise one's beliefs in light of new evidence.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Skepticism is the philosophical position that questions the possibility of knowledge, often by doubting or suspending judgment on various matters.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pluralism is the philosophical view that there are many different ways of understanding the world, and no single perspective can capture its entirety.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Naturalism is the philosophical belief that everything can be explained in terms of natural causes and laws, without the need for supernatural explanations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Positivism is the philosophical view that the only authentic knowledge is that which is based on empirical evidence and scientific inquiry.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Pragmatism is the philosophical tradition that emphasizes the practical consequences of beliefs and actions, rather than their abstract or theoretical significance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Essentialism is the philosophical view that objects have inherent qualities or essences that define what they are.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Existential nihilism is the philosophical doctrine that life has no intrinsic meaning or value.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ontological argument is a philosophical argument for the existence of God that is based on the concept of God as the most perfect being.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Teleological argument is a philosophical argument for the existence of God that is based on the idea that the universe exhibits design and purpose.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ontology is the branch of metaphysics that deals with the nature of being, existence, and reality.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Epistemological skepticism is the view that knowledge is impossible or that we can never have knowledge about certain things.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Psychology is the scientific study of the mind and behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Behavior is the range of actions and mannerisms made by individuals, organisms, systems, or artificial entities in conjunction with themselves or their environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Emotion is a complex psychological state that involves three distinct components: a subjective experience, a physiological response, and a behavioral or expressive response.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cognition is the mental action or process of acquiring knowledge and understanding through thought, experience, and the senses.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Personality is a dynamic and organized set of characteristics possessed by a person that uniquely influences their environment, cognition, emotions, motivations, and behaviors in various situations.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Motivation is the process that initiates, guides, and maintains goal-oriented behaviors.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Memory is the faculty by which the brain encodes, stores, and retrieves information.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Learning is the process of acquiring new understanding, knowledge, behaviors, skills, values, attitudes, and preferences.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Perception is the organization, identification, and interpretation of sensory information in order to represent and understand the presented information or environment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Stress is a feeling of emotional or physical tension that can come from any event or thought that makes you feel frustrated, angry, or nervous.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Anxiety is a feeling of worry, nervousness, or unease about something with an uncertain outcome.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Depression is a mood disorder that causes a persistent feeling of sadness and loss of interest.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-esteem is the subjective evaluation of one's own worth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Self-efficacy is the belief in one's ability to succeed in specific situations or accomplish a task.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Emotional intelligence is the ability to understand, use, and manage one's own emotions in positive ways to relieve stress, communicate effectively, empathize with others, overcome challenges, and defuse conflict.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Social psychology is the scientific study of how people's thoughts, feelings, and behaviors are influenced by the actual, imagined, or implied presence of others.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Developmental psychology is the scientific study of how and why human beings change over the course of their life.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cognitive psychology is the scientific study of mental processes such as attention, language use, memory, perception, problem-solving, creativity, and thinking.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Biopsychology is the scientific study of the biology of behavior.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Neuroscience is the scientific study of the nervous system, including the brain, spinal cord, and networks of sensory nerve cells called neurons.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Consciousness is the state or quality of awareness, or, of being aware of an external object or something within oneself.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Mindfulness is the psychological process of bringing one's attention to the internal and external experiences occurring in the present moment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Behavioral psychology is the scientific study of observable behavior, and its explanation by principles of learning.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Psychiatry is the branch of medicine focused on the diagnosis, treatment, and prevention of mental, emotional, and behavioral disorders.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Psychotherapy is the use of psychological methods, particularly when based on regular personal interaction with adults, to help a person change behavior and overcome problems in desired ways.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Food refers to any nutritious substance that people or animals eat or drink to maintain life and growth.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Cuisine is a style or method of cooking, especially as characteristic of a particular country, region, or establishment.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Ingredient is any of the foods or substances that are combined to make a particular dish.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Recipe is a set of instructions for preparing a particular dish, including a list of the ingredients required.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence("Flavor is the distinctive taste of a food or drink.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Spicy refers to a food that has a strong, hot, or pungent flavor.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sour refers to a taste that is sharp, tart, or acidic.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Sweet refers to a taste that is sugary or containing a lot of sugar.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Salty refers to a taste that is similar to that of salt or contains a lot of salt.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Bitter refers to a taste that is sharp, acrid, or unpleasant.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Umami is a taste sensation that is meaty or savory and is produced by several amino acids and nucleotides.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Texture refers to the feel, appearance, or consistency of a food or substance.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Crunchy refers to a food that is firm and makes a crisp, sharp sound when bitten or crushed.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Smooth refers to a food that is soft and has no lumps or roughness.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Juicy refers to a food that contains a lot of juice and is therefore moist and tender.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Tender refers to a food that is easy to cut or chew because it is soft or well-cooked.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fresh refers to a food that is recently made or harvested and therefore has not been preserved.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Organic refers to a food that has been grown or produced without the use of synthetic chemicals, such as pesticides or fertilizers.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Local refers to a food that is produced or grown in a particular region and is therefore not transported long distances.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Seasonal refers to a food that is available and harvested during a particular season of the year.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Exotic refers to a food that is foreign or not native to a particular region or country.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Traditional refers to a food or dish that is typical or characteristic of a particular culture, region, or country.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Fusion refers to a style of cooking or cuisine that combines elements of different culinary traditions.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Gourmet refers to high-quality, fancy, or exotic food that is prepared and presented in an elaborate or refined manner.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Buffet is a meal where guests serve themselves from a variety of dishes set out on a table or sideboard.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Appetizer is a small dish of food or a drink taken before a meal or the main course to stimulate one's appetite.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Main course is the primary or most substantial dish in a meal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Dessert is a sweet course or dish, typically served at the end of a meal.",
        "KURDISH_KURDISH_KURDISH");
    await insertSentence(
        "Beverage is a drink other than water, such as tea, coffee, juice, or soda.",
        "KURDISH_KURDISH_KURDISH");
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    await fetchSentences();
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
