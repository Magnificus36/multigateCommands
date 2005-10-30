#!/usr/bin/perl -w
use strict;

my @gerund = (
    "Adjusting",                     "Arguing with",
    "Arm-wrestling",                 "Assaulting",
    "Attacking",                     "Auditioning",
    "Badgering",                     "Baiting",
    "Bangin'",                       "Banging",
    "Bashing",                       "Basting",
    "Battling",                      "Beatin'",
    "Beating",                       "Being rough with",
    "Bleeding",                      "Blowing",
    "Bludgeoning",                   "Bobbing",
    "Bonging",                       "Booting up",
    "Boppin'",                       "Bopping",
    "Bouncing",                      "Boxing",
    "Boxing with",                   "Breaking",
    "Buckin'",                       "Buffin'",
    "Buffing",                       "Buggering",
    "Burping",                       "Buttering",
    "Caning",                        "Charming",
    "Checking",                      "Chilling",
    "Choking",                       "Churning",
    "Clamping",                      "Cleaning",
    "Cleaning out",                  "Clearing",
    "Clobbering",                    "Clubbing",
    "Coating",                       "Cocking",
    "Cooking with",                  "Corralling",
    "Cracking",                      "Cranking",
    "Crowning",                      "Cuddlin'",
    "Cuffing",                       "Dancing with",
    "Debugging",                     "Decongesting",
    "Digitally oscillating",         "Discharging",
    "Disciplining",                  "Doin' a loner with",
    "Doing",                         "Doing battle with",
    "Doing the knuckle shuffle on",  "Doodling",
    "Draining",                      "Duking",
    "Emptying",                      "Erupting",
    "Exercising",                    "Firing",
    "Firming",                       "Fisting",
    "Five-knuckle-shuffle on",       "Flaying",
    "Flicking",                      "Flipping",
    "Floggin'",                      "Flogging",
    "Fondling",                      "Fooling with",
    "Freeing",                       "Frigging",
    "Gettin' jizzy with",            "Getting a load off",
    "Getting in touch with",         "Getting to know",
    "Going a couple of rounds with", "Going into battle with",
    "Grappling",                     "Greasin' up",
    "Greasing",                      "Gripping",
    "Hacking",                       "Hand-starting",
    "Handling",                      "Hanging out with",
    "Harping on",                    "Having a conversation with",
    "Having a one-night-stand with", "Having a play date with",
    "Having a tug-of-war with",      "Having an arm-wrestle with",
    "Having sex with",               "Helping",
    "Hitting",                       "Hoisting",
    "Holding",                       "Honing",
    "Honking",                       "Huffing on",
    "Hugging",                       "Humping",
    "Jackin'",                       "Jacking up",
    "Jammin'",                       "Jerkin'",
    "Jerking",                       "Jiggling",
    "Jimmying",                      "Jogging",
    "Joshing",                       "Juicing",
    "Kneading",                      "Knockin' over",
    "Knuckle shuffle on",            "Knuckling",
    "Launching",                     "Leakin'",
    "Loving",                        "Lubing",
    "Making friends with",           "Making like Hans Solo and stroking",
    "Mangling",                      "Manhandling",
    "Manipulating",                  "Massaging",
    "Milking",                       "Moisturizing",
    "Molesting",                     "Nerking",
    "Oiling",                        "Paddling",
    "Pattin'",                       "Peeling",
    "Performing diagnostics on",     "Petting",
    "Playin' with",                  "Playing peek-a-boo with",
    "Playing ping pong with",        "Playing pocket polo with",
    "Playing tag with",              "Playing tug-o-war with",
    "Playing with",                  "Pleasing",
    "Plunking",                      "Polishing",
    "Pounding",                      "Preparing",
    "Priming",                       "Pulling",
    "Pummeling",                     "Pumpin'",
    "Pumping",                       "Punchin'",
    "Punching",                      "Punishing",
    "Raising",                       "Ramming",
    "Rippin'",                       "Rolling",
    "Romancing",                     "Ropin'",
    "Roping",                        "Roughing up",
    "Rubbing",                       "Sanding",
    "Saying hello to",               "Scalpin'",
    "Scouring",                      "Scraping",
    "Scratchin'",                    "Scratching",
    "Seasonin'",                     "Shakin' hands with",
    "Shaking",                       "Shaking coconuts from",
    "Shaking hands with",            "Shaking the coconut milk of love from",
    "Sharpening",                    "Shellacking",
    "Shemping",                      "Shifting to fifth gear with",
    "Shining",                       "Shooting",
    "Shuckin'",                      "Slammin'",
    "Slamming",                      "Slap-Boxing",
    "Slappin'",                      "Slapping",
    "Slapping high fives with",      "Slaying",
    "Slicking",                      "Smackin'",
    "Smacking",                      "Snapping",
    "Spanking",                      "Spending some quality time with",
    "Spit-polishing",                "Spunking",
    "Spurtin'",                      "Squashing",
    "Squeezing",                     "Squishing",
    "Strainin'",                     "Strangling",
    "Stretching",                    "Striking",
    "Stripping",                     "Strokin'",
    "Stroking",                      "Strummin'",
    "Sucker-punching",               "Swinging",
    "Taking your turn at",           "Taming",
    "Tapping",                       "Taunting",
    "Teasing",                       "Tenderizing",
    "Test-firing",                   "Testing",
    "Thrashing",                     "Throbbing",
    "Thumping",                      "Thwackin'",
    "Tickling",                      "Touching",
    "Trolling for",                  "Tuggin'",
    "Tugging",                       "Tussling",
    "Twanging",                      "Tweaking",
    "Twisting",                      "Unloading",
    "Unmasking",                     "Unsheathing",
    "Unwrapping",                    "Using the Force on",
    "Varnishing",                    "Vibrating",
    "Violating",                     "Visiting",
    "Wacking",                       "Wagging",
    "Waking",                        "Walking",
    "Waltzing with",                 "Wanking",
    "Wanking with",                  "Warming up",
    "Washing",                       "Waving",
    "Waxing",                        "Whackin'",
    "Whacking",                      "Whippin'",
    "Whipping",                      "Whittling",
    "Whomping",                      "Wiggling",
    "Winding",                       "Wonking",
    "Working",                       "Working a cramp out of",
    "Wrestling",                     "Wrestling with",
    "Wringing",                      "Wringing out",
    "Yankin'",                       "Yanking"
);

