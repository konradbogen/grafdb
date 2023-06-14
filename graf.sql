
DROP TABLE IF EXISTS Node;
DROP TABLE IF EXISTS Cluster;
DROP TABLE IF EXISTS ClusteredNode;
DROP TABLE IF EXISTS is_in_cluster;
DROP VIEW IF EXISTS Miss;
DROP VIEW IF EXISTS You;
DROP VIEW IF EXISTS Nice;
DROP VIEW IF EXISTS High;
DROP VIEW IF EXISTS Pain;
DROP VIEW IF EXISTS Sight;
DROP VIEW IF EXISTS Act;
DROP VIEW IF EXISTS Licht;
DROP VIEW IF EXISTS Wind;
DROP VIEW IF EXISTS Band;
DROP VIEW IF EXISTS Space;
DROP VIEW IF EXISTS Mess;
DROP VIEW IF EXISTS Eight;
DROP VIEW IF EXISTS Ort;
DROP VIEW IF EXISTS Nacht;
DROP VIEW IF EXISTS Spot;
DROP VIEW IF EXISTS Nation;
DROP VIEW IF EXISTS _Key;
DROP VIEW IF EXISTS _If;
DROP VIEW IF EXISTS Regen;
DROP VIEW IF EXISTS Partitur;
DROP VIEW IF EXISTS Hafen;
DROP VIEW IF EXISTS Heads;
DROP VIEW IF EXISTS Reise;
DROP VIEW IF EXISTS Wald;
DROP VIEW IF EXISTS Sex;
DROP VIEW IF EXISTS One;
DROP VIEW IF EXISTS Two;
DROP VIEW IF EXISTS Three;
DROP VIEW IF EXISTS SpaceOne;
DROP VIEW IF EXISTS Mel;

CREATE TABLE Node (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    lil_text VARCHAR(255),
    lil_mel VARCHAR(255),
    chords VARCHAR (255),
    syllables INTEGER DEFAULT 1 NOT NULL,
    stress INTEGER DEFAULT 1 NOT NULL,
    CHECK (syllables <= 9 AND syllables >= 1),
    CHECK (stress <= 9 AND stress >= 1)
);

CREATE TABLE Cluster (
    name VARCHAR(50) PRIMARY KEY NOT NULL,
    typ VARCHAR(50) NOT NULL,
    energy INTEGER
);


CREATE TABLE is_in_cluster (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    cluster_name VARCHAR(50),
    node_text VARCHAR(255),
    node_mel VARCHAR (255),
    CHECK ((node_text IS NOT NULL AND node_mel IS NULL) OR (node_text IS NULL AND node_mel IS NOT NULL)),
    FOREIGN KEY (cluster_name) REFERENCES Cluster(name),
    FOREIGN KEY (node_text) REFERENCES Node(lil_text),
    FOREIGN KEY (node_mel) REFERENCES Node(lil_mel)
);


