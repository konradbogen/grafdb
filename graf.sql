
DROP TABLE IF EXISTS Node;
DROP TABLE IF EXISTS Cluster;
DROP TABLE IF EXISTS ClusteredNode;
DROP TABLE IF EXISTS is_in_cluster;

DROP VIEW IF EXISTS Miss;
DROP VIEW IF EXISTS You;
DROP VIEW IF EXISTS Nice;
DROP VIEW IF EXISTS Permutation;
DROP VIEW IF EXISTS High;
DROP VIEW IF EXISTS Pain;
DROP VIEW IF EXISTS Sight;
DROP VIEW IF EXISTS Act;
DROP VIEW IF EXISTS Wind;
DROP VIEW IF EXISTS Band;
DROP VIEW IF EXISTS WegeFour;
DROP VIEW IF EXISTS Space;
DROP VIEW IF EXISTS Mess;
DROP VIEW IF EXISTS Ort;
DROP VIEW IF EXISTS Spot;
DROP VIEW IF EXISTS Bühne;
DROP VIEW IF EXISTS Edge;
DROP VIEW IF EXISTS Coin;
DROP VIEW IF EXISTS Partitur;
DROP VIEW IF EXISTS Heads;
DROP VIEW IF EXISTS Reise;
DROP VIEW IF EXISTS Wald;
DROP VIEW IF EXISTS Sex;
DROP VIEW IF EXISTS Four;
DROP VIEW IF EXISTS TraumSein;
DROP VIEW IF EXISTS Permutation;
DROP VIEW IF EXISTS Journey;
DROP VIEW IF EXISTS Wait;
DROP VIEW IF EXISTS Sex;

DROP VIEW IF EXISTS SevenThreeFour;
DROP VIEW IF EXISTS OneFiveFour;
DROP VIEW IF EXISTS ThreeFourFive;
DROP VIEW IF EXISTS FiveDotFour;
DROP VIEW IF EXISTS TextMel;
DROP VIEW IF EXISTS Mel;
DROP VIEW IF EXISTS Text;
DROP VIEW IF EXISTS NationMel;
DROP VIEW IF EXISTS WaldMel;
DROP VIEW IF EXISTS HeadsMel;
DROP VIEW IF EXISTS HighMel;
DROP VIEW IF EXISTS OrtMel;
DROP VIEW IF EXISTS RhythmusFour;
DROP VIEW IF EXISTS LichtFour;
DROP VIEW IF EXISTS RegenMel;
DROP VIEW IF EXISTS SexMel;
DROP VIEW IF EXISTS WegeMel;
DROP VIEW IF EXISTS PermutationMel;
DROP VIEW IF EXISTS YouMel;
DROP VIEW IF EXISTS SevenOneTwo;
DROP VIEW IF EXISTS LichtMel;
DROP VIEW IF EXISTS OrtFour;
DROP VIEW IF EXISTS SevenThreeFourText;
DROP VIEW IF EXISTS ClusterTextMel;
DROP VIEW IF EXISTS Rhythmus;

DROP VIEW IF EXISTS Four;

DROP VIEW IF EXISTS _Two;
DROP VIEW IF EXISTS _FiveDotFour;
DROP VIEW IF EXISTS _SixDotSix;
DROP VIEW IF EXISTS _SixDotFive;
DROP VIEW IF EXISTS _SevenDotSeven;
DROP VIEW IF EXISTS _FourDotFour;
DROP VIEW IF EXISTS _FourDotThree;


