
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



CREATE TABLE Node (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    lil_text VARCHAR(255),
    lil_mel VARCHAR(255),

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
INSERT INTO Cluster (name, typ) VALUES ("Band", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Nacht", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Journey", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Reise", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Eight", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Act", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ü", "Language");
INSERT INTO Cluster (name, typ) VALUES ("_", "Language");
INSERT INTO Cluster (name, typ) VALUES ("I", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Licht", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Pain", "Language");


INSERT INTO Cluster (name, typ) VALUES ("HTGT", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("UpGanz", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("Im7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("IVm6", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("Im7 VII7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("IVm6 Im7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("IVm6 VII7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("VImaj7 IImaj7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("VII7 Im7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("#VIImaj7 bIIIm7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("Vm7", "Harmony");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Some-thing bet-ween me and you", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Some-thing bet-ween me and you");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ce-res-tral be-ings", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Ce-res-tral be-ings");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Depth-First through the tree", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Depth first through the tree");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Breadth-First through the tree", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Breadth-First through the tree");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("This is you and me", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "This is you and me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We are free", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "We are free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To be free", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "To be free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Free", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Be-Bop", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Be-Bop");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Gan-ze Zah-len", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Gan-ze Zah-len");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Meet me in my hide-a-way", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Meet me in my hide-a-way");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Into the light", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Into the light");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a joke that makes me cry", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "It's a joke that makes me cry");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ma-chen kommt von Macht", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Ma-chen kommt von Macht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("E-mi-nem er schreibt", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "E-mi-nem er schreibt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ty-ler the cre-a-tor", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ty-ler the cre-a-tor");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tei-ler", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Tei-ler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Nacht-scha-tten", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Nacht-scha-tten");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Just Be-Bop");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Freedom", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Freedom");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich bin Geil", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Ich bin Geil");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tri-vi-a-le Tei-ler", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Tri-vi-a-le Tei-ler");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Free Free Free", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Free Free Free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is this real-ly me", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Is this real-ly me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("For-eign keys", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "For-eign keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Li-inked Li-ist", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Licht", "Li-inked Li-ist");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Post in-to a da-ta-base", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "Post in-to a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Can't you see", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Can't you see");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Handful full of keys", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Handful full of keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta-base in-te-gri-ty", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Da-ta-base in-te-gri-ty");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Com-pu-ta-tion and Techno-lo-gy", 9, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Com-pu-ta-tion and Techno-lo-gy");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I need si-lence when we leave", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I need si-lence when we leave");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I em-po-wer all my dreams", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I em-po-wer all my dreams");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Who are we", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Who are we");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Act five", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Act", "Act five");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Static function main", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Pain", "Static function main");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Or-der by I-D");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Or-der of i-deas", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Or-der of i-deas");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We hash songs in keys of life", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "We hash songs in keys of life");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's key", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "It's key");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I be-lieve", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I be-lieve");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Return you'll see", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Return you'll see");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I be-lieve we're free", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I be-lieve we're free");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Now it's you and me", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Now it's you and me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Just a hand of keys", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Just a hand of keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I don't trust me", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I don't trust me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("At-tri-butes and keys", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "At-tri-butes and keys");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Do you love me", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Do you love me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In or-der of a tree", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "In or-der of a tree");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I ut-ter-ly love trees", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I ut-ter-ly love trees");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wör-ter tra-gen Rei-se-wel-ten", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Reise", "Wör-ter tra-gen Rei-se-wel-ten");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Co-lumns of a da-ta-space", 7, 1);
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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mo-du-lo of eight", 5, 5);
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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Tu-ples of re-la-tions");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sort ed-ges by weight", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Sort ed-ges by weight");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A and B re-late", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "A and B re-late");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Re-ve-la-tion", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eight", "Re-ve-la-tion");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("The I", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "The I");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ra-tio-na-le", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Ra-tio-na-le");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Nichts Weiss Nichts Ist Wach", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Das Nichts Weiss Nichts Ist Wach");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Space Race", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space Race", "Maze");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ran-dom Depth First Path", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Mess", "Ran-dom Depth First Path");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("To the moon", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("You", "To the moon");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ten-ban-ken-ar-chi-tekt", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nacht", "Da-ten-ban-ken-ar-chi-tekt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-po-si-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Kom-po-si-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Im-pli-ka-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Im-pli-ka-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-mu-ni-ka-tion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Kom-mu-ni-ka-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In Phil-ly o-ben oh-ne", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "In Phil-ly o-ben oh-ne");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("De-kom-po-si-tion", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "De-kom-po-si-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bi-jek-tion", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Bi-jek-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kom-bi-na-tion", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Kom-bi-na-tion");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Per-mu-ta-tion", 4, 4);
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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's my da-ta ba-sis", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Space", "It's my da-ta ba-sis");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Cause may-be it's A-I", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("High", "Cause may-be it's A-I");


CREATE TABLE ClusteredNode (
    lil_text VARCHAR(255),
    lil_mel VARCHAR(255),
    cluster_name VARCHAR(50),
    syllables INTEGER DEFAULT 1 NOT NULL,
    stress INTEGER DEFAULT 1 NOT NULL
);

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;


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
SELECT * FROM Ort;