INSERT INTO Cluster (name, typ) VALUES ("Space", "Language");
INSERT INTO Cluster (name, typ) VALUES ("High", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("Nice", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("You", "Language");
INSERT INTO Cluster (name, typ) VALUES ("A", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Miss", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Mess", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Wind", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ort", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Was", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nothing", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Love", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Hafen", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Band", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nacht", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Journey", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Reise", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Eight", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Act", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ü", "Language");
INSERT INTO Cluster (name, typ) VALUES ("_", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Key", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Partitur", "Language");
INSERT INTO Cluster (name, typ) VALUES ("If", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Licht", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Pain", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Spot", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nation", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Regen", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Heads", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Wald", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Sex", "Language");


INSERT INTO Cluster (name, typ) VALUES ("7b34", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("154", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b345", "Pitch");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 4' 5' b7'", 4, 1, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' 4' 5' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b7' b7'", 4, 4, "bVImaj7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 4' 5' 4' 5' b7' 4'", 7, 5, "Im7 Vm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' 4' 5' 4' 5' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' b3'", 3, 1, "IVm7 Im7 VII7sus4");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3'' b7' b3' 4' 5' b7' 4'", 7, 5, "bVImaj7 Im7/b3 Im7 VII7add4");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3'' b7' b3' 4' 5' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3'' b7' b3' 4' 5' b7' 4'", 8, 6, "bVImaj7 Im7/b3 Im7 VII7add4");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' b3'' b7' b3' 4' 5' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' b3'' b7' b3' 4' 5' b7' 4'", 9, 7, "bVImaj7 Im7/b3 Im7 VII7add4");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' b3' b3'' b7' b3' 4' 5' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 4' 5' b3'' b7'", 5, 5, "VII7/7 bII/7 bIII/7 bVIadd6/3 Im7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' 4' 5' b3'' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' 4' 5' b3'' b7'", 6, 6, "VII7/7 bII/7 bIII/7 bVIadd6/3 Im7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' b3' 4' 5' b3'' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' b3'", 3, 2, "bVImaj7 bVIm6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b3' b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3' 4' 7", 5, 3, "bVImaj7 bVIm6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3' 4' 7");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3'", 3, 3, "Im7/5 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3'", 3, 3, "bVIomitThird VIb5");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3'", 3, 3, "bVI/3 VIb5/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 7 4'", 3, 3, "Im7/3 bVII/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b3' 7 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3'", 3, 3, "Im7 bVII");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' b3'", 3, 3, "Vm7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1 5' 4'", 3, 1, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5 1 5' 4'", 4, 4, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "5 1 5' 4'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Circles and Lines", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Circles and Lines");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Inclusion", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Inclusion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exclusion", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Exclusion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exclusion", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Exclusion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Per-mu-ta-tio-nen al-ler We-ge", 9, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Per-mu-ta-tio-nen al-ler We-ge");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Alle We-ge", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Alle We-ge");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Set co-or-di-nates", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Set co-or-di-nates");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Get co-or-di-nates", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Get co-or-di-nates");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Space-Kid kommt im Ha-fen an", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Das Space-Kid kommt im Ha-fen an");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Space-Kid baut 'ne Da-ten-bank", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Das Space-Kid baut 'ne Da-ten-bank");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ha-fen-lich-ter du bist nicht da", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Ha-fen-lich-ter du bist nicht da");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich er-kenn den Ha-fen nicht", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Ich er-kenn den Ha-fen nicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ha-fen-si-cher", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Ha-fen-si-cher");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-bend-lich-ter", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "A-bend-lich-ter");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Write like your run-ning out of time", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Write like your run-ning out of ");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-mu-ni-ca-tion", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Com-mu-ni-ca-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-bi-na-tion", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Com-bi-na-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Saves re-la-tions", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Saves re-la-tions");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Soul of a na-tion", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Soul of a na-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss all the sex", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "I miss all the sex");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss gi-ving heads", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "I miss gi-ving heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The fo-rest and the heads", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "The forest and the heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The fo-rest and the heads", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "The forest and the heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A space race to the moon", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A space race to the moon");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Spot-light", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Spot", "Spot-light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ba-by she's on top", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Spot", "Ba-by she's on top");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In her crop top", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Spot", "In her crop-top");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ba-by now it's pho-to-shop", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Spot", "Ba-by now it's pho-to-shop");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Some-thing bet-ween me and you", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Some-thing bet-ween me and you");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ce-res-tral be-ings", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Ce-res-tral be-ings");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Depth-First through the tree", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Depth first through the tree");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base in nor-mal-form", 7, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Da-ta-base in nor-mal-form");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Se-ven nine or eight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Se-ven nine or eight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mo-du-lo of eight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Mo-du-lo of eight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cause you've been wai-ting way to long", 8, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Cause you've been wai-ting way to long");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a wai-ting game", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "It's a wai-ting game");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Oc-ta-gon is eight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Oc-ta-gon is eight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Komm im Ha-fen an", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Komm im Ha-fen an");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An den Glei-sen glänzt das Ha-fen-licht", 9, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "An den Glei-sen glänzt das Ha-fen-licht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ten-bank im Ha-fen-licht", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Da-ten-bank im Ha-fen-licht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Er-kenn den Ha-fen nicht", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Er-kenn den Ha-fen nicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Par-ti-tur auf Par-ty-tour", 7, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Par-ti-tur auf Par-ty-tour");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mi-to-chon-dri-a", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Mi-to-chon-dri-a");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In her pre-tty sweet red dress", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "In her pre-tty sweet red dress");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eine Zah-len-par-ti-tion", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Partitur", "Eine Zah-len-par-ti-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eine Zah-len-par-ti-tur", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Partitur", "Eine Zah-len-par-ti-tur");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("U-nit Test", 3, 3);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "U-nit Test");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She look pret-ty in that dress", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "She look pret-ty in that dress");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She a pret-ty loo-king mess", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "She a pret-ty loo-king mess");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Soft-ware macht die Par-ti-tur", 8, 8);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Ort", "Die Soft-ware macht die Par-ti-tur");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cur-rent node", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Cur-rent node");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Breadth-First through the tree", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Breadth-First through the tree");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("This is you and me", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "This is you and me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We are free", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "We are free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To be free", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "To be free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Free", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's be-bop", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "It's be-bop");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Injektiv ist Links", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Injektiv ist Links");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich bin ich", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Ich bin ich");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Vie-leicht war es das nichts", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Vie-leicht war es das nichts");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Ta-schen sind ge-packt", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Die Ta-schen sind ge-packt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wir rei-sen durch die Nacht", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Wir rei-sen durch die Nacht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zäh-len Gan-ze Zah-len", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Zäh-len Gan-ze Zah-len");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Spann-baum gan-zer Zah-len", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Spann-baum gan-zer Zah-len");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pa-ral-le-le Trans-ak-tio-nen", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Pa-ral-le-le Trans-ak-tio-nen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sie ist ge-nial", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Sie ist ge-nial");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tei-ler-frem-de Zah-len", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Tei-ler-frem-de Zah-len");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ten-bank-an-fra-gen", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Da-ten-bank-an-fra-gen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Gra-phen", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Graph", "Gra-phen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cho-re-o-gra-phie", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Graph", "Gra-phen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Gra-fo-lo-gie", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Graph", "Gra-fo-lo-gie");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Play by day and write at night", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Graphen", "Play by day and write at night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Please just stop this fight", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "Please just stop this fight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Frei-e Pi-ra-ten", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Graphen", "Frei-e Pi-ra-ten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Frei-e Pi-ra-ten", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Graphen", "Frei-e Pi-ra-ten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-ma-zing", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A-ma-zing");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She's A-ma-zing", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "She's A-ma-zing");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Meet me in my hide-a-way", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Meet me in my hide-a-way");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Into the light", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Into the light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Auf Gleis 1 A", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Auf Gleis 1 A");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Gleis 1 A", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Gleis 1 A");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Er-stel-len Kan-ten in Krus-kal", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Er-stel-len Kan-ten in Krus-kal");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a joke that makes me cry", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "It's a joke that makes me cry");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Durch die Nacht", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Durch die Nacht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("E-mi-nem er schreibt", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "E-mi-nem er schreibt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ty-ler the cre-a-tor", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ty-ler the cre-a-tor");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tei-ler", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Tei-ler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nacht-scha-tten", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Nacht-scha-tten");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("In Nacht-scha-tten", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "In Nacht-scha-tten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Blo-o-men-wer-ker-straat", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Blo-o-men-wer-ker-straat");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Ich");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich bin ich Per-mu-ta-tion", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Ich");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Create a view with Sicht", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Create a view with sicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In uns bricht sich das Licht", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "In uns bricht sich das Licht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Just Be-Bop", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Just Be-Bop");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Freedom", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Freedom");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tri-vi-a-le Tei-ler", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Tri-vi-a-le Tei-ler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Free Free Free", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Free Free Free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is this real-ly me", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Is this real-ly me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("For-eign keys", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "For-eign keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Li-inked Li-ist", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Li-inked Li-ist");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Set in-to a da-ta-base", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Set in-to a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In-sert in-to a da-ta-base", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "In-sert in-to a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Left Join Where Into a Da-ta-base", 9, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Left Join Where Into a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Can't you see", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Can't you see");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Handful full of keys", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Handful full of keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Prim And Krus-kal", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Prim and Krus-kal");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-ve-rage", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "A-ve-rage");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Left Join", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("If", "Left Join");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tu-ple Set", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Tu-ple Set");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base in-te-gri-ty", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Da-ta-base in-te-gri-ty");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-pu-ta-tion and Techno-lo-gy", 9, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Com-pu-ta-tion and Techno-lo-gy");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I need si-lence when we leave", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "I need si-lence when we leave");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I em-po-wer all my dreams", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "I em-po-wer all my dreams");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Who are we", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Who are we");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Act five", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Act five");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Static function main", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Static function main");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ma-ni-pu-la-tive brains", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Ma-ni-pu-la-tive brains");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("All we have is pain", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "All we have is pain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I take the rain a-way", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "I take the rain a-way");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's rai-ning a-gain", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "It's rai-ning a-gain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I take the pain a-way", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "I take the pain a-way");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a hi-igh way", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "It's a hi-igh way");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Or-der by I-D", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Or-der by I-D");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Or-der of i-deas", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Or-der of i-deas");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We hash songs in keys of life", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "We hash songs in keys of life");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's key", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "It's key");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I be-lieve", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "I be-lieve");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Return you'll see", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Return you'll see");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I be-lieve we're free", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "I be-lieve we're free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Now it's you and me", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Now it's you and me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Just a hand of keys", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Just a hand of keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I don't trust me", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "I don't trust me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("At-tri-butes and keys", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "At-tri-butes and keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Do you love me", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Do you love me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In or-der of a tree", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "In or-der of a tree");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I ut-ter-ly love trees", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "I ut-ter-ly love trees");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I wan-ted that a-act right", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "I wan-ted that a-act right");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Third act", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Third act");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("First act", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "First act");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-la-tiv Prim", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Re-la-tiv Prim");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A B C", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "A B C");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Im-pli-ka-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Im-pli-ka-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nie-mand weiss wie-so er weint", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Nie-mand weiss wie-so er weint");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Play by day and write at night", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Play by day and write at night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Too hi-igh or too low", 6, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Too hi-igh or too low");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I re-act", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "I re-act");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In the win-dy ci-ty that night", 9, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "In the win-dy ci-ty that night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Der Brun-nen fällt ins Kind", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wind", "Der Brun-nen fällt ins Kind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Der Brun-nen fällt ins Kind", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wind", "Der Brun-nen fällt ins Kind");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b3 5 b3 5 b3 5 b3 5", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "b3 5 b3 5 b3 5 b3 5");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b3 1 b3 5 4 b3 2 b3", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "b3 1 b3 5 4 b3 2 b3");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("2 5 2 5 2 5 2 5", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Vm7", "2 5 2 5 2 5 2 5");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("1 5 1 5 1 5 1 5", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "1 5 1 5 1 5 1 5");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b6, 5 b6, 5 b6, 5 b6, 5", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6", "b6, 5 b6, 5 b6, 5 b6, 5");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("1 1 2 2 b3 b3", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6 Im7", "1 1 2 2 b3 b3");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 b6 4 5 b3", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "5 b6 4 5 b3");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rei-se auf die and-re Sei-te", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Rei-se auf die and-re Sei-te");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Büh-nen-sze-ne Wü-tend-wer-den", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ü", "Büh-nen-sze-ne Wü-tend-wer-den");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An den Glei-sen", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "An den Glei-sen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wör-ter tra-gen wei-te Wel-ten", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Wör-ter tra-gen wei-te Wel-ten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lei-se auf 'ne Rei-se ge-hen", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Lei-se auf 'ne Rei-se ge-hen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-vant-gar-den Rei-se-sze-ne", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "A-vant-gar-den Rei-se-sze-ne");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lei-se auf die and-re Sei-te", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Lei-se auf die and-re Sei-te");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rei-sen mit Ra-ke-ten-trei-be", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Rei-sen mit Ra-ke-ten-trei-be");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-ba-ses Da-ta-ba-ses", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Da-ta-ba-ses Da-ta-ba-ses");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Alpha Be-ta Branches Pru-ning", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Alpha Be-ta Branches Pru-ning");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Alpha Be-ta Be-ta Al-pha", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Alpha Be-ta Be-ta Al-pha");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Whats your fa-ces watch your fa-ces", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Whats your fa-ces watch your fa-ces");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Gree-dy Al-go-rith-men schrei-ben", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Gree-dy Al-go-rith-men schrei-ben");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Beauty and the beast", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Beauty and the beast");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nie-mand bleibt zu-rück", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Nie-mand bleibt zu-rück");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In-to the light", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In-to the light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Graph dot size", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "Graph dot size");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nie-mand sieht das Glück", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Nie-mand sieht das Glück");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tay-lor Po-ly-nom", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Tay-lor Po-ly-nom");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was ist n log n", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Was ist n log n");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In uns bricht sich das Licht", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "In uns bricht sich das Licht");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 b3 4 7 4 4", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6 Im7", "5 b3 4 7 4 4");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("7 7 7 7 7 7", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6 Im7", "7 7 7 7 7 7");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("1 b2 b3 3 b5 3", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("HTGT", "1 b2 b3 3 b5 3");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b5 3 b3 b2 1 1", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("HTGT", "b5 3 b3 b2 1 1");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 4 4 b3 4 4", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6 VII7", "5 4 4 b3 4 4");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("4 4 4 b3 5", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("VII7 Im7", "4 4 4 b3 5");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Who is it de-ci-i-ding", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eiding", "Who is it de-ci-ding");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Now she ri-ding", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eiding", "Now she ri-ding");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bit-te glaub den Ster-nen", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Bit-te glaub den Ster-nen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tay-lor Po-ly-no-me", 6, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Act like no-thing", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nothing", "Act like no-thing");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("4'' b3'' b2'' b7' b6'", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("#VIImaj7 bIIIm7", "4'' b3'' b2'' b7' b6'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("On this end-less jour-ney", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Journey", "On this end-less jour-ney");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "On this end-less jour-ney");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("There's no end in sight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "There's no end in sight");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "There's no end in sight");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 7 4'", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7 VII7", "5 7 4'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Love your lips", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Love", "Love your lips");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I love your eyes", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Love", "I love your eyes");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b2' 7 6 b6", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("VImaj7 IImaj7", "b2' 7 6 b6");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Has Edge re-flec-tive", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Has Edge re-flec-tive");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pri-vate sta-tic int", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wind", "Pri-vate sta-tic int");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b5' 3' b2' 7", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("VImaj7 IImaj7", "b5' 3' b2' 7");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm out of touch", 4, 2);

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b3' 2' 1' 7", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "b3' 2' 1' 7");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b6' 5' 4'", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6", "b6' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 7 4'", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7 VII7", "5 7 4'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 7 4", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7 VII7", "5 7 4");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 7 b2'", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7 VII7", "5 7 b2'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("1 5 4", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6", "1 5 4");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("4' b3' b6' 5' 4' b3'", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6 VII7", "4' b3' b6' 5' 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("2'' 5' 5'", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6", "2'' 5' 5'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5' 5' 4' b3'", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7 VII7", "5' 5' 4' b3'");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "5' 5' 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b6 5 4", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6", "b6 5 4");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b3 5 b3 4", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("V7", "b3 5 b3 4");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm Miss You", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "I'm Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss You", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss home", 3, 2);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's", 1,1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is", 1,1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Is");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is blue and green a color", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Is blue and green a color");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Am I Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Am I Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is a mes-me-ri-zing Miss", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It is a mes-me-ri-zing Miss");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tis I", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Tis I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I am Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", 27);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("You and me in I-Land", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "You and me in I-Land");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Do you miss me?", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Do you miss me?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I as-sume", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "I as-sume");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("You and I", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "You and I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And who are you?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "And who are you?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no pia-no", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no pia-no");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's You And I", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It's You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Miss You And I", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man I'm mes-me-ri-zed", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man I'm mes-me-ri-zed");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Love your legs and love your eyes", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Love", "Love your legs and love your eyes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "Love your legs and love your eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Are you Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Are you Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is it Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Is it Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's Miss You", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It's Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-I ne-ver dies", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "A-I ne-ver dies");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The co-lor of your smile", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "The co-lor of your smile");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fly-ing hi-gher now", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Fly-ing hi-gher now");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A da-ta-base of high hopes", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A da-ta-base of high hopes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "A da-ta-base of high hopes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-tales with high tropes", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Da-ta-tales with high tropes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base with high hopes", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Da-ta-base with high hopes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In a ci-ty so di-vine", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In a ci-ty so di-vine");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Path to dot add", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Path to dot add");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Linked List dot add", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Linked List dot add");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zyklus Nicht Zu-sam-men-hang", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Zyklus Nicht Zu-sam-men-hang");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nie-mand wei-eiss wer er i-ist", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Nie-mand wei-eiss wer er i-ist");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("2' 4' 3' 5'", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("UpGanz", "2' 4' 3' 5'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("2' 4' 3' 5' b5' 6'", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("UpGanz", "2' 4' 3' 5' b5' 6'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("2 4 3 5 b5 6", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("UpGanz", "2 4 3 5 b5 6");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5' b7' 6' 1' 7' 2'", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("UpGanz", "5' b7' 6' 1' 7' 2'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("1'' b7' 5' 4'", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "1'' b7' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("7 1' 5' 4'", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7", "7 1' 5' 4'"); 

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5' 4' 4'", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("IVm6", "5' 4' 4'"); 

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Like dia-monds in the sky", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Like dia-monds in the sky");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Like", "Like dia-monds in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("This is you and I", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "This is you and I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "This is you and I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mis-ses Mis-ter Mis-ter", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Mis-ses Mis-ter Mis-ter");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is Miss-ss You And I", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It is Miss-ss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("When we kissed", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "When we kissed");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And we kissed", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "And we kissed");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Miss I Miss You", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Miss I Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is Miss You And I", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It is Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And so it be", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("E", "And so it be");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It is");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is it?", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Is it?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Co-lumns of a da-ta-space", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Co-lumns of a da-ta-space");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta dri-ven song-wri-ting", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Da-ta dri-ven song-wri-ting");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta da-ta da-ta da-ta", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Da-ta da-ta da-ta da-ta");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta da-ta da-ta da-ta", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Da-ta da-ta da-ta da-ta");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no pia-no pia-no pia-no", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no pia-no pia-no pia-no");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wor-te Wor-te Wor-te Wor-te", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Wor-te Wor-te Wor-te Wor-te");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("For-te For-te For-te For-te", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "For-te For-te For-te For-te");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta stru-ctu-res", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Akt", "Da-ta stru-ctu-res");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Date a stru-ctu-re", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Akt", "Date a stru-ctu-re");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I And", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I And");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And she lau-augh and she crie-ies", 8, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "And she lau-augh and she crie-ies");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mars in white", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Mars in white");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sky-high", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Sky-high");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("So frei", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "So frei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwischen Traum und Sein", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwischen Traum und Sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwischen Raum und Zeit", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwischen Raum und Zeit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Drei Mal Drei Mal Eins Sind Keins", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Drei Mal Drei Mal Eins Sind Keins");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Zwei Drei Ich Bin Bereit", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ein Zwei Drei Ich Bin Bereit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The streets are ours tonight", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The streets are ours tonight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mo-du-lo of Eight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Mo-du-lo of eight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wait for struc-ture", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Wait for struc-ture");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Au-tumn in New York", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Au-tumn in New York");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-vant gar-den ist ein Ort", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "A-vant gar-den ist ein Ort");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She's a wait-ress in New York", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "She's a wait-ress in New York");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tis Miss You And I", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Tis Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Tis Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Qui-et-ly he cries", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Qui-et-ly he cries");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("No-one left be-hind", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "No-one left be-hind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("No-one left be-hind", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "No-one left be-hind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And no-one left be-hind", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "And no-one left be-hind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And no-one left be-hind", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "And no-one left be-hind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And no-one left be-hind", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "And no-one left be-hind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fly-ing cir-cus", 4, 3);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a size", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "It's a size");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We nice", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nice", "We nice");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("One day we'll die", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "One day we'll die");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Py-thon is an is-land", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Py-thon is an is-land");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fly-ing to high", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Fly-ing to high");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("White rain", 2, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-wi-i-ind Re-wi-i-ind", 8, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Re-wi-i-ind Re-wi-i-ind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Be-hi-i-ind Be-hi-i-ind", 8, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Be-hi-i-ind Be-hi-i-ind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Test has edge re-flec-tive", 8, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "Test has edge re-flec-tive");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm just try-ing to exp-ress", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I'm just try-ing to exp-ress");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a mes-me-ri-zing mess", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Mess", "It's a mes-me-ri-zing mess");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I re-late", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "I re-late");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Just you wait", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Just you wait");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I want a re-va-la-tion", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "I want a re-va-la-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("U-S-B Stick with an eight", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "U-S-B Stick with an eight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Edge dot weight", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Edge dot weight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I re-late", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "I re-late");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a mes-me-ri-zing miss", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's a mes-me-ri-zing miss");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's a mes-me-ri-zing miss");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man I Miss You", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man I Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Linked List is a da-ta struc-ture", 8, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Linked List is a da-ta struc-ture");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eight Eight Eight", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Eight Eight Eight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wait Wait Wait", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Wait Wait Wait");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Date Date Date", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Date Date Date");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("X and Z re-late", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "X and Z re-late");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tu-ples of re-la-tion", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Tu-ples of re-la-tions");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sort ed-ges by weight", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Sort ed-ges by weight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A and B re-late", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "A and B re-late");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-ve-la-tion", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Re-ve-la-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I don't want a re-va-la-tion", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "I don't want a re-va-la-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wai-it for it", 4, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wai-it for it wai-it for it", 8, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We tra-vel through a da-ta-base", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Travel", "We tra-vel through a da-ta-base");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Database", "We tra-vel through a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("You", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Date a struc-ture", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Date a struc-ture");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pos-tet auf", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Post-tet auf");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The post-man brings a par-cel", 7, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "The post-man brings a par-cel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base re-la-tions", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Da-ta-base re-la-tions");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A E I O U", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "A E I O U");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("May-be I could da-te a struc-ture", 8, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "May-be I could da-te a struc-ture");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ver-tex va-li-date", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Ver-tex va-li-date");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-struc-ture", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Da-ta-struc-ture");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "In-sert in-to a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Late for struc-ture", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "La-te for struc-ture");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Clas-ses we cre-ate", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Clas-ses we cre-ate");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Write my way out", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "Write my way out");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fight my way out", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "Fight my way out");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night just tell me where", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night just tell me where");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night this night is prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night this night is prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nur dein Sternschein blitzt und lacht", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "Nur dein Sternschein blitzt und lacht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night the streets are prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night the streets are prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Im just starting to gain trust", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Im just starting to gain trust");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Juni Mittsommernacht", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Juni Mittsommernacht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Everybody loves the sunshine", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Everybody loves the sunshine");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night this night is prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night this night is prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night this night is prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night this night is prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Key", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Key");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Key", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Key");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Public Key Cryptographie", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Public Key Cryptographie");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Privae Key Cryptographie", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "Private Key Cryptographie");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We mo-du-late the key", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Key", "We mo-du-late the key");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The I", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I I I Institute", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I I I Institute");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Prime", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's A-I", 3, 3);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lu-cy in the sky", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Lu-cy in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Frac-tals in the sky", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Frac-tals in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("May-be she's just shy", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "May-be she's just shy");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mon-ty Py-thons Fly-ing", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Mon-ty Py-thons Fly-ing");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss my self", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "I miss my self");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Self or this in JavaScript", 7, 5);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("What is this in JavaScript", 7, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And I Mis-s You", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "And I Mis-s You-u");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("But what is this in Ja-va Script", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "But what is this in Ja-va Script");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("C Plus Plus I Miss You", 6, 5);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-mem-ber this", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Re-mem-ber this");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Al-go-rith-mic it's a rhy-thm", 8, 6);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was sind denn die Par-ti-tio-nen", 8, 6);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was ist ei-ne Par-ti-tur?", 7, 7);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And I miss you", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "And I miss you");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Miss Your Eyes", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I Miss Your Eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Kiss Your Eyes", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I Kiss Your Eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm Miss Me-ri-zed", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I'm Miss Me-ri-zed");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm mes-me-rized", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I'm mes-me-rized");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And mes-me-rized I kissed your eyes", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "And mes-me-rized I kissed your eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Are we?", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("A", "Are we?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We are!", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("A", "We are!");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Like column spa-ces", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Like column spa-ces");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Like", "Like column spa-ces");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta ba-ses", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Da-ta ba-ses");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("My da-ta ba-sis", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "My da-ta ba-sis");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Maze", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Maze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ra-tio-nal", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Ra-tio-nal");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is nor-mal", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Is nor-mal");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Nichts Weiss Nichts Ist Wach", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Das Nichts Weiss Nichts Ist Wach");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Space Race", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space Race", "Maze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ran-dom De-epth Fi-irst Path", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Mess", "Ran-dom De-epth Fi-irst Path");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To the moon", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "To the moon");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An-die macht", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "An-die macht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was er macht", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Was er macht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ma-chen kommt von Macht", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Ma-chen kommt von Macht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("La-chend durch die Nacht", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "La-chend durch die Nacht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Und ich lie-be ih-ren Arsch", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Und ich lie-be ih-ren Arsch");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ten-ban-ken-ar-chi-tekt", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Da-ten-ban-ken-ar-chi-tekt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-po-si-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Kom-po-si-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rain", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Rain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Co-ding", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Co-ding");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rap is en-co-ding", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Rap is en-co-ding");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-ple-tely off the rails", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Com-ple-tely off the rails");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The Rain", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "The Rain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Se-lek-tion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Se-lek-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ten-ban-ken-re-la-tion", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Da-ten-ban-ken-re-la-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rail-tracks", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Rail-tracks");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Off the rails", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Off the rails");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Im-pli-ka-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Im-pli-ka-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-mu-ni-ka-tion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Kom-mu-ni-ka-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tran-si-ti-vi-tät", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Tran-si-ti-vi-tät");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Trans-si-bi-risch", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Trans-si-bi-risch");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-la-tion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Re-la-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Er sagt al-les wie ge-wohnt", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Er sagt al-les wie ge-wohnt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rap is which en-codes", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Rap is which en-codes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A E O in Ro-tter-dam", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "A E O in Ro-tter-dam");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wo die wil-den Ker-le wohn", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Wo die wil-den Ker-le wohn");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In Phil-ly o-ben oh-ne", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "In Phil-ly o-ben oh-ne");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("De-kom-po-si-tion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "De-kom-po-si-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bi-jek-tion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Bi-jek-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-bi-na-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Kom-bi-na-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Per-mu-ta-tion", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Per-mu-ta-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("De-kom-po-si-tion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "De-kom-po-si-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ten-ban-ken-ar-chi-tekt", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Da-ten-ban-ken-ar-chi-tekt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Maze Grid", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Maze Grid");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Space Kid", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Space Kid");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a Space Kid", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "I'm a Space Kid");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Be-weis per Wi-der-spruch", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Be-weis per Wi-der-spruch");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ligh-ter than the light", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ligh-ter than the light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bright ci-ty lights", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Bright ci-ty lights");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("How ma-ny ed-ges has a maze", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Maze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Turm und Ha-fen", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Tur-m und Ha-fen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Be-nu-tzer ei-ner Da-ten-bank", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Be-nu-tzer ei-ner Da-ten-bank");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Hep-ta-gon bleibt un-er-kannt", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Hep-ta-gon bleibt un-er-kannt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Stel-len-wert-sys-te-me", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Stel-len-wert-sys-te-me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We-ge zum Den-ken", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "We-ge zum Den-ken");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wieviel We-ge durch den Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Wieviel We-ge durch den Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Ge-hirn ist wie ein Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Das Ge-hirn ist wie ein Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Köp-fe und der Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Die Köp-fe und der Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We-ge", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "We-ge");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I-S-F-D-B Dot Org", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "I-S-F-D-B Dot Org");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sie träumt von ei-nem Ort", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Sie träumt von ei-nem Ort");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's my da-ta ba-sis", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "It's my da-ta ba-sis");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cause may-be it's A-I", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cause may-be it's A-I");


