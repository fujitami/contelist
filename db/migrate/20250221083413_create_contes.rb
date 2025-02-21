class CreateContes < ActiveRecord::Migration[7.1]
  def change
    create_table :contes do |t|
      t.string :title
      t.integer :people
      t.text :trigger
      t.text :props_costumes
      t.boolean :debut

      t.timestamps
    end
  end
end
