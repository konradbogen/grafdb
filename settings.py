from datetime import datetime

DAY_OF_YEAR = datetime.now().timetuple().tm_yday

C_MINOR = 0
Db_MINOR = 1
D_MINOR = 2
Eb_MINOR = 3
E_MINOR = 4
F_MINOR = 5
Gb_MINOR = 6
G_MINOR = 7
Ab_MINOR = 8
A_MINOR = 9
Bb_MINOR = 10
B_MINOR = 11

KEY_OF_THE_DAY = DAY_OF_YEAR % 11

LILY                    = "m"
LYRICS                  = "t"

STAFF_START_TOKEN       = "\\new Staff "
STAFF_END_TOKEN         = "}"

TREBLE_CLEF             = "\\clef \"treble\""
BASS_CLEF               = "\\clef \"bass\""
DOUBLE_BASS_CLEF        = "\\clef \"bass_8\""
C_CLEF                  = "\\clef C"

PAPER_TAG               = "#(set-default-paper-size \"a4\")"
FONT_SIZE_TAG           = '#(set-global-staff-size 20)'

WITH_TOKEN              = "\with {"
INSTRUMENT_NAME         = "instrumentName = "

NEW_LINE                = "\n"
INDEX_SEPERATOR         = "."
BREAK                   = " "
MIDI                    = "\\midi { }"
MIDI_MID_EXTENSION      = "#(ly:set-option 'midi-extension \"mid\")"
FULL_SCORE_TAG          = "\\score { \\midi {} \\layout {}"
LILY_VERSION            = "\\version \"2.20.0\""

HEADER_OPEN             = "\header {"
HEADER_CLOSE            = "}"

MARK                    = "\mark \default"
MARKER_STYLE            = "\set Score.markFormatter = #format-mark-box-alphabet"

LILY_APP = '/Applications/LilyPond 2.app/Contents/Resources/bin/lilypond'

ROOT_FOLDER = "/Users/konradbogen/Documents/GitHub/musicsoftware"
DATABASE_FOLDER = ROOT_FOLDER + "/userdata/database"
SCORE_FOLDER = ROOT_FOLDER + "/userdata/scores"

BASS_PITCHES = ["f", "e", "ees", "dis", "d", "des", "cis", "c", "b,", "bes,", "ais,", "a,", "aes,", "gis,", "g,", "fis,", "ges,", "f,", "e,", "ees,", "dis,", "d,", "des,", "cis,", "c,", "b,,", "bes,,", "a,,", "ais,,", "gis,,", "aes,,", "g,,", "fis,,", "ges,,", "f,,", "e,,", "dis,,", "d,,", "cis,,", "c,,"]

STANDARD_SEQUENCE = ["1.1", "2.1", "2.2", "3.1", "3.2", "3.3", "4.1", "4.2", "4.3", "4.4", "5.1", "5.2", "5.3", "5.4", "5.5", 
            "6.1", "6.2", "6.3", "6.4", "6.5", "6.6", "7.1", "7.2", "7.3", "7.4", "7.5", "7.6", "7.7", "8.1", "8.2", "8.3",
            "8.4", "8.5", "8.6", "8.7", "8.8"]

KEYS = { 
    "1"  : ["c", "des",    "d",    "ees",    "e",    "f",       "fis",    "g",    "aes",    "a",    "bes",    "b"   ],
    "b2" : ["des",  "d",      "ees",  "e",      "f",    "ges",  "g",      "aes",  "a",      "ais",  "b",      "c'"  ],
    "2"  : ["d",    "ees",    "e",    "f",      "fis",  "g",    "gis",    "a",    "bes",    "b",    "c'",     "cis'"],    
    "b3" : ["ees",  "e",      "f",    "ges",    "g",    "aes",  "a",      "bes",  "b",      "c'",   "des'",   "d'"  ],
    "3"  : ["e",    "f",      "ges",  "g",      "gis",  "a",    "ais",    "b",    "c'",     "cis'", "d'",     "dis'"],
    "4"  : ["f",    "ges",    "g",    "aes",    "a",    "bes",  "b",      "c'",   "des'",   "d'",   "ees'",   "e'"  ],
    "#4" : ["ges",  "g",      "aes",  "a",      "ais",  "b",    "c'",     "des'", "d'",     "dis'", "e'",     "f'"  ],
    "b5" : ["ges",  "g",      "aes",  "a",      "ais",  "b",    "c'",     "des'", "d'",     "dis'", "e'",     "f'"  ],
    "5"  : ["g",    "aes",    "a",    "bes",    "b",    "c'",   "cis'",   "d'",   "ees'",   "e'",   "f'",     "fis'"],
    "b6" : ["aes",  "a",      "bes",  "b",      "c'",   "des'", "d'",     "ees'", "e'",     "f'",   "ges'",   "g'"  ],
    "6"  : ["a",    "bes",    "b",    "c'",     "cis'", "d'",   "dis'",   "e'",   "f'",     "fis'", "g'",     "gis'"],
    "b7" :  ["bes",  "b",      "c'",   "des'",   "d'",   "ees'", "e'",     "f'",   "ges'",   "g'",   "aes'",   "a'"  ],
    "7" :  ["bes",  "b",      "c'",   "des'",   "d'",   "ees'", "e'",     "f'",   "ges'",   "g'",   "aes'",   "a'"  ],
    "#7" : ["b",    "c'",     "des'", "d'",     "dis'", "e'",   "eis'",     "ges'", "g'",     "gis'", "a'",     "ais'"]
}