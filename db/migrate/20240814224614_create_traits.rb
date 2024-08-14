class CreateTraits < ActiveRecord::Migration[7.1]
  def change
    create_table :traits do |t|
      t.string :name
      t.text :description
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