DROP VIEW IF EXISTS HighFour;


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
INSERT INTO Cluster (name, typ) VALUES ("We", "Language");
INSERT INTO Cluster (name, typ) VALUES ("High", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("Reise", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("You", "Language");
INSERT INTO Cluster (name, typ) VALUES ("A", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Miss", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Mess", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Wind", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ort", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Was", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nothing", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Love", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Permutation", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Hafen", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Band", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nacht", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Journey", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Wait", "Language");
INSERT INTO Cluster (name, typ) VALUES ("TraumSein", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Edge", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Bühne", "Language");
INSERT INTO Cluster (name, typ) VALUES ("_", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Partitur", "Language");
INSERT INTO Cluster (name, typ) VALUES ("If", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Licht", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Pain", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Spot", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nation", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Regen", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Heads", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Rhythmus", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Wald", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Sex", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Prim", "Language");


INSERT INTO Cluster (name, typ) VALUES ("1", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b3", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("4", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("5", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b7", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("15", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b357", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("47", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b35", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("5b7", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("56", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("571", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b352'", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("7b34", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("712", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("234", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("154", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("15b6", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b345", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("12b35", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b35b71", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("712b3", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("b61b35", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("5b7b3", "Pitch");
INSERT INTO Cluster (name, typ) VALUES ("1357", "Pitch");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' 4' 4' 4' 4'", 6, 1, "V7(b13) V7b13/3 bII7(2)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' 4' 4' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4'", 2, 1, "bVIImaj7(#11) Im7(11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5' b3' 4' 4'", 5, 4, "Im7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "1' 5' b3' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 2' b3' 5' 4' 2' b3'", 7, 5, "bVImaj7 Imaj7 VII/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "1' 2' b3' 5' 4' 2' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5' 5' 5' b6' 4'", 6, 6, "Im7 V7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "1' 5' 5' 5' b6' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' b3' 4' 2'", 5, 5, "Im7/7 VII/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b3", "b3' b3' b3' 4' 2'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' b3' 1' 4' 4'", 5, 5, "bVImaj7 Vm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5' b3' 1' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' b6' 4'", 4, 4, "Im7 VII7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5' 5' b6' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' 5' 5' 4'", 5, 5, "IIImaj7 VIImaj7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5' 5' 5' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' b6' b6' 5' 4'", 5, 5, "Im7 I7b6/3 IVm7 I6/3 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b7' b6' b6' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' 5' 5' 4'", 5, 5, "IVm7(9)/b3 VIImaj7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5' 5' 5' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4 5 b7 1' b3' 5' b3' 4'", 8, 8, "Im7 VII7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4 5 b7 1' b3' 5' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' 5' b3' 1' 4'", 5, 5, "Im7 V7(b13)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b7' 5' b3' 1' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' b3' b7' b6' b6' 5' 4'", 8, 8, "bVImaj7 bIImaj7 VIImaj7(#11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' b3' b7' b6' b6' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' b3' b7' b6' b6' b5' 4'", 8, 8, "bVImaj7 bIImaj7 VIImaj7(#11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' b3' b7' b6' b6' b5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' b3' b7' b6' b6' 5' 4'", 8, 8, "Im7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' b3' b7' b6' b6' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' b3' 5' 4' 4'", 6, 4, "Im7(11)/5 Im7(11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' b3' 5' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' b3' 5' 4' 4'", 5, 3, "Im7(11)/5");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' b3' 5' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' b7' b7' b7'", 4, 3, "IIImaj7 VIImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7", "b7' b7' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' b7' b7' b7'", 4, 3, "Im7 bVmaj7(add2)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7", "b7' b7' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' b7' b7' b7'", 4, 3, "bVmaj7 bIImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7", "b7' b7' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' 4'", 3, 3, "IIImaj7 VIImaj7(#11) bVIIadd4");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' b6' 4' b5' 5' b3'", 6, 5, "III6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("5", "5' b6' 4' b5' 5' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' 4' b5' 5' b3'", 5, 4, "III6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("5", "b6' 4' b5' 5' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3'~ b3' b3' b3' b3' b3'", 6, 1, "III6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b3", "b3'~ b3' b3' b3' b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2' 4' 3' 5 b5' 6", 6, 1, "Im IIm7 IIIm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("246", "2' 4' 3' 5 b5' 6");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' 4' b3' 7 2'", 6, 6, "VII7/7 bII/7 bIII/7 bVIadd6/3 Im7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b3' b3' 4' b3' 7 2'");


INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' 5' b7' 7 4' 5' b7' 4'", 9, 9, "Im7 VIImaj7(#11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' 5' b7' 7 4' 5' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7 b7 1' b3' 4' 5'", 6, 6, "VIImaj7 Im7 bIImaj7 bVImaj7 IIImaj7/3 bIImaj7#11");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b7 b7 1' b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' 4' b3' 7 4'", 6, 6, "VII7/7 bII/7 bIII/7 bVIadd6/3 Im7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b3' b3' 4' b3' 7 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2' 2' 4' 3' 5 b5'", 6, 6, "Im IIm7 IIIm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("246", "2' 2' 4' 3' 5 b5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2' 2' 4' 3' 5 b5' 3' 2'", 8, 6, "Im IIm7 IIIm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("246", "2' 2' 4' 3' 5 b5' 3' 2'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 5 b3' 5 b3' 5 b3' 5", 8, 1, "Im");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35", "b3' 5 b3' 5 b3' 5 b3' 5");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 5 7 5 7 5 7 5", 8, 1, "III");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("57", "7 5 7 5 7 5 7 5");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("6 5 6 5 6 5 6 5", 8, 1, "III");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("67", "6 5 6 5 6 5 6 5");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2'' 5' b3' 4' 4' b3'", 6, 5, "V7 / 3 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("571", "2'' 5' b3' 4' 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5 7 7 7 7 7 7", 8, 3, "I7 / 3 IVm7 Im7 / b3 VII6 / 3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("571", "1' 5 7 7 7 7 7 7");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1 1 1", 3, 1, "IV7 / 3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("1", "1 1 1");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1 1 1", 3, 1, "VIm7 / 3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("1", "1 1 1");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7 b3' 4' 5'", 4, 4, "Vm7 Im7 VII7add4/3 bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b7 b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' b3' 4'", 3, 3, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2' 7 1'", 3, 3, "bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("1", "2' 7 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7 b3' b7' b3' 4''", 5, 5, "bVI6 bVII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b7 b3' b7' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 5' b7' b3''", 4, 4, "Im7 IIImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "b3' 5' b7' b3''");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 5' b7' b3''", 4, 4, "bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "b3' 5' b7' b3''");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' b3' 4'", 3, 3, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2' 2' 7 1'", 3, 3, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("1", "2' 7 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' b3' 5 b6 b3' 2' 7 5", 9, 9, "Vm7 Im7 IVm7 VII7 III6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' b3' 5 b6 b3' 2' 7 5");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 1' 5' 5' 1' 1' 5'", 7, 6, "VIm7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15", "1' 1' 5' 5' 1' 1' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 1' 1' 5' 5' 1'", 6, 5, "VIm7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15", "5' 1' 1' 5' 5' 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 1'", 2, 1, "VIm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15", "5' 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5'", 2, 1, "bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15", "1' 5'")

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' 5' 5' 5' 4' 3' 2' 1'", 2, 1, "III7/3 VIm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15", "5' 5' 5' 5' 5' 4' 3' 2' 1'")

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 1' 1' 1' 1' 1' 1'", 7, 6, "VIm7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15", "1' 1' 1' 1' 1' 1' 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2'' b3'' b3'' b3''", 4, 2, "bVI6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b3", "2'' b3'' b3'' b3''");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' b7' 5' 2' b3'", 5, 5, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("1357", "1' b7' 5' 2' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' 5' 5' 5'", 4, 2, "III6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15b6", "b6' 5' 5' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' b3' b3' b3'", 4, 2, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b3", "4' b3' b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1'' b7' b7' b7'", 4, 2, "VI7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b7", "1'' b7' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 2' 2' 2'", 4, 2, "bVImaj7(#11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("712", "1' 2' 2' 2'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 2' 1' 2' b3' 2' 7'", 7, 6, "bVImaj7(#11) Vm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("712", "1' 2' 1' 2' b3' 2' 7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("2'", 1, 1, "bVImaj7(#11)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("712", "2'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 7 4' 2'", 7, 5, "Vm7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("712", "1' 7 4' 2'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5 5 5 5 5 4 4", 7, 5, "bVImaj7/3 VII7/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "5 5 5 5 5 4 4");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 1' b3' 5' 4' b3'", 6, 5, "bVImaj7 VII/3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b3' 1' b3' 5' 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 1' b3' 5' 4' b3'", 6, 5, "bVImaj7 VII");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b3' 1' b3' 5' 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' 4'", 6, 5, "bVImaj7 bVmaj7(#11) bIImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "4' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4 b3' 5' b7' b7' 1'", 6, 6, "Im7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("134", "4 b3' 5' b7' b7' 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 7 1' b3' 5' 4'", 7, 7, "Im7 / b3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 7 7 1' b3' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 1' b3' 4' 5'", 6, 6, "Im7 / b3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "7 7 7 1' b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 1' b3' 5' 4'", 6, 6, "Im7 / b3");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 7 7 1' b3' 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 7 1' b3' 4' 5'", 7, 7, "bVImaj7 IVm7 IIm7(9)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "7 7 7 1' b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 7 1' b3' 4' 5'", 7, 7, "bVImaj7 VIm7(9)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 7 7 1' b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 1' b3' 4' 5'", 6, 6, "bVImaj7 VIm7(9)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "7 7 7 1' b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 1' b3' 4' 5'", 6, 6, "bVImaj7 VIm7(9)");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 7 7 1' b3' 4' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1'' 1'' 1'' b7' b6' b3' 4' b5'", 8, 8, "VIIm7 bIII7 bVImaj7 bVm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("1357", "1'' 1'' 1'' b7' b6' b3' 4' b5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' 1' b6' 5' 5'", 5, 4, "IVmadd11 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15b6", "b7 b3' 5' 4' b3' 2' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' 5' b6'", 3, 1, "IVmadd11");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15b6", "b6' 5' b6'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1 4 7 4 1 4 7 4", 8, 8, "I7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1 4 7 4 1 4 7 4");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("6 b2' b5' 4' b7' 5' 4' 1'", 8, 8, "bVm7 I7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "6 b2' b5' 4' b7' 5' 4' 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7 b3' 5' 4' b3' 2' b3' 4'", 8, 8, "bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "b7 b3' 5' 4' b3' 2' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7 b3' 5' 4' b3' 2' b3' 4'", 8, 8, "bIII6/3 bIIIm6/b3 VII6/5");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "b7 b3' 5' 4' b3' 2' b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' b3' b3' 1' b3'", 6, 6, "bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "5' 5' b3' b3' 1' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' b3' 1' b3' 5' 5'", 6, 6, "bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("71b35", "1' b3' 1' b3' 5' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' b7' 5' b6' b7' b3'' 2'' 1'' b7'", 9, 9, "bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("5b7b3", "b7' b7' 5' b6' b7' b3'' 2' 1' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' 1' b3' 5' 4' 4' 2' b3' b3'", 9, 9, "IVm7 VII7 bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b61b35", "b6' 1' b3' 5' 4' 4' 2' b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' 1' b3' 5' b5'", 5, 5, "IVm7 VII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b61b35", "b6' 1' b3' 5' b5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("6' 1' b3' 5' 4' 4' 2' b3' b3'", 9, 9, "IVm7 VII7 bIII6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "6' 1' b3' 5' 4' 4' 2' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 1' 2' 2' b3' b3'", 6, 5, "bVImaj7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "1' 1' 2' 2' b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 4' b7' 5'", 4, 4, "I7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1' 4' b7' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' b7' 3' 6' b3' b6' 2'", 8, 6, "I7sus VII7sus bVII7sus VI7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("47", "4' 4' b7' 3' 6' b3' b6' 2'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' b7' b7' b7'", 4, 4, "Im7(9) bVIIsus VIImaj7 bVmaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7", "b7' b7' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7 b3' 4' 7 3' b7 b3'", 7, 6, "I7sus VII7sus bVII7sus VI7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b7 b3' 4' 7 3' b7 b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1 b3 5 b3 4", 5, 5, "I7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("47", "1 b3 5 b3 4");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("4' 4' b7' 3' 6' b3' b6'", 7, 6, "I7sus VII7sus bVII7sus VI7sus");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("47", "4' 4' b7' 3' 6' b3' b6'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' b7' b3'", 3, 1, "Im7 / 3 Vm7 / 5 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "5' b7' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' b7' b3'", 3, 1, "Iadd2/3 bVmaj7 bIImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "5' b7' b3'");


INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' b7' b3'", 3, 1, "Im7 / 3 bVIm6");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b35b71", "5' b7' b3'");







INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5' 5' 2'' 4' 4'", 6, 5, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1' 5' 5' 2'' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5' 4' 1' 5' 4'", 6, 5, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1' 5' 5' 2'' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b7' 7 4' 4' 4' b3'", 6, 5, "Vm7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b7' 7 4' 4' 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3' 4' 7 b3'", 6, 6, "bIII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "1' 5' 5' 2'' 4' 4'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Inclusion", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Inclusion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Unter Buchen Suchen", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Unter Buchen Suchen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Earl You Find", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Earl Union Find");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Union Find Dot Count", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Union Find Dot Count");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exclusion", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Exclusion");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 5' 5' 2'' 4' 4'", 6, 5, "VIm7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1' 5' 5' 2'' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6' b6' 1' b6' 5' 5'", 6, 5, "IVm7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("15b6", "b6' b6' 1' b6' 5' 5'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 7 4' b3'", 4, 4, "Vm7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 7 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 5' 2' b3' 1'", 5, 5, "Im7 /7 bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("12b35", "b3' 5' 2' b3' 1'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1' 1' 2' 2' b3' b3'", 6, 5, "bVImaj7 bVII7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("12b35", "1' 1' 2' 2' b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 4' 5' b7'", 4, 1, "Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' 4' 5' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b7' b7'", 4, 4, "bVImaj7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b7' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 7 b3' 4'", 4, 4, "bVImaj7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "b3' 7 b3' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 4' 5' 4' 5' b7' 4'", 7, 5, "Im7 Vm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' 4' 5' 4' 5' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' b3'", 3, 1, "IVm7 Im7 VII7sus4");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' b3'", 3, 1, "bVmaj7 IVm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3'", 3, 3, "bVmaj7 IVm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b7' 4'", 4, 4, "bVmaj7 IVm7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b7' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1, 4, b7, 1 5 2", 6, 4, "Isus7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("147", "1, 4, b7, 1 5 2");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("3, 6, 2 3 7, b5,", 6, 4, "Isus7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("147", "3, 6, 2 3 7, b5,");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b6, b2 b5 b6 b3 b7,", 6, 4, "Isus7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("147", "b6, b2 b5 b6 b3 b7,");

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

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' 4' 5' b3'' b7'", 6, 6, "bVIadd2 VII Im7(11) VIadd2 IIIadd2");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b345", "b3' b3' 4' 5' b3'' b7'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b3' 4' 5' b3'' b7'", 6, 6, "bVImaj7 Im7");
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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("If you smile Like That", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "If you smile Like That");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was Ist Zwei Hoch Zwei Hoch Zwei", 7, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Was Ist Zwei Hoch Zwei Hoch Zwei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lucy is a shy girl", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Lucy is a shy girl");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Krus-kal has no cy-cle", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Krus-kal has no cy-cle");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Next Edge With Prim", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Next Edge With Prim");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Vielleicht Sind Wir Frei", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Vielleicht Sind Wir Frei");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ei Statt Eis", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Ei Statt Eis");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("AI and Icecream", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "AI and Icecream");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A Hoch P-e Minus Eins", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "A Hoch P-e Minus Eins");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Take off the sunscreen", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Screen", "Take of the suncreen");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich will nicht alleine sein", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Ich will nicht alleine sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Studied Computer Science", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Studied Computer Science");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Avantgarden", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Avantgarden");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Avantgarden Ist Ein Garten", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Avantgarden Ist Ein Garten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sehnt sich nach 'nem Garten", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Sehnt sich nach 'nem Garten");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Differenz Von Quadraten", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Differenz Von Quadraten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Stack Dot Get Dot I", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Stack Dot Get Dot I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Modulare Exponentitation", 9, 9);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Modulare Exponentiation");
"
INSERT INTO Node (lil_text, syllables, stress) VALUES ("Linearkombination", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Linearkombination");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Euklidscher Algorithmus", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Euklidscher Algorithmus");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' 4' b3' 4' b3' 4' b7'", 7, 6, "Im7(11) bVIImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("4", "b3' 4' b3' 4' b3' 4' b7'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An Stack Dot Get Dot I", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "An Stack Dot Get Dot I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sampling", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Sampling");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Reservoir Sampling", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Reservoire Sampling");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Denn Ich will nicht alleine sein", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Denn Ich will nicht alleine sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Auf recht angenehme Weise", 8, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Auf recht angenehme Weise");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Auf recht angenehme Weise", 8, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Auf recht angenehme Weise");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bloom Filter", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Bloom Filter");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Toward the sun we bloom", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Towards the sun we bloom");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 b3' b3'", 3, 3, "Im7 bVII");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 b3' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("7 4' b3'", 3, 3, "Vm7 Im7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("7b34", "7 4' b3'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("1 5' 4'", 3, 1, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "1 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5 1 5' 4'", 4, 4, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "5 1 5' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("5' 5' 5' 4' 4' 4' 4'", 7, 4, "bVImaj7 bVII7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("154", "5' 5' 5' 4' 4' 4' 4'");

INSERT INTO Node (lil_mel, syllables, stress, chords) VALUES ("b3' b7'", 2, 1, "bVImaj7");
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("b37", "b3' b7'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Circles and Lines", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Circles and Lines");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("So frei", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "So frei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rise Up", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Rise Up");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sky High", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Sky High");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Movies in the sky", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Movies in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wir sind frei", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Wir sind frei");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Select a post by type", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Select a post by type");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Connected Union Find", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Connected Union Find");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Hafenlichter leuchten", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Die Hafenlichter leuchten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Between stars there is a graph", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Between stars there is a graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cause All My Fears Are Failing", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cause All My Fears Are Failing");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We cluster nodes by distance", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "We cluster nodes by distance");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Warehousing at night", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Warehousing at night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("All my fears are rising", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "All my fears are rising");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cause all my fears are falling", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cause all my fears are falling");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rising to the highway", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Rising to the highway");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Still und ruhig der Wald", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Still und ruhig der Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Programmieren ist Gewalt", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Programmieren ist Gewalt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Köpfe träum im Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Die Köpfe träum im Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Dont Like Computers", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "I Dont Like Computers");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Tiere spieln im Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Die Tiere spieln im Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Gewalt", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Gewalt");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ihre tei-eilt uns-re bei-den", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Ihre tei-eilt uns-re bei-den");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Union Find With Prime", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Union Find With Prime");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Create View Order By", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Create View Order By");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Drive by", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Drive By");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Write like your run-ning out of time", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Write like your run-ning out of ");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-mu-ni-ca-tion", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Com-mu-ni-ca-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Map", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Map");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Flat-Map", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Flat-Map");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss all the sex", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "I miss all the sex");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The crazy saxophone", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "The crazy saxophone");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss gi-ving heads", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "I miss gi-ving heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The fo-rest and the heads", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "The forest and the heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The fo-rest and the heads", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "The forest and the heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A space race to the moon", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A space race to the moon");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Once upon a time", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Once upon a time");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Prim Auswahl Über Weight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Auswahl Über Weight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Breite Auswahl Über Kanten", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Breite Auswahl Über Kanten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A Von C Mit Drei", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "A Von C Mit Drei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("C Von B Mit Zwei", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "C Von B Mit Zwei");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Dikstraj Auswahl Über Kürze", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Dikstraj Auswahl Über Kürze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A space race to the moon", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A space race to the moon");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Spot-light", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Spot", "Spot-light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Laufzeit", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("TraumSein", "Laufzeit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Traum Sein", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("TraumSein", "Traum Sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Blau Zu Weiss", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Blau Zu Weiss");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Schmeisst Auf Die Uhr Ich Wein", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Schmeisst Auf Die Uhr Ich Wein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Reise Refactorn", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Reise Refactorn");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rekursion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Rekursion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Max Flow Ist Ein Min Cut", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Max Flow Ist Ein Min Cut");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Raum Zeit", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("TraumSein", "Raum Zeit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Frau Bausewein", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("TraumSein", "Frau Bausewein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wies wohl ist ein Baum zu sein", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("TraumSein", "Wies wohl ist ein Baum zu sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I dream of foreign lands", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "I dream of foreign lands");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Miss You In The Morning", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "I Miss You In The Morning");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lavender Blue Mornings", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Lavender Blue Mornings");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kanten Und Knoten", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wort", "Kanten Und Knoten");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wort", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wort", "Wort");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Abdominal Pai-ain", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Abdominal Pai-ain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bis Wir Hundert Sind", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Bis Wir Hundert Sind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We sex again in the morning", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "We sex again in the morning");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ba-by now it's pho-to-shop", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Spot", "Ba-by now it's pho-to-shop");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Database in nor-mal-form", 7, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Database in nor-mal-form");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eine Zah-len-par-ti-tion", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Partitur", "Eine Zah-len-par-ti-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eine Zah-len-par-ti-tur", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Partitur", "Eine Zah-len-par-ti-tur");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("U-nit Test", 3, 3);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "U-nit Test");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Hashing using primes", 5, 5);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("High", "Hashing using primes");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Miss Accident", 4, 2);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Sex", "Miss Accident");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Miss Ex", 2, 2);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Sex", "Miss Ex");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Gleise rufen", 5, 2);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Reise", "Die Gleise rufen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Und die Gleise rufen", 6, 3);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Reise", "Und die Gleise rufen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kongrue-enzrelation", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Permutation", "Kongrue-enzrelation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm An Accident", 5, 3);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Sex", "I'm An Accident");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She look pret-ty in that dress", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "She look pret-ty in that dress");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("X look pret-ty in that dress", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "X look pret-ty in that dress");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She a pret-ty loo-king mess", 7, 7);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Mess", "She a pret-ty loo-king mess");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("You And I", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("U I", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "U I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Between me and you is groove", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Between me and you is groove");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Equivaleenzrelation", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Equivaleenzrelation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwei Hoch Zwei Hoch N", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "Zwei Hoch Zwei Hoch N");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The axiom Armstrong sound complete", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "The axiom Armstrong sound complete");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I have my arms strong and we flee", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "I have my arms strong and we flee");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Weighted Edges Shallow Copy", 8, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Weighted Edges Shallow Copy");