my @noun = (
    "a friendly weapon",                  "a stiff joint",
    "Abe Lincoln",                        "Agent Johnson",
    "my beef",                            "Bert",
    "Big Ed",                             "Bob and the twins",
    "Bobby",                              "Bubba",
    "Charlie 'till he throws up",         "Cheetah",
    "Darth Vader",                        "dick",
    "Eddy",                               "Elvis",
    "Frank",                              "Happy Harry Hard-on",
    "heavy equipment",                    "Henry Longfellow",
    "Isaiah",                             "it",
    "Jack",                               "Jack McNasty",
    "Jamby",                              "Jimmy",
    "Jimmy Dean",                         "Johnnie One-Eye",
    "Johnson",                            "Kojak",
    "Little Richard",                     "the ManTool",
    "Mount Baldy",                        "Mount Love",
    "Mr. Happy",                          "Mr. Ho-Ho",
    "Mr. Johnson",                        "Mr. President",
    "Mr. Winkie",                         "Mr. Wong",
    "Mt. Barbell",                        "my horn",
    "my knockwurst",                      "my little brother Peter",
    "my love monkey",                     "my own",
    "my own business",                    "my six-inch",
    "my thing",                           "my wand",
    "Ol' Faithful",                       "ol' Josh",
    "old beater",                         "Old Faithful",
    "one's penis",                        "one's self",
    "Oscar",                              "Oscar in the closet",
    "Pappy",                              "Pedro",
    "Percy",                              "Percy in your palm",
    "Percy with the palm",                "Peter Tork",
    "Prince William Sound with love oil", "Richard",
    "Shorty",                             "Skippy",
    "Slick Mittens",                      "someone you love",
    "Stonehenge",                         "the alligator",
    "the altar boy's dinner",             "the antelope",
    "the antenna",                        "the axle",
    "the baby",                           "the baby seal",
    "the bad guy",                        "the bait",
    "the bald champ",                     "the bald guy 'til he pukes",
    "the bald-headed moose",              "the balogna",
    "the baloney",                        "the balony pony",
    "the banana",                         "the bark off your wood",
    "the baseball bat",                   "the bayonet",
    "the beagle",                         "the beanpole",
    "the Beanstalk",                      "the Beast",
    "the bed flute",                      "the beefsteak",
    "the bic",                            "the big-nosed Rasta man",
    "the Bishop",                         "the blind webster",
    "the blister",                        "the blue-veined custard chucker",
    "the blue-veined junket pumper",      "the bobo",
    "the bologna pony",                   "the bone",
    "the Bone-A-Phone",                   "the bone-a-thon",
    "the Bonzo",                          "the boss",
    "the bratworst",                      "the bread",
    "the Buddha for good luck",           "the bulimic one-eyed monster",
    "the bull",                           "the bunny",
    "the burrito",                        "the candle",
    "the cane",                           "the car",
    "the carrot",                         "the cat pole",
    "the Charmin",                        "the cheeta",
    "the chicken",                        "the chrome dome",
    "the clam",                           "the clown",
    "the cobra",                          "the cockpit",
    "the cord",                           "the cork",
    "the corn",                           "the cow",
    "the crank",                          "the cream from the flesh Twinkie",
    "the cream of cock",                  "the crotch trombone",
    "the crusader",                       "the Cyclops",
    "the Cyclops 'til he throws up",      "the czar",
    "the devil-dolphin",                  "the dill",
    "the dog",                            "the dolphin",
    "the dong",                           "the donkey",
    "the doodle",                         "the dragon",
    "the dragon's tail",                  "the dude",
    "the dummy",                          "the eel",
    "the electric goo gun",               "the elephant's trunk",
    "the Elmo",                           "the Emperor",
    "the family jewels",                  "the fat man",
    "the fig",                            "the fire pole",
    "the fish",                           "the fish tank",
    "the fisherman",                      "the flag pole",
    "the flesh flute",                    "the flesh musket",
    "the FleshGopher",                    "the fountain",
    "the frank",                          "the frog",
    "the fuck out of your best friend",   "the gator",
    "the General",                        "the gherkin",
    "the goalie",                         "the goat",
    "the goblin of love",                 "the gorilla",
    "the Governor",                       "the gun",
    "the ham",                            "the hammer",
    "the hand brake",                     "the hand cream dispenser",
    "the hand shuttle",                   "the handbrake",
    "the hard drive",                     "the heat-seeking moisture missile",
    "the hedge-hog",                      "the helmet",
    "the hoagie",                         "the hog",
    "the hostages",                       "the hot rod",
    "the hound",                          "the injun",
    "the itch",                           "the Jack in the Box",
    "the Jesuit",                         "the Jesuit and getting cockroaches",
    "the jizz monster",                   "the Jocelyn Elders Midterm",
    "the Johnson",                        "the joystick",
    "the jump rope",                      "the king",
    "the knob",                           "the lava lamp",
    "the leafless palm trunk",            "the light saber",
    "the Lighthouse",                     "the lizard",
    "the log",                            "the long horn",
    "the love muscle",                    "the love pump",
    "the love rifle",                     "the love tree",
    "the magic one-eyed wonder weasel",   "the Magic Wand",
    "the main drain",                     "the main vein",
    "the mainsail",                       "the male organ",
    "the mango",                          "the manhood",
    "the maypole",                        "the meat",
    "the meat missle",                    "the midget",
    "the mighty dick hinge",              "the mink",
    "the mole",                           "the Monk",
    "the monkey",                         "the monster",
    "the moose",                          "the morning missile",
    "the mule",                           "the munchkin",
    "the muppet",                         "the muscle",
    "the obelisk",                        "the obvious",
    "the ol' 1 wood",                     "the ol' piss pump",
    "the old goal post",                  "the old lizard",
    "the old man",                        "the one-eyed burping gecko",
    "the One-Eyed Champ",                 "the one-eyed clown",
    "the one-eyed field mouse with the purple turtle-neck sweater", "the one-eyed monster",
    "the one-eyed postal worker out of his denim cell",             "the one-eyed purple-headed warrior",
    "the one-eyed superhero",                        "the one-eyed trouser snake",
    "the one-eyed trouser trout",                    "the one-eyed walleye",
    "the one-eyed weasel",                           "the one-eyed wonder weasel",
    "the one-eyed worm",                             "the one-eyed yogurt thrower",
    "the one-handed air guitar",                     "the one-stringed guitar",
    "the oompa loompa",                              "the organ",
    "the paddle",                                    "the pencil",
    "the penis",                                     "the pepperoni",
    "the pickle",                                    "the pink eraser",
    "the pink match",                                "the pink Mustang",
    "the pink torpedo",                              "the pipe",
    "the pipes",                                     "the pirate",
    "the piss pipe",                                 "the piss pump",
    "the pisser",                                    "the plank",
    "the plumbing",                                  "the pogo stick",
    "the pole",                                      "the Polish salmon",
    "the pony",                                      "the poodle",
    "the Pope",                                      "the pork spear",
    "the pork stick",                                "the pork sword",
    "the porpoise",                                  "the possum",
    "the President",                                 "the presidential staff",
    "the priest",                                    "the primate",
    "the pud",                                       "the pump",
    "the pump action porridge gun",                  "the pumpkin",
    "the puppy",                                     "the purple headed warrior",
    "the purple helmet",                             "the purple-helmeted warrior",
    "the Purple-Helmeted Warrior of Love",           "the purple people pleaser",
    "the purple pimple",                             "the purple-veined kidney stabber",
    "the purple-headed custard chucker",             "the purple-headed stormtrooper",
    "the purple-headed yogurt pistol",               "the purple-headed yogurt slinger",
    "the python",                                    "the radish",
    "the rat",                                       "the rifle",
    "the rocket",                                    "the rocking horse",
    "the rod",                                       "the root",
    "the rope",                                      "the royal red reproduction rod",
    "the sack",                                      "the salami",
    "the salmon",                                    "the satin-headed serpent",
    "the sausage",                                   "the sea monkey",
    "the self-serve pump",                           "the Serpent",
    "the sex stick",                                 "the shaft",
    "the shank",                                     "the shellaleigh",
    "the sheriff and waiting for the posse to come", "the shit out of your incapacitated midget",
    "the single serving soup dispenser",             "the skin bus",
    "the skin flute",                                "the slug",
    "the snake",                                     "the snake with the turtleneck sweater",
    "the snorkel",                                   "the snot outta Rotney",
    "the snotty end of my fuck stick",               "the soft soap dispenser",
    "the spam javelin",                              "the sperm whale",
    "the spitting llama",                            "the squirmin' German",
    "the staff",                                     "the staked vampire 'til he flames up",
    "the stallion",                                  "the stand-up organ",
    "the stepson",                                   "the stick",
    "the stiff",                                     "the stump",
    "the sugar tree",                                "the sump-pump",
    "the Surgeon General",                           "the suspect",
    "the sword",                                     "the tadpoles",
    "the tapioca tube",                              "the testicular squatters",
    "the throb knob",                                "the Thurmond",
    "the timber",                                    "the tower of power",
    "the tree",                                      "the trouser mouse",
    "the tube",                                      "the tube of toothpaste",
    "the tube steak",                                "the turkey",
    "the turtle neck",                               "the two-toned trouser trout",
    "the unemployed",                                "the unicorn's horn",
    "the vandal",                                    "the vein",
    "the veiny palm tree of lust",                   "the Viking",
    "the viper and making him spit poison",          "the walrus",
    "the weasel",                                    "the weeble",
    "the weed",                                      "the weenie",
    "the whip",                                      "the white-out pen",
    "the whopper",                                   "the wiener",
    "the wild hog",                                  "the willie",
    "the window washer",                             "the wire",
    "the witness",                                   "the wolverine",
    "the wood",                                      "the worm",
    "the yak 'til it spits back",                    "the yoyo",
    "the zipper trout",                              "trouser trout",
    "Wally the one-eyed wonder worm",                "Wee Willie Winkle",
    "Willy",                                         "Willy the one-eyed wonder-worm",
    "wood",                                          "Yoosef",
    "your animal",                                   "your bacon",
    "your bayonet",                                  "your beef",
    "your bird",                                     "your bologna",
    "your boloney",                                  "your bone",
    "your boner",                                    "your butter",
    "your carrot",                                   "your chain",
    "your cheese-dog",                               "your chicken",
    "your chub",                                     "your conker",
    "your corn",                                     "your crank",
    "your dick fish into the gene pool",             "your ding dong",
    "your dog",                                      "your dong",
    "your donk",                                     "your dripper",
    "your dumber brother",                           "your fire hose",
    "your flounder",                                 "your Franklin",
    "your goalie",                                   "your goat",
    "your hands with your beauty bar",               "your helmet",
    "your hook",                                     "your horn",
    "your hose",                                     "your hot dog",
    "your instrument",                               "your Jackson",
    "your Jimmy",                                    "your Joey",
    "your John Thomas",                              "your Johnson",
    "your little friend",                            "your load",
    "your log",                                      "your love muscle",
    "your man-handle",                               "your manhood",
    "your match",                                    "your meat",
    "your meat saber",                               "your mister",
    "your muscle",                                   "your noodle",
    "your nuts",                                     "your one-eyed vessel",
    "your organ",                                    "your own",
    "your own horn",                                 "your own leg",
    "your own thing",                                "your pencil",
    "your piece",                                    "your piss pump",
    "your pisser",                                   "your plank",
    "your plonker",                                  "your poker",
    "your pole",                                     "your power cord",
    "your prick",                                    "your pud",
    "your purple-headed warrior",                    "your rifle",
    "your rope",                                     "your set",
    "your sex pistol",                               "your shlong",
    "your special friend",                           "your staff",
    "your surfboard",                                "your taffy",
    "your tater",                                    "your thing",
    "your throbber",                                 "your tool",
    "your tubesteak",                                "your turtle",
    "your twanger",                                  "your twinkie",
    "your weasel",                                   "your wife's best friend",
    "your Willy",                                    "your wire",
    "your wood",                                     "your wookie",
    "your worm",                                     "your Yoda",
    "yourself",                                      "yourself at home",
    "yourself in the crotch",                        "yourself into emission",
    "Yul Brynner"
);

print $gerund[ rand(@gerund) ] . " " . $noun[ rand(@noun) ] . "\n";