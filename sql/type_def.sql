CREATE TABLE `type_definition` (
  `type_ID` INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(40) NOT NULL,
  `def` ENUM('SUPERTYPE', 'TYPE', 'SUBTYPE') NOT NULL,
  PRIMARY KEY (`type_ID`),
  UNIQUE INDEX `name_UNIQUE` (`name`)
 );
 
START TRANSACTION;
INSERT INTO type_definition (name, def) VALUES('Basic','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('Elite','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('Host','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('Legendary','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('Ongoing','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('Snow','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('World','SUPERTYPE');
INSERT INTO type_definition (name, def) VALUES('Artifact','TYPE');
INSERT INTO type_definition (name, def) VALUES('Conspiracy','TYPE');
INSERT INTO type_definition (name, def) VALUES('Creature','TYPE');
INSERT INTO type_definition (name, def) VALUES('Enchantment','TYPE');
INSERT INTO type_definition (name, def) VALUES('Instant','TYPE');
INSERT INTO type_definition (name, def) VALUES('Land','TYPE');
INSERT INTO type_definition (name, def) VALUES('Phenomenon','TYPE');
INSERT INTO type_definition (name, def) VALUES('Plane','TYPE');
INSERT INTO type_definition (name, def) VALUES('Planeswalker','TYPE');
INSERT INTO type_definition (name, def) VALUES('Scheme','TYPE');
INSERT INTO type_definition (name, def) VALUES('Sorcery','TYPE');
INSERT INTO type_definition (name, def) VALUES('Tribal','TYPE');
INSERT INTO type_definition (name, def) VALUES('Vanguard','TYPE');
INSERT INTO type_definition (name, def) VALUES('Summon','TYPE');
INSERT INTO type_definition (name, def) VALUES('Eaturecray','TYPE  ');
INSERT INTO type_definition (name, def) VALUES('Advisor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Aetherborn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ajani','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Alara','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ally','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Aminatou','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Angel','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Angrath','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Anteater','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Antelope','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ape','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Arcane','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Archer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Archon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Arkhos','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Arlinn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Artificer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ashiok','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Assassin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Assembly-Worker','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Atog','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Aura','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Aurochs','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Avatar','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Azgol','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Azra','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Badger','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Barbarian','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Basilisk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bat','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bear','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Beast','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Beaver','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Beeble','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Belenon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Berserker','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bird','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Boar','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bolas','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bolas''s Meditation Realm','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Brainiac','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bringer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Brushwagg','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Bureaucrat','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Camarid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Camel','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Caribou','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Carrier','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cartouche','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cat','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Centaur','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cephalid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Chandra','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Chicken','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Child','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Chimera','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Citizen','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Clamfolk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cleric','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Clue','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cockatrice','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Construct','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Contraption','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cow','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Crab','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Crocodile','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Curse','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cyborg','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Cyclops','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dack','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Daretti','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dauthi','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Deer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Demon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Desert','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Deserter','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Designer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Devil','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dinosaur','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Djinn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dominaria','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Domri','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Donkey','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dovin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dragon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Drake','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dreadnought','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Drone','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Druid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dryad','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Dwarf','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Efreet','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Egg','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elder','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Eldrazi','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elemental','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elemental?','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elephant','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elf','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elspeth','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Elves','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Equilor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Equipment','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ergamon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Estrid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Etiquette','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Eye','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Fabacin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Faerie','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ferret','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Fish','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Flagbearer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Forest','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Fortification','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Fox','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Freyalise','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Frog','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Fungus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gamer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gargoyle','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Garruk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gate','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Germ','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Giant','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gideon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gnome','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Goat','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Goblin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('God','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Golem','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gorgon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Graveborn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gremlin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Griffin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Gus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hag','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Harpy','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hatificer','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Head','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hellion','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hero','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hippo','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hippogriff','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Homarid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Homunculus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Horror','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Horse','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hound','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Huatli','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Human','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hydra','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Hyena','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Igpay','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Illusion','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Imp','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Incarnation','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Innistrad','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Insect','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Iquatana','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ir','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Island','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Jace','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Jackal','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Jaya','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Jellyfish','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Juggernaut','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kaldheim','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kamigawa','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kangaroo','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Karn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Karsus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kavu','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kaya','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kephalai','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Killbot','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kinshala','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kiora','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kirin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kithkin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Knight','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kobold','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kolbahan','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Koth','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kraken','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Kyneth','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lady of Proper','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lair','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lamia','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lammasu','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Leech','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Leviathan','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lhurgoyf','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Licid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Liliana','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lizard','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lobster','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Locus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Lorwyn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Luvion','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Manticore','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Masticore','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mercadia','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mercenary','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Merfolk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Metathran','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mime','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mine','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Minion','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Minotaur','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mirrodin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Moag','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mole','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Monger','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mongoose','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mongseng','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Monk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Monkey','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Moonfolk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mountain','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mummy','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Muraganda','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mutant','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Myr','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Mystic','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Naga','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nahiri','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Narset','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nautilus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nephilim','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('New Phyrexia','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nightmare','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nightstalker','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ninja','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nissa','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nixilis','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Noggle','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nomad','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Nymph','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Octopus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ogre','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ooze','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Orb','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Orc','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Orgg','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ouphe','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ox','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Oyster','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pangolin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Paratrooper','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pegasus','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Penguin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pentavite','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pest','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Phelddagrif','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Phoenix','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Phyrexia','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pilot','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pincher','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pirate','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Plains','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Plant','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Power-Plant','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Praetor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Prism','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Processor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Pyrulea','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rabbit','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rabiah','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Raccoon','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ral','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rat','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rath','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ravnica','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rebel','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Reflection','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Regatha','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rhino','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rigger','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rogue','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Rowan','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sable','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Saga','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Saheeli','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Salamander','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Samurai','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Samut','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sand','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Saproling','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sarkhan','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Satyr','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Scarecrow','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Scariest Creature Youll Ever See','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Scientist','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Scion','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Scorpion','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Scout','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Segovia','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Serf','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Serpent','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Serras Realm','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Servo','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Shade','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Shadowmoor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Shaman','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Shandalar','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Shapeshifter','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sheep','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ship','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Shrine','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Siren','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Skeleton','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Slith','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sliver','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Slug','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Snake','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Soldier','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Soltari','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sorin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Spawn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Specter','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Spellshaper','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sphinx','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Spider','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Spike','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Spirit','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Splinter','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Sponge','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Spy','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Squid','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Squirrel','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Starfish','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Surrakar','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Survivor','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Swamp','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Tamiyo','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Teferi','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Tetravite','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Tezzeret','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Thalakos','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('The Biggest, Baddest, Nastiest,','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Thopter','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Thrull','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Tibalt','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Tower','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Townsfolk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Trap','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Treasure','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Treefolk','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Trilobite','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Triskelavite','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Troll','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Turtle','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Turtle and/or Elephant','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ugin','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Ulgrotha','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Unicorn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Urza','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Urza''s','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Valla','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vampire','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vampyre','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vedalken','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vehicle','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Venser','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Viashino','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Villain','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vivien','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Volver','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vraska','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Vryn','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Waiter','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wall','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Warrior','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Weird','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Werewolf','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Whale','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wildfire','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Will','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Windgrace','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wizard','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wolf','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wolverine','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wombat','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Worm','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wraith','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wrestler','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Wurm','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Xenagos','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Xerex','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Yanggu','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Yanling','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Yeti','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Zendikar','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Zombie','SUBTYPE');
INSERT INTO type_definition (name, def) VALUES('Zubera','SUBTYPE');
COMMIT;
