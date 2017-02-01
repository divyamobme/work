class CreateDogs < ActiveRecord::Migration[5.0]
  def up
  	create_table :dogs do |t|
      t.string :name
      t.string :breed
    end

   def down
    drop_table :dogs
   end
end
