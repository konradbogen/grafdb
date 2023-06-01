
DROP TABLE IF EXISTS Component;
DROP TABLE IF EXISTS Path;
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

CREATE TABLE Path (
    is_vertical BOOLEAN,
    component_a INTEGER,
    component_b INTEGER,
    PRIMARY KEY (component_a, component_b),
    FOREIGN KEY (component_a) REFERENCES Component(id),
    FOREIGN KEY (component_b) REFERENCES Component(id)
);

INSERT INTO Cluster (name, typ) VALUES ("Ate", "Language");
INSERT INTO Cluster (name, typ) VALUES ("I", "Langugage");
INSERT INTO Cluster (name, typ) VALUES ("Im7_IIm7", "Harmony");
INSERT INTO Cluster (name, typ) VALUES ("Im7", "Harmony");

INSERT INTO Component (lil_text, id) VALUES ("Date", 0); 
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 0);

INSERT INTO Component (lil_text, stress, syllables, id) VALUES ("Empire State", 4, 4, 1);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 1);

INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("A database", 4, 2, 2);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 2);


INSERT INTO Component (lil_text, syllables, stress, id) VALUES ("A database of skyscrapers", 8, 6, 3);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 3);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Ate", 3);

INSERT INTO Component (lil_mel, syllables, stress, id) VALUES ("2' 4' 3' 5'", 4, 3, 4);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Im7_IIm7", 4);

INSERT INTO Component (lil_mel, syllables, stress, id) VALUES ("1'' b7' 5' 4'", 4, 1, 5);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Im7", 5);

INSERT INTO Component (lil_mel, syllables, stress, id) VALUES ("7 1' 5' 4'", 4, 4, 6);
INSERT INTO is_in_cluster (cluster_name, component_id) VALUES ("Im7", 6); 

SELECT * from Component JOIN is_in_cluster ON Component.id = is_in_cluster.component_id;