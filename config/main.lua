Config = {

    defaultlang = 'en_lang',
    ---------------------------------------------------------------

    devMode = {
        active  = true,      -- When active, you can restart the script while connected for testing (otherwise requires relog)
        command = 'WaterDev', -- Command to start the script functions
    },
    ---------------------------------------------------------------

    -- Vorp Metabolism              = 1
    -- Fred Metabolism Free         = 2
    -- Outsider Needs               = 3
    -- Fred Metabolism Paid v1.4    = 4
    -- Fred Metabolism Paid v2      = 5
    -- RSD Metabolism Paid          = 6
    -- NXT Metabolism Paid          = 7
    -- Andrade Metabolism Paid      = 8
    -- FX-HUD                       = 9
    -- Mega Metabolism              = 10
    -- POS-Metabolism Paid          = 11
    -- BLN HUD                      = 12
    app = 13,
    ---------------------------------------------------------------

    keys = {
        drink       = { code = 0xF3830D8E, char = 'J' }, -- Drink at Water Pumps and Wild Waters
        wash        = { code = 0x80F28E95, char = 'L' }, -- Wash Player at Water Pumps and Wild Waters
        fillBucket  = { code = 0xCEFD9220, char = 'E' }, -- Fill Bucket at Water Pumps and Wild Waters
        fillBottle  = { code = 0xD3ECF82F, char = 'B' }, -- Fill Bottle at Water Pumps and Wild Waters
        fillCanteen = { code = 0x27D1C284, char = 'R' },  -- Fill Canteen at Water Pumps and Wild Waters
        fillWagon = { code = 0x760A9C6F, char = 'G' }
    },
    ---------------------------------------------------------------

    -- Manage Activities at Water Pumps and Other Objects
    pump = {
        active  = true,       -- Enable the Use of Water Pumps and Other Objects
        canteen = true,       -- Allow to Fill Canteen
        bucket  = true,       -- Allow to Fill Bucket
        bottle  = true,       -- Allow to Fill Bottle
        wash    = true,       -- Allow Player to Wash
        drink   = false,       -- Allow Player to Drink
        fillWagon = true,       -- Allow to Fill Water Wagon
        multi   = {
            bottles = true,   -- Allow to Fill Multiple Bottles at Once
            bottleAmount = 5, -- Maximum Amount of Bottles to Fill at Once
            buckets = true,   -- Allow to Fill Multiple Buckets at Once
            bucketAmount = 5  -- Maximum Amount of Buckets to Fill at Once
        },
        
    },
    ---------------------------------------------------------------
    waterWagon = {
        active = true,              -- Enable Water Wagon System
        pricePerUnit = 0.10,       -- Price per unit of water
        checkDistance = 5.0,       -- Distance to detect water wagon
        fillWagon = true,          -- Allow to fill water wagon
        fillAnimationTime = 15000, -- Time in milliseconds for fill animation
    },

    -- Manage Activities in Rivers and Lakes (Wild Waters)
    wild = {
        active  = false,       -- Enable the Use of Wild Waters
        canteen = false,       -- Allow to Fill Canteen
        bucket  = false,       -- Allow to Fill Bucket
        bottle  = false,       -- Allow to Fill Bottle
        wash    = false,       -- Allow Player to Wash
        drink   = false,       -- Allow Player to Drink
        multi   = {
            bottles = false,   -- Allow to Fill Multiple Bottles at Once
            bottleAmount = 5, -- Maximum Amount of Bottles to Fill at Once
            buckets = true,   -- Allow to Fill Multiple Buckets at Once
            bucketAmount = 5  -- Maximum Amount of Buckets to Fill at Once
        }
    },
    ---------------------------------------------------------------
    
    -- Sickness from Drinking Wild Water (Player Dies if Duration or Health Reaches 0)
    sickness = {
        chance   = 25,  -- Range 1 - 100 (lower Number = lower Chance) / Set to 0 to Disable
        duration = 600, -- Default: 600 / Death Timer in Seconds 
        interval = 15,  -- Default: 15 / Time in Seconds Between each Health Loss
        health   = 50,  -- Default: 50 / Health lost per Interval
    },
    ---------------------------------------------------------------

    -- Item Names from Database
    canteen      = 'canteen',

    emptyBucket  = 'wateringcan_empty',
    cleanBucket  = 'wateringcan',
    dirtyBucket  = 'wateringcan_dirtywater',

    emptyBottle  = 'bcc_empty_bottle',
    cleanBottle  = 'bcc_clean_bottle',
    dirtyBottle  = 'bcc_dirty_bottle',

    antidoteItem = 'antidote', -- Item name that cures sickness
    ---------------------------------------------------------------

    durability = {
        canteen = 5, -- Durability used per Drink
    },
    ---------------------------------------------------------------

    -- Register Items as Useable
    useable = {
        cleanBottle  = true,
        dirtyBottle  = true,
        antidoteItem = true,
    },
    ---------------------------------------------------------------

    -- Objects Where You Can Get Water
    objects = {
        'p_waterpump01x',
        'p_wellpumpnbx01x',
        'p_sink02x',
        'p_drysink01x',
        'p_sink03x',
        'p_barrel_ladle01x',
        'p_barrel_wash01x',
    },
    ---------------------------------------------------------------

    -- Boosts Drinking from Canteen
    canteenDrink = {
        health  = 10, -- Default: 10 / Value is 0 - 100 / Set to 0 to Disable
        stamina = 20, -- Default: 20 / Value is 0 - 100 / Set to 0 to Disable
        thirst  = 50  -- Default: 50 / Value is 0 - 100
    },

    -- Effects Drinking from Wild Waters
    wildDrink = {
        gainHealth  = true, -- true = Gain Health by health Value / false = Lose by Value
        health      = 5,    -- Default: 5 / Value is 0 - 100 / Set to 0 to Disable
        gainStamina = true, -- true = Gain Stamina by stamina Value / false = Lose by Value
        stamina     = 10,   -- Default: 10 / Value is 0 - 100 / Set to 0 to Disable
        thirst      = 25    -- Default: 25 / Value is 0 - 100
    },
    ---------------------------------------------------------------

    maxCanteenDrinks = 5, -- Maximum Drinks per Full Canteen
    ---------------------------------------------------------------

    -- Crouch in Wild Water to Show Prompts
    crouch = true, -- Default: true / Set to false to Remove Crouch Requirement
    ---------------------------------------------------------------

    usePrompt = true, -- true = Show Prompt Button at Water Pumps / false = Show Text at Water Pumps (no button)
    ---------------------------------------------------------------

    showMessages = true, -- Show / Hide Canteen Messages
    ---------------------------------------------------------------
}