CREATE TABLE ClusteredNode (
    lil_text VARCHAR(255),
    lil_mel VARCHAR(255),
    chords VARCHAR(255),
    cluster_name VARCHAR(50),
    syllables INTEGER DEFAULT 1 NOT NULL,
    stress INTEGER DEFAULT 1 NOT NULL
);

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, chords, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;

CREATE VIEW _Key AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Key";
CREATE VIEW Miss AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Miss";
CREATE VIEW You AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "You";
CREATE VIEW Nice AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Nice";
CREATE VIEW High AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "High";
CREATE VIEW Space AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Space";
CREATE VIEW Act AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Act";
CREATE VIEW Licht AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Licht";
CREATE VIEW Wind AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Wind";
CREATE VIEW Band AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Band";
CREATE VIEW Mess AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Mess";
CREATE VIEW Pain AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Pain";
CREATE VIEW Eight AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Eight";
CREATE VIEW Ort AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Ort";
CREATE VIEW Nacht AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Nacht";
CREATE VIEW Spot AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Spot";
CREATE VIEW Nation AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Nation";
CREATE VIEW _If AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "If";
CREATE VIEW Regen AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Regen";
CREATE VIEW Hafen AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Hafen";
CREATE VIEW Heads AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Heads";
CREATE VIEW Partitur AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Partitur";
CREATE VIEW Reise AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Reise";
CREATE VIEW Wald AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Wald";


CREATE VIEW One AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "7b34";
CREATE VIEW Two AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "154";
CREATE VIEW Three AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "b345";

CREATE VIEW Mel AS SELECT * FROM ClusteredNode WHERE (cluster_name = "7b34" OR cluster_name = "154" OR cluster_name = "b345");

CREATE VIEW SpaceOne AS SELECT Mel.lil_mel, Space.lil_text, Mel.chords, Mel.syllables, Mel.stress FROM Space JOIN Mel ON (Space.syllables = Mel.syllables AND Space.stress = Mel.stress);

SELECT * FROM Pain;
SELECT * FROM Eight;
SELECT * FROM Mess;
SELECT * FROM Miss;
SELECT * FROM You;
SELECT * FROM Nice;
SELECT * FROM High;
SELECT * FROM Space;
SELECT * FROM Act;
SELECT * FROM Licht;
SELECT * FROM Wind;
SELECT * FROM Band;
SELECT * FROM _If;
SELECT * FROM Ort;