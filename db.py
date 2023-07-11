import sqlite3
import settings
from lily import Lily
import numpy as np 

syntax = ""

conn = sqlite3.connect ("graf.db")
cur = conn.cursor()

rows = []

def join (mel, text):
    query = "SELECT " + mel + ".lil_mel, " + text + ".lil_text, " + mel + ".chords, " + mel + ".stress " + "FROM " + text + " JOIN " + mel + " WHERE (" + text + ".syllables = " + mel + ".syllables AND " + text + ".stress = " + mel + ".stress)"
    cur.execute (query)
    joined = cur.fetchall()
    for i in range (0, len(joined)):
        i = int (np.random.rand () * len (joined))
        rows.append (joined [i])

join ("Four", "Permutation")
join ("Four", "Bühne")
join ("Four", "Band")
join ("Four", "Regen")
join ("OneFive", "Regen")
join ("Four", "You")
join ("Four", "Band")

def convert (x):
    token = ["1", "b2", "2", "b3", "3", "4", "b5", "5", "b6", "6", "b7", "7"]
    dest = ["c", "des", "d", "ees", "e", "f", "ges", "g", "aes", "a", "bes", "b"]
    octs = [",,", ",", "", "'", "''"]
    for i in range (0, len (token)):
        for oct in octs:
            x = x.replace (token [i] + oct, dest[i] + oct)
    return x


for x in range (0, min(len (rows), 800)):
    row = rows [x]
    token = str (row[3]) 
    syntax += "{^\"" + row[1] + ", " + token + ", " + row [2] + "\"" + convert (row[0]) + "}\n"



lily = Lily ()
lily.render (syntax)