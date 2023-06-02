
DROP TABLE IF EXISTS Node;
DROP TABLE IF EXISTS Cluster;
DROP TABLE IF EXISTS ClusteredNode;
DROP TABLE IF EXISTS is_in_cluster;

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




INSERT INTO Cluster (name, typ) VALUES ("Ate", "Language");
INSERT INTO Cluster (name, typ) VALUES ("I", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("Ace", "Language");
INSERT INTO Cluster (name, typ) VALUES ("U", "Language");
INSERT INTO Cluster (name, typ) VALUES ("A", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Iss", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ess", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ort", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Was", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Love", "Language");
INSERT INTO Cluster (name, typ) VALUES ("And", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Journey", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Reise", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Ü", "Language");
INSERT INTO Cluster (name, typ) VALUES ("_", "Language");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Da-ta-ba-ses Da-ta-ba-ses");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("No-one left be-hind", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "No-one left be-hind");

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

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Who is it de-ci-ding", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Who is it de-ci-ding");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Who is it de-ci-ding");


INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bit-te glaub den Ster-nen", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("_", "Bit-te glaub den Ster-nen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tay-lor Po-ly-no-me", 6, 1);


INSERT INTO Node (lil_mel, syllables, stress) VALUES ("4'' b3'' b2'' b7' b6'", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("#VIImaj7 bIIIm7", "4'' b3'' b2'' b7' b6'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("On this end-less jour-ney", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Journey", "On this end-less jour-ney");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("And", "On this end-less jour-ney");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("There's no end in sight", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "There's no end in sight");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("And", "There's no end in sight");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("5 7 4'", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("Im7 VII7", "5 7 4'");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Love your lips", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Love", "Love your lips");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I love your eyes", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Love", "I love your eyes");

INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b2' 7 6 b6", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("VImaj7 IImaj7", "b2' 7 6 b6");


INSERT INTO Node (lil_mel, syllables, stress) VALUES ("b5' 3' b2' 7", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_mel) VALUES ("VImaj7 IImaj7", "b5' 3' b2' 7");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm out of touch", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I'm out of touch");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I'm Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss You", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "I'm Miss You");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I'm Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss home", 3, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I miss home");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Am I Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Am I Miss You?");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "Am I Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I am Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", 27);

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "It's You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Miss You And I", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man I'm mes-me-ri-zed", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man I'm mes-me-ri-zed");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Mess", "Pia-no man I'm mes-me-ri-zed");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Love your legs and love your eyes", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Love", "Love your legs and love your eyes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Eyes", "Love your legs and love your eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Are you Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Are you Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is it Miss You?", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "Is it Miss You?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's Miss You", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It's Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("His da-ta-base of high hopes", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "His da-ta-base of high hopes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "His da-ta-base of high hopes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("My da-ta-tales with high tropes", 7, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "My da-ta-tales with high tropes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "My da-ta-tales with high tropes");

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
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Like dia-monds in the sky");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Like", "Like dia-monds in the sky");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("This is you and I", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "This is you and I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "This is you and I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "This is you and I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mis-ses Mis-ter Mis-ter", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "Mis-ses Mis-ter Mis-ter");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is Miss You And I", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "It is Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It is Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "It is Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is Miss You And I", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "It is Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It is Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "It is Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And so it be", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("E", "And so it be");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It is", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "It is");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Is it?", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "Is it?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Co-lumns of a da-ta-space", 7, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ace", "Co-lumns of a da-ta-space");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta dri-ven song-wri-ting", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Da-ta dri-ven song-wri-ting");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta da-ta da-ta da-ta", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Da-ta da-ta da-ta da-ta");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta da-ta da-ta da-ta", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Da-ta da-ta da-ta da-ta");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no pia-no pia-no pia-no", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no pia-no pia-no pia-no");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wor-te Wor-te Wor-te Wor-te", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "Wor-te Wor-te Wor-te Wor-te");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("For-te For-te For-te For-te", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ort", "For-te For-te For-te For-te");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta stru-ctu-res", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Da-ta stru-ctu-res");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Date a stru-ctu-re", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Date a stru-ctu-re");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wait for stru-ctu-re", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Wait for stru-ctu-re");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wait for stru-ctu-re", 5, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Wait for stru-ctu-re");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She's a wait-ress in New York", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "She's a wait-ress in New York");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's Miss You And I", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "It's Miss You And I");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "It's Miss You And I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Noone left be-hind", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "Noone left be-hind");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm just try-ing to exp-ress", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I'm just try-ing to exp-ress");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ess", "I'm just try-ing to exp-ress");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a mes-me-ri-zing mess", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ess", "It's a mes-me-ri-zing mess");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's a mes-me-ri-zing miss", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ess", "It's a mes-me-ri-zing miss");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "It's a mes-me-ri-zing miss");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Pia-no man I Miss You", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Miss", "Pia-no man I Miss You");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Piano", "Pia-no man I Miss You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She's a wait-ress in New York", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "She's a wait-ress in New York");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wai-it for it", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Wai-it for it");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wai-it for it wai-it for it", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ate", "Wai-it for it wai-it for it");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We tra-vel through a da-ta-base", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ace", "We tra-vel through a da-ta-base");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("You", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("U", "You");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I", 1, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I miss my self", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I miss my self");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Al-go-rith-mic it's a rhy-thm", 8, 6);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was sind denn die Par-ti-tio-nen", 8, 6);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was ist ei-ne Par-ti-tur?", 7, 7);

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And I miss you", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "And I miss you");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Miss Your Eyes", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I Miss Your Eyes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I Miss Your Eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I Kiss Your Eyes", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I Kiss Your Eyes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I Kiss Your Eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm Miss Me-ri-zed", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I'm Miss Me-ri-zed");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "I'm Miss Me-ri-zed");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I'm mes-me-rized", 4, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "I'm mes-me-rized");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ess", "I'm mes-me-rized");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("And mes-me-rized I kiss your eyes", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("I", "And mes-me-rized I kiss your eyes");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Iss", "And mes-me-rized I kiss your eyes");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Are we?", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("A", "Are we?");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We are!", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("A", "We are!");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Like column spa-ces", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ace", "Like column spa-ces");
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Like", "Like column spa-ces");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Da-ta ba-ses", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ace", "Da-ta ba-ses");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("My da-ta ba-sis", 5, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ace", "My da-ta ba-sis");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It's my da-ta ba-sis", 6, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Ace", "It's my da-ta ba-sis");

CREATE TABLE ClusteredNode (
    lil_text VARCHAR(255),
    lil_mel VARCHAR(255),
    cluster_name VARCHAR(50),
    syllables INTEGER DEFAULT 1 NOT NULL,
    stress INTEGER DEFAULT 1 NOT NULL
);

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;



SELECT * from ClusteredNode WHERE syllables = 8 AND stress = 1;