INSERT INTO Node (lil_text, syllables, stress) VALUES ("Es Existiert", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Es Existiert");




INSERT INTO Node (lil_text, syllables, stress) VALUES ("Monoton Steigend", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Monoton Steigend");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Digraph Of All Primes", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Digraph Of All Primes");






INSERT INTO Node (lil_text, syllables, stress) VALUES ("We Together Time", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "We Together Time");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sometimes I Want To Cry", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Sometimes I Want To Cry");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Why Why Why", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Why Why Why");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cry Cry Cry", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cry Cry");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sometime She Wants To Fly", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Sometime She Wants To Fly");


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










INSERT INTO Node (lil_text, syllables, stress) VALUES ("1 ist trivialer Teiler", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "1 ist trivialer Teiler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In A City So Divine", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In A City Do Divine");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Boys Don't Cry", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Boys Don't Cry");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It Is Mi-id-sum-mer-night", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "It Is Mi-id-sum-mer-night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm A Playwright", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm A Playwright");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a get this play right", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm a get this play right");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a gonna get this game right", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm a gonna get this game right");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a gonna get a be a play right", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm a gonna get a be a play right");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a gonna get a get a game boy", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm a gonna get a get a game boy");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a gonna get a be a real boy", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm a gonna get a be a real boy");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zyclic Relation", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Zyclic Relation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Relaxion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Relaxion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Induktion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Induktion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Induktionsschritt", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Induktionsschritt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exponentiell", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Exponentiell");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lila Und Ich Wir Haben Sex", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Lila Und Ich Wir Haben Sex");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a get this game right", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I'm a get this game right");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("There's no end in sight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "There's no end in sight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The trains fly high tonight", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The trains fly high tonight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A Maze Race Through A Vector Space", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A Maze Race Through A Vector Space");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Am An ID", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I am an ID");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lupe Fiasco Writes", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Lupe Fiasco Writes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Brahms and Steamlines", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Brahms And Steamlines");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tri-vi-a-le Tei-ler", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Tri-vi-a-le Tei-ler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Set in-to a da-ta-base", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Set in-to a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In-sert in-to a da-ta-base", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "In-sert in-to a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Left Join Where Into a Database", 9, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Left Join Where Into a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Left Join", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("If", "Left Join");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Static function main", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Static function main");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ma-ni-pu-la-tive brains", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Ma-ni-pu-la-tive brains");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("All we have is pain", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "All we have is pain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I take the rain a-way", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "I take the rain a-way");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Purple rain", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Purple rain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Far away a siren wails", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Far away a siren wails");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Far away a siren wails");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's rai-ning a-gain", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "It's rai-ning a-gain");




INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a hi-igh way", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "It's a hi-igh way");







INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nie-mand weiss wie-so er weint", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Nie-mand weiss wie-so er weint");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Play by day and write at night", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Play by day and write at night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Too hi-igh or too low", 6, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Too hi-igh or too low");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("In the win-dy ci-ty that night", 9, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In the win-dy ci-ty that night");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Öffentlicher Schlüssel", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Öffentlicher Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Privater Schlüssel", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Privater Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("e und n sind Schlüssel", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "e und n sind Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("d und n sind Schlüssel", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "d und n sind Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Privater Schlüssel", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Privater Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Grüne Nebel", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Grüne Nebel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Im grüne Nebel", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Im grüne Nebel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bühnenszene", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Bühnenszene");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Es Ist Wieder Halb Zwe-ei", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Es Ist Wieder Halb Zwei-ei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An den Glei-sen", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "An den Glei-sen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wörter Tragen Welten", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Wörter Tragen Welten");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Nie-mand bleibt zu-rück");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In-to the light", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In-to the light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Graph dot size", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Graph dot size");

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


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tay-lor Po-ly-no-me", 6, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Act like no-thing", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nothing", "Act like no-thing");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("4'' b3'' b2'' b7' b6'", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("#VIImaj7 bIIIm7", "4'' b3'' b2'' b7' b6'");

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



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Inner Join", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Journey", "Inner Join");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Come Join The Heads", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Journey", "Come Join The Heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("On this end-less jour-ney", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Journey", "On this end-less jour-ney");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "On this end-less jour-ney");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Inner Outer Self And Cross Join", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Journey", "Inner Outer Self And Cross Join");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tis I", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Tis I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I am Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", 27);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("You and me in I-Land", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "You and me in I-Land");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ocean Wide", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ocean Wide");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("From Twilight Dawn", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "From Twilight Dawn");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Shes Ocean Wide", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Shes Ocean Wide");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("findClusters", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "findClusters");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Canyon Deep", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Canyon Deep");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Love your legs and love your eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We gon get it on tonight", 7, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "We gon get it on tonight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Emotion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Emotion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Als Permutation", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Als Permutation");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Heuristics of a railroad", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Heuristics of a railroad");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Every X consists of primes", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Every X consists of primes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwei Millionen Ameisen", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Zwei Millionen Ameisen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("k Partition", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "k Partition");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Permutationszyklus", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Permutationszyklus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("k Eleme-ent Partition", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "k Eleme-ent Partition");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Are you Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Are you Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is it Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Is it Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's Miss You", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It's Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A-I ne-ver dies", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "A-I ne-ver dies");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The co-lor of your smile", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The co-lor of your smile");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fly-ing hi-gher now", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Fly-ing hi-gher now");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A da-ta-base of high hopes", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "A da-ta-base of high hopes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "A da-ta-base of high hopes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-tales with high tropes", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Da-ta-tales with high tropes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Database with high hopes", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Database with high hopes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In a ci-ty so di-vine", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In a ci-ty so di-vine");




INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sagte er leise", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Sagte er leise");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("D Mal E Ist Kongruent", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "D Mal E Ist Kongruent");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And Union Find is implement", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "And Union Find is implement");

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



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta stru-ctu-res", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Akt", "Da-ta stru-ctu-res");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Date a stru-ctu-re", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Akt", "Date a stru-ctu-re");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I And", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I And");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And she lau-augh and she crie-ies", 8, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "And she lau-augh and she crie-ies");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mars in white", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Mars in white");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I cry to Mars in White", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "I cry to Mars in White");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sky-high", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Sky-high");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("So Frei", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "So Frei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Talk About AI and Icecream", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Talk About AI and Icecream");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Her eyes are ocean wide", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Her eyes are ocean wide");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Now it's Lucy In The Sky", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Now it's Lucy in the Sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("With A Girl In The Sky", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "With A Girl In The Sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was Ist Frei Sein", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Was Ist Frei Sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Träum Vom Sein", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Träum Vom Sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwischen Traum und Sein", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwischen Traum und Sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwischen Traum und Zeit", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwischen Traum und Zeit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zeit Ohne Dramen", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zeit Ohne Dramen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wir sind Zeit basiert", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Wir sind Zeit basiert");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("U X Design", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "U X Design");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Days Of Wine And Roses", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Days Of Wine And Roses");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Zwei Drei Ich Bin Bereit", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ich Zwei Drei Ich Bin Bereit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wir Sind Breit", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Wir Sind Breit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ein Fenster träumt vom Sein", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ein Fenster träumt vom Sein");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The Stars Are Yours Tonight", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The Stars Are Yours Tonight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Frei Frei Frei Frei", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Frei Frei Frei Frei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Zwei Drei Vier", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Eins Zwei Drei View");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In Ner Zei-eit Zwischen Jahren", 8, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "In Ner Zei-eit Zwischen Jahren");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich Bin Meiner Zeit Voraus", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ich Bin Meiner Zeit Voraus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwei Ohne Namen", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwei Ohne Namen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwei Ohne Rahmen", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwei Ohne Rahmen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wir Sind Drei", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Wir Sind Drei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwischen Raum und Zeit", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwischen Raum und Zeit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Drei Mal Drei Mal Null Sind Keins", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Drei Mal Drei Mal Eins Sind Keins");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A ist kongruent zu B Mod M", 9, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Band", "A ist kongruent zu B Mod M");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fliessen Als Maxflow Algorithmus", 9, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Fliessen Als Maxflow Algorithmus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Zwei Drei Ich Bin Bereit", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Eins Zwei Drei Ich Bin Bereit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The streets are ours tonight", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The streets are ours tonight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wir Teilen Unsre Beine", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Wir Teilen Unsre Beine");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Drei Millionen Ameisen", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Drei Millionen Ameisen");






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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "It's a size");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We nice", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "We nice");

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



INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a mes-me-ri-zing miss", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's a mes-me-ri-zing miss");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's a mes-me-ri-zing miss");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man I Miss You", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man I Miss You");





INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wai-it for it", 4, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wai-it for it wai-it for it", 8, 1);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We tra-vel through a da-ta-base", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Travel", "We tra-vel through a da-ta-base");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Database", "We tra-vel through a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("You", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "You");







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



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Everybody loves the sunshine", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Everybody loves the sunshine");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night this night is prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night this night is prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To-night this night is prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Night", "To-night this night is prime");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("The center of the universe", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "The center of the universe");




INSERT INTO Node (lil_text, syllables, stress) VALUES ("Now It's You And I", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Now It's You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I I I Institute", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I I I Institute");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Prime", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's A-I", 3, 3);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lu-cy in the sky", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Lu-cy in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's Lucy In The Sky", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "It's Lucy In The Sky");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's Lucy She Is Shy", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "It's Lucy She Is Shy");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Please calculate a prime", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Please calculate a prime");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Frac-tals in the sky", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Frac-tals in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Like Frac-tals in the sky", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Like Frac-tals in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Ist Ein Trivialer Teiler", 9, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Eins Ist Ein Trivialer Teiler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Zwei", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Eins Zwei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eins Zwei Drei", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Eins Zwei Drei");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zwei Eins", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zwei Eins");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Max-Flow Algorithmus", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Max-Flow Algorithmus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Melodie Und Rhythmus", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Melodie Und Rhythmus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Laufzeit Eines Algorithmus", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Laufzeit Eines Algorithmus");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Find Path Through A Maze", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Maze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Genau dann Equivalenz", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Genau dann Euivalenz");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Find clus-ters", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Find clus-ter");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She just wants to dance", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "She just wants to dance");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Definition von Konsistenz", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Definition von Konsistenz");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Al Jwarizmi", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Al Jwarizmi");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mama Ist Traurig", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("BaumSein", "Mama Ist Traurig");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Öffentlicher Schlüssel", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Öffentlicher Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Approximative", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Approximative");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Approximiere sie", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Approximiere sie");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Approxima-Tiefe", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Approxima-Tiefe");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's ladies night", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "It's ladies night");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pool And The Moon", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Pool And The Moon");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Berechnung beider Schlüssel", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Berechnung beider Schlüssel");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Traurig Werden Wütend Werden", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Traurig Werden Wütend Werden");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Functional Dependency", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Functional Dependency");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cluster find", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cluster find");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Space Race", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space Race", "Maze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ran-dom De-epth Fi-irst Path", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Mess", "Ran-dom De-epth Fi-irst Path");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To the moon", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "To the moon");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Twentythousand Lines Of Code", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Twentythousand Lines Of Code");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("As we select an edge called X", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "As we select an edge called X");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We are the heads", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "We are the heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And all at once was scared to death", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "And all at once was scared to death");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("And all at once we were the heads", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "And all at once we were the heads");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And all at once I lost my breath", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Heads", "And all at once I lost my breath");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sitzen im Zug", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Sitzen im Zug");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Komposition", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Komposition");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Komposition Als Partition", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Komposition Als Partition");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Steinkombination", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Steinkombination");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eulersche Funktion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Eulersche Funktion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Eulersche Funktion Quadrat", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Eulersche Funktion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ein Brettspiel Namens Go", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Ein Brettspiel Namens Go");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Spielsteinkombination", 6, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Spielsteinkombination");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rain", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Rain");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-ple-tely off the rails", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Com-ple-tely off the rails");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The Rain", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "The Rain");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Rail-tracks", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Rail-tracks");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Off the rails", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Off the rails");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-la-tion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permuation", "Re-la-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Er sagt al-les wie ge-wohnt", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Er sagt al-les wie ge-wohnt");




