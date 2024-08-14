classes = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard"]
races = ["Human", "Elf", "Dwarf", "Halfling", "Orc", "Tiefling", "Gnome", "Dragonborn"]

classes.each { |c| ClassName.create(name: c) }
races.each { |r| Race.create(name: r) }

Skill.create(name: "Acrobatics", description: "Balance and agility.")
Skill.create(name: "Animal Handling", description: "Calming and controlling animals.")

Trait.create(name: "Brave", description: "Advantage on saving throws against being frightened.")
Trait.create(name: "Darkvision", description: "Ability to see in the dark.")
