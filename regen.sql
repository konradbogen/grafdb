DROP VIEW IF EXISTS Regen;
DROP VIEW IF EXISTS RegenTwo;

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Stel-len-wert-sys-te-me", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Stel-len-wert-sys-te-me");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We-ge zum Den-ken", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "We-ge zum Den-ken");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Mit mi-ni-ma-lem Weg", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Mit mi-ni-ma-lem Weg");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("M Eins M Zwei M N", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "M Eins M Zwei M N");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Komponente", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Komponente");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A Element Von N", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "A Element Von N");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("B Hoch N Mod M", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "B Hoch N Mod M");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Drei Arten eines Fensters", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Drei Arten eines Fensters");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Offenes Fenster", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Offenes Fenster");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("X Hoch N", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "X Hoch N");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ypsilon Hoch N", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Ypsilon Hoch N");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Replace PQ with DFS", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Replace PQ with DFS");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ypsilon Hoch N", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Ypsilon Hoch N");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("We-ge", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "We-ge");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Al-go-rhyth-mus", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Al-go-rhyth-mus");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Equivalent", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Equivalent");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Suchen Wege zum Denken", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Suchen Wege zum Denken");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In offenen Fenstern", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "In offenen Fenstern");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Suchen Wege", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Suchen Wege");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kürzeste Wege", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Kürzeste Wege");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kürzeste Wege In Blau", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Kürzeste Wege In Blau");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Per-mu-ta-tio-nen al-ler We-ge", 9, 8);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Per-mu-ta-tio-nen al-ler We-ge");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Alle We-ge", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Alle We-ge");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Sehne mich nach", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Sehne mich nach");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A Stern", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "A Stern");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Bit-te glaub den Ster-nen", 6, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Bit-te glaub den Ster-nen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Modulo M", 3, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Modulo M");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Während wir", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Während wir");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Wert basiert", 3, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "Wert basiert");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("g g T von P und Q und E", 9, 9);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Regen", "g g T von P und Q und E");

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, chords, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;

CREATE VIEW Regen AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Regen";