INSERT INTO Node (lil_text, syllables, stress) VALUES ("Post Order By", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Post Order By");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Weighted Digraph", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Weighted Digraph");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("In Phil-ly o-ben oh-ne", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "In Phil-ly o-ben oh-ne");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("De-kom-po-si-tion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "De-kom-po-si-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("S (n k", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "S (n k");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bi-jek-tion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Bi-jek-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-bi-na-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Kom-bi-na-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Per-mu-ta-tion", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Per-mu-ta-tion");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Maze Grid", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Maze Grid");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Space Kid", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Space Kid");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm a Space Kid", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "I'm a Space Kid");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ligh-ter than the light", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ligh-ter than the light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bright ci-ty lights", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Bright ci-ty lights");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("How ma-ny ed-ges has a maze", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Maze");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wieviel We-ge durch den Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Wieviel We-ge durch den Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Ge-hirn ist wie ein Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Das Ge-hirn ist wie ein Wald");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's An Endless Text", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "It's An Endless Text");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Chinesischer Restsatz", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Chinesischer Restsatz");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Größe eines Fensters", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Größe eines Fensters");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Oder nach der Größe", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Bühne", "Oder nach der Größe");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Entweder in Tupeln abgezählt", 9, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Entweder in Tupeln abgezählt");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Größter Gemeinsamer Teiler", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Größter Gemeinsamer Teiler");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Euler Algorithmus", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Rhythmus", "Euler Algorithmus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("GGT ist Eins", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "GGT ist Eins");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Calculates GGT ist Eins", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Calculates GGT ist Eins");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("B Minus A Mod M Ist Keins", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "B Minus A Mod M Ist Keins");




INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tupel basiert", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "Tupel basiert");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Zeit basiert", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Zeit basiert");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Lineare Rekursion", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Permutation", "Lineare Rekursion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Köp-fe und der Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Wald", "Die Köp-fe und der Wald");



INSERT INTO Node (lil_text, syllables, stress) VALUES ("Avantgarden Makes AI", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Avantgarden Makes AI");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exponent in Exponent", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Exponent in Exponent");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exponentiation", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Sex", "Exponentiation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Oder in der Zeit", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Oder in der Zeit");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Fiasco writes about all primes", 8, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Fiasco writes about all primes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's my da-ta ba-sis", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "It's my da-ta ba-sis");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cause may-be it's A-I", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cause may-be it's A-I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Arrays Dot Fill", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Arrays Dot Fill");

CREATE TABLE ClusteredNode (
    lil_text VARCHAR(255),
    lil_mel VARCHAR(255),
    chords VARCHAR(255),
    cluster_name VARCHAR(50),
    syllables INTEGER DEFAULT 1 NOT NULL,
    stress INTEGER DEFAULT 1 NOT NULL
);

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, chords, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;

