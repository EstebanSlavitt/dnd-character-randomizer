class Character < ApplicationRecord
  has_many :skills
  has_many :traits

  def self.randomize
    new(
      name: Faker::Name.name,
      class: ClassName.all.sample.name,
      race: Race.all.sample.name,
      strength: rand(1..20),
      dexterity: rand(1..20),
      constitution: rand(1..20),
      intelligence: rand(1..20),
      wisdom: rand(1..20),
      charisma: rand(1..20),
    )
  end

  def randomize_skills
    self.skills = Skill.all.sample(rand(3..5)) # Randomly select 3 to 5 skills
  end

  def randomize_traits
    self.traits = Trait.all.sample(rand(2..4)) # Randomly select 2 to 4 traits
  end
end
