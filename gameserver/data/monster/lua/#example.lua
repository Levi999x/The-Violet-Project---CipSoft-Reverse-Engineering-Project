local mType = Game.createMonsterType("example")
local monster = {}
monster.description = "an example"
monster.experience = 1
monster.outfit = {
	lookType = 37
}

monster.health = 99200
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 5995
monster.speed = 280
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4*1000,
	chance = 20
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	challengeable = true,
	convinceable = false,
	ignoreSpawnBlock = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 70
}

monster.summons = {
	{name = "demon", chance = 10, interval = 2*1000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I'm an example", yell = false},
	{text = "You shall bow", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 60000, maxCount = 100},
	{id = 1987, chance = 60000, -- bag
		child = {
			{id = "platinum coin", chance = 60000, maxCount = 100},
			{id = "crystal coin", chance = 60000, maxCount = 100}
		}
	}
}

monster.attacks = {
	{name = "melee", attack = 130, skill = 70, interval = 2*1000},
	{name = "combat", type = COMBAT_MANADRAIN, chance = 10, interval = 2*1000, minDamage = 0, maxDamage = -120, target = true, range = 7, effect = CONST_ME_MAGIC_BLUE},
	{name = "combat", type = COMBAT_FIREDAMAGE, chance = 20, interval = 2*1000, minDamage = -150, maxDamage = -250, radius = 1, target = true, effect = CONST_ME_FIREAREA, shootEffect = CONST_ANI_FIRE},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, radius = 1, target = true, duration = 30*1000, effect = CONST_ME_MAGIC_RED},
	{name = "firefield", chance = 10, interval = 2*1000, range = 7, radius = 1, target = true, shootEffect = CONST_ANI_FIRE},
	{name = "combat", type = COMBAT_LIFEDRAIN, chance = 10, interval = 2*1000, length = 8, spread = 0, minDamage = -300, maxDamage = -490, effect = CONST_ME_PURPLEENERGY}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE},
	{name = "speed", chance = 15, interval = 2*1000, speed = 320, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
}

monster.immunities = {
	{type = "fire", combat = true, condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

mType:register(monster)