CREATE VIEW Miss AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Miss";
CREATE VIEW You AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "You";
CREATE VIEW Nice AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Reise";
CREATE VIEW High AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "High";
CREATE VIEW Space AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Space";
CREATE VIEW Edge AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Edge";
CREATE VIEW Wind AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Wind";
CREATE VIEW Band AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Band";
CREATE VIEW Mess AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Mess";
CREATE VIEW Pain AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Pain";
CREATE VIEW Spot AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Spot";
CREATE VIEW Coin AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "If";
CREATE VIEW Heads AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Heads";
CREATE VIEW Partitur AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Partitur";
CREATE VIEW Reise AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Reise";
CREATE VIEW Wald AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Wald";
CREATE VIEW Permutation AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Permutation";
CREATE VIEW Journey AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Journey";
CREATE VIEW Sex AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Sex";
CREATE VIEW Rhythmus AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Rhythmus";
CREATE VIEW Bühne AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Bühne";
CREATE VIEW TraumSein AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "TraumSein";


CREATE VIEW SevenThreeFour AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "7b34";
CREATE VIEW OneFiveFour AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "154";
CREATE VIEW ThreeFourFive AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "b345";
CREATE VIEW SevenOneTwo AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "712";

CREATE VIEW Four AS SELECT * FROM ClusteredNode WHERE (cluster_name="4");
CREATE VIEW _Two AS SELECT * FROM ClusteredNode WHERE (cluster_name="2");
CREATE VIEW _SixDotSix AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE syllables = 6 and stress = 6;
CREATE VIEW _SixDotFive AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE syllables = 6 and stress = 5;
CREATE VIEW _SevenDotSeven AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE syllables = 7 and stress = 7;
CREATE VIEW _FourDotFour AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE syllables = 4 and stress = 4;
CREATE VIEW _FourDotThree AS SELECT lil_mel, chords, syllables, stress, cluster_name FROM ClusteredNode WHERE syllables = 4 and stress = 3;

CREATE VIEW Mel AS SELECT * FROM ClusteredNode WHERE 
(cluster_name = "7b34" 
OR cluster_name = "154" 
OR cluster_name = "b345" 
OR cluster_name = "12b35" 
OR cluster_name= "147" 
OR cluster_name="15b6" 
OR cluster_name="b35b71" 
OR cluster_name = "12b3"
OR cluster_name = "b61b35"
OR cluster_name = "71b35"
OR cluster_name = "1357"
OR cluster_name = "712"
OR cluster_name = "b3"
OR cluster_name = "5"
OR cluster_name = "b7"
OR cluster_name = "1"
OR cluster_name = "15"
OR cluster_name = "571"
OR cluster_name = "352'"
OR cluster_name = "47"
OR cluster_name = "b35"
OR cluster_name = "5b7"
OR cluster_name = "56"
OR cluster_name = "246");

CREATE VIEW Text AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE (
cluster_name = "Space"
OR cluster_name = "Heads" 
OR cluster_name = "Regen" 
OR cluster_name = "High" 
OR cluster_name = "Nacht" 
OR cluster_name = "Licht" 
OR cluster_name = "Edge"  
OR cluster_name = "Nation" 
OR cluster_name = "You"
OR cluster_name = "Wald"
OR cluster_name = "Ort"
OR cluster_name = "Permutation"
OR cluster_name = "Sex"
OR cluster_name = "Regen");

CREATE VIEW TextMel AS SELECT Mel.lil_mel, Text.lil_text, Mel.chords, Mel.syllables, Mel.stress, Mel.cluster_name, Text.cluster_name AS text_cluster_name FROM Text JOIN Mel ON (Text.syllables = Mel.syllables AND Text.stress = Mel.stress);

CREATE VIEW NationMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Nation" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW WaldMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Wald" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW HeadsMel AS SELECT * FROM TextMel WHERE text_cluster_name = "Wald";
CREATE VIEW LichtMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Licht" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW OrtMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Ort" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW SexMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Sex" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW RegenMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Regen" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW PermutationMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "Permutation" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW HighMel AS SELECT cluster_name AS Cluster, lil_text AS Text, lil_mel AS Melody, chords AS Harmony FROM TextMel WHERE text_cluster_name = "High" ORDER BY LENGTH (cluster_name), cluster_name;
CREATE VIEW YouMel AS SELECT * FROM TextMel WHERE text_cluster_name = "You";
CREATE VIEW SevenThreeFourText AS SELECT * FROM TextMel WHERE cluster_name = "7b34";


CREATE VIEW HighFour AS SELECT High.lil_text, Four.lil_mel, Four.stress, Four.chords ;
CREATE VIEW OrtFour AS SELECT Ort.lil_text, Four.lil_mel, Four.stress, Four.chords FROM Ort JOIN Four WHERE (Ort.syllables = Four.syllables AND Ort.stress = Four.stress);
CREATE VIEW WegeFour AS SELECT Wege.lil_text, Four.lil_mel, Four.stress, Four.chords FROM Wege JOIN Four WHERE (Wege.syllables = Four.syllables AND Wege.stress = Four.stress);
CREATE VIEW RhythmusFour AS SELECT Rhythmus.lil_text, Four.lil_mel, Four.stress, Four.chords FROM Rhythmus JOIN Four WHERE (Rhythmus.syllables = Four.syllables AND Rhythmus.stress = Four.stress);
CREATE VIEW LichtFour AS SELECT Licht.lil_text, Four.lil_mel, Four.stress, Four.chords FROM Licht JOIN Four WHERE (Licht.syllables = Four.syllables AND Licht.stress = Four.stress);

CREATE VIEW ClusterTextMel AS SELECT * FROM TextMel ORDER BY LENGTH (cluster_name) ASC, cluster_name ASC;


SELECT * FROM LichtMel;