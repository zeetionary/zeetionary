import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DictionaryScreenEnglish extends StatefulWidget {
  const DictionaryScreenEnglish({super.key});

  @override
  State<DictionaryScreenEnglish> createState() =>
      _DictionaryScreenEnglishState();
}

class _DictionaryScreenEnglishState extends State<DictionaryScreenEnglish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsEnglish = [
    // "dopsum",
    "a",
    "aback",
    "abacus",
    "abandon",
    "abandoned",
    "abandonment",
    "abashed",
    "abate",
    "abatement",
    "abattoir",
    "abbess",
    "abbey",
    "abbot",
    "abbreviate",
    "abbreviation",
    "abdicate",
    "abdication",
    "abdomen",
    "abdominal",
    "abduct",
    "abduction",
    "aberration",
    "abet",
    "abhor",
    "abhorrence",
    "abhorrent",
    "abide",
    "abiding",
    "ability",
    "abject",
    "abjectly",
    "ablaze",
    "able",
    "able-bodied",
    "abnormal",
    "abnormality",
    "abnormally",
    "aboard",
    "abode",
    "abolish",
    "abolition",
    "abominable",
    "abominably",
    "aboriginal",
    "aborigine",
    "abort",
    "abortion",
    "abortive",
    "abound",
    "abound in",
    "abound with",
    "about",
    "about turn",
    "above",
    "the above",
    "above all",
    "above/below the fold",
    "above/beyond suspicion",
    "above yourself",
    "abrasion",
    "abrasive",
    "abreast",
    "abridge",
    "abridgement",
    "abroad",
    "abrupt",
    "abruptly",
    "abruptness",
    "abscess",
    "abscond",
    "abseil",
    "absence",
    "absent",
    "absentee",
    "absent-minded",
    "absolute",
    "absolutely",
    "absolute majority",
    "absolute zero",
    "absolve",
    "absorb",
    "absorbent",
    "absorption",
    "abstain",
    "abstemious",
    "abstention",
    "abstinence",
    "abstract",
    "absurd",
    "absurdity",
    "absurdly",
    "abundance",
    "abundant",
    "abundantly",
    "abuse",
    "abusive",
    "abysmal",
    "abysmally",
    "abyss",
    "academic",
    "academically",
    "academy",
    "accede",
    "accelerate",
    "acceleration",
    "accelerator",
    "accent",
    "accentuate",
    "accept",
    "acceptable",
    "acceptance",
    "access",
    "accessible",
    "accession",
    "accessory",
    "accident",
    "accidental",
    "accidentally",
    "acclaim",
    "acclimatize",
    "accolade",
    "accommodate",
    "accommodating",
    "accommodation",
    "accompaniment",
    "accompanist",
    "accompany",
    "accomplice",
    "accomplish",
    "accomplished",
    "accomplishment",
    "accord",
    "accordingly",
    "according to",
    "accordion",
    "accost",
    "account",
    "account for",
    "accountable",
    "accountancy",
    "accountant",
    "accredited",
    "accreditation",
    "accrue",
    "accumulate",
    "accumulation",
    "accuracy",
    "accurate",
    "accurately",
    "accusation",
    "accuse",
    "the accused",
    "accuser",
    "accustom to",
    "accustomed",
    "ace",
    "ache",
    "achieve",
    "achievement",
    "Achilles' heel",
    "acid",
    "acid rain",
    "acid test",
    "acknowledge",
    "acknowledgement",
    "acne",
    "acorn",
    "acoustic",
    "acoustics",
    "acquaint",
    "acquaintance",
    "acquainted",
    "acquiesce",
    "acquiescence",
    "acquire",
    "acquisition",
    "acquisitive",
    "acquit",
    "acquittal",
    "acre",
    "acreage",
    "acrid",
    "acrimonious",
    "acrimony",
    "acrobat",
    "acrobatic",
    "acrobatics",
    "acronym",
    "across",
    "acrylic",
    "act",
    "action",
    "activate",
    "active",
    "actively",
    "activist",
    "activity",
    "actor",
    "actress",
    "actual",
    "actually",
    "acumen",
    "acupuncture",
    "acute",
    "acute accent",
    "acute angle",
    "acutely",
    "acuteness",
    "ad",
    "adamant",
    "Adam's apple",
    "adapt",
    "adaptable",
    "adaptation",
    "adaptor",
    "add",
    "adder",
    "addict",
    "addicted",
    "addiction",
    "addictive",
    "addition",
    "additional",
    "additionally",
    "additive",
    "address",
    "adept",
    "adequate",
    "adequately",
    "adhere",
    "adhere to",
    "adherence",
    "adherent",
    "adhesion",
    "adhesive",
    "ad hoc",
    "adjacent",
    "adjectival",
    "adjective",
    "adjoin",
    "adjourn",
    "adjournment",
    "adjudicate",
    "adjudication",
    "adjudicator",
    "adjunct",
    "adjust",
    "adjustable",
    "adjustment",
    "ad lib",
    "administer",
    "administration",
    "administrative",
    "administrator",
    "admirable",
    "admirably",
    "admiral",
    "admiration",
    "admire",
    "admirer",
    "admiring",
    "admissible",
    "admission",
    "admit",
    "admittance",
    "admittedly",
    "admonish",
    "ad nauseam",
    "adolescence",
    "adolescent",
    "adopt",
    "adoption",
    "adoptive",
    "adorable",
    "adoration",
    "adore",
    "adorn",
    "adornment",
    "adrenaline",
    "adrift",
    "adulation",
    "adult",
    "adulterate",
    "adulterer",
    "adulterous",
    "adultery",
    "adulthood",
    "advance",
    "advanced",
    "advancement",
    "advantage",
    "advantageous",
    "advent",
    "adventure",
    "adventurer",
    "adventurous",
    "adverb",
    "adverbial",
    "adversary",
    "adverse",
    "adversely",
    "adversity",
    "advert",
    "advertise",
    "advertisement",
    "advertiser",
    "advertising",
    "advice",
    "advisable",
    "advise",
    "adviser",
    "advisory",
    "advocate",
    "aerial",
    "aerobatics",
    "aerobics",
    "aerodynamic",
    "aerodynamics",
    "aeronautics",
    "aeroplane",
    "aerosol",
    "aerospace",
    "aesthetic",
    "aesthetically",
    "affable",
    "affably",
    "affair",
    "affect",
    "affectation",
    "affected",
    "affection",
    "affectionate",
    "affectionately",
    "affidavit",
    "affiliate",
    "affiliation",
    "affinity",
    "affirm",
    "affirmation",
    "affirmative",
    "affix",
    "afflict",
    "affliction",
    "affluence",
    "affluent",
    "afford",
    "affront",
    "afloat",
    "afoot",
    "aforementioned",
    "afraid",
    "afresh",
    "after",
    "aftereffect",
    "aftermath",
    "afternoon",
    "afterthought",
    "afterwards",
    "again",
    "against",
    "age",
    "aged",
    "age group",
    "ageing",
    "ageism",
    "ageist",
    "age limit",
    "agency",
    "agenda",
    "agent",
    "age-old",
    "aggravate",
    "aggravation",
    "aggregate",
    "aggression",
    "aggressive",
    "aggressively",
    "aggressiveness",
    "aggressor",
    "aggrieved",
    "aghast",
    "agile",
    "agility",
    "aging",
    "agitate",
    "agitation",
    "agitator",
    "aglow",
    "AGM",
    "agnostic",
    "agonized",
    "agonizing",
    "agony",
    "agony aunt",
    "agoraphobia",
    "agoraphobic",
    "agrarian",
    "agree",
    "agreeable",
    "agreeably",
    "agreement",
    "agricultural",
    "agriculture",
    "agritourism",
    "agrochemical",
    "agronomist",
    "agronomy",
    "aground",
    "ahead",
    "ahead of",
    "AI",
    "aid",
    "aide",
    "AIDS",
    "ailing",
    "ailment",
    "aim",
    "aimless",
    "aimlessly",
    "ain't",
    "air",
    "airbag",
    "airborne",
    "air-conditioned",
    "air conditioner",
    "aircraft",
    "aircraft carrier",
    "airfield",
    "air force",
    "air hostess",
    "airily",
    "airing",
    "airing cupboard",
    "airless",
    "airlift",
    "airline",
    "airliner",
    "airmail",
    "air marshal",
    "airplane",
    "airport",
    "air raid",
    "airship",
    "airspace",
    "airstrip",
    "air terminal",
    "airtight",
    "air-to-air",
    "air traffic controller",
    "airway",
    "airworthy",
    "airy",
    "aisle",
    "ajar",
    "akin",
    "à la carte",
    "alacrity",
    "alarm",
    "alarm clock",
    "alarming",
    "alas",
    "albatross",
    "albeit",
    "albino",
    "album",
    "alcohol",
    "alcoholic",
    "alcoholism",
    "alcove",
    "ale",
    "alert",
    "algae",
    "algebra",
    "algorithm",
    "alias",
    "alibi",
    "alien",
    "alienate",
    "alienation",
    "alight",
    "align",
    "alignment",
    "alike",
    "alimentary canal",
    "alimony",
    "alive",
    "alkali",
    "all",
    "all-clear",
    "all-in",
    "all-out",
    "all-rounder",
    "Allah",
    "allay",
    "allegation",
    "allege",
    "alleged",
    "allegedly",
    "allegiance",
    "allegorical",
    "allegory",
    "alleluia",
    "allergic",
    "allergy",
    "alleviate",
    "alleviation",
    "alley",
    "alliance",
    "allied",
    "alligator",
    "alliteration",
    "allocate",
    "allocation",
    "allot",
    "allotment",
    "allow",
    "allowable",
    "allowance",
    "alloy",
    "all right",
    "allude to",
    "alluring",
    "allusion",
    "ally",
    "almanac",
    "almighty",
    "almond",
    "almost",
    "alms",
    "aloft",
    "alone",
    "along",
    "alongside",
    "aloof",
    "aloofness",
    "aloud",
    "alphabet",
    "alphabetical",
    "alphabetically",
    "already",
    "alright",
    "Alsatian",
    "also",
    "altar",
    "alteration",
    "alternate",
    "alternately",
    "alternating current",
    "alternation",
    "alternative",
    "alternatively",
    "alternator",
    "although",
    "altitude",
    "alto",
    "altogether",
    "altruism",
    "altruistic",
    "aluminium",
    "always",
    "Alzheimer's disease",
    "am",
    "a.m.",
    "AM",
    "amalgamate",
    "amalgamation",
    "amass",
    "amateur",
    "amateurish",
    "amaze",
    "amazement",
    "amazing",
    "ambassador",
    "amber",
    "ambidextrous",
    "ambiguity",
    "ambiguous",
    "ambition",
    "ambitious",
    "ambivalence",
    "ambivalent",
    "amble",
    "ambulance",
    "ambush",
    "ameba",
    "amen",
    "amenable",
    "amend",
    "amendment",
    "amenity",
    "American",
    "American football",
    "amethyst",
    "amiable",
    "amiably",
    "amicable",
    "amicably",
    "amid",
    "amidst",
    "amiss",
    "ammonia",
    "ammunition",
    "amnesia",
    "amnesty",
    "amniocentesis",
    "amoeba",
    "amok",
    "among",
    "amongst",
    "amorous",
    "amorously",
    "amount",
    "amp",
    "amp up",
    "ampersand",
    "amphetamine",
    "amphibian",
    "amphibious",
    "amphitheatre",
    "ample",
    "amplify",
    "amplification",
    "amplifier",
    "amplitude",
    "amply",
    "amputate",
    "amputation",
    "amulet",
    "amuse",
    "amusement",
    "amusing",
    "an",
    "anachronism",
    "anaemia",
    "anaemic",
    "anaerobic",
    "anaesthesia",
    "anaesthetic",
    "anaesthetist",
    "anaesthetize",
    "anagram",
    "analgesic",
    "analog",
    "analogue",
    "analogy",
    "analogous",
    "analyse",
    "analysis",
    "analyst",
    "analytic",
    "analytical",
    "analyze",
    "anarchy",
    "anarchist",
    "anatomical",
    "anatomy",
    "ancestor",
    "ancestral",
    "ancestry",
    "anchor",
    "anchorage",
    "anchovy",
    "ancient",
    "ancillary",
    "and",
    "anecdote",
    "anemia",
    "anemic",
    "anemone",
    "anesthesia",
    "anesthetic",
    "anesthetist",
    "anesthetize",
    "anew",
    "angel",
    "angelic",
    "anger",
    "angina",
    "angle",
    "angler",
    "angling",
    "anglicize",
    "Anglo-",
    "angrily",
    "angry",
    "angst",
    "anguish",
    "anguished",
    "angular",
    "animal",
    "animate",
    "animated",
    "animation",
    "animatronics",
    "animosity",
    "ankle",
    "annals",
    "annex",
    "annexation",
    "annexe",
    "annihilate",
    "annihilation",
    "anniversary",
    "annotate",
    "annotation",
    "announce",
    "announcement",
    "announcer",
    "annoy",
    "annoyance",
    "annual",
    "annually",
    "annuity",
    "annul",
    "annulment",
    "anode",
    "anoint",
    "anomaly",
    "anomalous",
    "anon",
    "anon.",
    "anonymity",
    "anonymous",
    "anorak",
    "anorexia",
    "anorexia nervosa",
    "anorexic",
    "another",
    "answer",
    "answerable",
    "ant",
    "antagonism",
    "antagonist",
    "antagonistic",
    "antagonize",
    "Antarctic",
    "the Antarctic Circle",
    "antecedent",
    "antediluvian",
    "antelope",
    "antenatal",
    "antenna",
    "anthem",
    "anthology",
    "anthrax",
    "anthropologist",
    "anthropology",
    "anti",
    "anti-",
    "antibiotic",
    "antibody",
    "anticipate",
    "anticipation",
    "anticlimax",
    "anticlockwise",
    "antic",
    "anticyclone",
    "antidepressant",
    "antidote",
    "antifreeze",
    "antihistamine",
    "antiperspirant",
    "antiquated",
    "antique",
    "antiquity",
    "antiretroviral",
    "antiseptic",
    "antisocial",
    "antithesis",
    "antler",
    "antonym",
    "anus",
    "anvil",
    "anxiety",
    "anxious",
    "anxiously",
    "any",
    "anybody",
    "anyhow",
    "anyone",
    "anyplace",
    "anything",
    "anyway",
    "anywhere",
    "aorta",
    "apart",
    "apart from",
    "apartheid",
    "apartment",
    "apathetic",
    "apathy",
    "ape",
    "aperitif",
    "aperture",
    "apex",
    "aphid",
    "apiece",
    "aplomb",
    "apologetic",
    "apologetically",
    "apologize",
    "apology",
    "apostle",
    "apostrophe",
    "appal",
    "appalling",
    "apparatus",
    "apparent",
    "apparently",
    "apparition",
    "appeal",
    "appealing",
    "appear",
    "appearance",
    "appease",
    "appeasement",
    "append",
    "appendage",
    "appendicitis",
    "appendix",
    "appetite",
    "appetizer",
    "appetizing",
    "applaud",
    "applause",
    "apple",
    "applet",
    "appliance",
    "applicable",
    "applicant",
    "application",
    "applied",
    "apply",
    "appoint",
    "appointment",
    "appraise",
    "appraisal",
    "appreciable",
    "appreciably",
    "appreciate",
    "appreciation",
    "appreciative",
    "apprehend",
    "apprehension",
    "apprehensive",
    "apprentice",
    "apprenticeship",
    "approach",
    "approachable",
    "appropriate",
    "appropriately",
    "appropriation",
    "approval",
    "approve",
    "approvingly",
    "approximate",
    "approximately",
    "approximation",
    "apricot",
    "April",
    "apron",
    "apt",
    "aptitude",
    "aptly",
    "aptness",
    "aqualung",
    "aquamarine",
    "aquarium",
    "aquatic",
    "aqueduct",
    "Arabic",
    "Arabic numeral",
    "arable",
    "arbitrage",
    "arbitrageur",
    "arbitrarily",
    "arbitrary",
    "arbitrate",
    "arbitration",
    "arbitrator",
    "arc",
    "arcade",
    "arch",
    "arch-",
    "archaeological",
    "archaeologist",
    "archaeology",
    "archeological",
    "archeologist",
    "archeology",
    "archaic",
    "archbishop",
    "archer",
    "archery",
    "archipelago",
    "architect",
    "architecture",
    "architectural",
    "archive",
    "Arctic",
    "the Arctic Circle",
    "ardent",
    "ardently",
    "arduous",
    "arduously",
    "are",
    "area",
    "arena",
    "aren't",
    "arguable",
    "arguably",
    "argue",
    "argument",
    "argumentative",
    "aria",
    "arid",
    "arise",
    "aristocracy",
    "aristocrat",
    "aristocratic",
    "arithmetic",
    "arithmetical",
    "ark",
    "arm",
    "armada",
    "armadillo",
    "armament",
    "armchair",
    "armed forces",
    "armistice",
    "armpit",
    "armor",
    "armored",
    "armory",
    "armour",
    "armoured",
    "armoury",
    "arms",
    "army",
    "arnica",
    "aroma",
    "aromatherapist",
    "aromatherapy",
    "aromatic",
    "around",
    "arouse",
    "arraign",
    "arraignment",
    "arrange",
    "arrangement",
    "array",
    "arrears",
    "arrest",
    "arrival",
    "arrive",
    "arrogance",
    "arrogant",
    "arrogantly",
    "arrow",
    "arse",
    "arsenal",
    "arsenic",
    "arson",
    "art",
    "art gallery",
    "artefact",
    "artery",
    "arterial",
    "artful",
    "artfully",
    "arthritic",
    "arthritis",
    "artichoke",
    "article",
    "articulate",
    "articulated",
    "articulately",
    "articulation",
    "artifact",
    "artificial",
    "artificial intelligence",
    "artificial respiration",
    "artificially",
    "artillery",
    "artisan",
    "artist",
    "artiste",
    "artistic",
    "artistically",
    "artistry",
    "arty",
    "arugula",
    "as",
    "asbestos",
    "ascend",
    "ascendancy",
    "ascendant",
    "ascent",
    "ascertain",
    "ASCII",
    "ascribe to",
    "aseptic",
    "asexual",
    "ash",
    "ashtray",
    "ashamed",
    "ashore",
    "aside",
    "ask",
    "askew",
    "asking price",
    "asleep",
    "asp",
    "asparagus",
    "aspect",
    "aspersion",
    "asphalt",
    "asphyxiate",
    "asphyxiation",
    "aspirate",
    "aspiration",
    "aspire",
    "aspirin",
    "ass",
    "assailant",
    "assassin",
    "assassinate",
    "assassination",
    "assault",
    "assault course",
    "assemble",
    "assembly",
    "assembly line",
    "assent",
    "assert",
    "assertion",
    "assertive",
    "assess",
    "assessment",
    "assessor",
    "asset",
    "asset-stripping",
    "assign",
    "assignment",
    "assimilate",
    "assimilation",
    "assist",
    "assistance",
    "assistant",
    "associate",
    "association",
    "assorted",
    "assortment",
    "assume",
    "assumption",
    "assurance",
    "assure",
    "assured",
    "asterisk",
    "asteroid",
    "asthma",
    "asthmatic",
    "astonish",
    "astonishing",
    "astonishment",
    "astound",
    "astral",
    "astride",
    "astrologer",
    "astrological",
    "astrology",
    "astronaut",
    "astronomy",
    "astronomer",
    "astronomical",
    "astute",
    "astutely",
    "astuteness",
    "asylum",
    "asylum seeker",
    "at",
    "atheism",
    "atheist",
    "athlete",
    "athletic",
    "athletics",
    "atlas",
    "ATM",
    "atmosphere",
    "atmospheric",
    "atoll",
    "atom",
    "atomic",
    "atomic bomb",
    "atrocious",
    "atrociously",
    "atrocity",
    "attach",
    "attaché",
    "attaché case",
    "attached",
    "attachment",
    "attack",
    "attacker",
    "attain",
    "attainable",
    "attainment",
    "attempt",
    "attend",
    "attendance",
    "attendant",
    "attention",
    "attentive",
    "attentively",
    "attest",
    "attic",
    "attitude",
    "attn",
    "attorney",
    "attract",
    "attraction",
    "attractive",
    "attribute",
    "attributive",
    "aubergine",
    "auburn",
    "auction",
    "auctioneer",
    "audacious",
    "audaciously",
    "audacity",
    "audible",
    "audibly",
    "audience",
    "audio",
    "audiovisual",
    "audit",
    "audition",
    "auditor",
    "auditorium",
    "augment",
    "augur",
    "august",
    "August",
    "aunt",
    "auntie",
    "aunty",
    "au pair",
    "aura",
    "aural",
    "auspicious",
    "auspiciously",
    "austere",
    "austerely",
    "austerity",
    "authentic",
    "authentically",
    "authenticate",
    "authentication",
    "authenticity",
    "author",
    "authoritative",
    "authoritatively",
    "authorship",
    "authority",
    "authorization",
    "authorize",
    "autobiographical",
    "autobiography",
    "autocrat",
    "autocratic",
    "autograph",
    "automate",
    "automatic",
    "automation",
    "automobile",
    "autonomous",
    "autonomy",
    "autopsy",
    "autumn",
    "autumnal",
    "auxiliary",
    "availability",
    "available",
    "avalanche",
    "avarice",
    "avaricious",
    "avatar",
    "avenge",
    "avenue",
    "average",
    "averse",
    "aversion",
    "avert",
    "avian",
    "avian flu",
    "aviary",
    "aviation",
    "avid",
    "avidly",
    "avocado",
    "avoid",
    "avoidable",
    "avoidance",
    "avow",
    "awake",
    "awaken",
    "awakening",
    "award",
    "aware",
    "awareness",
    "away",
    "awayday",
    "awe",
    "awe-inspiring",
    "awesome",
    "awful",
    "awfully",
    "awhile",
    "awkward",
    "awkwardly",
    "awkwardness",
    "awning",
    "awoke",
    "awoken",
    "ax",
    "axe",
    "axiom",
    "axiomatic",
    "axis",
    "axle",
    "aye",
    "azure",
    "b",
    "b.",
    "babble",
    "baboon",
    "baby",
    "babyish",
    "babysit",
    "babysitter",
    "bachelor",
    "back",
    "backache",
    "backbencher",
    "backbiting",
    "backbone",
    "back-breaking",
    "backdate",
    "backer",
    "backfire",
    "backgammon",
    "background",
    "backhand",
    "backhanded",
    "backing",
    "backlash",
    "backless",
    "backlog",
    "back number",
    "backpack",
    "backside",
    "backslash",
    "backstage",
    "backstroke",
    "backup",
    "backward",
    "backwards",
    "backwater",
    "bacon",
    "bacteria",
    "bacterial",
    "bad",
    "bad debt",
    "baddy",
    "bad language",
    "badly",
    "badness",
    "badge",
    "badger",
    "badminton",
    "bad-tempered",
    "baffle",
    "bag",
    "baggage",
    "baggy",
    "bagpipes",
    // "bail",
    // "bailiff",
    // "bait",
    // "bake",
    // "baker",
    // "bakery",
    // "baking powder",
    // "balance",
    // "balance sheet",
    // "balcony",
    // "bald",
    // "balding",
    // "baldly",
    // "baldness",
    // "bale",
    // "balk",
    // "ball",
    // "ball game",
    // "ballad",
    // "ballast",
    // "ballerina",
    // "ballet",
    // "ballpoint",
    // "ballroom",
    // "ballistic",
    // "ballistic missile",
    // "ballistics",
    // "balloon",
    // "ballot",
    // "ballot box",
    // "balm",
    // "balmy",
    // "balsa",
    // "balsamic vinegar",
    // "balti",
    // "balustrade",
    // "bamboo",
    // "ban",
    // "banal",
    // "banana",
    // "band",
    // "Band Aid",
    // "bandstand",
    // "bandwagon",
    // "bandage",
    // "bandage",
    // "bandit",
    // "bandwidth",
    // "bandy",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    // "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM",
    "come of age",
    "contralto",
    "far afield",
    "from afar",
    "globe artichoke",
    "go astray",
    "lead astray",
    "make amends",
    "not come/go amiss",
    "take something amiss",
    "under age",
  ];

  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allWordsEnglish);
  }

  // void filterWords(String query) {
  //   setState(() {
  //     filteredWords = allWordsEnglish
  //         .where((word) => word.toLowerCase().contains(query.toLowerCase()))
  //         .toList();
  //   });
  // }

  void filterWords(String query) {
    setState(() {
      if (query.isEmpty) {
        // If the query is empty, show all words
        filteredWords = List.from(allWordsEnglish);
      } else {
        // Sort words to prioritize exact matches first
        filteredWords = allWordsEnglish
            .where((word) => word.toLowerCase().contains(query.toLowerCase()))
            .toList();

        filteredWords.sort((a, b) {
          bool exactMatchA = a.toLowerCase() == query.toLowerCase();
          bool exactMatchB = b.toLowerCase() == query.toLowerCase();

          if (exactMatchA && !exactMatchB) {
            return -1; // A is an exact match, so it comes first.
          } else if (!exactMatchA && exactMatchB) {
            return 1; // B is an exact match, so it comes first.
          } else {
            // If both are exact matches or neither are, sort them based on lexicographic order.
            return a.toLowerCase().compareTo(b.toLowerCase());
          }
        });
      }
    });
  }

  void clearSearch() {
    _searchController.clear();
    filterWords("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: _searchController,
                  onChanged: filterWords,
                  decoration: InputDecoration(
                    labelText: "Search here",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: clearSearch,
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Directionality(
              textDirection:
                  TextDirection.ltr, // Set the text direction to right-to-left
              child: EnglishDictionary(
                words: filteredWords,
                onTapWord: (wordsEnglish) {
                  if (wordsEnglish == "dopsum") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aback");
                  }
                  if (wordsEnglish == "dopsum") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aback");
                  }
                  if (wordsEnglish == "a") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-a");
                  }
                  if (wordsEnglish == "aback") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aback");
                  }
                  if (wordsEnglish == "abacus") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abacus");
                  }
                  if (wordsEnglish == "abandon") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abandon");
                  }
                  if (wordsEnglish == "abandoned") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abandoned");
                  }
                  if (wordsEnglish == "abandonment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abandonment");
                  }
                  if (wordsEnglish == "abashed") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abashed");
                  }
                  if (wordsEnglish == "abate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abate");
                  }
                  if (wordsEnglish == "abatement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abatement");
                  }
                  if (wordsEnglish == "abattoir") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abattoir");
                  }
                  if (wordsEnglish == "abbess") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abbess");
                  }
                  if (wordsEnglish == "abbey") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abbey");
                  }
                  if (wordsEnglish == "abbot") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abbot");
                  }
                  if (wordsEnglish == "abbreviate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abbreviate");
                  }
                  if (wordsEnglish == "abbreviation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abbreviation");
                  }
                  if (wordsEnglish == "abdicate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abdicate");
                  }
                  if (wordsEnglish == "abdication") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abdication");
                  }
                  if (wordsEnglish == "abdomen") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abdomen");
                  }
                  if (wordsEnglish == "abdominal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abdominal");
                  }
                  if (wordsEnglish == "abduct") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abduct");
                  }
                  if (wordsEnglish == "abduction") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abduction");
                  }
                  if (wordsEnglish == "aberration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aberration");
                  }
                  if (wordsEnglish == "abet") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abet");
                  }
                  if (wordsEnglish == "abhor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aback");
                  }
                  if (wordsEnglish == "abhorrence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abhorrence");
                  }
                  if (wordsEnglish == "abhorrent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abhorrent");
                  }
                  if (wordsEnglish == "abide") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abide");
                  }
                  if (wordsEnglish == "abiding") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abiding");
                  }
                  if (wordsEnglish == "ability") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ability");
                  }
                  if (wordsEnglish == "abject") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abject");
                  }
                  if (wordsEnglish == "abjectly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abjectly");
                  }
                  if (wordsEnglish == "ablaze") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ablaze");
                  }
                  if (wordsEnglish == "able") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-able");
                  }
                  if (wordsEnglish == "able-bodied") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-able-bodied");
                  }
                  if (wordsEnglish == "abnormal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abnormal");
                  }
                  if (wordsEnglish == "abnormality") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abnormality");
                  }
                  if (wordsEnglish == "abnormally") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abnormally");
                  }
                  if (wordsEnglish == "aboard") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aboard");
                  }
                  if (wordsEnglish == "abode") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abode");
                  }
                  if (wordsEnglish == "abolish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abolish");
                  }
                  if (wordsEnglish == "abolition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abolition");
                  }
                  if (wordsEnglish == "abominable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abominable");
                  }
                  if (wordsEnglish == "abominably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abominably");
                  }
                  if (wordsEnglish == "aboriginal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aboriginal");
                  }
                  if (wordsEnglish == "aborigine") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aborigine");
                  }
                  if (wordsEnglish == "abort") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abort");
                  }
                  if (wordsEnglish == "abortion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abortion");
                  }
                  if (wordsEnglish == "abortive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abortive");
                  }
                  if (wordsEnglish == "abound") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abound");
                  }
                  if (wordsEnglish == "abound in") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abound-in");
                  }
                  if (wordsEnglish == "abound with") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abound-with");
                  }
                  if (wordsEnglish == "about") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-about");
                  }
                  if (wordsEnglish == "about turn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-about-turn");
                  }
                  if (wordsEnglish == "above") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-above");
                  }
                  if (wordsEnglish == "the above") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-the-above");
                  }
                  if (wordsEnglish == "above all") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-above-all");
                  }
                  if (wordsEnglish == "above/below the fold") {
                    Routemaster.of(context)
                        .push("/english-above-below-the-fold");
                  }
                  if (wordsEnglish == "above/beyond suspicion") {
                    Routemaster.of(context)
                        .push("/english-above-beyond-suspicion");
                  }
                  if (wordsEnglish == "above yourself") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-above-yourself");
                  }
                  if (wordsEnglish == "abrasion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abrasion");
                  }
                  if (wordsEnglish == "abrasive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abrasive");
                  }
                  if (wordsEnglish == "abreast") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abreast");
                  }
                  if (wordsEnglish == "abridge") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abridge");
                  }
                  if (wordsEnglish == "abridgement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abridgement");
                  }
                  if (wordsEnglish == "abridge") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abridge");
                  }
                  if (wordsEnglish == "abroad") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abroad");
                  }
                  if (wordsEnglish == "abrupt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abrupt");
                  }
                  if (wordsEnglish == "abruptly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abruptly");
                  }
                  if (wordsEnglish == "abruptness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abruptness");
                  }
                  if (wordsEnglish == "abscess") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abscess");
                  }
                  if (wordsEnglish == "abscond") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abscond");
                  }
                  if (wordsEnglish == "abseil") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abseil");
                  }
                  if (wordsEnglish == "absence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absence");
                  }
                  if (wordsEnglish == "absent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absent");
                  }
                  if (wordsEnglish == "absentee") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absentee");
                  }
                  if (wordsEnglish == "absent-minded") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absent-minded");
                  }
                  if (wordsEnglish == "absolute") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absolute");
                  }
                  if (wordsEnglish == "absolutely") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absolutely");
                  }
                  if (wordsEnglish == "absolute majority") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absolute-majority");
                  }
                  if (wordsEnglish == "absolute zero") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absolute-zero");
                  }
                  if (wordsEnglish == "absolve") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absolve");
                  }
                  if (wordsEnglish == "absorb") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absorb");
                  }
                  if (wordsEnglish == "absorbent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absorbent");
                  }
                  if (wordsEnglish == "absorption") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absorption");
                  }
                  if (wordsEnglish == "abstain") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abstain");
                  }
                  if (wordsEnglish == "abstemious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abstemious");
                  }
                  if (wordsEnglish == "abstention") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abstention");
                  }
                  if (wordsEnglish == "abstinence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abstinence");
                  }
                  if (wordsEnglish == "abstract") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abstract");
                  }
                  if (wordsEnglish == "absurd") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absurd");
                  }
                  if (wordsEnglish == "absurdity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absurdity");
                  }
                  if (wordsEnglish == "absurdly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-absurdly");
                  }
                  if (wordsEnglish == "abundance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abundance");
                  }
                  if (wordsEnglish == "abundant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abundant");
                  }
                  if (wordsEnglish == "abundantly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abundantly");
                  }
                  if (wordsEnglish == "abuse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abuse");
                  }
                  if (wordsEnglish == "abusive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abusive");
                  }
                  if (wordsEnglish == "abysmal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abysmal");
                  }
                  if (wordsEnglish == "abysmally") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abysmally");
                  }
                  if (wordsEnglish == "abyss") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-abyss");
                  }
                  if (wordsEnglish == "academic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-academic");
                  }
                  if (wordsEnglish == "academically") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-academically");
                  }
                  if (wordsEnglish == "academy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-academy");
                  }
                  if (wordsEnglish == "accede") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accede");
                  }
                  if (wordsEnglish == "accelerate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accelerate");
                  }
                  if (wordsEnglish == "acceleration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acceleration");
                  }
                  if (wordsEnglish == "accelerator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accelerator");
                  }
                  if (wordsEnglish == "accent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accent");
                  }
                  if (wordsEnglish == "accentuate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accentuate");
                  }
                  if (wordsEnglish == "accept") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accept");
                  }
                  if (wordsEnglish == "acceptable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acceptable");
                  }
                  if (wordsEnglish == "acceptance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acceptance");
                  }
                  if (wordsEnglish == "access") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-access");
                  }
                  if (wordsEnglish == "accessible") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accessible");
                  }
                  if (wordsEnglish == "accession") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accession");
                  }
                  if (wordsEnglish == "accessory") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accessory");
                  }
                  if (wordsEnglish == "accident") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accident");
                  }
                  if (wordsEnglish == "accidental") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accidental");
                  }
                  if (wordsEnglish == "accidentally") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accidentally");
                  }
                  if (wordsEnglish == "acclaim") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acclaim");
                  }
                  if (wordsEnglish == "acclimatize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acclimatize");
                  }
                  if (wordsEnglish == "accolade") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accolade");
                  }
                  if (wordsEnglish == "accommodate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accommodate");
                  }
                  if (wordsEnglish == "accommodating") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accommodating");
                  }
                  if (wordsEnglish == "accommodation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accommodation");
                  }
                  if (wordsEnglish == "accompaniment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accompaniment");
                  }
                  if (wordsEnglish == "accompanist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accompanist");
                  }
                  if (wordsEnglish == "accompany") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accompany");
                  }
                  if (wordsEnglish == "accomplice") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accomplice");
                  }
                  if (wordsEnglish == "accomplish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accomplish");
                  }
                  if (wordsEnglish == "accomplished") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accomplished");
                  }
                  if (wordsEnglish == "accomplishment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accomplishment");
                  }
                  if (wordsEnglish == "accord") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accord");
                  }
                  if (wordsEnglish == "accordingly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accordingly");
                  }
                  if (wordsEnglish == "according to") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-according-to");
                  }
                  if (wordsEnglish == "accordion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accordion");
                  }
                  if (wordsEnglish == "accost") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accost");
                  }
                  if (wordsEnglish == "account") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-account");
                  }
                  if (wordsEnglish == "account for") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-account-for");
                  }
                  if (wordsEnglish == "accountable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accountable");
                  }
                  if (wordsEnglish == "accountancy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accountancy");
                  }
                  if (wordsEnglish == "accountant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accountant");
                  }
                  if (wordsEnglish == "accredited") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accredited");
                  }
                  if (wordsEnglish == "accreditation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accreditation");
                  }
                  if (wordsEnglish == "accrue") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accrue");
                  }
                  if (wordsEnglish == "accumulate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accumulate");
                  }
                  if (wordsEnglish == "accumulation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accumulation");
                  }
                  if (wordsEnglish == "accuracy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accuracy");
                  }
                  if (wordsEnglish == "accurate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accurate");
                  }
                  if (wordsEnglish == "accurately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accurately");
                  }
                  if (wordsEnglish == "accusation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accusation");
                  }
                  if (wordsEnglish == "accuse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accuse");
                  }
                  if (wordsEnglish == "the accused") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-the-accused");
                  }
                  if (wordsEnglish == "accuser") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accuser");
                  }
                  if (wordsEnglish == "accustom to") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accustom-to");
                  }
                  if (wordsEnglish == "accustomed") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-accustomed");
                  }
                  if (wordsEnglish == "ace") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ace");
                  }
                  if (wordsEnglish == "ache") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ache");
                  }
                  if (wordsEnglish == "achieve") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-achieve");
                  }
                  if (wordsEnglish == "achievement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-achievement");
                  }
                  if (wordsEnglish == "Achilles' heel") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-achilles-heel");
                  }
                  if (wordsEnglish == "acid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acid");
                  }
                  if (wordsEnglish == "acid rain") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acid-rain");
                  }
                  if (wordsEnglish == "acid test") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acid-test");
                  }
                  if (wordsEnglish == "acknowledge") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acknowledge");
                  }
                  if (wordsEnglish == "acknowledgement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acknowledgement");
                  }
                  if (wordsEnglish == "acne") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acne");
                  }
                  if (wordsEnglish == "acorn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acorn");
                  }
                  if (wordsEnglish == "acoustic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acoustic");
                  }
                  if (wordsEnglish == "acoustics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acoustics");
                  }
                  if (wordsEnglish == "acquaint") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquaint");
                  }
                  if (wordsEnglish == "acquaintance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquaintance");
                  }
                  if (wordsEnglish == "acquainted") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquainted");
                  }
                  if (wordsEnglish == "acquiesce") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquiesce");
                  }
                  if (wordsEnglish == "acquiescence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquiescence");
                  }
                  if (wordsEnglish == "acquire") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquire");
                  }
                  if (wordsEnglish == "acquisition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquisition");
                  }
                  if (wordsEnglish == "acquisitive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquisitive");
                  }
                  if (wordsEnglish == "acquit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquit");
                  }
                  if (wordsEnglish == "acquittal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acquittal");
                  }
                  if (wordsEnglish == "acre") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acre");
                  }
                  if (wordsEnglish == "acreage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acreage");
                  }
                  if (wordsEnglish == "acrid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrid");
                  }
                  if (wordsEnglish == "acrimonious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrimonious");
                  }
                  if (wordsEnglish == "acrimony") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrimony");
                  }
                  if (wordsEnglish == "acrobat") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrobat");
                  }
                  if (wordsEnglish == "acrobatic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrobatic");
                  }
                  if (wordsEnglish == "acrobatics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrobatics");
                  }
                  if (wordsEnglish == "acronym") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acronym");
                  }
                  if (wordsEnglish == "across") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-across");
                  }
                  if (wordsEnglish == "acrylic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acrylic");
                  }
                  if (wordsEnglish == "act") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-act");
                  }
                  if (wordsEnglish == "action") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-action");
                  }
                  if (wordsEnglish == "activate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-activate");
                  }
                  if (wordsEnglish == "active") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-active");
                  }
                  if (wordsEnglish == "actively") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-actively");
                  }
                  if (wordsEnglish == "activist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-activist");
                  }
                  if (wordsEnglish == "activity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-activity");
                  }
                  if (wordsEnglish == "actor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-actor");
                  }
                  if (wordsEnglish == "actress") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-actress");
                  }
                  if (wordsEnglish == "actual") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-actual");
                  }
                  if (wordsEnglish == "actually") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-actually");
                  }
                  if (wordsEnglish == "acumen") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acumen");
                  }
                  if (wordsEnglish == "acupuncture") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acupuncture");
                  }
                  if (wordsEnglish == "acute") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acute");
                  }
                  if (wordsEnglish == "acute accent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acute-accent");
                  }
                  if (wordsEnglish == "acute angle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acute-angle");
                  }
                  if (wordsEnglish == "acutely") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acutely");
                  }
                  if (wordsEnglish == "acuteness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-acuteness");
                  }
                  if (wordsEnglish == "ad") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ad");
                  }
                  if (wordsEnglish == "adamant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adamant");
                  }
                  if (wordsEnglish == "Adam's apple") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adams-apple");
                  }
                  if (wordsEnglish == "adapt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adapt");
                  }
                  if (wordsEnglish == "adaptable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adaptable");
                  }
                  if (wordsEnglish == "adaptation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adaptation");
                  }
                  if (wordsEnglish == "adaptor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adaptor");
                  }
                  if (wordsEnglish == "add") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-add");
                  }
                  if (wordsEnglish == "adder") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adder");
                  }
                  if (wordsEnglish == "addict") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-addict");
                  }
                  if (wordsEnglish == "addicted") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-addicted");
                  }
                  if (wordsEnglish == "addiction") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-addiction");
                  }
                  if (wordsEnglish == "addictive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-addictive");
                  }
                  if (wordsEnglish == "addition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-addition");
                  }
                  if (wordsEnglish == "additional") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-additional");
                  }
                  if (wordsEnglish == "additionally") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-additionally");
                  }
                  if (wordsEnglish == "additive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-additive");
                  }
                  if (wordsEnglish == "address") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-address");
                  }
                  if (wordsEnglish == "adept") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adept");
                  }
                  if (wordsEnglish == "adequate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adequate");
                  }
                  if (wordsEnglish == "adequately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adequately");
                  }
                  if (wordsEnglish == "adhere") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adhere");
                  }
                  if (wordsEnglish == "adhere to") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adhere-to");
                  }
                  if (wordsEnglish == "adherence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adherence");
                  }
                  if (wordsEnglish == "adherent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adherent");
                  }
                  if (wordsEnglish == "adhesion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adhesion");
                  }
                  if (wordsEnglish == "adhesive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adhesive");
                  }
                  if (wordsEnglish == "ad hoc") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ad-hoc");
                  }
                  if (wordsEnglish == "adjacent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjacent");
                  }
                  if (wordsEnglish == "adjectival") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjectival");
                  }
                  if (wordsEnglish == "adjective") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjective");
                  }
                  if (wordsEnglish == "adjoin") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjoin");
                  }
                  if (wordsEnglish == "adjourn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjourn");
                  }
                  if (wordsEnglish == "adjournment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjournment");
                  }
                  if (wordsEnglish == "adjudicate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjudicate");
                  }
                  if (wordsEnglish == "adjudication") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjudication");
                  }
                  if (wordsEnglish == "adjudicator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjudicator");
                  }
                  if (wordsEnglish == "adjunct") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjunct");
                  }
                  if (wordsEnglish == "adjust") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjust");
                  }
                  if (wordsEnglish == "adjustable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjustable");
                  }
                  if (wordsEnglish == "adjustment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adjustment");
                  }
                  if (wordsEnglish == "ad lib") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ad-lib");
                  }
                  if (wordsEnglish == "administer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-administer");
                  }
                  if (wordsEnglish == "administration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-administration");
                  }
                  if (wordsEnglish == "administrative") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-administrative");
                  }
                  if (wordsEnglish == "administrator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-administrator");
                  }
                  if (wordsEnglish == "admirable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admirable");
                  }
                  if (wordsEnglish == "admirably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admirably");
                  }
                  if (wordsEnglish == "admiral") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admiral");
                  }
                  if (wordsEnglish == "admiration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admiration");
                  }
                  if (wordsEnglish == "admire") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admire");
                  }
                  if (wordsEnglish == "admirer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admirer");
                  }
                  if (wordsEnglish == "admiring") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admiring");
                  }
                  if (wordsEnglish == "admissible") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admissible");
                  }
                  if (wordsEnglish == "admission") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admission");
                  }
                  if (wordsEnglish == "admit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admit");
                  }
                  if (wordsEnglish == "admittance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admittance");
                  }
                  if (wordsEnglish == "admittedly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admittedly");
                  }
                  if (wordsEnglish == "admonish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-admonish");
                  }
                  if (wordsEnglish == "ad nauseam") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ad-nauseam");
                  }
                  if (wordsEnglish == "adolescence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adolescence");
                  }
                  if (wordsEnglish == "adolescent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adolescent");
                  }
                  if (wordsEnglish == "adopt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adopt");
                  }
                  if (wordsEnglish == "adoption") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adoption");
                  }
                  if (wordsEnglish == "adoptive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adoptive");
                  }
                  if (wordsEnglish == "adorable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adorable");
                  }
                  if (wordsEnglish == "adoration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adoration");
                  }
                  if (wordsEnglish == "adore") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adore");
                  }
                  if (wordsEnglish == "adorn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adorn");
                  }
                  if (wordsEnglish == "adornment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adornment");
                  }
                  if (wordsEnglish == "adrenaline") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adrenaline");
                  }
                  if (wordsEnglish == "adrift") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adrift");
                  }
                  if (wordsEnglish == "adult") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adult");
                  }
                  if (wordsEnglish == "adulation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adulation");
                  }
                  if (wordsEnglish == "adulterate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adulterate");
                  }
                  if (wordsEnglish == "adulterer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adulterer");
                  }
                  if (wordsEnglish == "adulterous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adulterous");
                  }
                  if (wordsEnglish == "adultery") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adultery");
                  }
                  if (wordsEnglish == "adulthood") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adulthood");
                  }
                  if (wordsEnglish == "advance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advance");
                  }
                  if (wordsEnglish == "advanced") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advanced");
                  }
                  if (wordsEnglish == "advancement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advancement");
                  }
                  if (wordsEnglish == "advantage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advantage");
                  }
                  if (wordsEnglish == "advantageous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advantageous");
                  }
                  if (wordsEnglish == "advent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advent");
                  }
                  if (wordsEnglish == "adventure") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adventure");
                  }
                  if (wordsEnglish == "adventurer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adventurer");
                  }
                  if (wordsEnglish == "adventurous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adventurous");
                  }
                  if (wordsEnglish == "adverb") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adverb");
                  }
                  if (wordsEnglish == "adverbial") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adverbial");
                  }
                  if (wordsEnglish == "adversary") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adversary");
                  }
                  if (wordsEnglish == "adverse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adverse");
                  }
                  if (wordsEnglish == "adversely") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adversely");
                  }
                  if (wordsEnglish == "adversity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adversity");
                  }
                  if (wordsEnglish == "advert") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advert");
                  }
                  if (wordsEnglish == "advertise") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advertise");
                  }
                  if (wordsEnglish == "advertisement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advertisement");
                  }
                  if (wordsEnglish == "advertiser") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advertiser");
                  }
                  if (wordsEnglish == "advertising") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advertising");
                  }
                  if (wordsEnglish == "advice") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advice");
                  }
                  if (wordsEnglish == "advisable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advisable");
                  }
                  if (wordsEnglish == "advise") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advise");
                  }
                  if (wordsEnglish == "adviser") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-adviser");
                  }
                  if (wordsEnglish == "advisory") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advisory");
                  }
                  if (wordsEnglish == "advocate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-advocate");
                  }
                  if (wordsEnglish == "aerial") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerial");
                  }
                  if (wordsEnglish == "aerobatics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerobatics");
                  }
                  if (wordsEnglish == "aerobics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerobics");
                  }
                  if (wordsEnglish == "aerodynamic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerodynamic");
                  }
                  if (wordsEnglish == "aerodynamics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerodynamics");
                  }
                  if (wordsEnglish == "aeronautics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aeronautics");
                  }
                  if (wordsEnglish == "aeroplane") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aeroplane");
                  }
                  if (wordsEnglish == "aerosol") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerosol");
                  }
                  if (wordsEnglish == "aerospace") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aerospace");
                  }
                  if (wordsEnglish == "aesthetic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aesthetic");
                  }
                  if (wordsEnglish == "aesthetically") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aesthetically");
                  }
                  if (wordsEnglish == "affable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affable");
                  }
                  if (wordsEnglish == "affably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affably");
                  }
                  if (wordsEnglish == "affair") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affair");
                  }
                  if (wordsEnglish == "affect") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affect");
                  }
                  if (wordsEnglish == "affectation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affectation");
                  }
                  if (wordsEnglish == "affected") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affected");
                  }
                  if (wordsEnglish == "affection") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affection");
                  }
                  if (wordsEnglish == "affectionate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affectionate");
                  }
                  if (wordsEnglish == "affectionately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affectionately");
                  }
                  if (wordsEnglish == "affidavit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affidavit");
                  }
                  if (wordsEnglish == "affiliate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affiliate");
                  }
                  if (wordsEnglish == "affiliation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affiliation");
                  }
                  if (wordsEnglish == "affinity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affinity");
                  }
                  if (wordsEnglish == "affirm") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affirm");
                  }
                  if (wordsEnglish == "affirmation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affirmation");
                  }
                  if (wordsEnglish == "affirmative") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affirmative");
                  }
                  if (wordsEnglish == "affix") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affix");
                  }
                  if (wordsEnglish == "afflict") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afflict");
                  }
                  if (wordsEnglish == "affliction") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affliction");
                  }
                  if (wordsEnglish == "affluence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affluence");
                  }
                  if (wordsEnglish == "affluent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affluent");
                  }
                  if (wordsEnglish == "afford") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afford");
                  }
                  if (wordsEnglish == "affront") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-affront");
                  }
                  if (wordsEnglish == "afloat") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afloat");
                  }
                  if (wordsEnglish == "afoot") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afoot");
                  }
                  if (wordsEnglish == "aforementioned") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aforementioned");
                  }
                  if (wordsEnglish == "afraid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afraid");
                  }
                  if (wordsEnglish == "afresh") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afresh");
                  }
                  if (wordsEnglish == "after") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-after");
                  }
                  if (wordsEnglish == "aftereffect") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aftereffect");
                  }
                  if (wordsEnglish == "aftermath") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aftermath");
                  }
                  if (wordsEnglish == "afternoon") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afternoon");
                  }
                  if (wordsEnglish == "afterthought") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afterthought");
                  }
                  if (wordsEnglish == "afterwards") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-afterwards");
                  }
                  if (wordsEnglish == "again") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-again");
                  }
                  if (wordsEnglish == "against") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-against");
                  }
                  if (wordsEnglish == "age") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-age");
                  }
                  if (wordsEnglish == "aged") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aged");
                  }
                  if (wordsEnglish == "age group") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-age-group");
                  }
                  if (wordsEnglish == "ageing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ageing");
                  }
                  if (wordsEnglish == "ageism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ageism");
                  }
                  if (wordsEnglish == "ageist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ageist");
                  }
                  if (wordsEnglish == "age limit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-age-limit");
                  }
                  if (wordsEnglish == "agency") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agency");
                  }
                  if (wordsEnglish == "agenda") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agenda");
                  }
                  if (wordsEnglish == "agent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agent");
                  }
                  if (wordsEnglish == "age-old") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-age-old");
                  }
                  if (wordsEnglish == "aggravate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggravate");
                  }
                  if (wordsEnglish == "aggravation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggravation");
                  }
                  if (wordsEnglish == "aggregate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggregate");
                  }
                  if (wordsEnglish == "aggression") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggression");
                  }
                  if (wordsEnglish == "aggressive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggressive");
                  }
                  if (wordsEnglish == "aggressively") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggressively");
                  }
                  if (wordsEnglish == "aggressiveness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggressiveness");
                  }
                  if (wordsEnglish == "aggressor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggressor");
                  }
                  if (wordsEnglish == "aggrieved") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aggrieved");
                  }
                  if (wordsEnglish == "aghast") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aghast");
                  }
                  if (wordsEnglish == "agile") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agile");
                  }
                  if (wordsEnglish == "agility") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agility");
                  }
                  if (wordsEnglish == "aging") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aging");
                  }
                  if (wordsEnglish == "agitate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agitate");
                  }
                  if (wordsEnglish == "agitation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agitation");
                  }
                  if (wordsEnglish == "agitator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agitator");
                  }
                  if (wordsEnglish == "aglow") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aglow");
                  }
                  if (wordsEnglish == "AGM") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agm");
                  }
                  if (wordsEnglish == "agnostic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agnostic");
                  }
                  if (wordsEnglish == "agonized") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agonized");
                  }
                  if (wordsEnglish == "agonizing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agonizing");
                  }
                  if (wordsEnglish == "agony") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agony");
                  }
                  if (wordsEnglish == "agony aunt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agony-aunt");
                  }
                  if (wordsEnglish == "agoraphobia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agoraphobia");
                  }
                  if (wordsEnglish == "agoraphobic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agoraphobic");
                  }
                  if (wordsEnglish == "agrarian") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agrarian");
                  }
                  if (wordsEnglish == "agree") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agree");
                  }
                  if (wordsEnglish == "DOPSUM") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-DOPSUM");
                  }
                  if (wordsEnglish == "DOPSUM") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-DOPSUM");
                  }
                  if (wordsEnglish == "agreeable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agreeable");
                  }
                  if (wordsEnglish == "agreeably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agreeably");
                  }
                  if (wordsEnglish == "agreement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agreement");
                  }
                  if (wordsEnglish == "agriculture") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agriculture");
                  }
                  if (wordsEnglish == "agricultural") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agricultural");
                  }
                  if (wordsEnglish == "agritourism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agritourism");
                  }
                  if (wordsEnglish == "agrochemical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agrochemical");
                  }
                  if (wordsEnglish == "agronomist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agronomist");
                  }
                  if (wordsEnglish == "agronomy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-agronomy");
                  }
                  if (wordsEnglish == "aground") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aground");
                  }
                  if (wordsEnglish == "ahead") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ahead");
                  }
                  if (wordsEnglish == "ahead of") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ahead-of");
                  }
                  if (wordsEnglish == "AI") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ai");
                  }
                  if (wordsEnglish == "aid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aid");
                  }
                  if (wordsEnglish == "aide") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aide");
                  }
                  if (wordsEnglish == "AIDS") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aids");
                  }
                  if (wordsEnglish == "ailing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ailing");
                  }
                  if (wordsEnglish == "ailment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ailment");
                  }
                  if (wordsEnglish == "aim") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aim");
                  }
                  if (wordsEnglish == "aimless") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aimless");
                  }
                  if (wordsEnglish == "aimlessly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aimlessly");
                  }
                  if (wordsEnglish == "ain't") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aint");
                  }
                  if (wordsEnglish == "air") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air");
                  }
                  if (wordsEnglish == "airbag") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airbag");
                  }
                  if (wordsEnglish == "airborne") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airborne");
                  }
                  if (wordsEnglish == "air conditioner") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-conditioner");
                  }
                  if (wordsEnglish == "air-conditioned") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-conditioned");
                  }
                  if (wordsEnglish == "aircraft") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aircraft");
                  }
                  if (wordsEnglish == "aircraft carrier") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aircraft-carrier");
                  }
                  if (wordsEnglish == "airfield") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airfield");
                  }
                  if (wordsEnglish == "air force") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-force");
                  }
                  if (wordsEnglish == "air hostess") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-hostess");
                  }
                  if (wordsEnglish == "airlift") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airlift");
                  }
                  if (wordsEnglish == "airline") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airline");
                  }
                  if (wordsEnglish == "airliner") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airliner");
                  }
                  if (wordsEnglish == "airmail") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airmail");
                  }
                  if (wordsEnglish == "air marshal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-marshal");
                  }
                  if (wordsEnglish == "airplane") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airplane");
                  }
                  if (wordsEnglish == "airport") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airport");
                  }
                  if (wordsEnglish == "air raid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-raid");
                  }
                  if (wordsEnglish == "airship") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airship");
                  }
                  if (wordsEnglish == "airspace") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airspace");
                  }
                  if (wordsEnglish == "airstrip") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airstrip");
                  }
                  if (wordsEnglish == "air terminal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-terminal");
                  }
                  if (wordsEnglish == "airtight") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airtight");
                  }
                  if (wordsEnglish == "air-to-air") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-air-to-air");
                  }
                  if (wordsEnglish == "air traffic controller") {
                    Routemaster.of(context)
                        .push("/english-air-traffic-controller");
                  }
                  if (wordsEnglish == "airway") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airway");
                  }
                  if (wordsEnglish == "airworthy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airworthy");
                  }
                  if (wordsEnglish == "airing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airing");
                  }
                  if (wordsEnglish == "airing cupboard") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airing-cupboard");
                  }
                  if (wordsEnglish == "airless") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airless");
                  }
                  if (wordsEnglish == "airy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airy");
                  }
                  if (wordsEnglish == "airily") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-airily");
                  }
                  if (wordsEnglish == "aisle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aisle");
                  }
                  if (wordsEnglish == "ajar") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ajar");
                  }
                  if (wordsEnglish == "akin") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-akin");
                  }
                  if (wordsEnglish == "à la carte") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-a-la-carte");
                  }
                  if (wordsEnglish == "alacrity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alacrity");
                  }
                  if (wordsEnglish == "alarm") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alarm");
                  }
                  if (wordsEnglish == "alarm clock") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alarm-clock");
                  }
                  if (wordsEnglish == "alarming") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alarming");
                  }
                  if (wordsEnglish == "alas") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alas");
                  }
                  if (wordsEnglish == "albatross") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-albatross");
                  }
                  if (wordsEnglish == "albeit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-albeit");
                  }
                  if (wordsEnglish == "albino") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-albino");
                  }
                  if (wordsEnglish == "album") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-album");
                  }
                  if (wordsEnglish == "alcohol") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alcohol");
                  }
                  if (wordsEnglish == "alcoholic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alcoholic");
                  }
                  if (wordsEnglish == "alcoholism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alcoholism");
                  }
                  if (wordsEnglish == "alcove") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alcove");
                  }
                  if (wordsEnglish == "ale") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ale");
                  }
                  if (wordsEnglish == "alert") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alert");
                  }
                  if (wordsEnglish == "algae") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-algae");
                  }
                  if (wordsEnglish == "algebra") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-algebra");
                  }
                  if (wordsEnglish == "algorithm") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-algorithm");
                  }
                  if (wordsEnglish == "alias") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alias");
                  }
                  if (wordsEnglish == "alibi") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alibi");
                  }
                  if (wordsEnglish == "alien") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alien");
                  }
                  if (wordsEnglish == "alienate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alienate");
                  }
                  if (wordsEnglish == "alienation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alienation");
                  }
                  if (wordsEnglish == "alight") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alight");
                  }
                  if (wordsEnglish == "align") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-align");
                  }
                  if (wordsEnglish == "alignment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alignment");
                  }
                  if (wordsEnglish == "alike") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alike");
                  }
                  if (wordsEnglish == "alimentary canal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alimentary-canal");
                  }
                  if (wordsEnglish == "alimony") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alimony");
                  }
                  if (wordsEnglish == "alive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alive");
                  }
                  if (wordsEnglish == "alkali") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alkali");
                  }
                  if (wordsEnglish == "all") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-all");
                  }
                  if (wordsEnglish == "all-clear") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-all-clear");
                  }
                  if (wordsEnglish == "all-in") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-all-in");
                  }
                  if (wordsEnglish == "all-out") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-all-out");
                  }
                  if (wordsEnglish == "all-rounder") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-all-rounder");
                  }
                  if (wordsEnglish == "Allah") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allah");
                  }
                  if (wordsEnglish == "allay") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allay");
                  }
                  if (wordsEnglish == "allegation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allegation");
                  }
                  if (wordsEnglish == "allege") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allege");
                  }
                  if (wordsEnglish == "alleged") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alleged");
                  }
                  if (wordsEnglish == "allegedly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allegedly");
                  }
                  if (wordsEnglish == "allegiance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allegiance");
                  }
                  if (wordsEnglish == "allegory") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allegory");
                  }
                  if (wordsEnglish == "allegorical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allegorical");
                  }
                  if (wordsEnglish == "alleluia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alleluia");
                  }
                  if (wordsEnglish == "allergy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allergy");
                  }
                  if (wordsEnglish == "allergic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allergic");
                  }
                  if (wordsEnglish == "alleviate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alleviate");
                  }
                  if (wordsEnglish == "alleviation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alleviation");
                  }
                  if (wordsEnglish == "alley") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alley");
                  }
                  if (wordsEnglish == "alliance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alliance");
                  }
                  if (wordsEnglish == "allied") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allied");
                  }
                  if (wordsEnglish == "alligator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alligator");
                  }
                  if (wordsEnglish == "alliteration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alliteration");
                  }
                  if (wordsEnglish == "allocate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allocate");
                  }
                  if (wordsEnglish == "allocation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allocation");
                  }
                  if (wordsEnglish == "allot") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allot");
                  }
                  if (wordsEnglish == "allotment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allotment");
                  }
                  if (wordsEnglish == "allow") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allow");
                  }
                  if (wordsEnglish == "allowable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allowable");
                  }
                  if (wordsEnglish == "allowance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allowance");
                  }
                  if (wordsEnglish == "alloy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alloy");
                  }
                  if (wordsEnglish == "all right") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-all-right");
                  }
                  if (wordsEnglish == "allude to") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allude-to");
                  }
                  if (wordsEnglish == "allusion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-allusion");
                  }
                  if (wordsEnglish == "alluring") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alluring");
                  }
                  if (wordsEnglish == "ally") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ally");
                  }
                  if (wordsEnglish == "almanac") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-almanac");
                  }
                  if (wordsEnglish == "almighty") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-almighty");
                  }
                  if (wordsEnglish == "almond") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-almond");
                  }
                  if (wordsEnglish == "almost") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-almost");
                  }
                  if (wordsEnglish == "alms") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alms");
                  }
                  if (wordsEnglish == "aloft") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aloft");
                  }
                  if (wordsEnglish == "alone") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alone");
                  }
                  if (wordsEnglish == "along") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-along");
                  }
                  if (wordsEnglish == "alongside") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alongside");
                  }
                  if (wordsEnglish == "aloof") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aloof");
                  }
                  if (wordsEnglish == "aloofness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aloofness");
                  }
                  if (wordsEnglish == "aloud") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aloud");
                  }
                  if (wordsEnglish == "alphabet") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alphabet");
                  }
                  if (wordsEnglish == "alphabetical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alphabetical");
                  }
                  if (wordsEnglish == "alphabetically") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alphabetically");
                  }
                  if (wordsEnglish == "already") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-already");
                  }
                  if (wordsEnglish == "alright") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alright");
                  }
                  if (wordsEnglish == "Alsatian") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alsatian");
                  }
                  if (wordsEnglish == "also") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-also");
                  }
                  if (wordsEnglish == "altar") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-altar");
                  }
                  if (wordsEnglish == "alteration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alteration");
                  }
                  if (wordsEnglish == "alternate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alternate");
                  }
                  if (wordsEnglish == "alternately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alternately");
                  }
                  if (wordsEnglish == "alternating current") {
                    Routemaster.of(context)
                        .push("/english-alternating-current");
                  }
                  if (wordsEnglish == "alternation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alternation");
                  }
                  if (wordsEnglish == "alternative") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alternative");
                  }
                  if (wordsEnglish == "alternatively") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alternatively");
                  }
                  if (wordsEnglish == "alternator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alternator");
                  }
                  if (wordsEnglish == "although") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-although");
                  }
                  if (wordsEnglish == "altitude") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-altitude");
                  }
                  if (wordsEnglish == "alto") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alto");
                  }
                  if (wordsEnglish == "contralto") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-contralto");
                  }
                  if (wordsEnglish == "altogether") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-altogether");
                  }
                  if (wordsEnglish == "altruism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-altruism");
                  }
                  if (wordsEnglish == "altruistic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-altruistic");
                  }
                  if (wordsEnglish == "aluminium") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aluminium");
                  }
                  if (wordsEnglish == "always") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-always");
                  }
                  if (wordsEnglish == "Alzheimer's disease") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-alzheimers-disease");
                  }
                  if (wordsEnglish == "am") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-be");
                  }
                  if (wordsEnglish == "a.m.") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-am-time");
                  }
                  if (wordsEnglish == "AM") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-am-radio");
                  }
                  if (wordsEnglish == "amalgamate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amalgamate");
                  }
                  if (wordsEnglish == "amalgamation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amalgamation");
                  }
                  if (wordsEnglish == "amass") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amass");
                  }
                  if (wordsEnglish == "amateur") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amateur");
                  }
                  if (wordsEnglish == "amateurish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amateurish");
                  }
                  if (wordsEnglish == "amaze") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amaze");
                  }
                  if (wordsEnglish == "amazement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amazement");
                  }
                  if (wordsEnglish == "amazing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amazing");
                  }
                  if (wordsEnglish == "ambassador") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambassador");
                  }
                  if (wordsEnglish == "amber") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amber");
                  }
                  if (wordsEnglish == "ambidextrous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambidextrous");
                  }
                  if (wordsEnglish == "ambiguous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambiguous");
                  }
                  if (wordsEnglish == "ambiguity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambiguity");
                  }
                  if (wordsEnglish == "ambition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambition");
                  }
                  if (wordsEnglish == "ambitious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambitious");
                  }
                  if (wordsEnglish == "ambivalent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambivalent");
                  }
                  if (wordsEnglish == "ambivalence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambivalence");
                  }
                  if (wordsEnglish == "amble") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amble");
                  }
                  if (wordsEnglish == "ambulance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambulance");
                  }
                  if (wordsEnglish == "ambush") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ambush");
                  }
                  if (wordsEnglish == "ameba") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ameba");
                  }
                  if (wordsEnglish == "amen") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amen");
                  }
                  if (wordsEnglish == "amenable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amenable");
                  }
                  if (wordsEnglish == "amend") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amend");
                  }
                  if (wordsEnglish == "amendment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amendment");
                  }
                  if (wordsEnglish == "make amends") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-make-amends");
                  }
                  if (wordsEnglish == "amenity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amenity");
                  }
                  if (wordsEnglish == "American") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-american");
                  }
                  if (wordsEnglish == "come of age") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-come-of-age");
                  }
                  if (wordsEnglish == "far afield") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-far-afield");
                  }
                  if (wordsEnglish == "from afar") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-from-afar");
                  }
                  if (wordsEnglish == "under age") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-under-age");
                  }
                  if (wordsEnglish == "American football") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-american-football");
                  }
                  if (wordsEnglish == "amethyst") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amethyst");
                  }
                  if (wordsEnglish == "amiable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amiable");
                  }
                  if (wordsEnglish == "amiably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amiably");
                  }
                  if (wordsEnglish == "amicable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amicable");
                  }
                  if (wordsEnglish == "amicably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amicably");
                  }
                  if (wordsEnglish == "amid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amid");
                  }
                  if (wordsEnglish == "amidst") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amidst");
                  }
                  if (wordsEnglish == "amiss") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amiss");
                  }
                  if (wordsEnglish == "not come/go amiss") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-not-come-go-amiss");
                  }
                  if (wordsEnglish == "take something amiss") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context)
                        .push("/english-take-something-amiss");
                  }
                  if (wordsEnglish == "ammonia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ammonia");
                  }
                  if (wordsEnglish == "ammunition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ammunition");
                  }
                  if (wordsEnglish == "amnesia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amnesia");
                  }
                  if (wordsEnglish == "amnesty") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amnesty");
                  }
                  if (wordsEnglish == "amniocentesis") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amniocentesis");
                  }
                  if (wordsEnglish == "amoeba") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amoeba");
                  }
                  if (wordsEnglish == "amok") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amok");
                  }
                  if (wordsEnglish == "among") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-among");
                  }
                  if (wordsEnglish == "amongst") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amongst");
                  }
                  if (wordsEnglish == "amorous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amorous");
                  }
                  if (wordsEnglish == "amorously") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amorously");
                  }
                  if (wordsEnglish == "amount") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amount");
                  }
                  if (wordsEnglish == "amp") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amp");
                  }
                  if (wordsEnglish == "amp up") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amp-up");
                  }
                  if (wordsEnglish == "ampersand") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ampersand");
                  }
                  if (wordsEnglish == "amphetamine") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amphetamine");
                  }
                  if (wordsEnglish == "amphibian") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amphibian");
                  }
                  if (wordsEnglish == "amphibious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amphibious");
                  }
                  if (wordsEnglish == "amphitheatre") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amphitheatre");
                  }
                  if (wordsEnglish == "ample") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ample");
                  }
                  if (wordsEnglish == "amply") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amply");
                  }
                  if (wordsEnglish == "amplify") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amplify");
                  }
                  if (wordsEnglish == "amplification") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amplification");
                  }
                  if (wordsEnglish == "amplifier") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amplifier");
                  }
                  if (wordsEnglish == "amplitude") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amplitude");
                  }
                  if (wordsEnglish == "amputate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amputate");
                  }
                  if (wordsEnglish == "amputation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amputation");
                  }
                  if (wordsEnglish == "amulet") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amulet");
                  }
                  if (wordsEnglish == "amuse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amuse");
                  }
                  if (wordsEnglish == "amusement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amusement");
                  }
                  if (wordsEnglish == "amusing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-amusing");
                  }
                  if (wordsEnglish == "an") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-an");
                  }
                  if (wordsEnglish == "anachronism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anachronism");
                  }
                  if (wordsEnglish == "anaemia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaemia");
                  }
                  if (wordsEnglish == "anaemic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaemic");
                  }
                  if (wordsEnglish == "anaerobic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaerobic");
                  }
                  if (wordsEnglish == "anaesthesia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaesthesia");
                  }
                  if (wordsEnglish == "anaesthetic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaesthetic");
                  }
                  if (wordsEnglish == "anaesthetist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaesthetist");
                  }
                  if (wordsEnglish == "anaesthetize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anaesthetize");
                  }
                  if (wordsEnglish == "anagram") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anagram");
                  }
                  if (wordsEnglish == "analgesic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analgesic");
                  }
                  if (wordsEnglish == "analogue") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analogue");
                  }
                  if (wordsEnglish == "analog") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analog");
                  }
                  if (wordsEnglish == "analogy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analogy");
                  }
                  if (wordsEnglish == "analogous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analogous");
                  }
                  if (wordsEnglish == "analyse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analyse");
                  }
                  if (wordsEnglish == "analysis") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analysis");
                  }
                  if (wordsEnglish == "analyst") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analyst");
                  }
                  if (wordsEnglish == "analytical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analytical");
                  }
                  if (wordsEnglish == "analytic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analytic");
                  }
                  if (wordsEnglish == "analyze") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-analyze");
                  }
                  if (wordsEnglish == "anarchy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anarchy");
                  }
                  if (wordsEnglish == "anarchist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anarchist");
                  }
                  if (wordsEnglish == "anatomy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anatomy");
                  }
                  if (wordsEnglish == "anatomical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anatomical");
                  }
                  if (wordsEnglish == "ancestor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ancestor");
                  }
                  if (wordsEnglish == "ancestral") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ancestral");
                  }
                  if (wordsEnglish == "ancestry") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ancestry");
                  }
                  if (wordsEnglish == "anchor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anchor");
                  }
                  if (wordsEnglish == "anchorage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anchorage");
                  }
                  if (wordsEnglish == "anchovy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anchovy");
                  }
                  if (wordsEnglish == "ancient") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ancient");
                  }
                  if (wordsEnglish == "ancillary") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ancillary");
                  }
                  if (wordsEnglish == "and") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-and");
                  }
                  if (wordsEnglish == "anecdote") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anecdote");
                  }
                  if (wordsEnglish == "anemia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anemia");
                  }
                  if (wordsEnglish == "anemic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anemic");
                  }
                  if (wordsEnglish == "anemone") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anemone");
                  }
                  if (wordsEnglish == "anesthesia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anesthesia");
                  }
                  if (wordsEnglish == "anesthetic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anesthetic");
                  }
                  if (wordsEnglish == "anesthetist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anesthetist");
                  }
                  if (wordsEnglish == "anesthetize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anesthetize");
                  }
                  if (wordsEnglish == "anew") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anew");
                  }
                  if (wordsEnglish == "angel") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angel");
                  }
                  if (wordsEnglish == "angelic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angelic");
                  }
                  if (wordsEnglish == "anger") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anger");
                  }
                  if (wordsEnglish == "angina") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angina");
                  }
                  if (wordsEnglish == "angle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angle");
                  }
                  if (wordsEnglish == "angler") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angler");
                  }
                  if (wordsEnglish == "angling") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angling");
                  }
                  if (wordsEnglish == "anglicize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anglicize");
                  }
                  if (wordsEnglish == "Anglo-") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anglo");
                  }
                  if (wordsEnglish == "angry") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angry");
                  }
                  if (wordsEnglish == "angrily") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angrily");
                  }
                  if (wordsEnglish == "angst") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angst");
                  }
                  if (wordsEnglish == "anguish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anguish");
                  }
                  if (wordsEnglish == "anguished") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anguished");
                  }
                  if (wordsEnglish == "angular") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-angular");
                  }
                  if (wordsEnglish == "animal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-animal");
                  }
                  if (wordsEnglish == "animate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-animate");
                  }
                  if (wordsEnglish == "animated") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-animated");
                  }
                  if (wordsEnglish == "animation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-animation");
                  }
                  if (wordsEnglish == "animatronics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-animatronics");
                  }
                  if (wordsEnglish == "animosity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-animosity");
                  }
                  if (wordsEnglish == "ankle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ankle");
                  }
                  if (wordsEnglish == "annals") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annals");
                  }
                  if (wordsEnglish == "annex") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annex");
                  }
                  if (wordsEnglish == "annexation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annexation");
                  }
                  if (wordsEnglish == "annexe") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annexe");
                  }
                  if (wordsEnglish == "annihilate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annihilate");
                  }
                  if (wordsEnglish == "annihilation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annihilation");
                  }
                  if (wordsEnglish == "anniversary") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anniversary");
                  }
                  if (wordsEnglish == "annotate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annotate");
                  }
                  if (wordsEnglish == "annotation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annotation");
                  }
                  if (wordsEnglish == "announce") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-announce");
                  }
                  if (wordsEnglish == "announcement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-announcement");
                  }
                  if (wordsEnglish == "announcer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-announcer");
                  }
                  if (wordsEnglish == "annoy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annoy");
                  }
                  if (wordsEnglish == "annoyance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annoyance");
                  }
                  if (wordsEnglish == "annual") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annual");
                  }
                  if (wordsEnglish == "annually") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annually");
                  }
                  if (wordsEnglish == "annuity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annuity");
                  }
                  if (wordsEnglish == "annul") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annul");
                  }
                  if (wordsEnglish == "annulment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-annulment");
                  }
                  if (wordsEnglish == "anode") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anode");
                  }
                  if (wordsEnglish == "anoint") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anoint");
                  }
                  if (wordsEnglish == "anomaly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anomaly");
                  }
                  if (wordsEnglish == "anomalous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anomalous");
                  }
                  if (wordsEnglish == "anonymous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anonymous");
                  }
                  if (wordsEnglish == "anonymity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anonymity");
                  }
                  if (wordsEnglish == "anon.") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anon-two");
                  }
                  if (wordsEnglish == "anon") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anon");
                  }
                  if (wordsEnglish == "anorak") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anorak");
                  }
                  if (wordsEnglish == "anorexia") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anorexia");
                  }
                  if (wordsEnglish == "anorexia nervosa") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anorexia-nervosa");
                  }
                  if (wordsEnglish == "anorexic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anorexic");
                  }
                  if (wordsEnglish == "another") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-another");
                  }
                  if (wordsEnglish == "answer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-answer");
                  }
                  if (wordsEnglish == "answerable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-answerable");
                  }
                  if (wordsEnglish == "ant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ant");
                  }
                  if (wordsEnglish == "antagonism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antagonism");
                  }
                  if (wordsEnglish == "antagonist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antagonist");
                  }
                  if (wordsEnglish == "antagonistic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antagonistic");
                  }
                  if (wordsEnglish == "antagonize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antagonize");
                  }
                  if (wordsEnglish == "Antarctic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antarctic");
                  }
                  if (wordsEnglish == "the Antarctic Circle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antarctic-circle");
                  }
                  if (wordsEnglish == "antecedent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antecedent");
                  }
                  if (wordsEnglish == "antediluvian") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antediluvian");
                  }
                  if (wordsEnglish == "antelope") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antelope");
                  }
                  if (wordsEnglish == "antenatal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antenatal");
                  }
                  if (wordsEnglish == "antenna") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antenna");
                  }
                  if (wordsEnglish == "anthem") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anthem");
                  }
                  if (wordsEnglish == "anthology") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anthology");
                  }
                  if (wordsEnglish == "anthrax") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anthrax");
                  }
                  if (wordsEnglish == "anthropology") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anthropology");
                  }
                  if (wordsEnglish == "anthropologist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anthropologist");
                  }
                  if (wordsEnglish == "anti") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anti");
                  }
                  if (wordsEnglish == "anti-") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anti-two");
                  }
                  if (wordsEnglish == "antibiotic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antibiotic");
                  }
                  if (wordsEnglish == "antibody") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antibody");
                  }
                  if (wordsEnglish == "anticipate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anticipate");
                  }
                  if (wordsEnglish == "anticipation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anticipation");
                  }
                  if (wordsEnglish == "anticlimax") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anticlimax");
                  }
                  if (wordsEnglish == "anticlockwise") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anticlockwise");
                  }
                  if (wordsEnglish == "antic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antic");
                  }
                  if (wordsEnglish == "anticyclone") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anticyclone");
                  }
                  if (wordsEnglish == "antidepressant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antidepressant");
                  }
                  if (wordsEnglish == "antidote") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antidote");
                  }
                  if (wordsEnglish == "antifreeze") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antifreeze");
                  }
                  if (wordsEnglish == "antihistamine") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antihistamine");
                  }
                  if (wordsEnglish == "antiperspirant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antiperspirant");
                  }
                  if (wordsEnglish == "antiquated") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antiquated");
                  }
                  if (wordsEnglish == "antique") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antique");
                  }
                  if (wordsEnglish == "antiquity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antiquity");
                  }
                  if (wordsEnglish == "antiretroviral") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antiretroviral");
                  }
                  if (wordsEnglish == "antiseptic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antiseptic");
                  }
                  if (wordsEnglish == "antisocial") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antisocial");
                  }
                  if (wordsEnglish == "antithesis") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antithesis");
                  }
                  if (wordsEnglish == "antler") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antler");
                  }
                  if (wordsEnglish == "antonym") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-antonym");
                  }
                  if (wordsEnglish == "anus") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anus");
                  }
                  if (wordsEnglish == "anvil") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anvil");
                  }
                  if (wordsEnglish == "anxiety") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anxiety");
                  }
                  if (wordsEnglish == "anxious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anxious");
                  }
                  if (wordsEnglish == "anxiously") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anxiously");
                  }
                  if (wordsEnglish == "any") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-any");
                  }
                  if (wordsEnglish == "anybody") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anybody");
                  }
                  if (wordsEnglish == "anyhow") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anyhow");
                  }
                  if (wordsEnglish == "anyway") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anyway");
                  }
                  if (wordsEnglish == "anyone") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anyone");
                  }
                  if (wordsEnglish == "anywhere") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anywhere");
                  }
                  if (wordsEnglish == "anything") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anything");
                  }
                  if (wordsEnglish == "anyplace") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-anyplace");
                  }
                  if (wordsEnglish == "aorta") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aorta");
                  }
                  if (wordsEnglish == "apart") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apart");
                  }
                  if (wordsEnglish == "apart from") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apart-from");
                  }
                  if (wordsEnglish == "apartheid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apartheid");
                  }
                  if (wordsEnglish == "apartment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apartment");
                  }
                  if (wordsEnglish == "apathy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apathy");
                  }
                  if (wordsEnglish == "apathetic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apathetic");
                  }
                  if (wordsEnglish == "ape") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ape");
                  }
                  if (wordsEnglish == "aperitif") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aperitif");
                  }
                  if (wordsEnglish == "aperture") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aperture");
                  }
                  if (wordsEnglish == "apex") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apex");
                  }
                  if (wordsEnglish == "aphid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aphid");
                  }
                  if (wordsEnglish == "apiece") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apiece");
                  }
                  if (wordsEnglish == "aplomb") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aplomb");
                  }
                  if (wordsEnglish == "apologetic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apologetic");
                  }
                  if (wordsEnglish == "apologetically") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apologetically");
                  }
                  if (wordsEnglish == "apologize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apologize");
                  }
                  if (wordsEnglish == "apology") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apology");
                  }
                  if (wordsEnglish == "apostle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apostle");
                  }
                  if (wordsEnglish == "apostrophe") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apostrophe");
                  }
                  if (wordsEnglish == "appal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appal");
                  }
                  if (wordsEnglish == "appalling") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appalling");
                  }
                  if (wordsEnglish == "apparatus") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apparatus");
                  }
                  if (wordsEnglish == "apparent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apparent");
                  }
                  if (wordsEnglish == "apparently") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apparently");
                  }
                  if (wordsEnglish == "apparition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apparition");
                  }
                  if (wordsEnglish == "appeal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appeal");
                  }
                  if (wordsEnglish == "appealing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appealing");
                  }
                  if (wordsEnglish == "appear") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appear");
                  }
                  if (wordsEnglish == "appearance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appearance");
                  }
                  if (wordsEnglish == "appease") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appease");
                  }
                  if (wordsEnglish == "appeasement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appeasement");
                  }
                  if (wordsEnglish == "append") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-append");
                  }
                  if (wordsEnglish == "appendage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appendage");
                  }
                  if (wordsEnglish == "appendicitis") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appendicitis");
                  }
                  if (wordsEnglish == "appendix") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appendix");
                  }
                  if (wordsEnglish == "appetite") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appetite");
                  }
                  if (wordsEnglish == "appetizer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appetizer");
                  }
                  if (wordsEnglish == "appetizing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appetizing");
                  }
                  if (wordsEnglish == "applaud") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-applaud");
                  }
                  if (wordsEnglish == "applause") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-applause");
                  }
                  if (wordsEnglish == "apple") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apple");
                  }
                  if (wordsEnglish == "applet") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-applet");
                  }
                  if (wordsEnglish == "appliance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appliance");
                  }
                  if (wordsEnglish == "applicable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-applicable");
                  }
                  if (wordsEnglish == "applicant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-applicant");
                  }
                  if (wordsEnglish == "application") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-application");
                  }
                  if (wordsEnglish == "apply") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apply");
                  }
                  if (wordsEnglish == "applied") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-applied");
                  }
                  if (wordsEnglish == "appoint") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appoint");
                  }
                  if (wordsEnglish == "appointment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appointment");
                  }
                  if (wordsEnglish == "appraise") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appraise");
                  }
                  if (wordsEnglish == "appraisal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appraisal");
                  }
                  if (wordsEnglish == "appreciable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appreciable");
                  }
                  if (wordsEnglish == "appreciably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appreciably");
                  }
                  if (wordsEnglish == "appreciate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appreciate");
                  }
                  if (wordsEnglish == "appreciation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appreciation");
                  }
                  if (wordsEnglish == "appreciative") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appreciative");
                  }
                  if (wordsEnglish == "apprehend") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apprehend");
                  }
                  if (wordsEnglish == "apprehension") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apprehension");
                  }
                  if (wordsEnglish == "apprehensive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apprehensive");
                  }
                  if (wordsEnglish == "apprentice") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apprentice");
                  }
                  if (wordsEnglish == "apprenticeship") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apprenticeship");
                  }
                  if (wordsEnglish == "approach") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approach");
                  }
                  if (wordsEnglish == "approachable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approachable");
                  }
                  if (wordsEnglish == "appropriate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appropriate");
                  }
                  if (wordsEnglish == "appropriately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appropriately");
                  }
                  if (wordsEnglish == "appropriation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-appropriation");
                  }
                  if (wordsEnglish == "approval") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approval");
                  }
                  if (wordsEnglish == "approve") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approve");
                  }
                  if (wordsEnglish == "approvingly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approvingly");
                  }
                  if (wordsEnglish == "approximate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approximate");
                  }
                  if (wordsEnglish == "approximately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approximately");
                  }
                  if (wordsEnglish == "approximation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-approximation");
                  }
                  if (wordsEnglish == "April") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-april");
                  }
                  if (wordsEnglish == "apron") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apron");
                  }
                  if (wordsEnglish == "apricot") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apricot");
                  }
                  if (wordsEnglish == "apt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-apt");
                  }
                  if (wordsEnglish == "aptly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aptly");
                  }
                  if (wordsEnglish == "aptness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aptness");
                  }
                  if (wordsEnglish == "aptitude") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aptitude");
                  }
                  if (wordsEnglish == "aqualung") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aqualung");
                  }
                  if (wordsEnglish == "aquamarine") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aquamarine");
                  }
                  if (wordsEnglish == "aquarium") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aquarium");
                  }
                  if (wordsEnglish == "aquatic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aquatic");
                  }
                  if (wordsEnglish == "aqueduct") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aqueduct");
                  }
                  if (wordsEnglish == "Arabic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-Arabic");
                  }
                  if (wordsEnglish == "Arabic numeral") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arabic-numeral");
                  }
                  if (wordsEnglish == "arable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arable");
                  }
                  if (wordsEnglish == "arbitrage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitrage");
                  }
                  if (wordsEnglish == "arbitrageur") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitrageur");
                  }
                  if (wordsEnglish == "arbitrary") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitrary");
                  }
                  if (wordsEnglish == "arbitrarily") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitrarily");
                  }
                  if (wordsEnglish == "arbitrate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitrate");
                  }
                  if (wordsEnglish == "arbitration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitration");
                  }
                  if (wordsEnglish == "arbitrator") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arbitrator");
                  }
                  if (wordsEnglish == "arc") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arc");
                  }
                  if (wordsEnglish == "arcade") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arcade");
                  }
                  if (wordsEnglish == "arch") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arch");
                  }
                  if (wordsEnglish == "arch-") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arch-two");
                  }
                  if (wordsEnglish == "archaeology") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaeology");
                  }
                  if (wordsEnglish == "archeology") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaeology");
                  }
                  if (wordsEnglish == "archeological") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaeological");
                  }
                  if (wordsEnglish == "archaeological") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaeological");
                  }
                  if (wordsEnglish == "archaeologist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaeologist");
                  }
                  if (wordsEnglish == "archeologist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaeologist");
                  }
                  if (wordsEnglish == "archaic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archaic");
                  }
                  if (wordsEnglish == "archbishop") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archbishop");
                  }
                  if (wordsEnglish == "archer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archer");
                  }
                  if (wordsEnglish == "archery") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archery");
                  }
                  if (wordsEnglish == "archipelago") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archipelago");
                  }
                  if (wordsEnglish == "architect") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-architect");
                  }
                  if (wordsEnglish == "architecture") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-architecture");
                  }
                  if (wordsEnglish == "architectural") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-architectural");
                  }
                  if (wordsEnglish == "archive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-archive");
                  }
                  if (wordsEnglish == "Arctic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arctic");
                  }
                  if (wordsEnglish == "the Arctic Circle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arctic-circle");
                  }
                  if (wordsEnglish == "ardent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ardent");
                  }
                  if (wordsEnglish == "ardently") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ardently");
                  }
                  if (wordsEnglish == "arduous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arduous");
                  }
                  if (wordsEnglish == "arduously") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arduously");
                  }
                  if (wordsEnglish == "are") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-be");
                  }
                  if (wordsEnglish == "area") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-area");
                  }
                  if (wordsEnglish == "arena") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arena");
                  }
                  if (wordsEnglish == "aren't") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-be");
                  }
                  if (wordsEnglish == "argue") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-argue");
                  }
                  if (wordsEnglish == "arguable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arguable");
                  }
                  if (wordsEnglish == "arguably") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arguably");
                  }
                  if (wordsEnglish == "argument") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-argument");
                  }
                  if (wordsEnglish == "argumentative") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-argumentative");
                  }
                  if (wordsEnglish == "aria") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aria");
                  }
                  if (wordsEnglish == "arid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arid");
                  }
                  if (wordsEnglish == "arise") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arise");
                  }
                  if (wordsEnglish == "aristocracy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aristocracy");
                  }
                  if (wordsEnglish == "aristocrat") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aristocrat");
                  }
                  if (wordsEnglish == "aristocratic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aristocratic");
                  }
                  if (wordsEnglish == "arithmetic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arithmetic");
                  }
                  if (wordsEnglish == "arithmetical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arithmetical");
                  }
                  if (wordsEnglish == "ark") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ark");
                  }
                  if (wordsEnglish == "arm") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arm");
                  }
                  if (wordsEnglish == "armed forces") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armed-forces");
                  }
                  if (wordsEnglish == "armchair") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armchair");
                  }
                  if (wordsEnglish == "armpit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armpit");
                  }
                  if (wordsEnglish == "armada") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armada");
                  }
                  if (wordsEnglish == "armadillo") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armadillo");
                  }
                  if (wordsEnglish == "armament") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armament");
                  }
                  if (wordsEnglish == "armistice") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armistice");
                  }
                  if (wordsEnglish == "armour") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armour");
                  }
                  if (wordsEnglish == "armor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armour");
                  }
                  if (wordsEnglish == "armoured") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armoured");
                  }
                  if (wordsEnglish == "armored") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armoured");
                  }
                  if (wordsEnglish == "armoury") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armoury");
                  }
                  if (wordsEnglish == "armory") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-armoury");
                  }
                  if (wordsEnglish == "arms") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arms");
                  }
                  if (wordsEnglish == "army") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-army");
                  }
                  if (wordsEnglish == "arnica") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arnica");
                  }
                  if (wordsEnglish == "aroma") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aroma");
                  }
                  if (wordsEnglish == "aromatic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aromatic");
                  }
                  if (wordsEnglish == "aromatherapy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aromatherapy");
                  }
                  if (wordsEnglish == "aromatherapist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aromatherapist");
                  }
                  if (wordsEnglish == "around") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-around");
                  }
                  if (wordsEnglish == "arouse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arouse");
                  }
                  if (wordsEnglish == "arraign") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arraign");
                  }
                  if (wordsEnglish == "arraignment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arraignment");
                  }
                  if (wordsEnglish == "arrange") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrange");
                  }
                  if (wordsEnglish == "arrangement") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrangement");
                  }
                  if (wordsEnglish == "array") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-array");
                  }
                  if (wordsEnglish == "arrears") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrears");
                  }
                  if (wordsEnglish == "arrest") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrest");
                  }
                  if (wordsEnglish == "arrival") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrival");
                  }
                  if (wordsEnglish == "arrive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrive");
                  }
                  if (wordsEnglish == "arrogant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrogant");
                  }
                  if (wordsEnglish == "arrogance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrogance");
                  }
                  if (wordsEnglish == "arrogantly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrogantly");
                  }
                  if (wordsEnglish == "arrow") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arrow");
                  }
                  if (wordsEnglish == "arse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arse");
                  }
                  if (wordsEnglish == "arsenal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arsenal");
                  }
                  if (wordsEnglish == "arsenic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arsenic");
                  }
                  if (wordsEnglish == "arson") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arson");
                  }
                  if (wordsEnglish == "art") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-art");
                  }
                  if (wordsEnglish == "art gallery") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-art gallery");
                  }
                  if (wordsEnglish == "artefact") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artefact");
                  }
                  if (wordsEnglish == "artifact") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artefact");
                  }
                  if (wordsEnglish == "artery") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artery");
                  }
                  if (wordsEnglish == "arterial") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arterial");
                  }
                  if (wordsEnglish == "artful") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artful");
                  }
                  if (wordsEnglish == "artfully") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artfully");
                  }
                  if (wordsEnglish == "arthritis") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arthritis");
                  }
                  if (wordsEnglish == "arthritic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arthritic");
                  }
                  if (wordsEnglish == "artichoke") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artichoke");
                  }
                  if (wordsEnglish == "globe artichoke") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artichoke");
                  }
                  if (wordsEnglish == "article") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-article");
                  }
                  if (wordsEnglish == "articulate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-articulate");
                  }
                  if (wordsEnglish == "articulately") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-articulately");
                  }
                  if (wordsEnglish == "articulated") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-articulated");
                  }
                  if (wordsEnglish == "articulation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-articulation");
                  }
                  if (wordsEnglish == "artificial") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artificial");
                  }
                  if (wordsEnglish == "artificial intelligence") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context)
                        .push("/english-artificial intelligence");
                  }
                  if (wordsEnglish == "artificial respiration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context)
                        .push("/english-artificial respiration");
                  }
                  if (wordsEnglish == "artificially") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artificially");
                  }
                  if (wordsEnglish == "artillery") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artillery");
                  }
                  if (wordsEnglish == "artisan") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artisan");
                  }
                  if (wordsEnglish == "artist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artist");
                  }
                  if (wordsEnglish == "artistic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artistic");
                  }
                  if (wordsEnglish == "artistically") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artistically");
                  }
                  if (wordsEnglish == "artistry") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artistry");
                  }
                  if (wordsEnglish == "artiste") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-artiste");
                  }
                  if (wordsEnglish == "arty") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arty");
                  }
                  if (wordsEnglish == "arugula") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-arugula");
                  }
                  if (wordsEnglish == "as") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-as");
                  }
                  if (wordsEnglish == "asbestos") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asbestos");
                  }
                  if (wordsEnglish == "ascend") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ascend");
                  }
                  if (wordsEnglish == "ascendancy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ascendancy");
                  }
                  if (wordsEnglish == "ascendant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ascendant");
                  }
                  if (wordsEnglish == "ascent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ascent");
                  }
                  if (wordsEnglish == "ascertain") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ascertain");
                  }
                  if (wordsEnglish == "ASCII") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ASCII");
                  }
                  if (wordsEnglish == "ascribe to") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ascribe-to");
                  }
                  if (wordsEnglish == "aseptic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aseptic");
                  }
                  if (wordsEnglish == "asexual") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asexual");
                  }
                  if (wordsEnglish == "ash") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ash");
                  }
                  if (wordsEnglish == "ashtray") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ashtray");
                  }
                  if (wordsEnglish == "ashamed") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ashamed");
                  }
                  if (wordsEnglish == "ashore") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ashore");
                  }
                  if (wordsEnglish == "aside") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aside");
                  }
                  if (wordsEnglish == "ask") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ask");
                  }
                  if (wordsEnglish == "asking price") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asking-price");
                  }
                  if (wordsEnglish == "askew") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-askew");
                  }
                  if (wordsEnglish == "asleep") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asleep");
                  }
                  if (wordsEnglish == "asp") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asp");
                  }
                  if (wordsEnglish == "asparagus") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asparagus");
                  }
                  if (wordsEnglish == "aspect") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aspect");
                  }
                  if (wordsEnglish == "aspersion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aspersion");
                  }
                  if (wordsEnglish == "asphalt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asphalt");
                  }
                  if (wordsEnglish == "asphyxiate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asphyxiate");
                  }
                  if (wordsEnglish == "asphyxiation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asphyxiation");
                  }
                  if (wordsEnglish == "aspirate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aspirate");
                  }
                  if (wordsEnglish == "aspire") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aspire");
                  }
                  if (wordsEnglish == "aspiration") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aspiration");
                  }
                  if (wordsEnglish == "aspirin") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aspirin");
                  }
                  if (wordsEnglish == "ass") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-ass");
                  }
                  if (wordsEnglish == "assailant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assailant");
                  }
                  if (wordsEnglish == "assassin") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assassin");
                  }
                  if (wordsEnglish == "assassinate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assassinate");
                  }
                  if (wordsEnglish == "assassination") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assassination");
                  }
                  if (wordsEnglish == "assault") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assault");
                  }
                  if (wordsEnglish == "assault course") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assault-course");
                  }
                  if (wordsEnglish == "assemble") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assemble");
                  }
                  if (wordsEnglish == "assembly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assembly");
                  }
                  if (wordsEnglish == "assembly line") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assembly-line");
                  }
                  if (wordsEnglish == "assent") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assent");
                  }
                  if (wordsEnglish == "assert") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assert");
                  }
                  if (wordsEnglish == "assertion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assertion");
                  }
                  if (wordsEnglish == "assertive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assertive");
                  }
                  if (wordsEnglish == "assess") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assess");
                  }
                  if (wordsEnglish == "assessment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assessment");
                  }
                  if (wordsEnglish == "assessor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assessor");
                  }
                  if (wordsEnglish == "asset") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asset");
                  }
                  if (wordsEnglish == "asset-stripping") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asset-stripping");
                  }
                  if (wordsEnglish == "assign") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assign");
                  }
                  if (wordsEnglish == "assignment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assignment");
                  }
                  if (wordsEnglish == "assimilate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assimilate");
                  }
                  if (wordsEnglish == "assimilation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assimilation");
                  }
                  if (wordsEnglish == "assist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assist");
                  }
                  if (wordsEnglish == "assistance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assistance");
                  }
                  if (wordsEnglish == "assistant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assistant");
                  }
                  if (wordsEnglish == "associate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-associate");
                  }
                  if (wordsEnglish == "association") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-association");
                  }
                  if (wordsEnglish == "assorted") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assorted");
                  }
                  if (wordsEnglish == "assortment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assortment");
                  }
                  if (wordsEnglish == "assume") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assume");
                  }
                  if (wordsEnglish == "assumption") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assumption");
                  }
                  if (wordsEnglish == "assurance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assurance");
                  }
                  if (wordsEnglish == "assure") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assure");
                  }
                  if (wordsEnglish == "assured") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-assured");
                  }
                  if (wordsEnglish == "asterisk") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asterisk");
                  }
                  if (wordsEnglish == "asteroid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asteroid");
                  }
                  if (wordsEnglish == "asthma") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asthma");
                  }
                  if (wordsEnglish == "asthmatic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asthmatic");
                  }
                  if (wordsEnglish == "astonish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astonish");
                  }
                  if (wordsEnglish == "astonishing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astonishing");
                  }
                  if (wordsEnglish == "astonishment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astonishment");
                  }
                  if (wordsEnglish == "astound") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astound");
                  }
                  if (wordsEnglish == "astral") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astral");
                  }
                  if (wordsEnglish == "go astray") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-go-astray");
                  }
                  if (wordsEnglish == "lead astray") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-lead-astray");
                  }
                  if (wordsEnglish == "astride") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astride");
                  }
                  if (wordsEnglish == "astrology") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astrology");
                  }
                  if (wordsEnglish == "astrologer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astrologer");
                  }
                  if (wordsEnglish == "astrological") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astrological");
                  }
                  if (wordsEnglish == "astronaut") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astronaut");
                  }
                  if (wordsEnglish == "astronomy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astronomy");
                  }
                  if (wordsEnglish == "astronomer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astronomer");
                  }
                  if (wordsEnglish == "astronomical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astronomical");
                  }
                  if (wordsEnglish == "astute") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astute");
                  }
                  if (wordsEnglish == "astutely") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astutely");
                  }
                  if (wordsEnglish == "astuteness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-astuteness");
                  }
                  if (wordsEnglish == "asylum") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asylum");
                  }
                  if (wordsEnglish == "asylum seeker") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-asylum-seeker");
                  }
                  if (wordsEnglish == "at") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-at");
                  }
                  if (wordsEnglish == "atheism") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atheism");
                  }
                  if (wordsEnglish == "atheist") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atheist");
                  }
                  if (wordsEnglish == "athlete") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-athlete");
                  }
                  if (wordsEnglish == "athletic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-athletic");
                  }
                  if (wordsEnglish == "athletics") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-athletics");
                  }
                  if (wordsEnglish == "atlas") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atlas");
                  }
                  if (wordsEnglish == "ATM") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atm");
                  }
                  if (wordsEnglish == "atmosphere") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atmosphere");
                  }
                  if (wordsEnglish == "atmospheric") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atmospheric");
                  }
                  if (wordsEnglish == "atoll") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atoll");
                  }
                  if (wordsEnglish == "atom") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atom");
                  }
                  if (wordsEnglish == "atomic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atomic");
                  }
                  if (wordsEnglish == "atomic bomb") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atomic-bomb");
                  }
                  if (wordsEnglish == "atrocious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atrocious");
                  }
                  if (wordsEnglish == "atrociously") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atrociously");
                  }
                  if (wordsEnglish == "atrocity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-atrocity");
                  }
                  if (wordsEnglish == "attach") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attach");
                  }
                  if (wordsEnglish == "attached") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attached");
                  }
                  if (wordsEnglish == "attachment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attachment");
                  }
                  if (wordsEnglish == "attaché") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attache");
                  }
                  if (wordsEnglish == "attaché case") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attache-case");
                  }
                  if (wordsEnglish == "attack") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attack");
                  }
                  if (wordsEnglish == "attacker") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attacker");
                  }
                  if (wordsEnglish == "attain") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attain");
                  }
                  if (wordsEnglish == "attainable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attainable");
                  }
                  if (wordsEnglish == "attainment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attainment");
                  }
                  if (wordsEnglish == "attempt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attempt");
                  }
                  if (wordsEnglish == "attend") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attend");
                  }
                  if (wordsEnglish == "attendance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attendance");
                  }
                  if (wordsEnglish == "attendant") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attendant");
                  }
                  if (wordsEnglish == "attention") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attention");
                  }
                  if (wordsEnglish == "attentive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attentive");
                  }
                  if (wordsEnglish == "attentively") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attentively");
                  }
                  if (wordsEnglish == "attest") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attest");
                  }
                  if (wordsEnglish == "attic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attic");
                  }
                  if (wordsEnglish == "attitude") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attitude");
                  }
                  if (wordsEnglish == "attn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attn");
                  }
                  if (wordsEnglish == "attorney") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attorney");
                  }
                  if (wordsEnglish == "attract") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attract");
                  }
                  if (wordsEnglish == "attraction") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attraction");
                  }
                  if (wordsEnglish == "attractive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attractive");
                  }
                  if (wordsEnglish == "attribute") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attribute");
                  }
                  if (wordsEnglish == "attributive") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-attributive");
                  }
                  if (wordsEnglish == "aubergine") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aubergine");
                  }
                  if (wordsEnglish == "auburn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auburn");
                  }
                  if (wordsEnglish == "auction") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auction");
                  }
                  if (wordsEnglish == "auctioneer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auctioneer");
                  }
                  if (wordsEnglish == "audacious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audacious");
                  }
                  if (wordsEnglish == "audaciously") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audaciously");
                  }
                  if (wordsEnglish == "audacity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audacity");
                  }
                  if (wordsEnglish == "audible") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audible");
                  }
                  if (wordsEnglish == "audibly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audibly");
                  }
                  if (wordsEnglish == "audience") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audience");
                  }
                  if (wordsEnglish == "audio") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audio");
                  }
                  if (wordsEnglish == "audiovisual") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audiovisual");
                  }
                  if (wordsEnglish == "audit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audit");
                  }
                  if (wordsEnglish == "auditor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auditor");
                  }
                  if (wordsEnglish == "audition") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-audition");
                  }
                  if (wordsEnglish == "auditorium") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auditorium");
                  }
                  if (wordsEnglish == "augment") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-augment");
                  }
                  if (wordsEnglish == "augur") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-augur");
                  }
                  if (wordsEnglish == "August") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-august");
                  }
                  if (wordsEnglish == "august") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-august-two");
                  }
                  if (wordsEnglish == "aunt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aunt");
                  }
                  if (wordsEnglish == "auntie") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aunt");
                  }
                  if (wordsEnglish == "aunty") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aunt");
                  }
                  if (wordsEnglish == "au pair") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-au-pair");
                  }
                  if (wordsEnglish == "aura") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aura");
                  }
                  if (wordsEnglish == "aural") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aural");
                  }
                  if (wordsEnglish == "auspicious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auspicious");
                  }
                  if (wordsEnglish == "auspiciously") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auspiciously");
                  }
                  if (wordsEnglish == "austere") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-austere");
                  }
                  if (wordsEnglish == "austerely") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-austerely");
                  }
                  if (wordsEnglish == "austerity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-austerity");
                  }
                  if (wordsEnglish == "authentic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authentic");
                  }
                  if (wordsEnglish == "authentically") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authentically");
                  }
                  if (wordsEnglish == "authenticate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authenticate");
                  }
                  if (wordsEnglish == "authentication") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authentication");
                  }
                  if (wordsEnglish == "authenticity") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authenticity");
                  }
                  if (wordsEnglish == "author") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-author");
                  }
                  if (wordsEnglish == "authorship") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authorship");
                  }
                  if (wordsEnglish == "authoritative") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authoritative");
                  }
                  if (wordsEnglish == "authoritatively") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authoritatively");
                  }
                  if (wordsEnglish == "authority") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authority");
                  }
                  if (wordsEnglish == "authorize") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authorize");
                  }
                  if (wordsEnglish == "authorization") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-authorization");
                  }
                  if (wordsEnglish == "autobiography") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autobiography");
                  }
                  if (wordsEnglish == "autobiographical") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autobiographical");
                  }
                  if (wordsEnglish == "autocrat") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autocrat");
                  }
                  if (wordsEnglish == "autocratic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autocratic");
                  }
                  if (wordsEnglish == "autograph") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autograph");
                  }
                  if (wordsEnglish == "automate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-automate");
                  }
                  if (wordsEnglish == "automatic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-automatic");
                  }
                  if (wordsEnglish == "automation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-automation");
                  }
                  if (wordsEnglish == "automobile") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-automobile");
                  }
                  if (wordsEnglish == "autonomous") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autonomous");
                  }
                  if (wordsEnglish == "autonomy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autonomy");
                  }
                  if (wordsEnglish == "autopsy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autopsy");
                  }
                  if (wordsEnglish == "autumn") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autumn");
                  }
                  if (wordsEnglish == "autumnal") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-autumnal");
                  }
                  if (wordsEnglish == "auxiliary") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-auxiliary");
                  }
                  if (wordsEnglish == "available") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-available");
                  }
                  if (wordsEnglish == "availability") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-availability");
                  }
                  if (wordsEnglish == "avalanche") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avalanche");
                  }
                  if (wordsEnglish == "avarice") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avarice");
                  }
                  if (wordsEnglish == "avaricious") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avaricious");
                  }
                  if (wordsEnglish == "avatar") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avatar");
                  }
                  if (wordsEnglish == "avenge") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avenge");
                  }
                  if (wordsEnglish == "avenue") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avenue");
                  }
                  if (wordsEnglish == "average") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-average");
                  }
                  if (wordsEnglish == "averse") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-averse");
                  }
                  if (wordsEnglish == "aversion") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aversion");
                  }
                  if (wordsEnglish == "avert") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avert");
                  }
                  if (wordsEnglish == "avian") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avian");
                  }
                  if (wordsEnglish == "avian flu") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avian-flu");
                  }
                  if (wordsEnglish == "aviary") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aviary");
                  }
                  if (wordsEnglish == "aviation") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aviation");
                  }
                  if (wordsEnglish == "avid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avid");
                  }
                  if (wordsEnglish == "avidly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avidly");
                  }
                  if (wordsEnglish == "avocado") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avocado");
                  }
                  if (wordsEnglish == "avoid") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avoid");
                  }
                  if (wordsEnglish == "avoidable") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avoidable");
                  }
                  if (wordsEnglish == "avoidance") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avoidance");
                  }
                  if (wordsEnglish == "avow") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-avow");
                  }
                  if (wordsEnglish == "awake") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awake");
                  }
                  if (wordsEnglish == "awaken") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awaken");
                  }
                  if (wordsEnglish == "awakening") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awakening");
                  }
                  if (wordsEnglish == "award") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-award");
                  }
                  if (wordsEnglish == "aware") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aware");
                  }
                  if (wordsEnglish == "awareness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awareness");
                  }
                  if (wordsEnglish == "away") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-away");
                  }
                  if (wordsEnglish == "awayday") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awayday");
                  }
                  if (wordsEnglish == "awe") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awe");
                  }
                  if (wordsEnglish == "awe-inspiring") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awe-inspiring");
                  }
                  if (wordsEnglish == "awesome") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awesome");
                  }
                  if (wordsEnglish == "awful") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awful");
                  }
                  if (wordsEnglish == "awfully") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awfully");
                  }
                  if (wordsEnglish == "awhile") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awhile");
                  }
                  if (wordsEnglish == "awkward") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awkward");
                  }
                  if (wordsEnglish == "awkwardly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awkwardly");
                  }
                  if (wordsEnglish == "awkwardness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awkwardness");
                  }
                  if (wordsEnglish == "awning") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awning");
                  }
                  if (wordsEnglish == "awoke") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awake");
                  }
                  if (wordsEnglish == "awoken") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-awaken");
                  }
                  if (wordsEnglish == "ax") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-axe");
                  }
                  if (wordsEnglish == "axe") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-axe");
                  }
                  if (wordsEnglish == "axiom") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-axiom");
                  }
                  if (wordsEnglish == "axiomatic") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-axiomatic");
                  }
                  if (wordsEnglish == "axis") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-axis");
                  }
                  if (wordsEnglish == "axle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-axle");
                  }
                  if (wordsEnglish == "aye") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-aye");
                  }
                  if (wordsEnglish == "azure") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-azure");
                  }
                  if (wordsEnglish == "b") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-b");
                  }
                  if (wordsEnglish == "b.") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-b-two");
                  }
                  if (wordsEnglish == "babble") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-babble");
                  }
                  if (wordsEnglish == "baboon") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-baboon");
                  }
                  if (wordsEnglish == "baby") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-baby");
                  }
                  if (wordsEnglish == "babyish") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-babyish");
                  }
                  if (wordsEnglish == "babysit") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-babysit");
                  }
                  if (wordsEnglish == "babysitter") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-babysitter");
                  }
                  if (wordsEnglish == "bachelor") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bachelor");
                  }
                  if (wordsEnglish == "back") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-back");
                  }
                  if (wordsEnglish == "backache") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backache");
                  }
                  if (wordsEnglish == "backbencher") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backbencher");
                  }
                  if (wordsEnglish == "backbone") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backbone");
                  }
                  if (wordsEnglish == "back-breaking") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-back-breaking");
                  }
                  if (wordsEnglish == "background") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-background");
                  }
                  if (wordsEnglish == "backhand") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backhand");
                  }
                  if (wordsEnglish == "backhanded") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backhanded");
                  }
                  if (wordsEnglish == "backless") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backless");
                  }
                  if (wordsEnglish == "backlog") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backlog");
                  }
                  if (wordsEnglish == "back number") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-back-number");
                  }
                  if (wordsEnglish == "backpack") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backpack");
                  }
                  if (wordsEnglish == "backside") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backside");
                  }
                  if (wordsEnglish == "backslash") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backslash");
                  }
                  if (wordsEnglish == "backstage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backstage");
                  }
                  if (wordsEnglish == "backstroke") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backstroke");
                  }
                  if (wordsEnglish == "backwater") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backwater");
                  }
                  if (wordsEnglish == "backbiting") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backbiting");
                  }
                  if (wordsEnglish == "backdate") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backdate");
                  }
                  if (wordsEnglish == "backfire") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backfire");
                  }
                  if (wordsEnglish == "backlash") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backlash");
                  }
                  if (wordsEnglish == "backer") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backer");
                  }
                  if (wordsEnglish == "backing") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backing");
                  }
                  if (wordsEnglish == "backup") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backup");
                  }
                  if (wordsEnglish == "backgammon") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backgammon");
                  }
                  if (wordsEnglish == "backward") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backward");
                  }
                  if (wordsEnglish == "backwards") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-backwards");
                  }
                  if (wordsEnglish == "bacon") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bacon");
                  }
                  if (wordsEnglish == "bacteria") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bacteria");
                  }
                  if (wordsEnglish == "bacterial") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bacterial");
                  }
                  if (wordsEnglish == "bad") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bad");
                  }
                  if (wordsEnglish == "bad debt") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bad-debt");
                  }
                  if (wordsEnglish == "baddy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-baddy");
                  }
                  if (wordsEnglish == "bad language") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bad-language");
                  }
                  if (wordsEnglish == "badly") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-badly");
                  }
                  if (wordsEnglish == "badness") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-badness");
                  }
                  if (wordsEnglish == "badge") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-badge");
                  }
                  if (wordsEnglish == "badger") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-badger");
                  }
                  if (wordsEnglish == "badminton") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-badminton");
                  }
                  if (wordsEnglish == "bad-tempered") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bad-tempered");
                  }
                  if (wordsEnglish == "baffle") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-baffle");
                  }
                  if (wordsEnglish == "bag") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bag");
                  }
                  if (wordsEnglish == "baggage") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-baggage");
                  }
                  if (wordsEnglish == "baggy") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-baggy");
                  }
                  if (wordsEnglish == "bagpipes") {
                    saveToHistory(wordsEnglish);
                    Routemaster.of(context).push("/english-bagpipes");
                  }
                  // if (wordsEnglish == "bail") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bail");
                  // }
                  // if (wordsEnglish == "bailiff") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bailiff");
                  // }
                  // if (wordsEnglish == "bait") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bait");
                  // }
                  // if (wordsEnglish == "bake") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bake");
                  // }
                  // if (wordsEnglish == "baker") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-baker");
                  // }
                  // if (wordsEnglish == "bakery") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bakery");
                  // }
                  // if (wordsEnglish == "baking powder") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-baking-powder");
                  // }
                  // if (wordsEnglish == "balance") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balance");
                  // }
                  // if (wordsEnglish == "balance sheet") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balance-sheet");
                  // }
                  // if (wordsEnglish == "balcony") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balcony");
                  // }
                  // if (wordsEnglish == "bald") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bald");
                  // }
                  // if (wordsEnglish == "balding") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balding");
                  // }
                  // if (wordsEnglish == "baldly") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-baldly");
                  // }
                  // if (wordsEnglish == "baldness") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-baldness");
                  // }
                  // if (wordsEnglish == "bale") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bale");
                  // }
                  // if (wordsEnglish == "balk") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-baulk");
                  // }
                  // if (wordsEnglish == "ball") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ball");
                  // }
                  // if (wordsEnglish == "ball game") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ball-game");
                  // }
                  // if (wordsEnglish == "ballpoint") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballpoint");
                  // }
                  // if (wordsEnglish == "ballroom") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballroom");
                  // }
                  // if (wordsEnglish == "ballad") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballad");
                  // }
                  // if (wordsEnglish == "ballast") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballast");
                  // }
                  // if (wordsEnglish == "ballerina") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballerina");
                  // }
                  // if (wordsEnglish == "ballet") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballet");
                  // }
                  // if (wordsEnglish == "ballistic") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballistic");
                  // }
                  // if (wordsEnglish == "ballistic missile") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballistic-missile");
                  // }
                  // if (wordsEnglish == "ballistics") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballistics");
                  // }
                  // if (wordsEnglish == "balloon") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balloon");
                  // }
                  // if (wordsEnglish == "ballot") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballot");
                  // }
                  // if (wordsEnglish == "ballot box") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ballot-box");
                  // }
                  // if (wordsEnglish == "balm") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balm");
                  // }
                  // if (wordsEnglish == "balmy") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balmy");
                  // }
                  // if (wordsEnglish == "balsa") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balsa");
                  // }
                  // if (wordsEnglish == "balsamic vinegar") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balsamic-vinegar");
                  // }
                  // if (wordsEnglish == "balti") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balti");
                  // }
                  // if (wordsEnglish == "balustrade") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-balustrade");
                  // }
                  // if (wordsEnglish == "bamboo") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bamboo");
                  // }
                  // if (wordsEnglish == "ban") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-ban");
                  // }
                  // if (wordsEnglish == "banal") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-banal");
                  // }
                  // if (wordsEnglish == "banana") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-banana");
                  // }
                  // if (wordsEnglish == "band") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-band");
                  // }
                  // if (wordsEnglish == "Band Aid") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-band-aid");
                  // }
                  // if (wordsEnglish == "bandstand") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bandstand");
                  // }
                  // if (wordsEnglish == "bandwagon") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bandwagon");
                  // }
                  // if (wordsEnglish == "bandage") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bandage");
                  // }
                  // if (wordsEnglish == "bandit") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bandit");
                  // }
                  // if (wordsEnglish == "bandwidth") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bandwidth");
                  // }
                  // if (wordsEnglish == "bandy") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-bandy");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                  // if (wordsEnglish == "DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM") {
                  //   saveToHistory(wordsEnglish);
                  //   Routemaster.of(context).push("/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM");
                  // }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void saveToHistory(String word) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> englishhistory = prefs.getStringList("english history") ?? [];

    if (!englishhistory.contains(word)) {
      englishhistory.add(word);
      await prefs.setStringList("english history", englishhistory);
    }
  }

  // https://chat.openai.com/c/1b6a5ca9-fbb4-4eb2-8a47-8df7b4085fdc

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
    super.key,
    required this.words,
    required this.onTapWord,
  });

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
    super.key,
    required this.wordsEnglish,
    this.onTap,
  });

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
    super.key,
    required this.label,
    this.onPressed,
  });

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
