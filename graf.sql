
DROP TABLE IF EXISTS Component;
DROP TABLE IF EXISTS Cluster;
DROP TABLE IF EXISTS is_in_cluster;

CREATE TABLE Component (
    id INTEGER NOT NULL PRIMARY KEY,
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
    component_id INTEGER,
    FOREIGN KEY (cluster_name) REFERENCES Cluster(name),
    FOREIGN KEY (component_id) REFERENCES Component(id)
);

INSERT INTO Cluster (name, typ) VALUES ("Ate", "Language");
INSERT INTO Cluster (name, typ) VALUES ("I", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("Ace", "Language");
INSERT INTO Cluster (name, typ) VALUES ("U", "Language");
INSERT INTO Cluster (name, typ) VALUES ("A", "Language");
INSERT INTO Cluster (name, typ) VALUES ("Iss", "Language");

INSERT INTO Cluster (name, typ) VALUES ("Im7_IIm7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("Im7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("b6maj7", "Harmony");

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I'm Miss You", 3, 3, 18);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 18);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I miss You", 3, 2, 17);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 17);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I as-sume", 3, 3, 22);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 22);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("You and I", 3, 1, 31);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 31);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Do you miss me?", 4, 3, 24);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 24);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("And who are you?", 4, 4, 25);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 25);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Am I Miss You?", 4, 4, 26);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 26);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I am Miss You?", 4, 4, 27);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 27);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("It's You And I", 4, 2, 33);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 33);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 33);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Miss You And I", 4, 2, 34);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 34);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 34);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 34);


INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Are you Miss You?", 4, 4, 28);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 28);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Is it Miss You?", 4, 4, 39);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 39);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("It's Miss You", 3, 3, 1);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 1);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Her da-ta-base of high hopes", 7, 2, 3);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 3);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 3);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Her da-ta-tales of high tropes", 7, 2, 16);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 16);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 16);

INSERT INTO Component (lil_mel, syllables, stress, id) VALUES ("2' 4' 3' 5'", 4, 3, 4);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Im7_IIm7", 4);

INSERT INTO Component (lil_mel, syllables, stress, id) VALUES ("1'' b7' 5' 4'", 4, 1, 5);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Im7", 5);

INSERT INTO Component (lil_mel, syllables, stress, id) VALUES ("7 1' 5' 4'", 4, 4, 6);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Im7", 6); 

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Like dia-monds in the sky", 6, 6, 2);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 2);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Like", 2);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("This is you and I", 5, 3, 30);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 30);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 30);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 30);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Mis-ses Mis-ter Mis-ter", 6, 3, 35);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 35);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("It is Miss You And I", 6, 4, 40);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 40);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 40);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 40);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("And so it be", 4, 4, 36);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("E", 36);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("It is", 2, 2, 37);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 37);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Is it?", 2, 1, 38);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 38);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Co-lumns of a da-ta-space", 7, 1, 10);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ace", 10);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Da-ta dri-ven song-wri-ting", 7, 5, 41);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 41);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Da-ta da-ta da-ta da-ta", 8, 1, 42);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 42);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Pia-no pia-no pia-no pia-no", 8, 1, 43);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Piano", 43);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Pia-no man", 3, 1, 44);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Piano", 44);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Da-ta stru-ctu-res", 5, 1, 46);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 46);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Date a stru-ctu-re", 5, 1, 47);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 47);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Wait for stru-ctu-re", 5, 1, 48);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 48);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Wait for stru-ctu-re", 5, 1, 60);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 60);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("She's a wait-ress in New York", 5, 3, 61);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 61);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("It's Miss You And I", 5, 5, 57);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Miss", 57);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 57);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 57);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Noone left be-hind", 5, 5, 58);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 58);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("She's a wait-ress in New York", 5, 3, 49);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 49);


INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Wait for it", 5, 3, 50);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 50);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Wai-it for it wai-it for it", 8, 1, 51);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 51);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("We tra-vel through a da-ta-base", 8, 2, 11);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ace", 11);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("You", 1, 1, 12);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("U", 12);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I", 1, 1, 29);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 29);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I miss my self", 4, 4, 7);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 7);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("And I miss you", 4, 3, 21);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 21);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I Miss Your Eyes", 4, 2, 32);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 32);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 32);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I Kiss Your Eyes", 4, 2, 53);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 53);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 53);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I'm Miss Me-ri-zed", 4, 2, 54);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 54);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 54);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("I'm mes-me-rizes", 4, 2, 55);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 55);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 55);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("And mes-me-rized I kiss your eyes", 8, 6, 56);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("I", 56);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Iss", 56);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Are we?", 2, 1, 13);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("A", 13);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("We are!", 2, 2, 14);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("A", 14);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Like column spa-ces", 5, 2, 15);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ace", 15);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Like", 15);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("Da-ta ba-ses", 4, 1, 19);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ace", 19);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("My da-ta ba-sis", 5, 2, 20);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ace", 20);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("It's my da-ta ba-sis", 6, 3, 0);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ace", 20);


SELECT DISTINCT lil_text, cluster_name, syllables, stress from Component JOIN is_in_cluster ON Component.id = is_in_cluster.component_id WHERE lil_text IS NOT NULL ORDER BY syllables ASC, stress ASC;
SELECT id FROM Component;

SELECT DISTINCT lil_text, cluster_name, syllables, stress from Component JOIN is_in_cluster ON Component.id = is_in_cluster.component_id WHERE (is_in_cluster.cluster_name = "Iss") ORDER BY syllables ASC, stress ASC;
