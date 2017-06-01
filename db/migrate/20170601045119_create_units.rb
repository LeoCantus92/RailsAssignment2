class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :unit1
      t.string :unit2
      t.string :unit3
      t.string :unit4
      t.string :unit5
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
