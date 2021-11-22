class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :location
      t.string :description
      t.string :breed

      t.timestamps
    end
  end
end
