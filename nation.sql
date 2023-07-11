DROP VIEW IF EXISTS Nation;

INSERT INTO Node (lil_text, syllables, stress) VALUES ("G Dot V Count Edges", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "G Dot V Count Edges");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("California is a nation", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "California is a nation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Combination", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Combination");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Saves relations", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Saves relations");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Soul of many nations", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Soul of many nations");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("In the graph of all solutions", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "In the graph off all solutions");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tongue of many nations", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Tongue of many nations");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Saves relations on a journey", 8, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Saves relations on a journey");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Transitive relation", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Transitive relation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A and B relate", 5, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "A and B relate");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Soul of a Nation", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Soul of a Nation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Independent Of Relation", 8, 6);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Nation", "Independent Of Relation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("She's a sooul of a nation", 8, 6);
INSERT INTO is_in_cluster  (cluster_name, node_text) VALUES ("Nation", "She's a sooul of a nation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Im An Englishman", 5, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Im An Englishman");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Surely saves communication", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Surely saves communication");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Weighted edges passing through a graph", 9, 9);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Weighted edges passing through a graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Waiting edges passing through a graph", 9, 9);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Waiting edges passing through a graph");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Set coordinates", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Set coordinates");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Get coordinates", 4, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Get coordinates");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Revelation", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Revelation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("A revelation", 4, 3);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "A revelation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Saves our relation", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Saves our relation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Partial solution", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Partial solution");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("I don't want a revalation", 8, 7);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "I don't want a revalation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Tuples of relation", 6, 5);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Tuples of relations");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("What makes a Graph then labeled", 7, 6);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "What makes a Graph then labeled");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Exponentiation", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Exponentiation");

INSERT INTO Node (lil_text, syllables, stress) VALUES ("Partial Solution", 5, 4);
INSERT INTO is_in_cluster (cluster_name, node_text) VALUES ("Nation", "Partial Solution");

INSERT INTO ClusteredNode SELECT DISTINCT lil_text, lil_mel, chords, cluster_name, syllables, stress from Node JOIN is_in_cluster ON (Node.lil_text = is_in_cluster.node_text OR Node.lil_mel = is_in_cluster.node_mel) ORDER BY syllables ASC, stress ASC;
CREATE VIEW Nation AS SELECT lil_text, syllables, stress, cluster_name FROM ClusteredNode WHERE cluster_name = "Nation";

SELECT * FROM Nation;