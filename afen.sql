DROP VIEW IF EXISTS Hafen;

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Das Space-Kid kommt im Hafen an", 8, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Das SpaceKid kommt im Hafen an");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Edge Weighted Graph", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Edge Weighted Graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Post Order Durch Den Graph", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Post Order Durch Den Graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Kleiner Sa-atz von Fermat", 7, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Kleiner Sa-atz von Fermat");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Carmichael Zahl", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Carmichael Zahl");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Graphen", 2, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Graphen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Turm und Hafen", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Turm und Hafen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Carmichael Zahlen", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Carmichael Zahlen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("It started as a graph", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "It started as a graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Und wir schlafen nicht", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Und wir schlafen nicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An den Gleisen glänzt das Hafenlicht", 9, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "An den Gleisen glänzt das Hafenlicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Datenbank im Hafenlicht", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Datenbank im Hafenlicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Erkenn den Hafen nicht", 6, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Erkenn den Hafen nicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Komm im Hafen an", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Komm im Hafen an");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("An den Gleisen glänzt das Hafenlicht", 9, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "An den Gleisen glänzt das Hafenlicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Hafenlichter du bist nicht da", 8, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Hafenlichter du bist nicht da");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Ich erkenn den Hafen nicht", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Ich erkenn den Hafen nicht");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Hafensicher", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Hafensicher");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Barefoot In The Park", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Barefoot In The Park");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Azyklische Digraphen", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Azyklische Digraphen");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Abendlichter", 4, 1);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Abendlichter");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Heptagon bleibt unerkannt", 7, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Heptagon bleibt unerkannt");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Digraph", 2, 2);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Digraph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Digraph In Richtung Schloss", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Digraph In Richtung Schloss");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Was Ist Ein Digraph", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Was Ist Ein Digraph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Die Köpfe Und Der Graph", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Die Köpfe Und Der Graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Digraphen Durch Den Wald", 6, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Digraphen Durch Den Wald");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Maximaler Fluss Durch Einen Graph", 9, 9);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Maximaler Fluss Durch Einen Graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Choreographie", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Hafen", "Graphen");

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, chords, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;

CREATE VIEW Hafen AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Hafen";

SELECT * FROM Hafen;