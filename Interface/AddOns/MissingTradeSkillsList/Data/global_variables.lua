-------------------------------------------
-- Creates all global variables for DATA --
-------------------------------------------

-- Holds all the data filled by the data luas
MTSL_DATA = {
    -- Each profession has 4 ranks to learn (1-75, 75-150, 150-225, 225-300), execpt poisons (only 1)
    ["AMOUNT_RANKS"] = {
        ["Alchemy"] = 4,
        ["Blacksmithing"] = 4,
        ["Cooking"] = 4,
        ["Enchanting"] = 4,
        ["Engineering"] = 4,
        ["First Aid"] = 4,
        ["Leatherworking"] = 4,
        ["Mining"] = 4,
        ["Poisons"] = 1,
        ["Tailoring"] = 4,
    },
    -- Counters keeping track of total amount of skill (this includes AMOUNT_TRADESKILL_LEVELS)
    ["AMOUNT_SKILLS"] = {
        ["phase_1"] = {
            ["Alchemy"] = {
                ["spec_0"] = 109,
            },
            ["Blacksmithing"] = {
                ["spec_0"] = 169,
                ["spec_17039"] = 5,
                ["spec_17040"] = 4,
                ["spec_17041"] = 4,
                ["spec_9787"] = 6,
                ["spec_9788"] = 17,
            },
            ["Cooking"] = {
                ["spec_0"] = 81,
            },
            ["Enchanting"] = {
                ["spec_0"] = 130,
            },
            ["Engineering"] = {
                ["spec_0"] = 142,
                ["spec_20219"] = 12,
                ["spec_20222"] = 12,
            },
            ["First Aid"] = {
                ["spec_0"] = 16,
            },
            ["Leatherworking"] = {
                ["spec_0"] = 157,
                ["spec_10656"] = 13,
                ["spec_10658"] = 12,
                ["spec_10660"] = 17,
            },
            ["Mining"] = {
                ["spec_0"] = 15,
            },
            ["Poisons"] = {
                ["spec_0"] = 21,
            },
            ["Tailoring"] = {
                ["spec_0"] = 198,
            },
        },
        ["phase_2"] = {
             ["Alchemy"] = {
                 ["spec_0"] = 109,
             },
             ["Blacksmithing"] = {
                 ["spec_0"] = 169,
                 ["spec_17039"] = 5,
                 ["spec_17040"] = 4,
                 ["spec_17041"] = 4,
                 ["spec_9787"] = 6,
                 ["spec_9788"] = 20,
             },
             ["Cooking"] = {
                 ["spec_0"] = 82,
             },
             ["Enchanting"] = {
                 ["spec_0"] = 130,
             },
             ["Engineering"] = {
                 ["spec_0"] = 143,
                 ["spec_20219"] = 12,
                 ["spec_20222"] = 12,
             },
             ["First Aid"] = {
                 ["spec_0"] = 16,
             },
             ["Leatherworking"] = {
                 ["spec_0"] = 163,
                 ["spec_10656"] = 14,
                 ["spec_10658"] = 12,
                 ["spec_10660"] = 18,
             },
             ["Mining"] = {
                 ["spec_0"] = 15,
             },
             ["Poisons"] = {
                 ["spec_0"] = 21,
             },
             ["Tailoring"] = {
                 ["spec_0"] = 206,
             },
        },
        ["phase_3"] = {
             ["Alchemy"] = {
                 ["spec_0"] = 109,
             },
             ["Blacksmithing"] = {
                 ["spec_0"] = 173,
                 ["spec_17039"] = 6,
                 ["spec_17040"] = 5,
                 ["spec_17041"] = 5,
                 ["spec_9787"] = 8,
                 ["spec_9788"] = 22,
             },
             ["Cooking"] = {
                 ["spec_0"] = 82,
             },
             ["Enchanting"] = {
                 ["spec_0"] = 136,
             },
             ["Engineering"] = {
                 ["spec_0"] = 143,
                 ["spec_20219"] = 12,
                 ["spec_20222"] = 12,
             },
             ["First Aid"] = {
                 ["spec_0"] = 17,
             },
             ["Leatherworking"] = {
                 ["spec_0"] = 168,
                 ["spec_10656"] = 15,
                 ["spec_10658"] = 13,
                 ["spec_10660"] = 19,
             },
             ["Mining"] = {
                 ["spec_0"] = 16,
             },
             ["Poisons"] = {
                 ["spec_0"] = 21,
             },
             ["Tailoring"] = {
                 ["spec_0"] = 212,
             },
        },
        ["phase_4"] = {
             ["Alchemy"] = {
                 ["spec_0"] = 113,
             },
             ["Blacksmithing"] = {
                 ["spec_0"] = 182,
                 ["spec_17039"] = 6,
                 ["spec_17040"] = 5,
                 ["spec_17041"] = 5,
                 ["spec_9787"] = 8,
                 ["spec_9788"] = 23,
             },
             ["Cooking"] = {
                 ["spec_0"] = 83,
             },
             ["Enchanting"] = {
                 ["spec_0"] = 136,
             },
             ["Engineering"] = {
                 ["spec_0"] = 145,
                 ["spec_20219"] = 12,
                 ["spec_20222"] = 12,
             },
             ["First Aid"] = {
                 ["spec_0"] = 17,
             },
             ["Leatherworking"] = {
                 ["spec_0"] = 173,
                 ["spec_10656"] = 15,
                 ["spec_10658"] = 13,
                 ["spec_10660"] = 19,
             },
             ["Mining"] = {
                 ["spec_0"] = 16,
             },
             ["Poisons"] = {
                 ["spec_0"] = 21,
             },
             ["Tailoring"] = {
                 ["spec_0"] = 215,
             },
        },
        ["phase_5"] = {
             ["Alchemy"] = {
                 ["spec_0"] = 115,
             },
             ["Blacksmithing"] = {
                 ["spec_0"] = 191,
                 ["spec_17039"] = 7,
                 ["spec_17040"] = 6,
                 ["spec_17041"] = 5,
                 ["spec_9787"] = 8,
                 ["spec_9788"] = 24,
             },
             ["Cooking"] = {
                 ["spec_0"] = 85,
             },
             ["Enchanting"] = {
                 ["spec_0"] = 155,
             },
             ["Engineering"] = {
                 ["spec_0"] = 145,
                 ["spec_20219"] = 12,
                 ["spec_20222"] = 12,
             },
             ["First Aid"] = {
                 ["spec_0"] = 17,
             },
             ["Leatherworking"] = {
                 ["spec_0"] = 182,
                 ["spec_10656"] = 16,
                 ["spec_10658"] = 14,
                 ["spec_10660"] = 19,
             },
             ["Mining"] = {
                 ["spec_0"] = 16,
             },
             ["Poisons"] = {
                 ["spec_0"] = 22,
             },
             ["Tailoring"] = {
                 ["spec_0"] = 226,
             },
        },
        ["phase_6"] = {
             ["Alchemy"] = {
                 ["spec_0"] = 115,
             },
             ["Blacksmithing"] = {
                 ["spec_0"] = 194,
                 ["spec_17039"] = 7,
                 ["spec_17040"] = 6,
                 ["spec_17041"] = 5,
                 ["spec_9787"] = 8,
                 ["spec_9788"] = 24,
             },
             ["Cooking"] = {
                 ["spec_0"] = 85,
             },
             ["Enchanting"] = {
                 ["spec_0"] = 155,
             },
             ["Engineering"] = {
                 ["spec_0"] = 145,
                 ["spec_20219"] = 12,
                 ["spec_20222"] = 12,
             },
             ["First Aid"] = {
                 ["spec_0"] = 17,
             },
             ["Leatherworking"] = {
                 ["spec_0"] = 188,
                 ["spec_10656"] = 16,
                 ["spec_10658"] = 14,
                 ["spec_10660"] = 19,
             },
             ["Mining"] = {
                 ["spec_0"] = 16,
             },
             ["Poisons"] = {
                 ["spec_0"] = 22,
             },
             ["Tailoring"] = {
                 ["spec_0"] = 230,
             },
        },
    },
    MIN_PATCH_LEVEL = 1,
    CURRENT_PATCH_LEVEL = 3,
    MAX_PATCH_LEVEL = 6,
}